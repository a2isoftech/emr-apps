// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Devices _$DevicesFromJson(Map<String, dynamic> json) => Devices(
      id: json['id'] as String,
      yardId: json['yardId'] as String,
      yardCode: json['yardCode'] as String,
      atmServers: (json['atmServers'] as List<dynamic>?)
              ?.map((e) => AtmServerDevice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cashierCameras: (json['cashierCameras'] as List<dynamic>?)
              ?.map((e) =>
                  CashierCameraDevice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      chequePrinters: (json['chequePrinters'] as List<dynamic>?)
              ?.map((e) =>
                  ChequePrinterDevice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fingerprintScanners: (json['fingerprintScanners'] as List<dynamic>?)
              ?.map((e) => FingerprinterScannerDevice.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      idWebcams: (json['idWebcams'] as List<dynamic>?)
              ?.map((e) => IdWebcamDevice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      remittancePrinters: (json['remittancePrinters'] as List<dynamic>?)
              ?.map((e) =>
                  RemittancePrinterDevice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DevicesToJson(Devices instance) => <String, dynamic>{
      'id': instance.id,
      'yardId': instance.yardId,
      'yardCode': instance.yardCode,
      'atmServers': instance.atmServers.map((e) => e.toJson()).toList(),
      'cashierCameras': instance.cashierCameras.map((e) => e.toJson()).toList(),
      'chequePrinters': instance.chequePrinters.map((e) => e.toJson()).toList(),
      'fingerprintScanners':
          instance.fingerprintScanners.map((e) => e.toJson()).toList(),
      'idWebcams': instance.idWebcams.map((e) => e.toJson()).toList(),
      'remittancePrinters':
          instance.remittancePrinters.map((e) => e.toJson()).toList(),
    };
