import 'dart:async';

import 'package:emr_core_api/graphql/queries/yard_app/tickets/get_ticket_discrepant_types.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/components/mixin/media_action_mixin.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/discrepant_details_controller.dart';
import 'package:emr_one_yard_app/extensions/ticket_extensions.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:emr_one_yard_app/models/media/inspection_media.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:signals/signals_flutter.dart';

typedef DiscrepantTypes = Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes;

class TicketDiscrepantDetailsScreen extends StatefulWidget {
  const TicketDiscrepantDetailsScreen({required this.controller, super.key});

  final DiscrepantDetailsController controller;

  @override
  State<TicketDiscrepantDetailsScreen> createState() =>
      _TicketDiscrepantDetailsScreenState();
}

class _TicketDiscrepantDetailsScreenState
    extends State<TicketDiscrepantDetailsScreen>
    with MediaActionsMixin {
  late final ListSignal<DiscrepantTypes> selectedChips;
  late final Future<(String, String, List<DiscrepantTypes>)> _future;
  late List<DiscrepantTypes> _initialSelectedChips;
  late List<MediaItem> _initialDiscrepantImages;
  List<MediaItem> discrepantImages = [];
  final List<InspectionMedia> newMedia = [];
  final List<MediaItem> removedMedia = [];
  final List<String> videoThumbnails = [];
  final ListSignal<MediaItem> _selectedItems = listSignal([]);

  final FlutterSignal<bool> isLoading = signal(false);
  final FlutterSignal<bool> enableAddMoreButton = signal(false);

  final selectedChipTitle = signal('');
  String? _currentlySelectedKey;
  bool isSaved = false;

  @override
  void initState() {
    super.initState();
    selectedChips = listSignal([]);
    _future = _initData();
  }

  Future<(String, String, List<DiscrepantTypes>)> _initData() async {
    final data = await widget.controller.getInitialData();
    final discrepantTypes = data.$3;
    final existing =
        widget.controller.line.inspectionDetails?.discrepancies ?? [];
    final existingSelected = discrepantTypes
        .where((s) => existing.contains(s.id))
        .toList();
    for (final element in discrepantTypes) {
      final images = widget.controller.line.getDiscrepantImages(
        element.id,
        data.$1,
        data.$2,
        widget.controller.service.mediaApiUrl,
      );
      if (images.isEmpty) {
        continue;
      }
      discrepantImages.addAll(images);
    }
    selectedChips.set(existingSelected);
    _initialSelectedChips = List<DiscrepantTypes>.from(existingSelected);
    _initialDiscrepantImages = List<MediaItem>.from(discrepantImages);
    return data;
  }

  void updateGroupItem({
    required MediaItem oldItem,
    required MediaItem newItem,
  }) {
    final index = discrepantImages.indexOf(oldItem);
    if (index != -1) {
      setState(() {
        discrepantImages[index] = newItem;
      });
    }
  }

  void removeGroupItem({required List<MediaItem> items}) {
    for (final item in items) {
      discrepantImages.remove(item);
      newMedia.removeWhere(
        (s) =>
            path.basenameWithoutExtension(s.localUrl) ==
            path.basenameWithoutExtension(item.mediaUrl),
      );
      videoThumbnails.removeWhere(
        (s) =>
            path.basenameWithoutExtension(s) ==
            path.basenameWithoutExtension(item.mediaUrl),
      );
    }

    setState(() {
      removedMedia.addAll(items);
    });
  }

  void addGroupItems({required List<MediaItem> items}) {
    setState(() {
      discrepantImages.addAll(items);
    });
  }

  Future<bool> _checkForUnsavedChanges(BuildContext context) async {
    final completer = Completer<bool>();

    final chipsChanged = !_listEquals(
      selectedChips.value,
      _initialSelectedChips,
    );
    final mediaChanged = !_listEquals(
      discrepantImages,
      _initialDiscrepantImages,
    );

    if (!chipsChanged && !mediaChanged) {
      completer.complete(true);
      return completer.future;
    }
    await EmrDialog.noYes(
      context,
      titleText: context.l10n.unsaved,
      contentText: context.l10n.unsavedChangesMsg,
      onNo: () {
        completer.complete(true);
      },
      onYes: () async {
        final result = await _handleSave(context);
        completer.complete(result);
      },
    );
    return completer.future;
  }

  bool _listEquals<T>(List<T> a, List<T> b) {
    if (a.length != b.length) return false;
    for (final element in a) {
      if (!b.contains(element)) return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop || isSaved) return;

        final shouldPop = await _checkForUnsavedChanges(context);
        if (shouldPop && context.mounted) {
          Navigator.of(context).pop(result);
        }
      },
      child: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError || snapshot.data == null) {
            return Text(context.l10n.anErrorOccurredTryAgain);
          }

          final (location, token, discrepantTypes) = snapshot.data!;

          return MediaButtonStack(
            title: selectedChipTitle.watch(context),
            customWidget: _buildBottomSheet(context),
            isLoading: isLoading,
            enableAddMoreButton: enableAddMoreButton,
            localDir: location,
            mediaController:
                widget.controller.ticketDetailsController.mediaController,
            onMediaCapture: (media, thumbnails) =>
                _handleMediaCapture(media, thumbnails, location, token),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.gutter,
                vertical: Insets.gutter / 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.discrepantDetails,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextLine(
                    header: context.l10n.ticket,
                    content: widget.controller.ticket.id
                        .split('/')
                        .skip(1)
                        .join('-'),
                  ),
                  _buildHeader(context),
                  _buildDiscrepantChips(discrepantTypes, token, location),
                  _buildGroupedMediaGrid(context),
                  _buildSaveButton(context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget? _buildBottomSheet(BuildContext context) {
    final items = _selectedItems.watch(context);
    if (items.isEmpty) return null;

    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter / 2),
            child: MediaSelectBottomSheet(
              itemCount: items.length,
              onClose: _selectedItems.clear,
              onDelete: () {
                removeGroupItem(items: _selectedItems.value);
                _selectedItems.clear();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.controller.line.getHeading(),
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: const Icon(Icons.comment, size: LayoutConstants.iconSizeSmall),
          onPressed: () => CommentHistoryDialog.show(
            context: context,
            userName: widget.controller.userName,
            comments: widget.controller.comments,
            onAdd: (newComment) async {
              final result = await widget.controller.ticketDetailsController
                  .addNewComment(
                    newComment.content,
                    widget.controller.ticket.id,
                    widget.controller.lineNumber,
                  );
              if (result) {
                widget.controller.comments.add(newComment);
              }
              return result;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDiscrepantChips(
    List<DiscrepantTypes> discrepantTypes,
    String token,
    String location,
  ) {
    return Watch(
      (_) => Wrap(
        spacing: Insets.gutter / 2,
        children: discrepantTypes.map((s) {
          final isSelected = selectedChips.watch(context).contains(s);
          return FilterChip(
            selected: isSelected,
            selectedColor: Theme.of(context).colorScheme.primary,
            onSelected: (selected) {
              if (selected) {
                selectedChips.add(s);
              } else {
                selectedChips.remove(s);
              }
            },
            label: Text(
              s.name,
              style: isSelected
                  ? Theme.of(context).primaryTextTheme.labelMedium
                  : Theme.of(context).textTheme.labelMedium,
            ),
            avatar: s.mediaRequired
                ? const Icon(Icons.add_a_photo_outlined)
                : null,
            showCheckmark: false,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildGroupedMediaGrid(BuildContext context) {
    return Expanded(
      child: Watch((_) {
        return SingleChildScrollView(
          child: Column(
            children: [
              ...selectedChips
                  .watch(context)
                  .map(
                    (d) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        Text(
                          d.name,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Divider(),
                        MediaGridView(
                          header: d.name,
                          groupKey: d.id,
                          items: discrepantImages
                              .where((s) => s.discrepantId == d.id)
                              .toList(),
                          selectedItems: _selectedItems,
                          yardCode: widget
                              .controller
                              .ticketDetailsController
                              .userInfoService
                              .userInfo
                              .defaultYard,
                          maxCrossAxisExtent: LayoutConstants.thumbnailSize,
                          onDelete: (item, key) {
                            removeGroupItem(items: [item]);
                            return Future.value(true);
                          },
                          onEdit: (item, key) async {
                            final result = await handleEditImage(
                              context,
                              item,
                              widget.controller.ticketDetailsController,
                              widget.controller.ticket,
                            );
                            if (result != null) {
                              addGroupItems(items: [result]);
                              _initialDiscrepantImages.add(result);
                            }
                            return result;
                          },
                          onAddNote: (item, key) async {
                            final result = await handleAddNote(
                              context,
                              item,
                              widget.controller.ticketDetailsController,
                              widget.controller.ticket,
                            );
                            if (result != null) {
                              updateGroupItem(oldItem: item, newItem: result);
                            }
                            return result;
                          },
                          onMediaButtonTap: (group) {
                            _currentlySelectedKey = group;
                            enableAddMoreButton.value = true;
                            selectedChipTitle.value = d.name;
                            return Future.value();
                          },
                        ),
                      ],
                    ),
                  ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FilledButton(
            onPressed: () async {
              final result = await _handleSave(context);
              isSaved = result;
              if (result) {
                if (!context.mounted) return;
                Navigator.of(context).pop();
              }
            },
            style: EmrButtonStyles.cta(),
            child: Text(
              context.l10n.save,
              style: Theme.of(context).primaryTextTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<bool> _handleSave(BuildContext context) async {
    isLoading.value = true;

    final mediaMap = {
      for (final group in discrepantImages)
        group.discrepantId: discrepantImages
            .where((m) => m.discrepantId == group.discrepantId)
            .length,
    };

    final missingMedia = selectedChips.value
        .where((s) => s.mediaRequired && (mediaMap[s.id] ?? 0) == 0)
        .toList();

    if (missingMedia.isNotEmpty) {
      isLoading.value = false;
      final msg = ': ${missingMedia.map((e) => e.name).join(", ")}';
      await EmrModal.showMessageBar(
        context,
        context.l10n.discrepancyMediaError(msg),
        messageType: MessageBarTypes.error,
      );
      return false;
    }
    final chipsChanged = !_listEquals(
      selectedChips.value,
      _initialSelectedChips,
    );
    await widget.controller.ticketDetailsController.removeMedia(
      widget.controller.ticket.id,
      removedMedia,
    );
    final result = await widget.controller.ticketDetailsController
        .addInspectionDetails(
          widget.controller.ticket.id,
          widget.controller.ticket.ticketNumber,
          widget.controller.line.lineNumber,
          selectedChips.value.map((s) => s.id).toList(),
          chipsChanged
              ? selectedChips.value.map((s) => s.name).join(',')
              : null,
          newMedia,
          videoThumbnails: videoThumbnails,
        );

    isLoading.value = false;
    if (!context.mounted) return false;

    unawaited(
      EmrModal.showMessageBar(
        context,
        result
            ? context.l10n.discrepantSubmitMsg
            : context.l10n.anErrorOccurredTryAgain,
      ),
    );
    return result;
  }

  Future<bool> _handleMediaCapture(
    List<MediaFile> media,
    List<String> thumbnails,
    String location,
    String token,
  ) async {
    if (_currentlySelectedKey == null || media.isEmpty) return false;

    final mediaItems = await processMedia(
      location,
      widget.controller.ticket,
      widget.controller.ticketDetailsController,
      widget.controller.lineNumber,
      token,
      media,
      videoThumbnails: videoThumbnails,
      discrepantId: _currentlySelectedKey,
    );

    newMedia.addAll(
      media.map(
        (m) => InspectionMedia(
          localUrl: m.media.path,
          lineNumber: widget.controller.lineNumber,
          mediaType: m.mediaType,
          discrepantId: _currentlySelectedKey,
        ),
      ),
    );

    videoThumbnails.addAll(thumbnails);
    addGroupItems(items: mediaItems);
    enableAddMoreButton.value = false;
    _currentlySelectedKey = null;
    selectedChipTitle.value = '';
    return true;
  }
}
