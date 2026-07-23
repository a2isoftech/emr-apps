import 'package:flutter/services.dart';

class EOFullScreenSupport {
  static void goFullScreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}
