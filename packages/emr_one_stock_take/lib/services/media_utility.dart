import 'dart:io';

import 'package:async/async.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;

class MediaUtility {
  static final AsyncMemoizer<String> _globalFilePathCache =
      AsyncMemoizer<String>();

  static Future<String> getLocalFolder(String suffix, String folder) async {
    var path = '';
    if (!kIsWeb) {
      if (Platform.isAndroid) {
        path = await _globalFilePathCache.runOnce(() async {
          final dir = await path_provider.getExternalStorageDirectory();
          return dir?.path ?? '';
        });
      } else if (Platform.isIOS) {
        // Run once and cache globally for all instances
        path = await _globalFilePathCache.runOnce(() async {
          final dir = await path_provider.getApplicationSupportDirectory();
          return dir.path;
        });
      }
    }

    if (path.isNotEmpty) {
      final photoDir = '$path/$folder/$suffix';
      final directory = Directory(photoDir);
      if (!directory.existsSync()) {
        await directory.create(recursive: true);
      }
      return directory.path;
    }
    return Future.value('');
  }

  static String getMediaFullPath(String mediaApiUrl, String imagePath) =>
      concatenatePath(mediaApiUrl, imagePath).toString();

  static String createMediaFullUrl(
    String mediaApiUrl,
    String filePath,
    String mediaPart,
    String mediaId,
  ) {
    final type = getMediaApiPrefix(filePath);
    final url = '$type$mediaPart$mediaId/${path.basename(filePath)}';
    return concatenatePath(mediaApiUrl, url).toString();
  }

  static String getMediaApiPrefix(String filePath) {
    final extension = path.extension(filePath).toLowerCase();
    return extension == '.mp4' ? '/v/' : '/i/';
  }

  static String prepareMediaMetadata(List<MetadataModel> keyValues) {
    return keyValues
        .map(
          (data) =>
              'meta.Media%2F${data.key}=${data.value.replaceAll('/', '%2F')}',
        )
        .join('&');
  }

  static Uri concatenatePath(String address, String additionalPath) {
    final baseAddress = Uri.parse(address);
    final existingPath = baseAddress.path;
    final parsedPath = removeBasePath(additionalPath);
    final pathToAppend = parsedPath.startsWith('/')
        ? parsedPath.replaceFirst('/', '')
        : parsedPath;

    final joinedPath = path.join(existingPath, pathToAppend);

    return baseAddress.resolve(joinedPath);
  }

  /// Will only work for media service valid Uris (/i/, /v/)
  static String removeBasePath(String fullUrl) {
    // Get the first instance of '/v/', '/i/' or start of url 'i/' or 'v/'
    final startIndex = fullUrl.indexOf(RegExp(r'(\/[i|v]\/|^[i|v]\/)'));
    if (startIndex < 0) {
      throw const FormatException('Url format Incorrect');
    }
    return fullUrl.substring(startIndex, fullUrl.length);
  }

  // Get local path for media if available
  static String? getLocalPath(String remoteUrl, String localDir) {
    String? localImagePath;
    final fileName = path.basename(remoteUrl);
    final localPath = path.join(localDir, fileName);
    final file = File(localPath);
    if (file.existsSync()) {
      localImagePath = localPath;      
    }
    return localImagePath;
  }
}
