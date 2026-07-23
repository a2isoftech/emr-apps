import 'dart:io';

import 'package:async/async.dart';
import 'package:emr_core_api/graphql/queries/yard_app/tickets/get_ticket_details.graphql.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:uuid/uuid.dart';

class MediaHelper {
  static final AsyncMemoizer<String> _globalFilePathCache =
      AsyncMemoizer<String>();
  static final AsyncMemoizer<String> _tempDirectory = AsyncMemoizer<String>();
  static const String _mediaPart = 'com.emrgroup.yardapp2/';
  static const String loadOutPart = '/loadOuts/';

  static Future<String> getLocalFolder(String suffix) async {
    var path = '';
    if (!kIsWeb) {
      if (Platform.isAndroid) {
        // Run once and cache globally for all instances
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
      final ticketDir = '$path/yard-app/$suffix';
      final directory = Directory(ticketDir);
      if (!directory.existsSync()) {
        await directory.create(recursive: true);
      }
      return directory.path;
    }
    return Future.value('');
  }

  static String getMediaFullPath(String mediaApiUrl, String imagePath) =>
      concatenatePath(mediaApiUrl, imagePath).toString();

  static String videoThumbnailFromRemote(String mediaApiUrl, String filePath) {
    final removeIdentifier = filePath.substring(3);
    final parts = removeIdentifier.split('/');
    parts.removeLast();
    final filename = path.basenameWithoutExtension(filePath);
    final newFilename = 'thumbnail_$filename';
    final newPath = '/i/${parts.join('/')}/$newFilename.jpg';
    return concatenatePath(mediaApiUrl, newPath).toString();
  }

  static String createVideoThumbnailUrl(
    String mediaApiUrl,
    String filePath,
    String filePart,
  ) {
    final fileName = path.basename(filePath);
    final thumbnailFileName = '/i/$_mediaPart$filePart/$fileName';
    return concatenatePath(mediaApiUrl, thumbnailFileName).toString();
  }

  static String createMediaFullUrl(
    String mediaApiUrl,
    String mediaPath,
    String mediaPart,
  ) {
    final type = getMediaApiPrefix(mediaPath);
    final url = '$type$_mediaPart$mediaPart/${path.basename(mediaPath)}';
    return concatenatePath(mediaApiUrl, url).toString();
  }

  static String createMediaPartialUrl(String mediaPath, String mediaPart) {
    final type = getMediaApiPrefix(mediaPath);
    return '$type$_mediaPart$mediaPart/${path.basename(mediaPath)}';
  }

  /// Ensure that we retain any base path on the baseAddress when appending
  /// an additional path.
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

  static String getImageThumbnailPath(int width, String path) {
    return 'i/$width/0${path.substring(2)}';
  }

  static String getMediaApiPrefix(String filePath) {
    final extension = path.extension(filePath).toLowerCase();
    return extension == '.mp4' ? '/v/' : '/i/';
  }

  static MediaType getMediaType(String path) =>
      path.startsWith('/v/') ? MediaType.video : MediaType.image;

  /// Will only work for media service valid Uris (/i/, /v/)
  static String removeBasePath(String fullUrl) {
    // Get the first instance of '/v/', '/i/' or start of url 'i/' or 'v/'
    final startIndex = fullUrl.indexOf(RegExp(r'(\/[i|v]\/|^[i|v]\/)'));
    if (startIndex < 0) {
      throw const FormatException('Url format Incorrect');
    }
    return fullUrl.substring(startIndex, fullUrl.length);
  }

  static Future<String> getTemporaryDirectory() async {
    return _tempDirectory.runOnce(() async {
      final dir = await path_provider.getTemporaryDirectory();
      return dir.path;
    });
  }

  static String getNewLocalImagePath(String localDir) {
    return '${path.join(localDir, const Uuid().v4())}.jpg';
  }

  static List<MediaItem> getLineImages(
    String localDir,
    String token,
    String mediaApiUrl,
    String ticketNumber,
    String yardCode,
    List<Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia>
    allMedia,
    int lineNumber,
  ) {
    return [
      ...allMedia.map(
        (m) => MediaItem(
          mediaUrl: MediaHelper.getMediaFullPath(mediaApiUrl, m.url),
          token: token,
          id: lineNumber,
          discrepantId: m.discrepantReason,
          remoteUrl: mediaApiUrl,
          note: m.inspectionNote,
          localDir: localDir,
        ),
      ),
    ];
  }
}
