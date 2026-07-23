// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulePlanRequest _$SchedulePlanRequestFromJson(Map<String, dynamic> json) =>
    SchedulePlanRequest(
      planId: json['planId'] as String,
      scheduleDate: DateTime.parse(json['scheduleDate'] as String),
      targetHaulierCode: json['targetHaulierCode'] as String,
      targetHaulierType: json['targetHaulierType'] as String,
      fromHaulierCode: json['fromHaulierCode'] as String,
      fromHaulierType: json['fromHaulierType'] as String,
      loadsToSchedule: (json['loadsToSchedule'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      timezoneId: json['timezoneId'] as String,
      isExactSchedule: json['isExactSchedule'] as bool,
      vrm: json['vrm'] as String?,
    );

Map<String, dynamic> _$SchedulePlanRequestToJson(
        SchedulePlanRequest instance) =>
    <String, dynamic>{
      'planId': instance.planId,
      'scheduleDate': instance.scheduleDate.toIso8601String(),
      'vrm': instance.vrm,
      'targetHaulierCode': instance.targetHaulierCode,
      'targetHaulierType': instance.targetHaulierType,
      'fromHaulierCode': instance.fromHaulierCode,
      'fromHaulierType': instance.fromHaulierType,
      'loadsToSchedule': instance.loadsToSchedule,
      'duration': instance.duration,
      'timezoneId': instance.timezoneId,
      'isExactSchedule': instance.isExactSchedule,
    };
