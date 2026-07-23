// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provisional_cost_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProvisionalCostDetails _$ProvisionalCostDetailsFromJson(
        Map<String, dynamic> json) =>
    ProvisionalCostDetails()
      ..haulagePriceMatrixId = (json['haulagePriceMatrixId'] as num?)?.toInt()
      ..baseRate = (json['baseRate'] as num?)?.toDouble()
      ..finalRate = (json['finalRate'] as num?)?.toDouble()
      ..distance = (json['distance'] as num?)?.toDouble()
      ..currencyCode = json['currencyCode'] as String?
      ..uom = json['uom'] as String?
      ..accountCode = json['accountCode'] as String?;

Map<String, dynamic> _$ProvisionalCostDetailsToJson(
        ProvisionalCostDetails instance) =>
    <String, dynamic>{
      'haulagePriceMatrixId': instance.haulagePriceMatrixId,
      'baseRate': instance.baseRate,
      'finalRate': instance.finalRate,
      'distance': instance.distance,
      'currencyCode': instance.currencyCode,
      'uom': instance.uom,
      'accountCode': instance.accountCode,
    };
