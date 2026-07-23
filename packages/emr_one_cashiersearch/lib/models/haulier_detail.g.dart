// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulier_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Haulier _$HaulierFromJson(Map<String, dynamic> json) => Haulier(
  confBy: json['confBy'] as String?,
  confDate: json['confDate'] == null
      ? null
      : DateTime.parse(json['confDate'] as String),
  containerType: json['containerType'] as String?,
  eMRInvoiceNo: json['eMRInvoiceNo'] as String?,
  haulageAccountNumber: json['haulageAccountNumber'] as String?,
  haulageCharge: json['haulageCharge'] == null
      ? null
      : UomValue.fromJson(json['haulageCharge'] as Map<String, dynamic>),
  haulageCost: json['haulageCost'] == null
      ? null
      : UomValue.fromJson(json['haulageCost'] as Map<String, dynamic>),
  haulageRate: json['haulageRate'] == null
      ? null
      : UomValue.fromJson(json['haulageRate'] as Map<String, dynamic>),
  haulageStatus: json['haulageStatus'] as String?,
  haulierName: json['haulierName'] as String?,
  hauliersInvoiceNo: json['hauliersInvoiceNo'] as String?,
  jobnumber: json['jobnumber'] as String?,
  manualHaulier: json['manualHaulier'] as String?,
  truckNumber: json['truckNumber'] as String?,
);

Map<String, dynamic> _$HaulierToJson(Haulier instance) => <String, dynamic>{
  'haulageAccountNumber': instance.haulageAccountNumber,
  'haulierName': instance.haulierName,
  'eMRInvoiceNo': instance.eMRInvoiceNo,
  'hauliersInvoiceNo': instance.hauliersInvoiceNo,
  'jobnumber': instance.jobnumber,
  'haulageStatus': instance.haulageStatus,
  'containerType': instance.containerType,
  'confBy': instance.confBy,
  'confDate': instance.confDate?.toIso8601String(),
  'haulageRate': instance.haulageRate?.toJson(),
  'haulageCost': instance.haulageCost?.toJson(),
  'haulageCharge': instance.haulageCharge?.toJson(),
  'truckNumber': instance.truckNumber,
  'manualHaulier': instance.manualHaulier,
};
