// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_pay_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickPayResultModel _$QuickPayResultModelFromJson(Map<String, dynamic> json) =>
    QuickPayResultModel(
      isPaid: json['isPaid'] as bool,
      receipt: json['receipt'] as String?,
      errors:
          (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$QuickPayResultModelToJson(
  QuickPayResultModel instance,
) => <String, dynamic>{
  'isPaid': instance.isPaid,
  'receipt': instance.receipt,
  'errors': instance.errors,
};
