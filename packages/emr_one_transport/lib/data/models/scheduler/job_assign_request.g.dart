// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_assign_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobAssignRequest _$JobAssignRequestFromJson(Map<String, dynamic> json) =>
    JobAssignRequest(
      jobNumber: (json['jobNumber'] as num).toInt(),
      proposedDurationMinutes: (json['proposedDurationMinutes'] as num).toInt(),
      proposedScheduledDate:
          DateTime.parse(json['proposedScheduledDate'] as String),
      loads: (json['loads'] as num).toInt(),
      vrm: json['vrm'] as String,
      haulierTypeEnum: json['haulierTypeEnum'] as String,
      timezoneId: json['timezoneId'] as String,
      isFlexibleSchedule: json['isFlexibleSchedule'] as bool,
    );

Map<String, dynamic> _$JobAssignRequestToJson(JobAssignRequest instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'loads': instance.loads,
      'vrm': instance.vrm,
      'proposedScheduledDate': instance.proposedScheduledDate.toIso8601String(),
      'proposedDurationMinutes': instance.proposedDurationMinutes,
      'haulierTypeEnum': instance.haulierTypeEnum,
      'timezoneId': instance.timezoneId,
      'isFlexibleSchedule': instance.isFlexibleSchedule,
    };
