import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;

/// All text file logging operations should use this class to ensure that any
/// text file based logging processes use the same log directory structure.
@internal
class LogDirectoryHelper {
  static Future<String?> getLogDirectory() async {
    if (kIsWeb) {
      return null;
    }
    final documentsPath =
        (await path_provider.getApplicationDocumentsDirectory()).path;
    return path.join(documentsPath, 'logs');
  }
}
