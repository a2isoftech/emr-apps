// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reassign_job_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReassignJobRequest _$ReassignJobRequestFromJson(Map<String, dynamic> json) =>
    ReassignJobRequest(
      scheduleDate: DateTime.parse(json['scheduleDate'] as String),
      haulierType: json['haulierType'] as String,
      haulierCode: json['haulierCode'] as String,
      dispatchYard: json['dispatchYard'] as String,
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => JobReassignInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      vrm: json['vrm'] as String,
      timezoneId: json['timezoneId'] as String,
      assetNumber: json['assetNumber'] as String? ?? '',
    );

Map<String, dynamic> _$ReassignJobRequestToJson(ReassignJobRequest instance) =>
    <String, dynamic>{
      'haulierType': instance.haulierType,
      'haulierCode': instance.haulierCode,
      'vrm': instance.vrm,
      'assetNumber': instance.assetNumber,
      'scheduleDate': instance.scheduleDate.toIso8601String(),
      'dispatchYard': instance.dispatchYard,
      'jobs': instance.jobs,
      'timezoneId': instance.timezoneId,
    };
