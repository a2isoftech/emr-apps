// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulage_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HaulagePrice _$HaulagePriceFromJson(Map<String, dynamic> json) => HaulagePrice(
  (json['haulagePriceMatrixId'] as num).toInt(),
  json['firstLocationCode'] as String,
  json['secondLocationCode'] as String,
  json['haulierAccountNo'] as String,
  json['haulierName'] as String?,
  json['startDate'] == null
      ? null
      : DateTime.parse(json['startDate'] as String),
  json['endDate'] == null ? null : DateTime.parse(json['endDate'] as String),
  json['grade'] as String?,
  json['vehicleTypeName'] as String?,
  json['containerTypeName'] as String?,
  json['uomCode'] as String?,
  (json['rate'] as num?)?.toDouble(),
  json['currencyCode'] as String?,
  (json['minimumCost'] as num?)?.toDouble(),
  (json['distance'] as num?)?.toDouble(),
  (json['durationInSeconds'] as num?)?.toInt(),
);

Map<String, dynamic> _$HaulagePriceToJson(HaulagePrice instance) =>
    <String, dynamic>{
      'haulagePriceMatrixId': instance.haulagePriceMatrixId,
      'firstLocationCode': instance.firstLocationCode,
      'secondLocationCode': instance.secondLocationCode,
      'haulierAccountNo': instance.haulierAccountNo,
      'haulierName': instance.haulierName,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'grade': instance.grade,
      'vehicleTypeName': instance.vehicleTypeName,
      'containerTypeName': instance.containerTypeName,
      'uomCode': instance.uomCode,
      'rate': instance.rate,
      'currencyCode': instance.currencyCode,
      'minimumCost': instance.minimumCost,
      'distance': instance.distance,
      'durationInSeconds': instance.durationInSeconds,
    };
