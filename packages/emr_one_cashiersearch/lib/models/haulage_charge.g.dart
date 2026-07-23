// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulage_charge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HaulageCharge _$HaulageChargeFromJson(Map<String, dynamic> json) =>
    HaulageCharge(
      provRate: UomValue.fromJson(json['provRate'] as Map<String, dynamic>),
      provValue: (json['provValue'] as num).toDouble(),
      confRate: json['confRate'] == null
          ? null
          : UomValue.fromJson(json['confRate'] as Map<String, dynamic>),
      confValue: (json['confValue'] as num?)?.toDouble(),
      charge: json['charge'] == null
          ? null
          : UomValue.fromJson(json['charge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HaulageChargeToJson(HaulageCharge instance) =>
    <String, dynamic>{
      'provRate': instance.provRate.toJson(),
      'confRate': instance.confRate?.toJson(),
      'provValue': instance.provValue,
      'confValue': instance.confValue,
      'charge': instance.charge?.toJson(),
    };
