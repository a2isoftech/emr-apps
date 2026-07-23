import 'package:emr_sharedtypes/models/devices/device_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cheque_printer_device.g.dart';

@JsonSerializable()
class ChequePrinterDevice extends DeviceBase {
  ChequePrinterDevice({
    super.name,
    this.printerName = '',
  });

  ChequePrinterDevice.defaults() : printerName = '';

  factory ChequePrinterDevice.fromJson(Map<String, dynamic> json) =>
      _$ChequePrinterDeviceFromJson(json);

  final String printerName;

  @override
  Map<String, dynamic> toJson() => _$ChequePrinterDeviceToJson(this);
}
