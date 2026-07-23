import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/logging/helpers/log_directory_helper.dart';

class TextLogFileService {
  TextLogFileService();

  Future<List<XFile>> getLogFiles({int? daysToGet}) async {
    final logFolder = await LogDirectoryHelper.getLogDirectory();

    if (logFolder == null) {
      return [];
    }
    final directory = Directory(logFolder);
    final files =
        (await directory.list(followLinks: false).asyncMap((fileEntity) async {
      final file = XFile(fileEntity.path);
      final modifiedDate = await file.lastModified();
      if (modifiedDate.dateOnly.isAfter(
        DateTime.now().dateOnly.subtract(Duration(days: daysToGet ?? 1)),
      )) {
        return file;
      }
    }).toList())
            .whereType<XFile>()
            .toList();

    return files;
  }
}
