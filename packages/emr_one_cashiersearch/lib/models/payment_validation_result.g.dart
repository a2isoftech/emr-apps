// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_validation_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentValidationResult _$PaymentValidationResultFromJson(
  Map<String, dynamic> json,
) => PaymentValidationResult(
  status: $enumDecode(_$StatusEnumMap, json['status']),
  validationFlags: ValidationFlags.fromJson(
    json['validationFlags'] as Map<String, dynamic>,
  ),
  errors:
      (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  warnings:
      (json['warnings'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$PaymentValidationResultToJson(
  PaymentValidationResult instance,
) => <String, dynamic>{
  'errors': instance.errors,
  'warnings': instance.warnings,
  'status': _$StatusEnumMap[instance.status]!,
  'validationFlags': instance.validationFlags.toJson(),
};

const _$StatusEnumMap = {
  Status.success: 'SUCCESS',
  Status.warning: 'WARNING',
  Status.error: 'ERROR',
};
