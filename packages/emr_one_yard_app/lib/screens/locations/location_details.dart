import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/components/locations/location_header_details.dart';
import 'package:emr_one_yard_app/components/media/grouped_media_grid.dart';
import 'package:emr_one_yard_app/components/media/media_select_bottom_sheet.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/location_details_controller.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:emr_one_yard_app/screens/camera_screen.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LocationDetails extends StatefulWidget {
  const LocationDetails({
    required this.locationId,
    required this.detailsController,
    super.key,
  });

  final String locationId;
  final LocationDetailsController detailsController;

  @override
  State<StatefulWidget> createState() {
    return _LocationDetailState();
  }
}

class _LocationDetailState extends State<LocationDetails> {
  final _selectedItems = listSignal<MediaItem>([]);

  @override
  void initState() {
    unawaited(widget.detailsController.getLocationDetails(widget.locationId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Watch((context) {
      final state = widget.detailsController.locationDetailsSignal.value;
      if (state is AsyncLoading) {
        return const Center(child: CircularProgressIndicator());
      }

      if (state is! AsyncData<Query$Location$inventoryLocation>) {
        return const Center(child: CircularProgressIndicator());
      }

      final location = state.value;

      return FutureBuilder(
        future: widget.detailsController.getLocalPathAndToken(location.id),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          }
          return Stack(
            children: [
              Column(
                children: [
                  LocationHeaderDetails(
                    location: location,
                    yardCode: widget
                        .detailsController
                        .userInfoService
                        .userInfo
                        .defaultYard,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: Watch((context) {
                        location.mediaAssets.sortBy(
                          (element) => element.created.at,
                        );
                        final groups = location.mediaAssets.groupListsBy(
                          (element) => element.created.at.dateOnly,
                        );
                        final mediaGroups = List<MediaGroup>.empty(
                          growable: true,
                        );
                        groups.forEach(
                          (groupId, list) async => mediaGroups.add(
                            MediaGroup(
                              title: groupId.asyMMMd(
                                Localizations.localeOf(context),
                              ),
                              items: list
                                  .map(
                                    (item) => MediaItem(
                                      remoteUrl: widget
                                          .detailsController
                                          .mediaController
                                          .mediaApiUrl,
                                      mediaUrl: item.url,
                                      localDir: snapshot.data!.$1,
                                      token: snapshot.data!.$2,
                                      id: 0,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        );
                        return GroupedMediaGrid(
                          selectedItems: _selectedItems,
                          maxCrossAxisExtent: 120,
                          yardCode: widget
                              .detailsController
                              .userInfoService
                              .userInfo
                              .defaultYard,
                          mediaGroups: mediaGroups.reversed.toList(),
                          onDelete: (item, key) async {
                            return _handleDelete([item], context);
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: Insets.gutter * 2,
                    right: Insets.gutter,
                  ),
                  child: FloatingActionButton(
                    onPressed: () async {
                      await _openMediaUploader(
                        snapshot.data!.$1,
                        title: location.code,
                      );
                    },
                    child: const Icon(Icons.add_a_photo_outlined),
                  ),
                ),
              ),
              if (_selectedItems.watch(context).isNotEmpty)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SafeArea(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Insets.gutter,
                        ),
                        child: MediaSelectBottomSheet(
                          itemCount: _selectedItems.length,
                          onClose: _selectedItems.clear,
                          onDelete: () async {
                            await _handleDelete(_selectedItems.value, context);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      );
    });
  }

  Future<bool> _handleDelete(
    List<MediaItem> items,
    BuildContext context,
  ) async {
    final urls = items.map((item) => item.mediaUrl).toList();
    final result = await widget.detailsController.deleteMedia(urls);
    if (!result.successful) {
      if (context.mounted) {
        await EmrModal.showMessageBar(
          context,
          result.errorsAsString,
          messageType: MessageBarTypes.error,
        );
      }
      return false;
    }
    _selectedItems.clear();
    return true;
  }

  Future<void> _openMediaUploader(
    String mediaLocation, {
    required String title,
  }) async {
    if (context.mounted) {
      final newPhotos = <MediaFile>[];
      await showDialog<void>(
        context: context,
        builder: (context) {
          return Material(
            child: CameraScreen.photo(
              mediaDirectory: mediaLocation,
              onMediaCapture: (capture) async {
                if (capture.captureRequest.path == null) {
                  return;
                }
                final file = await MediaFile.fromPath(
                  capture.captureRequest.path!,
                );
                if (file == null) {
                  return;
                }
                newPhotos.add(file);
              },
            ),
          );
        },
      );

      if (newPhotos.isEmpty) {
        return;
      }

      try {
        final result = await widget.detailsController.uploadMedia(
          newPhotos.map((item) => item.media.path).toList(),
        );
        if (!result.successful) {
          if (mounted) {
            await EmrDialog.ok(
              context,
              titleText: context.l10n.error,
              contentText: result.errorsAsString,
            );
          }
        }
      } on Exception catch (_) {
        if (mounted) {
          await EmrDialog.ok(
            context,
            titleText: context.l10n.error,
            contentText: YardAppConstants.unknownError,
          );
        }
      }
    }
  }
}
