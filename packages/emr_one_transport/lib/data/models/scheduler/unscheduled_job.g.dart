// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unscheduled_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnscheduledJob _$UnscheduledJobFromJson(Map<String, dynamic> json) =>
    UnscheduledJob(
      jobType: json['jobType'] as String,
      customerName: json['customerName'] as String,
      endLocationAddress: json['endLocationAddress'] as String,
      startLocationAddress: json['startLocationAddress'] as String,
      customerLocationAddress: json['customerLocationAddress'] as String,
      dispatchYard: json['dispatchYard'] as String,
      flowType: json['flowType'] as String,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      postCodes: (json['postCodes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry($enumDecode(_$LocationTypeEnumEnumMap, k), e as String),
      ),
      yardCodeLocations:
          (json['yardCodeLocations'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry($enumDecode(_$LocationTypeEnumEnumMap, k), e as String),
      ),
      haulierType: json['haulierType'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      loadsRemaining: (json['loadsRemaining'] as num?)?.toInt(),
      jobNumber: (json['jobNumber'] as num?)?.toInt(),
      planNumber: (json['planNumber'] as num?)?.toInt(),
      planId: json['planId'] as String?,
    )
      ..haulierName = json['haulierName'] as String?
      ..haulierCode = json['haulierCode'] as String?;

Map<String, dynamic> _$UnscheduledJobToJson(UnscheduledJob instance) =>
    <String, dynamic>{
      'jobType': instance.jobType,
      'flowType': instance.flowType,
      'customerName': instance.customerName,
      'endLocationAddress': instance.endLocationAddress,
      'startLocationAddress': instance.startLocationAddress,
      'customerLocationAddress': instance.customerLocationAddress,
      'planNumber': instance.planNumber,
      'planId': instance.planId,
      'jobNumber': instance.jobNumber,
      'dispatchYard': instance.dispatchYard,
      'loadsRemaining': instance.loadsRemaining,
      'dueDate': instance.dueDate?.toIso8601String(),
      'haulierName': instance.haulierName,
      'haulierType': instance.haulierType,
      'haulierCode': instance.haulierCode,
      'duration': instance.duration,
      'postCodes': instance.postCodes
          ?.map((k, e) => MapEntry(_$LocationTypeEnumEnumMap[k]!, e)),
      'yardCodeLocations': instance.yardCodeLocations
          ?.map((k, e) => MapEntry(_$LocationTypeEnumEnumMap[k]!, e)),
    };

const _$LocationTypeEnumEnumMap = {
  LocationTypeEnum.startLocation: 'StartLocation',
  LocationTypeEnum.customerLocation: 'CustomerLocation',
  LocationTypeEnum.endLocation: 'EndLocation',
};
