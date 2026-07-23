// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:web/web.dart';

class EOFullScreenSupport {
  static void goFullScreen() {
    try {
      document.documentElement?.requestFullscreen();
    } on Exception {
      // Ignore.
    }
  }
}
