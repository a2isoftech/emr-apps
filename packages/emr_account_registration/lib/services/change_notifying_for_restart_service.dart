import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChangeNotifyingForRestartService extends ChangeNotifier {
  // Private constructor
  ChangeNotifyingForRestartService._internal();

  // Singleton instance
  static final ChangeNotifyingForRestartService _singleton =
      ChangeNotifyingForRestartService._internal();

  // Factory constructor to return the singleton instance
  factory ChangeNotifyingForRestartService() => _singleton;

  void notifyListenersInternal() {
    notifyListeners();
    // Additional logic can be added here if needed
  }
}
