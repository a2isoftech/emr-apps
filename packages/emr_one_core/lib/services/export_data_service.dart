import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:universal_html/html.dart' as html;

class ExportDataService {
  Future<void> downloadFileWeb({
    required String fileName,
    required dynamic data,
  }) {
    final blob = html.Blob([data]);
    final anchorElement = html.AnchorElement(
      href: html.Url.createObjectUrlFromBlob(blob),
    )..setAttribute('download', fileName);
    html.document.body!.children.add(anchorElement);
    anchorElement.click();
    html.document.body!.children.remove(anchorElement);
    return Future.value();
  }

  Future<String> _getDownloadDirectory() async {
    if (Platform.isIOS) {
      final dir = await getDownloadsDirectory();
      return dir?.path ?? '';
    }

    return '/storage/emulated/0/Download/';
  }

  Future<String> getFileName(String fileName) async {
    var num = 0;
    final dirPath = await _getDownloadDirectory();
    final originalPath = '$dirPath$fileName';
    var file = File(originalPath);

    while (file.existsSync()) {
      num++;
      final splitPath = originalPath.split('.');
      final filePath = '${splitPath.first}($num).${splitPath.last}';
      file = File(filePath);
    }

    return file.path;
  }

  Future<bool> isStoragePermissionGranted() async {
    if (Platform.isIOS) {
      return true;
    }

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;

    if (androidInfo.version.sdkInt >= 30) {
      if (await Permission.manageExternalStorage.isGranted) return true;
      if (await Permission.manageExternalStorage.isPermanentlyDenied) {
        return false;
      }

      return Permission.manageExternalStorage.request().isGranted;
    }

    if (await Permission.storage.isGranted) return true;
    if (await Permission.storage.isPermanentlyDenied) return false;

    return Permission.storage.request().isGranted;
  }
}
