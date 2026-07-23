import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    required this.imagePath,
    required this.localPath,
    required this.token,
    required this.yardCode,
    this.height,
    this.width,
    super.key,
  });

  /// Factory for a thumbnail with optional size
  factory ImageWidget.thumbnail({
    required String imagePath,
    required String localPath,
    required String token,
    required String yardCode,
    double? height,
    double? width,
    Key? key,
  }) {
    return ImageWidget(
      imagePath: imagePath,
      localPath: localPath,
      token: token,
      height: height ?? 95,
      width: width ?? 95,
      key: key,
      yardCode: yardCode,
    );
  }

  final String imagePath;
  final String localPath;
  final String token;
  final double? height;
  final double? width;
  final String yardCode;

  @override
  Widget build(BuildContext context) {
    var isThumbnail = false;
    var image = _getImageProvider(yardCode, isThumbnail);

    if (height != null || width != null) {
      isThumbnail = true;
      image = ThumbnailWidget(
        height: height,
        width: width,
        child: image,
      );
    }

    return image;
  }

  Widget _getImageProvider(String yardCode, bool isThumbnail) {
    Widget imageWidget;

    if (localPath.isNotEmpty) {
      final fileName = path.basename(imagePath);
      final localPath = path.join(this.localPath, fileName);
      final file = File(localPath);
      if (file.existsSync()) {
        imageWidget = Image.file(
          file,
          fit: BoxFit.cover,
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) =>
              _frameBuilder(wasSynchronouslyLoaded, child, frame),
        );
      } else {
        imageWidget = _networkImageWidget(yardCode, isThumbnail);
      }
    } else {
      imageWidget = _networkImageWidget(yardCode, isThumbnail);
    }

    return imageWidget;
  }

  Widget _networkImageWidget(String yardCode, bool isThumbnail) {
    return !kIsWeb
        ? CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: imagePath,
            httpHeaders: {
              'Authorization': 'Bearer $token',
              'X-Yard-Code': yardCode,
            },
            errorWidget: (context, url, error) => Center(
              child: Icon(
                Icons.broken_image,
                color: Theme.of(context).colorScheme.error,
                size: isThumbnail ? Insets.gutter : LayoutConstants.iconSizeBig,
              ),
            ),
            progressIndicatorBuilder: (context, url, progress) =>
                const Center(child: CircularProgressIndicator()),
          )
        : Image.network(
            fit: BoxFit.cover,
            imagePath,
            headers: {
              'Authorization': 'Bearer $token',
              'X-Yard-Code': yardCode,
            },
            errorBuilder: (context, url, error) => Center(
              child: Icon(
                Icons.broken_image,
                color: Theme.of(context).colorScheme.error,
                size: isThumbnail ? Insets.gutter : LayoutConstants.iconSizeBig,
              ),
            ),
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) =>
                _frameBuilder(wasSynchronouslyLoaded, child, frame),
          );
  }

  Widget _frameBuilder(bool wasSynchronouslyLoaded, Widget child, int? frame) {
    if (frame == null) {
      return const SizedBox(
        width: Insets.gutter / 2,
        height: Insets.gutter / 2,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return child;
  }
}
