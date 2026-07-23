import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

abstract class AccountManagementBaseController extends ChangeNotifier {
  void setAccount(Account? a) {}

  Future<(bool success, String error)> update();

  Future<(bool success, String error)> add();

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

  /// Toggled after a successful add/update/delete to signal the grid to refresh.
  final ValueNotifier<int> gridRefreshSignal = ValueNotifier(0);
}
