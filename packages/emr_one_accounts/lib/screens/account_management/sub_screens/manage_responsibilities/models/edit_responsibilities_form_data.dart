import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:flutter/material.dart';

class EditResponsibilitiesFormData {
  EditResponsibilitiesFormData(int? priority) {
    this.priority = ValueNotifier(priority);
  }

  static KeyValuePair<String, String> defaultManager = (key: '', value: '');

  /// The original manager's userId before any edits.
  String? originalManagerId;

  /// The original manager's service type before any edits.
  String? originalServiceType;

  late ValueNotifier<KeyValuePair<String, String>> newManager = ValueNotifier(
    defaultManager,
  );

  late ValueNotifier<KeyValuePair<Enum$ServiceType, String>?> serviceType =
      ValueNotifier(null);

  static KeyValuePair<Enum$ManagementType, String> defaultManagementType = (
    key: Enum$ManagementType.USER,
    value: 'USER',
  );

  late final ValueNotifier<int?> priority;
  late final ValueNotifier<KeyValuePair<Enum$ManagementType, String>>
  managementType = ValueNotifier(defaultManagementType);

  late final List<UpdateManagerInput> managers = [];
  final ValueNotifier<bool> isPrimaryManager = ValueNotifier(false);

  void reset() {
    newManager.value = defaultManager;
    serviceType.value = null;
    managementType.value = defaultManagementType;
    isPrimaryManager.value = false;
  }

  void addListeners(void Function() listener) {
    newManager.addListener(listener);
    serviceType.addListener(listener);
    priority.addListener(listener);
  }

  void removeListeners(void Function() listener) {
    newManager.removeListener(listener);
    serviceType.removeListener(listener);
    priority.removeListener(listener);
  }
}
