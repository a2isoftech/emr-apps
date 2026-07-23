import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;

class CustomImageProvider extends ImageProvider<CustomImageProvider> {
  CustomImageProvider({
    required this.item,
    required this.yardCode,
  });

  final MediaItem item;
  final String yardCode;

  @override
  Future<CustomImageProvider> obtainKey(ImageConfiguration configuration) {
    return SynchronousFuture<CustomImageProvider>(this);
  }

  @override
  ImageStreamCompleter loadImage(
    CustomImageProvider key,
    ImageDecoderCallback decode,
  ) {
    // Determine which image provider to use based on local or network source
    ImageProvider provider;
    if (item.localDir.isNotEmpty) {
      final fileName = path.basename(item.fullUrl);
      final localPath = path.join(item.localDir, fileName);
      final file = File(localPath);
      if (file.existsSync()) {
        provider = FileImage(file);
      } else {
        // If local file does not exist, fall back to network
        provider = _getNetworkImageProvider();
      }
    } else {
      provider = _getNetworkImageProvider();
    }

    return provider.loadImage(provider, decode);
  }

  ImageProvider _getNetworkImageProvider() {
    if (kIsWeb) {
      return NetworkImage(
        item.fullUrl,
        headers: {
          'Authorization': 'Bearer ${item.token}',
          'X-Yard-Code': yardCode,
        },
      );
    }
    return CachedNetworkImageProvider(
      item.fullUrl,
      headers: {
        'Authorization': 'Bearer ${item.token}',
        'X-Yard-Code': yardCode,
      },
    );
  }
}
