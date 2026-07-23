// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_loads_print_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveLoadsPrintModel _$LiveLoadsPrintModelFromJson(Map<String, dynamic> json) =>
    LiveLoadsPrintModel(
      date: json['date'] as String,
      direction: json['direction'] as String,
      job: json['job'] as String,
      status: json['status'] as String,
      haulier: json['haulier'] as String,
      customer: json['customer'] as String,
      planned: json['planned'] as String,
      actual: json['actual'] as String,
      remaining: json['remaining'] as String,
      instructions: json['instructions'] as String,
    );

Map<String, dynamic> _$LiveLoadsPrintModelToJson(
        LiveLoadsPrintModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'direction': instance.direction,
      'job': instance.job,
      'status': instance.status,
      'haulier': instance.haulier,
      'customer': instance.customer,
      'planned': instance.planned,
      'actual': instance.actual,
      'remaining': instance.remaining,
      'instructions': instance.instructions,
    };
