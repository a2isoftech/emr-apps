import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/components/mixin/media_action_mixin.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/controllers.dart';
import 'package:emr_one_yard_app/extensions/ticket_extensions.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:emr_one_yard_app/models/ticket/load_out_ticket.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class TicketDetailContent extends StatelessWidget with MediaActionsMixin {
  TicketDetailContent({
    required this.ticket,
    required this.detailsController,
    required this.mediaApiUrl,
    required this.yardCode,
    required this.localPath,
    required this.token,
    this.enableLoadOutButton = false,
    super.key,
  }) {
    detailsController.buildLineMediaMap(
      ticket,
      localPath,
      token,
      mediaApiUrl,
      yardCode,
    );
  }

  final Query$GetTicketDetails$ticket ticket;
  final TicketDetailsController detailsController;
  final String mediaApiUrl;
  final String yardCode;
  final bool enableLoadOutButton;
  final String localPath;
  final String token;
  final FlutterSignal<int> selectedLine = signal(0);
  final FlutterSignal<bool> showMediaButtons = signal(false);

  final _selectedItems = listSignal<MediaItem>([]);
  Widget? _getCustomWidget(BuildContext context) {
    if (ticket.ticketType == Enum$TicketType.OUTWARDS &&
        _selectedItems.isEmpty) {
      return _buildLoadOutButton(context);
    }
    if (_selectedItems.isNotEmpty) return _buildMediaSelectBottomSheet(context);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Watch(
      (_) => MediaButtonStack(
        mediaController: detailsController.mediaController,
        localDir: localPath,
        onFlagTap: selectedLine.value > 0
            ? () => context.goNamed(
                YardAppNamedRoutes.yardAppdiscrepantDetails,
                extra: ticket,
                params: {'id': ticket.id},
                queryParams: {'line': selectedLine.value.toString()},
              )
            : null,
        isLoading: detailsController.isLoading,
        customWidget: _getCustomWidget(context),
        enableAddMoreButton: showMediaButtons,
        title: selectedLine.value == 0
            ? ticket.getHeading()
            : ticket.activeLines
                  .firstWhere((s) => s.lineNumber == selectedLine.value)
                  .getHeading(),
        onMediaCapture: (mediaFiles, videoThumbnails) async {
          if (mediaFiles.isNotEmpty) {
            final mediaItems = await processMedia(
              localPath,
              ticket,
              detailsController,
              selectedLine.value,
              token,
              mediaFiles,
              videoThumbnails: videoThumbnails,
              uploadOnExit: true,
            );
            showMediaButtons.value = false;
            if (mediaItems.isNotEmpty) {
              detailsController.addMediaToLine(selectedLine.value, mediaItems);
            }
          }
          return Future.value(true);
        },
        child: Column(
          children: [
            TicketHeaderDetails(
              ticket: ticket,
              detailsController: detailsController,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      if (detailsController.loadOutImages.value.isNotEmpty)
                        TicketLineCard(
                          allowMultiSelect: false,
                          controller: detailsController,
                          selectedMedia: _selectedItems,
                          ticket: ticket,
                          title: context.l10n.loadoutImages,
                          otherImages: detailsController.loadOutImages.value,
                        ),

                      TicketLineCard(
                        isAddMoreActive:
                            showMediaButtons.value && selectedLine.value == 0,
                        controller: detailsController,
                        selectedMedia: _selectedItems,
                        line: 0,
                        ticket: ticket,
                        title: context.l10n.ticketHeader,
                        onMediaEdit: (item) => handleEditImage(
                          context,
                          item,
                          detailsController,
                          ticket,
                        ),
                        onMediaDelete: (item) => handleDelete(
                          context,
                          [item],
                          detailsController,
                          ticket,
                        ),
                        onAddMore: () {
                          selectedLine.value = 0;
                          showMediaButtons.value = true;
                        },
                        onAddNote: (item) => handleAddNote(
                          context,
                          item,
                          detailsController,
                          ticket,
                        ),
                        otherImages:
                            detailsController.allMediaMap.watch(context)[0] ??
                            [],
                      ),
                      ...ticket.activeLines.map(
                        (line) => TicketLineCard(
                          isAddMoreActive:
                              showMediaButtons.value &&
                              selectedLine.value == line.lineNumber,
                          controller: detailsController,
                          selectedMedia: _selectedItems,
                          line: line.lineNumber,
                          ticket: ticket,
                          title: line.getHeading(),
                          onMediaEdit: (item) => handleEditImage(
                            context,
                            item,
                            detailsController,
                            ticket,
                          ),
                          onMediaDelete: (item) => handleDelete(
                            context,
                            [item],
                            detailsController,
                            ticket,
                          ),
                          onAddNote: (item) => handleAddNote(
                            context,
                            item,
                            detailsController,
                            ticket,
                          ),
                          onAddMore: () async {
                            selectedLine.value = line.lineNumber;
                            showMediaButtons.value = true;
                          },
                          discrepantMedia:
                              detailsController.allMediaMap
                                  .watch(context)[line.lineNumber]
                                  ?.where(
                                    (m) =>
                                        line.inspectionDetails?.discrepancies
                                            .contains(m.discrepantId) ??
                                        false,
                                  )
                                  .toList() ??
                              [],
                          otherImages:
                              detailsController.allMediaMap
                                  .watch(context)[line.lineNumber]
                                  ?.where(
                                    (m) =>
                                        !(line.inspectionDetails?.discrepancies
                                                .contains(m.discrepantId) ??
                                            false),
                                  )
                                  .toList() ??
                              [],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadOutButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: Insets.gutter * 2,
          right: Insets.gutter,
        ),
        child: FloatingActionButton(
          child: const Icon(Icons.local_shipping_outlined, size: 30),
          onPressed: () => context.pushNamed(
            YardAppNamedRoutes.yardAppLoadOutDetails,
            extra: LoadOutTicket(
              ticketId: ticket.id,
              accountName: ticket.account.name,
              accountNumber: ticket.account.accountNumber,
              ticketNumber: ticket.ticketNumber,
              containerNumber: ticket.containerNumber,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMediaSelectBottomSheet(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: MediaSelectBottomSheet(
              itemCount: _selectedItems.length,
              onClose: _selectedItems.clear,
              onDelete: () => _handleDeleteSelected(context),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleDeleteSelected(BuildContext context) async {
    final deleted = await handleDelete(
      context,
      _selectedItems.value,
      detailsController,
      ticket,
    );
    if (deleted) {
      _selectedItems.clear();
    }
  }
}
