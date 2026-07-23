// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_deduction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseDeduction _$BaseDeductionFromJson(Map<String, dynamic> json) =>
    BaseDeduction(
      typeId: json['typeId'] as String,
      value: (json['value'] as num).toDouble(),
      comments:
          (json['comments'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BaseDeductionToJson(BaseDeduction instance) =>
    <String, dynamic>{
      'typeId': instance.typeId,
      'value': instance.value,
      'comments': instance.comments.map((e) => e.toJson()).toList(),
    };
