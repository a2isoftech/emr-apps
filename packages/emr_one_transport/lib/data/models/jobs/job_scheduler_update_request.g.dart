// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_scheduler_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobSchedulerUpdateRequest _$JobSchedulerUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    JobSchedulerUpdateRequest(
      id: json['id'] as String,
      dispatcherNotes: json['dispatcherNotes'] as String?,
      abandonReason: json['abandonReason'] as String?,
      startedTime: json['startedTime'] == null
          ? null
          : DateTime.parse(json['startedTime'] as String),
      finishedTime: json['finishedTime'] == null
          ? null
          : DateTime.parse(json['finishedTime'] as String),
      isAbandoned: json['isAbandoned'] as bool?,
      abandonComments: json['abandonComments'] as String?,
    );

Map<String, dynamic> _$JobSchedulerUpdateRequestToJson(
        JobSchedulerUpdateRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dispatcherNotes': instance.dispatcherNotes,
      'isAbandoned': instance.isAbandoned,
      'abandonReason': instance.abandonReason,
      'startedTime': instance.startedTime?.toIso8601String(),
      'finishedTime': instance.finishedTime?.toIso8601String(),
      'abandonComments': instance.abandonComments,
    };
