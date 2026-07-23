// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_outstanding_jobs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovePendingJobsRequest _$MovePendingJobsRequestFromJson(
        Map<String, dynamic> json) =>
    MovePendingJobsRequest(
      sourceTruckVrm: json['sourceTruckVrm'] as String,
      targetHaulierType: json['targetHaulierType'] as String,
      sourceDate: DateTime.parse(json['sourceDate'] as String),
      targetDate: DateTime.parse(json['targetDate'] as String),
      timezoneId: json['timezoneId'] as String,
      targetHaulierCode: json['targetHaulierCode'] as String,
      targetTruckVrm: json['targetTruckVrm'] as String?,
    );

Map<String, dynamic> _$MovePendingJobsRequestToJson(
        MovePendingJobsRequest instance) =>
    <String, dynamic>{
      'sourceTruckVrm': instance.sourceTruckVrm,
      'targetTruckVrm': instance.targetTruckVrm,
      'targetHaulierCode': instance.targetHaulierCode,
      'targetHaulierType': instance.targetHaulierType,
      'timezoneId': instance.timezoneId,
      'sourceDate': instance.sourceDate.toIso8601String(),
      'targetDate': instance.targetDate.toIso8601String(),
    };
