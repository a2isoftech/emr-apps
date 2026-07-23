import 'package:flutter/material.dart';

class FieldsConfigurationData {
  FieldsConfigurationData({
    bool yardSelected = false,
    bool enableTechmetCatSettingsLocation = false,
    bool enableCanModeLocation = false,
  }) {
    this.yardSelected = ValueNotifier(yardSelected);
    this.enableTechmetCatSettingsLocation =
        ValueNotifier(enableTechmetCatSettingsLocation);
    this.enableCanModeLocation = ValueNotifier(enableCanModeLocation);
  }

  late final ValueNotifier<bool> yardSelected;
  late final ValueNotifier<bool> enableTechmetCatSettingsLocation;
  late final ValueNotifier<bool> enableCanModeLocation;
}
