// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_status_count_by_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobStatusCountByPlan _$JobStatusCountByPlanFromJson(
        Map<String, dynamic> json) =>
    JobStatusCountByPlan(
      json['jobStatus'] as String,
      (json['count'] as num).toInt(),
    )..planCount = (json['planCount'] as num).toInt();

Map<String, dynamic> _$JobStatusCountByPlanToJson(
        JobStatusCountByPlan instance) =>
    <String, dynamic>{
      'jobStatus': instance.jobStatus,
      'count': instance.count,
      'planCount': instance.planCount,
    };
