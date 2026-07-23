import 'package:emr_sharedtypes/models/devices/device_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fingerprinter_scanner_device.g.dart';

@JsonSerializable()
class FingerprinterScannerDevice extends DeviceBase {
  FingerprinterScannerDevice({
    super.name,
    this.ipAddress = '',
  });

  FingerprinterScannerDevice.defaults() : ipAddress = '';

  factory FingerprinterScannerDevice.fromJson(Map<String, dynamic> json) =>
      _$FingerprinterScannerDeviceFromJson(json);

  final String ipAddress;

  @override
  Map<String, dynamic> toJson() => _$FingerprinterScannerDeviceToJson(this);
}
