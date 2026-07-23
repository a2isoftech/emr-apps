// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clone_jobs_for_the_day_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CloneJobsForTheDayRequest _$CloneJobsForTheDayRequestFromJson(
        Map<String, dynamic> json) =>
    CloneJobsForTheDayRequest(
      sourceDate: DateTime.parse(json['sourceDate'] as String),
      targetDate: DateTime.parse(json['targetDate'] as String),
      targetDueDate: DateTime.parse(json['targetDueDate'] as String),
      timezoneId: json['timezoneId'] as String,
      sourceTruckVrm: json['sourceTruckVrm'] as String?,
      sourceHaulierCode: json['sourceHaulierCode'] as String?,
      targetHaulierCode: json['targetHaulierCode'] as String?,
      targetVrm: json['targetVrm'] as String?,
    );

Map<String, dynamic> _$CloneJobsForTheDayRequestToJson(
        CloneJobsForTheDayRequest instance) =>
    <String, dynamic>{
      'sourceDate': instance.sourceDate.toIso8601String(),
      'targetDate': instance.targetDate.toIso8601String(),
      'targetDueDate': instance.targetDueDate.toIso8601String(),
      'sourceTruckVrm': instance.sourceTruckVrm,
      'sourceHaulierCode': instance.sourceHaulierCode,
      'targetHaulierCode': instance.targetHaulierCode,
      'targetVrm': instance.targetVrm,
      'timezoneId': instance.timezoneId,
    };
