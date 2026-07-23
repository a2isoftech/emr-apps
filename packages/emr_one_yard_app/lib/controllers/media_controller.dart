import 'dart:async';
import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';
import 'package:video_compress/video_compress.dart';

class MediaController {
  MediaController({
    required this.mediaApiUrl,
    required int imageCompressQuality,
    required this.yardCode,
  }) : _imageCompressQuality =
            (imageCompressQuality == 0) ? 75 : imageCompressQuality;
  final String mediaApiUrl;
  final String yardCode;
  final int _imageCompressQuality;

  String getMediaFullPath(String imagePath) =>
      MediaHelper.getMediaFullPath(mediaApiUrl, imagePath);

  Future<void> addTaskToUpload(
    List<String> source,
    List<String> remote,
  ) async {
    try {
      for (var i = 0; i < source.length; i++) {
        await EmrBackgroundService.instance.upload(
          source[i],
          remote[i],
        );
      }
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot upload location media',
        source: 'LocationDetailsController.uploadMedia()',
        error: ex,
        stackTrace: trace,
      );
    }
  }

  //Compresses an image and overwrites the original
  Future<File> compressImage(String filePath) async {
    try {
      final imageFile = File(filePath);
      final isExist = imageFile.existsSync();
      if (isExist) {
        // Get original image dimensions
        final result = ImageSizeGetter.getSizeResult(FileInput(imageFile));
        final originalWidth = result.size.width;
        final originalHeight = result.size.height;

        final tempDir = await MediaHelper.getTemporaryDirectory();
        final tempPath = '$tempDir/${const Uuid().v4()}.jpg';

        final compressedXFile = await FlutterImageCompress.compressAndGetFile(
          filePath,
          tempPath,
          minWidth: originalWidth,
          minHeight: originalHeight,
          quality: _imageCompressQuality,
          keepExif: true,
        );

        if (compressedXFile == null) {
          return File(filePath);
        }

        final tempFile = File(compressedXFile.path);
        // Copy to original path and clean up
        await tempFile.copy(filePath);
        await tempFile.delete();
      }
      return File(filePath);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot compress image',
        source: 'MediaController.compressImage()',
        error: ex,
        stackTrace: trace,
        params: {'FilePath': filePath},
      );
      return File(filePath);
    }
  }

  Future<File?> compressVideo(String filePath) async {
    try {
      final originalFile = File(filePath);

      if (!originalFile.existsSync()) {
        return null;
      }

      final compressedVideo = await VideoCompress.compressVideo(
        filePath,
        quality: VideoQuality.MediumQuality,
      );

      if (compressedVideo == null || compressedVideo.path == null) {
        return null;
      }

      final tempFile = File(compressedVideo.path!);
      await tempFile.copy(filePath);
      await tempFile.delete();

      return File(filePath);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot compress video',
        source: 'MediaController.compressVideo()',
        error: ex,
        stackTrace: trace,
        params: {'FilePath': filePath},
      );
      return null;
    }
  }

  Future<File?> getCachedImageFile(
    String imageUrl,
    String token,
    String localDir,
  ) async {
    try {
      if (localDir.isEmpty || imageUrl.isEmpty || token.isEmpty) {
        throw const FormatException(
          'Invalid parameters: localDir, imageUrl, and token must not be empty',
        );
      }

      final fileName = path.basename(imageUrl);
      final localPath = path.join(
        localDir,
        fileName,
      );
      final file = File(localPath);

      if (file.existsSync()) {
        return file;
      }

      final cacheManager = DefaultCacheManager();

      final fileInfo = await cacheManager.getFileFromCache(imageUrl);

      if (fileInfo != null && fileInfo.file.existsSync()) {
        final File cachedFile = fileInfo.file;
        return cachedFile;
      } else {
        final File downloadedFile = await cacheManager.getSingleFile(
          imageUrl,
          headers: {
            'Authorization': 'Bearer $token',
            'X-Yard-Code': yardCode,
          },
        );
        return downloadedFile;
      }
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot get Cached Image File',
        source: 'MediaController.getCachedImageFile()',
        error: ex,
        stackTrace: trace,
        params: {'FilePath': imageUrl},
      );
      return null;
    }
  }

  Future<String?> processVideoThumbnail(
    MediaFile media,
    String location,
  ) async {
    if (media.mediaThumbnail == null) return null;

    final fileName = path.basenameWithoutExtension(media.media.path);
    final thumbnailPath = '$location/thumbnail_$fileName.jpg';
    final thumbnailFile = File(thumbnailPath);
    final bytes = await media.mediaThumbnail!.readAsBytes();
    await thumbnailFile.writeAsBytes(bytes);
    return thumbnailPath;
  }
}
