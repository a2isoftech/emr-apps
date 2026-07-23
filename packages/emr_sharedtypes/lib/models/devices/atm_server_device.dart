import 'package:emr_sharedtypes/enums/atm_server_device_type.dart';
import 'package:emr_sharedtypes/models/devices/device_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'atm_server_device.g.dart';

@JsonSerializable()
class AtmServerDevice extends DeviceBase {
  AtmServerDevice({
    super.name,
    this.ipAddress = '',
    this.encryptionKey = '',
    this.deviceId = '',
    this.apiKey = '',
    this.paymentAPIEndPoint = '',
    this.authorisationAPIEndpoint = '',
    this.atmServerDeviceType,
  });

  AtmServerDevice.defaults()
      : ipAddress = '',
        encryptionKey = '',
        deviceId = '',
        apiKey = '',
        paymentAPIEndPoint = '',
        authorisationAPIEndpoint = '',
        atmServerDeviceType = null;

  factory AtmServerDevice.fromJson(Map<String, dynamic> json) =>
      _$AtmServerDeviceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AtmServerDeviceToJson(this);

  final String ipAddress;
  final String encryptionKey;
  final String deviceId;
  final String apiKey;
  final String paymentAPIEndPoint;
  final String authorisationAPIEndpoint;
  final AtmServerDeviceType? atmServerDeviceType;
}
