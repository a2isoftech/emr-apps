import 'package:emr_one_fire_register/models/device_area.dart';

class PunchDevice {
  PunchDevice({
    required this.id,
    required this.zone,
    required this.yardCode,
    required this.active,
    required this.clockDevice,
    required this.deviceAreas,
  });

  final int id;
  final String zone;
  final String yardCode;
  final bool active;
  final String clockDevice;
  final List<DeviceArea> deviceAreas;
}
