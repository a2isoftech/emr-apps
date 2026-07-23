import 'package:emr_sharedtypes/models/devices/atm_server_device.dart';
import 'package:emr_sharedtypes/models/devices/cashier_camera_device.dart';
import 'package:emr_sharedtypes/models/devices/cheque_printer_device.dart';
import 'package:emr_sharedtypes/models/devices/fingerprinter_scanner_device.dart';
import 'package:emr_sharedtypes/models/devices/id_webcam_device.dart';
import 'package:emr_sharedtypes/models/devices/remittance_printer_device.dart';
import 'package:json_annotation/json_annotation.dart';

part 'devices.g.dart';

@JsonSerializable(explicitToJson: true)
class Devices {
  const Devices({
    required this.id,
    required this.yardId,
    required this.yardCode,
    this.atmServers = const [],
    this.cashierCameras = const [],
    this.chequePrinters = const [],
    this.fingerprintScanners = const [],
    this.idWebcams = const [],
    this.remittancePrinters = const [],
  });

  Devices.withOneEach()
      : id = '',
        yardId = '',
        yardCode = '',
        atmServers = [AtmServerDevice.defaults()],
        cashierCameras = [CashierCameraDevice.defaults()],
        chequePrinters = [ChequePrinterDevice.defaults()],
        fingerprintScanners = [FingerprinterScannerDevice.defaults()],
        idWebcams = [IdWebcamDevice.defaults()],
        remittancePrinters = [RemittancePrinterDevice.defaults()];

  Devices.defaults()
      : id = '',
        yardId = '',
        yardCode = '',
        atmServers = const [],
        cashierCameras = const [],
        chequePrinters = const [],
        fingerprintScanners = const [],
        idWebcams = const [],
        remittancePrinters = const [];
  factory Devices.fromJson(Map<String, dynamic> json) =>
      _$DevicesFromJson(json);

  Map<String, dynamic> toJson() => _$DevicesToJson(this);

  final String id;
  final String yardId;
  final String yardCode;
  final List<AtmServerDevice> atmServers;
  final List<CashierCameraDevice> cashierCameras;
  final List<ChequePrinterDevice> chequePrinters;
  final List<FingerprinterScannerDevice> fingerprintScanners;
  final List<IdWebcamDevice> idWebcams;
  final List<RemittancePrinterDevice> remittancePrinters;
}
