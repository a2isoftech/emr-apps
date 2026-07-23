// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_assign_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobReassignInfoResponse _$JobReassignInfoResponseFromJson(
        Map<String, dynamic> json) =>
    JobReassignInfoResponse(
      id: json['id'] as String,
      jobNumber: (json['jobNumber'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      scheduledDate: json['scheduledDate'] == null
          ? null
          : DateTime.parse(json['scheduledDate'] as String),
    );

Map<String, dynamic> _$JobReassignInfoResponseToJson(
        JobReassignInfoResponse instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'id': instance.id,
      'duration': instance.duration,
      'scheduledDate': instance.scheduledDate?.toIso8601String(),
    };
