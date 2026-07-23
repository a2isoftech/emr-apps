import 'dart:async';
import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/services/emr_background_service/cupertino_http/native_cupertino_bindings.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/controllers/load_out_controller.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:emr_one_yard_app/screens/camera_screen.dart';
import 'package:emr_one_yard_app/screens/load_outs/load_out_image.dart';
import 'package:flutter/material.dart';

class LoadOutMediaCapture extends StatelessWidget {
  const LoadOutMediaCapture({required this.controller, super.key});

  final LoadOutController controller;

  @override
  Widget build(BuildContext context) {
    final yardCode = controller.userInfoService.userInfo.defaultYard;
    final mediaController = controller.mediaController;
    final images = [
      (
        context.l10n.heap,
        'assets/placeholder/heap.png',
        controller.locationImage,
      ),
      (
        context.l10n.emptyContainer,
        'assets/placeholder/empty.png',
        controller.emptyImage,
      ),
      (
        context.l10n.containerHalfLoadedWithContainerNumber,
        'assets/placeholder/half_loaded.png',
        controller.halfLoadedImage,
      ),
      (
        context.l10n.fullyLoaded,
        'assets/placeholder/fully_loaded.png',
        controller.fullyLoadedImage,
      ),
      (
        context.l10n.fullyLoadedOneDoorShut,
        'assets/placeholder/half_closed.png',
        controller.halfClosedImage,
      ),
      (
        context.l10n.fullyLoadedBothDoorsShutSeals,
        'assets/placeholder/fully_closed.png',
        controller.fullyClosedImage,
      ),
      (
        context.l10n.fullyLoadedOneDoorShutRadiation,
        'assets/placeholder/radiation.png',
        controller.radiationDoorImage,
      ),
      (
        context.l10n.leftSideQualityCheck,
        'assets/placeholder/container_left_side.png',
        controller.leftSideImage,
      ),
      (
        context.l10n.rightSideQualityCheck,
        'assets/placeholder/container_right_side.png',
        controller.rightSideImage,
      ),
    ];

    return FutureBuilder(
      future: controller.getLocalPathAndToken(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError || snapshot.data == null) {
          return Center(child: Text(context.l10n.anErrorOccurredTryAgain));
        }

        final localPath = controller.localPath = snapshot.data!.$1;
        final token = controller.token = snapshot.data!.$2;
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.loadoutPhotos,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: Insets.gutter / 2),
              Text(
                context.l10n.loadoutPhotoMsg,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: Insets.gutter / 2),

              GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: Insets.gutter / 2,
                crossAxisSpacing: Insets.gutter / 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.75,
                children: images
                    .map(
                      (img) => LoadOutImage(
                        disable: controller.loadOutInput!.completed,
                        pngPath: img.$2,
                        title: img.$1,
                        mediaPathNotifier: img.$3,
                        localPath: localPath,
                        token: token,
                        yardCode: yardCode,
                        mediaController: mediaController,
                        loadoutId: controller.loadOutInput!.id!,
                        onCapture: (_) => _saveImages(context, controller),
                      ),
                    )
                    .toList(),
              ),

              Text(
                context.l10n.otherPhotos,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: Insets.gutter / 2),
              ValueListenableBuilder(
                valueListenable: controller.otherImages,
                builder: (context1, value, child) {
                  final otherImageItems = value
                      .map(
                        (path) => MediaItem(
                          mediaUrl: path,
                          token: token,
                          id: 1,
                          localDir: localPath,
                          remoteUrl: controller.mediaController.mediaApiUrl,
                        ),
                      )
                      .toList();
                  return Wrap(
                    runSpacing: Insets.gutter,
                    spacing: Insets.gutter,
                    children: [
                      if (!controller.loadOutInput!.completed)
                        AddMoreButton(
                          onTap: () async {
                            final pickedPaths = await _openMultiMediaDialog(
                              context,
                              localPath,
                            );
                            if (pickedPaths.isEmpty || !context.mounted) {
                              return;
                            }

                            unawaited(
                              EmrDialog.busy(
                                context,
                                titleText: context.l10n.processing,
                              ),
                            );
                            final localUrls = <String>[];
                            final remoteUrls = <String>[];

                            try {
                              for (final path in pickedPaths) {
                                final compressed = await mediaController
                                    .compressImage(path);

                                final mediaUrl = MediaHelper.createMediaFullUrl(
                                  mediaController.mediaApiUrl,
                                  compressed.path,
                                  controller.loadOutInput!.id!,
                                );

                                localUrls.add(compressed.path);
                                remoteUrls.add(mediaUrl);
                              }

                              //Upload
                              await mediaController.addTaskToUpload(
                                localUrls,
                                remoteUrls,
                              );

                              // Update state
                              controller.otherImages.value = [
                                ...remoteUrls.map(MediaHelper.removeBasePath),
                                ...controller.otherImages.value,
                              ];
                              //save to db
                              final result = await controller.saveImages();

                              if (!result.successful && context.mounted) {
                                await EmrModal.showMessageBar(
                                  context,
                                  result.errorsAsString,
                                  messageType: MessageBarTypes.error,
                                );
                              }
                              if (context.mounted) {
                                Navigator.of(context).pop(); // close busy
                              }
                            } on exception catch (_) {
                              if (context.mounted) {
                                Navigator.of(context).pop(); // close busy
                                await EmrModal.showMessageBar(
                                  context,
                                  context.l10n.anErrorOccurredTryAgain,
                                  messageType: MessageBarTypes.error,
                                );
                              }
                            }
                          },
                        ),

                      ...otherImageItems.map(
                        (item) => MediaGridItem(
                          yardCode:
                              controller.userInfoService.userInfo.defaultYard,
                          item: item,
                          onTap: (item) async {
                            await showDialog<void>(
                              context: context,
                              barrierColor: Colors.transparent,
                              builder: (context) => FullScreenMediaViewer(
                                onDelete: controller.loadOutInput!.completed
                                    ? null
                                    : (item) {
                                        controller.otherImages.value
                                            .removeWhere(
                                              (s) => s == item.mediaUrl,
                                            );
                                        controller.otherImages.value = [
                                          ...controller.otherImages.value,
                                        ];
                                        unawaited(controller.saveImages());
                                        return Future.value(true);
                                      },
                                title: 'Other Images',
                                yardCode: controller
                                    .userInfoService
                                    .userInfo
                                    .defaultYard,
                                initialIndex: otherImageItems.indexOf(item),
                                mediaItems: otherImageItems,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<List<String>> _openMultiMediaDialog(
    BuildContext context,
    String localPath,
  ) async {
    final capturedPaths = <String>[];

    final result = await showDialog<List<String>>(
      context: context,
      builder: (dialogContext) {
        return Material(
          child: CameraScreen.photo(
            allowMultiple: true,
            galleryImport: true,
            mediaDirectory: localPath,
            onMediaCapture: (capture) async {
              final path = capture.captureRequest.path;
              if (path != null) {
                capturedPaths.add(path);
              }
            },
            onMediaSelect: (files) async {
              for (final file in files) {
                final copied = await MediaPickerUtils.copyMediaFile(
                  File(file.path),
                  localPath,
                );
                if (copied == null) {
                  continue;
                }
                capturedPaths.add(copied.media.path);
              }
              if (dialogContext.mounted) {
                Navigator.of(dialogContext).pop(capturedPaths);
              }
            },
          ),
        );
      },
    );
    return result ?? capturedPaths;
  }

  Future<void> _saveImages(
    BuildContext context,
    LoadOutController controller,
  ) async {
    final result = await controller.saveImages();
    if (!context.mounted) return;

    if (!result.successful) {
      await EmrModal.showMessageBar(
        context,
        result.errorsAsString,
        messageType: MessageBarTypes.error,
      );
    }
  }
}
