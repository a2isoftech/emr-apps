import 'package:emr_sharedtypes/models/devices/device_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cashier_camera_device.g.dart';

@JsonSerializable()
class CashierCameraDevice extends DeviceBase {
  CashierCameraDevice({
    super.name,
    this.ipAddress = '',
  });

  CashierCameraDevice.defaults() : ipAddress = '';

  factory CashierCameraDevice.fromJson(Map<String, dynamic> json) =>
      _$CashierCameraDeviceFromJson(json);

  final String ipAddress;

  @override
  Map<String, dynamic> toJson() => _$CashierCameraDeviceToJson(this);
}
