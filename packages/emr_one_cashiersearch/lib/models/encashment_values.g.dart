// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encashment_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncashmentValues _$EncashmentValuesFromJson(Map<String, dynamic> json) =>
    EncashmentValues(
      encashValue: (json['encashValue'] as num).toDouble(),
      commissionValue: (json['commissionValue'] as num).toDouble(),
      baseCommissionValue: (json['baseCommissionValue'] as num).toDouble(),
      roundingAdjustment: (json['roundingAdjustment'] as num).toDouble(),
    );

Map<String, dynamic> _$EncashmentValuesToJson(EncashmentValues instance) =>
    <String, dynamic>{
      'encashValue': instance.encashValue,
      'commissionValue': instance.commissionValue,
      'baseCommissionValue': instance.baseCommissionValue,
      'roundingAdjustment': instance.roundingAdjustment,
    };
