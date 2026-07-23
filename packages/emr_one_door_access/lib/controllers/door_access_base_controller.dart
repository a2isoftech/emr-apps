import 'package:flutter/material.dart';

abstract class DoorAccessBaseController extends ChangeNotifier {
  Future<(bool success, String error)> update();

  Future<(bool success, String error)> delete() {
    return Future.value((false, ''));
  }

  void reset();

  late bool processing = false;
  void toggleProcessing({bool value = false}) {
    if (processing != value) {
      processing = value;
      notifyListeners();
    }
  }

  bool isProcessing() => processing;

  final ValueNotifier<bool> isFormValid = ValueNotifier(false);
}
