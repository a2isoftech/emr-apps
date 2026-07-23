import 'dart:io';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:meta/meta.dart';

@internal
class TextFileCleanupService {
  TextFileCleanupService({
    required this.logDirectory,
    required this.retentionInDays,
  });

  final int retentionInDays;
  final String logDirectory;

  Future<void> cleanup() async {
    final directory = Directory(logDirectory);
    directory.list(followLinks: false).listen((fileEntity) async {
      final file = File(fileEntity.path);
      final modifiedDate = file.lastModifiedSync();
      if (modifiedDate.dateOnly.isBefore(
        DateTime.now().dateOnly.subtract(Duration(days: retentionInDays - 1)),
      )) {
        await file.delete();
      }
    });
  }
}
