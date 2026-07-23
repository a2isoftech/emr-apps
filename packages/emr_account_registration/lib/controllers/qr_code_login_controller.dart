import 'package:flutter/material.dart';

class QrCodeLoginController extends ChangeNotifier {
  QrCodeLoginController() {
    accessCode.addListener(() {
      notifyListeners();
    });
  }

  ValueNotifier<String> accessCode = ValueNotifier('');

  bool get hasAccessCode => accessCode.value.isNotEmpty;
}
