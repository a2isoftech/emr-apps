// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportJobResponse _$TransportJobResponseFromJson(
        Map<String, dynamic> json) =>
    TransportJobResponse(
      id: json['id'] as String?,
      jobNumber: (json['jobNumber'] as num?)?.toInt(),
      scheduledDate: json['scheduledDate'] == null
          ? null
          : DateTime.parse(json['scheduledDate'] as String),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      dispatchYard: json['dispatchYard'] as String?,
      source: json['source'] as String?,
      sourceId: json['sourceId'] as String?,
      jobType: json['jobType'] as String?,
      jobStatus: json['jobStatus'] as String?,
    );

Map<String, dynamic> _$TransportJobResponseToJson(
        TransportJobResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jobNumber': instance.jobNumber,
      'scheduledDate': instance.scheduledDate?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'dispatchYard': instance.dispatchYard,
      'source': instance.source,
      'sourceId': instance.sourceId,
      'jobType': instance.jobType,
      'jobStatus': instance.jobStatus,
    };
