import 'package:emr_one_fire_register/models/area_zone.dart';

class DeviceArea {
  DeviceArea({
    required this.areaGuid,
    required this.areaName,
    required this.areaZones,
    required this.active,
  });

  final String areaGuid;
  final String areaName;
  final List<AreaZone> areaZones;
  final bool active;
}
