import 'package:emr_sharedtypes/models/devices/device_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remittance_printer_device.g.dart';

@JsonSerializable()
class RemittancePrinterDevice extends DeviceBase {
  RemittancePrinterDevice({
    super.name,
    this.printerName = '',
  });

  RemittancePrinterDevice.defaults() : printerName = '';

  factory RemittancePrinterDevice.fromJson(Map<String, dynamic> json) =>
      _$RemittancePrinterDeviceFromJson(json);

  final String printerName;

  @override
  Map<String, dynamic> toJson() => _$RemittancePrinterDeviceToJson(this);
}
