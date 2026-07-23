import 'dart:async';
import 'dart:io';

import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/screens/camera_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:signals/signals_flutter.dart';
import 'package:uuid/uuid.dart';

class MediaPickerUtils {
  /// Pick images or videos from gallery
  static Future<List<MediaFile>> pickFromGallery(
    BuildContext context,
    String location,
    MediaType type,
    Signal<bool> processing,
  ) async {
    processing.value = true;
    final picked = <MediaFile>[];
    try {
      final files = await openPicker(type, context);
      for (final file in files) {
        final copied = await copyMediaFile(File(file.path), location);
        if (copied != null) {
          copied.mediaType = type;
          picked.add(copied);
        }
      }
    } finally {
      processing.value = false;
    }
    return picked;
  }

  /// Capture media using camera screen
  static Future<List<MediaFile>> captureFromCamera(
    BuildContext context,
    String location,
    String? title,
  ) async {
    final captured = <MediaFile>[];
    await showDialog<void>(
      context: context,
      builder: (context) {
        return Material(
          child: CameraScreen.photoAndVideo(
            mediaDirectory: location,
            title: title ?? '',
            onMediaCapture: (capture) async {
              if (capture.captureRequest.path != null) {
                final file = await MediaFile.fromPath(
                  capture.captureRequest.path!,
                );
                if (file != null) {
                  captured.add(file);
                }
              }
            },
          ),
        );
      },
    );
    return captured;
  }

  /// Internal picker wrapper for ImagePicker
  static Future<List<XFile>> openPicker(
    MediaType type,
    BuildContext context,
  ) async {
    final picker = ImagePicker();
    final pickedFiles = <XFile>[];
    if (type == MediaType.image) {
      final images = await picker.pickMultiImage(imageQuality: 95, limit: 10);
      pickedFiles.addAll(images);
    } else {
      final video = await picker.pickVideo(
        source: ImageSource.gallery,
        maxDuration: const Duration(minutes: 1),
      );
      if (video != null) {
        pickedFiles.add(video);
      }
    }
    return pickedFiles;
  }

  /// Copy the selected/captured file to app directory
  static Future<MediaFile?> copyMediaFile(File media, String location) async {
    final fileName = '${const Uuid().v4()}.${media.path.split('.').last}';
    final filePath = '$location/$fileName';
    final tempFile = File(filePath);
    await tempFile.writeAsBytes(await media.readAsBytes());
    return MediaFile.fromPath(tempFile.path);
  }
}
