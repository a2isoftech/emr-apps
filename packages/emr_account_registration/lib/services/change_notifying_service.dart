import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChangeNotifyingService extends ChangeNotifier {
  // Private constructor
  ChangeNotifyingService._internal();

  // Singleton instance
  static final ChangeNotifyingService _singleton =
      ChangeNotifyingService._internal();

  // Factory constructor to return the singleton instance
  factory ChangeNotifyingService() => _singleton;

  void notifyListenersInternal() {
    notifyListeners();
    // Additional logic can be added here if needed
  }
}
