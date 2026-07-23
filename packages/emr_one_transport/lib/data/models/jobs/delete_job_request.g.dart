// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_job_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteJobRequest _$DeleteJobRequestFromJson(Map<String, dynamic> json) =>
    DeleteJobRequest(
      (json['jobNumber'] as num).toInt(),
      json['deleteReasonDescription'] as String,
      json['deleteComments'] as String?,
    );

Map<String, dynamic> _$DeleteJobRequestToJson(DeleteJobRequest instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'deleteReasonDescription': instance.deleteReasonDescription,
      'deleteComments': instance.deleteComments,
    };
