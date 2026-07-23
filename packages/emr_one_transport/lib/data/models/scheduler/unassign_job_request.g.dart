// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unassign_job_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnassignJobRequest _$UnassignJobRequestFromJson(Map<String, dynamic> json) =>
    UnassignJobRequest(
      jobId: json['jobId'] as String,
      unAssignReasonCode: json['unAssignReasonCode'] as String,
      unAssignReason: json['unAssignReason'] as String,
      unAssignComments: json['unAssignComments'] as String?,
    );

Map<String, dynamic> _$UnassignJobRequestToJson(UnassignJobRequest instance) =>
    <String, dynamic>{
      'jobId': instance.jobId,
      'unAssignReasonCode': instance.unAssignReasonCode,
      'unAssignComments': instance.unAssignComments,
      'unAssignReason': instance.unAssignReason,
    };
