// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_reassign_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobReassignInfo _$JobReassignInfoFromJson(Map<String, dynamic> json) =>
    JobReassignInfo(
      jobNumber: (json['jobNumber'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      scheduledDate: json['scheduledDate'] == null
          ? null
          : DateTime.parse(json['scheduledDate'] as String),
    );

Map<String, dynamic> _$JobReassignInfoToJson(JobReassignInfo instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'duration': instance.duration,
      'scheduledDate': instance.scheduledDate?.toIso8601String(),
    };
