import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class YlPhotoStorage {
  YlPhotoStorage(String tempDir) {
    _temporaryDirectory = tempDir;
  }

  late String _temporaryDirectory;

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  static Future<File> copyFile(File source, String targetFilename) async {
    final targetPath = await _localPath;
    final targetFile = File('$targetPath/$targetFilename');

    // Read the file
    final bytes = await source.readAsBytes();

    // Write the file
    return targetFile.writeAsBytes(bytes);
  }

  static String storageFileNameToCloud(
    String mediaApiBaseUrl,
    String filename,
  ) {
    return '$mediaApiBaseUrl/${filename.split('/').last}';
  }

  String cloudFileNameToCache(String filename) {
    return '$_temporaryDirectory/media/${filename.split('/').last}';
  }
}
