import 'dart:async';
import 'dart:io';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/camera/enums.dart';
import 'package:emr_one_yard_app/components/media/custom_image_provider.dart';
import 'package:emr_one_yard_app/components/media/image_widget.dart';
import 'package:emr_one_yard_app/components/thumbnail_widget.dart';
import 'package:emr_one_yard_app/components/ticket_details/media_picker_utils.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/media_controller.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:emr_one_yard_app/screens/camera_screen.dart';
import 'package:flutter/material.dart';

class LoadOutImage extends StatelessWidget {
  const LoadOutImage({
    required this.pngPath,
    required this.title,
    required this.localPath,
    required this.token,
    required this.yardCode,
    required this.mediaController,
    required this.loadoutId,
    required this.mediaPathNotifier,
    required this.onCapture,
    this.disable = false,
    this.width = 100,
    this.height = 100,
    this.showTitle = true,
    super.key,
  });

  final ValueNotifier<String?> mediaPathNotifier;
  final String pngPath;
  final String title;
  final String localPath;
  final String token;
  final String yardCode;
  final MediaController mediaController;
  final String loadoutId;
  final void Function(String? path) onCapture;
  final bool disable;
  final double width;
  final double height;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?>(
      valueListenable: mediaPathNotifier,
      builder: (context, mediaPath, _) {
        return InkWell(
          onTap: () => disable && (mediaPath ?? '').isEmpty
              ? null
              : _handleTap(context, mediaPath),
          child: SizedBox(
            height: height,
            width: width,
            child: Column(
              children: [
                _buildThumbnail(mediaPath),
                if (showTitle) ...[
                  const SizedBox(height: Insets.gutter / 4),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildThumbnail(String? mediaPath) {
    if ((mediaPath ?? '').isEmpty) {
      return ThumbnailWidget(
        height: height,
        width: width,
        child: Image.asset(
          pngPath,
          package: YardAppConstants.packageName,
          height: height,
          width: width,
        ),
      );
    } else {
      return ImageWidget.thumbnail(
        yardCode: mediaController.yardCode,
        imagePath: MediaHelper.concatenatePath(
          mediaController.mediaApiUrl,
          mediaPath!,
        ).toString(),
        localPath: localPath,
        token: token,
        height: height,
        width: width,
      );
    }
  }

  Future<void> _handleTap(BuildContext context, String? mediaPath) async {
    if (mediaPath != null) {
      await _openImageViewer(context, mediaPath);
    } else {
      final imagePath = await _openCameraScreen(context);
      if (imagePath != null) {
        await _handleImageUpdload(imagePath);
      }
    }
  }

  Future<void> _handleImageUpdload(String imagePath) async {
    final compressedFile = await mediaController.compressImage(imagePath);

    final mediaUrl = MediaHelper.createMediaFullUrl(
      mediaController.mediaApiUrl,
      compressedFile.path,
      loadoutId,
    );

    await mediaController.addTaskToUpload([compressedFile.path], [mediaUrl]);

    mediaPathNotifier.value = MediaHelper.removeBasePath(mediaUrl);
    onCapture(mediaUrl);
  }

  Future<String?> _openCameraScreen(BuildContext context) async {
    final completer = Completer<String?>();
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => Scaffold(
        body: CameraScreen(
          mediaMode: MediaMode.photo,
          title: title,
          mediaDirectory: localPath,
          onMediaCapture: (capture) {
            if (!completer.isCompleted) {
              completer.complete(capture.captureRequest.path);
            }
            Navigator.of(dialogContext).pop();
            return Future.value();
          },
          galleryImport: true,
          onMediaSelect: (media) async {
            if (media.isNotEmpty) {
              final copiedMedia = await MediaPickerUtils.copyMediaFile(
                File(media.first.path),
                localPath,
              );
              if (!completer.isCompleted && copiedMedia != null) {
                completer.complete(copiedMedia.media.path);
              }
              if (dialogContext.mounted) {
                Navigator.of(dialogContext).pop();
              }
            }
            return Future.value();
          },
        ),
      ),
    );

    return completer.future;
  }

  Future<void> _openImageViewer(BuildContext context, String mediaPath) async {
    final imageUrl = MediaHelper.concatenatePath(
      mediaController.mediaApiUrl,
      mediaPath,
    ).toString();

    await showDialog<void>(
      context: context,
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: BackButton(color: Theme.of(context).colorScheme.surface),
        ),
        body: Stack(
          children: [
            Center(
              child: EasyImageView(
                imageProvider: CustomImageProvider(
                  item: MediaItem(
                    remoteUrl: mediaController.mediaApiUrl,
                    id: 0,
                    mediaUrl: imageUrl,
                    token: token,
                    localDir: localPath,
                  ),
                  yardCode: yardCode,
                ),
                doubleTapZoomable: true,
              ),
            ),
            if (!disable)
              Positioned(
                bottom: Insets.gutter,
                right: Insets.gutter,
                child: Center(
                  child: FloatingActionButton(
                    child: const Icon(Icons.camera_alt),
                    onPressed: () async {
                      Navigator.of(context, rootNavigator: true).pop();
                      final imagePath = await _openCameraScreen(context);
                      if (imagePath != null) {
                        await _handleImageUpdload(imagePath);
                      }
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
