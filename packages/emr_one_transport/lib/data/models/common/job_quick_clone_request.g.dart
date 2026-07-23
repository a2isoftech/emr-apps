// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_quick_clone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobQuickCloneRequest _$JobQuickCloneRequestFromJson(
        Map<String, dynamic> json) =>
    JobQuickCloneRequest(
      cloneFromJobId: json['cloneFromJobId'] as String,
      noOfJobsToBeCreated: (json['noOfJobsToBeCreated'] as num).toInt(),
      targetDueDate: DateTime.parse(json['targetDueDate'] as String),
      targetHaulierTruck: json['targetHaulierTruck'] == null
          ? null
          : CloneJobHaulierInfo.fromJson(
              json['targetHaulierTruck'] as Map<String, dynamic>),
      targetScheduledDate: json['targetScheduledDate'] == null
          ? null
          : DateTime.parse(json['targetScheduledDate'] as String),
    );

Map<String, dynamic> _$JobQuickCloneRequestToJson(
        JobQuickCloneRequest instance) =>
    <String, dynamic>{
      'cloneFromJobId': instance.cloneFromJobId,
      'targetHaulierTruck': instance.targetHaulierTruck,
      'noOfJobsToBeCreated': instance.noOfJobsToBeCreated,
      'targetScheduledDate': instance.targetScheduledDate?.toIso8601String(),
      'targetDueDate': instance.targetDueDate.toIso8601String(),
    };
