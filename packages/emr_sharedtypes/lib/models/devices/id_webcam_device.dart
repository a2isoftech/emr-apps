import 'package:emr_sharedtypes/models/devices/device_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'id_webcam_device.g.dart';

@JsonSerializable()
class IdWebcamDevice extends DeviceBase {
  IdWebcamDevice({
    super.name,
    this.ipAddress = '',
  });

  IdWebcamDevice.defaults() : ipAddress = '';

  factory IdWebcamDevice.fromJson(Map<String, dynamic> json) =>
      _$IdWebcamDeviceFromJson(json);

  final String ipAddress;

  @override
  Map<String, dynamic> toJson() => _$IdWebcamDeviceToJson(this);
}
