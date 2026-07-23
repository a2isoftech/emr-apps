// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'third_party_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThirdPartyJob _$ThirdPartyJobFromJson(Map<String, dynamic> json) =>
    ThirdPartyJob(
      id: json['id'] as String,
      jobNumber: (json['jobNumber'] as num).toInt(),
      jobType: json['jobType'] as String,
      flowType: json['flowType'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
      jobStatus: json['jobStatus'] as String,
      customerName: json['customerName'] as String,
      endLocationAddress: json['endLocationAddress'] as String,
      dispatchYard: json['dispatchYard'] as String,
      duration: (json['duration'] as num).toInt(),
      startedDateTime: json['startedDateTime'] == null
          ? null
          : DateTime.parse(json['startedDateTime'] as String),
      finishedDateTime: json['finishedDateTime'] == null
          ? null
          : DateTime.parse(json['finishedDateTime'] as String),
      isDelayed: json['isDelayed'] as bool? ?? false,
    );

Map<String, dynamic> _$ThirdPartyJobToJson(ThirdPartyJob instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dueDate': instance.dueDate.toIso8601String(),
      'flowType': instance.flowType,
      'jobType': instance.jobType,
      'startedDateTime': instance.startedDateTime?.toIso8601String(),
      'finishedDateTime': instance.finishedDateTime?.toIso8601String(),
      'jobStatus': instance.jobStatus,
      'customerName': instance.customerName,
      'endLocationAddress': instance.endLocationAddress,
      'jobNumber': instance.jobNumber,
      'dispatchYard': instance.dispatchYard,
      'duration': instance.duration,
      'isDelayed': instance.isDelayed,
    };
