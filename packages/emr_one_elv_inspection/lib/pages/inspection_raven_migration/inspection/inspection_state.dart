import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/inspection_vehicle_quote.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class InspectionState {
  InspectionState({
    required this.vehicleKey,
    required this.vehicleQuote,
    this.activeTab = InspectionTabs.vehiclePictures,
    this.currentScreen = InspectionScreen.inspection,
  });

  String vehicleKey;
  InspectionVehicleQuote vehicleQuote;
  InspectionTabs activeTab;
  ValueNotifier<bool> hideVehicleIdentifier = ValueNotifier(false);
  InspectionScreen currentScreen;
  ValueNotifier<bool> isVinValid = ValueNotifier(false);
  ValueNotifier<bool> isVinUnreadable = ValueNotifier(false);
  ValueNotifier<bool> loadingNotifier = ValueNotifier(false);
  final isSealNumberUsed = signal<bool>(false);
}
