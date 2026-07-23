import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class DevicesFormData {
  DevicesFormData({
    required Devices devices,
  }) : devices = ValueNotifier(devices);

  DevicesFormData.fromDevices(Devices devices)
      : devices = ValueNotifier(devices);

  Devices toDevices() => devices.value;

  late final ValueNotifier<Devices> devices;
}
