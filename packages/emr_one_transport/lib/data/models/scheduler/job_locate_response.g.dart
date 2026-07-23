// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_locate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobLocateResponse _$JobLocateResponseFromJson(Map<String, dynamic> json) =>
    JobLocateResponse(
      haulierType: json['haulierType'] as String,
      job: json['job'] == null
          ? null
          : SchedulerJob.fromJson(json['job'] as Map<String, dynamic>),
      dispatchYard: json['dispatchYard'] as String?,
      haulierCode: json['haulierCode'] as String?,
    );

Map<String, dynamic> _$JobLocateResponseToJson(JobLocateResponse instance) =>
    <String, dynamic>{
      'job': instance.job,
      'haulierType': instance.haulierType,
      'dispatchYard': instance.dispatchYard,
      'haulierCode': instance.haulierCode,
    };
