// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_deduction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeightDeduction _$WeightDeductionFromJson(Map<String, dynamic> json) =>
    WeightDeduction(
      value: UomValue.fromJson(json['value'] as Map<String, dynamic>),
      comments: json['comments'] as String?,
      serialNo: json['serialNo'] as String?,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
    );

Map<String, dynamic> _$WeightDeductionToJson(WeightDeduction instance) =>
    <String, dynamic>{
      'value': instance.value,
      'comments': instance.comments,
      'serialNo': instance.serialNo,
      'expiryDate': instance.expiryDate?.toIso8601String(),
    };
