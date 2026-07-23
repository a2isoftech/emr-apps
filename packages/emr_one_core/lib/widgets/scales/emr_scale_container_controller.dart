import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EmrScaleContainerController {
  EmrScaleContainerController({
    required this.scales,
    this.enableManualWeight = false,
    this.uomsForManualWeight,
    this.preferredUom,
    bool enabled = false,
  }) {
    _enabledNotifier.value = enabled;
  }

  final Uom? preferredUom;
  final List<Scale> scales;
  final bool enableManualWeight;
  final List<Uom>? uomsForManualWeight;

  final ValueNotifier<bool> _enabledNotifier = ValueNotifier(false);
  ValueNotifier<bool> get enabledNotifier => _enabledNotifier;
  bool get enabled => enabledNotifier.value;
  set enabled(bool value) => enabledNotifier.value = value;
}
