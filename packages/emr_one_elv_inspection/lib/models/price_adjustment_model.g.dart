// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_adjustment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceAdjustmentModel _$PriceAdjustmentModelFromJson(
        Map<String, dynamic> json) =>
    PriceAdjustmentModel(
      componentName: json['componentName'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$PriceAdjustmentModelToJson(
        PriceAdjustmentModel instance) =>
    <String, dynamic>{
      'componentName': instance.componentName,
      'value': instance.value,
    };
