import 'package:emr_one_core/models/yards/device_info.dart';

class YardDevices {
  YardDevices({required this.yardCode, required this.devices});
  final String yardCode;
  final List<DeviceInfo> devices;
}
