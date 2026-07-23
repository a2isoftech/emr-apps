// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerJob _$SchedulerJobFromJson(Map<String, dynamic> json) => SchedulerJob(
      id: json['id'] as String,
      jobNumber: (json['jobNumber'] as num).toInt(),
      jobStatus: json['jobStatus'] as String,
      jobType: json['jobType'] as String,
      dispatchYard: json['dispatchYard'] as String,
      duration: (json['duration'] as num).toInt(),
      customerName: json['customerName'] as String,
      endLocationAddress: json['endLocationAddress'] as String,
      scheduledDate: DateTime.parse(json['scheduledDate'] as String),
      dueDate: DateTime.parse(json['dueDate'] as String),
      delays: (json['delays'] as List<dynamic>?)
          ?.map((e) => DriverEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      vrm: json['vrm'] as String?,
      flowType: json['flowType'] as String,
      customerLocationAddress: json['customerLocationAddress'] as String,
      startLocationAddress: json['startLocationAddress'] as String,
      postCodes: (json['postCodes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry($enumDecode(_$LocationTypeEnumEnumMap, k), e as String),
      ),
      driverEvents: (json['driverEvents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      yardCodeLocations:
          (json['yardCodeLocations'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry($enumDecode(_$LocationTypeEnumEnumMap, k), e as String),
      ),
      provisionalCost: json['provisionalCost'] == null
          ? null
          : ProvisionalCostDetails.fromJson(
              json['provisionalCost'] as Map<String, dynamic>),
      isLocked: json['isLocked'] as bool?,
      groupId: json['groupId'] as String?,
      startedDateTime: json['startedDateTime'] == null
          ? null
          : DateTime.parse(json['startedDateTime'] as String),
      finishedDateTime: json['finishedDateTime'] == null
          ? null
          : DateTime.parse(json['finishedDateTime'] as String),
      jobProgressPercentage:
          (json['jobProgressPercentage'] as num?)?.toInt() ?? 0,
      currencyCode: json['currencyCode'] as String? ?? '',
      isContainerImageProcessingRequired:
          json['isContainerImageProcessingRequired'] as bool? ?? false,
    );

Map<String, dynamic> _$SchedulerJobToJson(SchedulerJob instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isLocked': instance.isLocked,
      'groupId': instance.groupId,
      'jobType': instance.jobType,
      'flowType': instance.flowType,
      'vrm': instance.vrm,
      'startedDateTime': instance.startedDateTime?.toIso8601String(),
      'finishedDateTime': instance.finishedDateTime?.toIso8601String(),
      'jobStatus': instance.jobStatus,
      'customerName': instance.customerName,
      'endLocationAddress': instance.endLocationAddress,
      'jobNumber': instance.jobNumber,
      'dispatchYard': instance.dispatchYard,
      'scheduledDate': instance.scheduledDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'duration': instance.duration,
      'delays': instance.delays,
      'provisionalCost': instance.provisionalCost,
      'jobProgressPercentage': instance.jobProgressPercentage,
      'currencyCode': instance.currencyCode,
      'isContainerImageProcessingRequired':
          instance.isContainerImageProcessingRequired,
      'customerLocationAddress': instance.customerLocationAddress,
      'startLocationAddress': instance.startLocationAddress,
      'postCodes': instance.postCodes
          ?.map((k, e) => MapEntry(_$LocationTypeEnumEnumMap[k]!, e)),
      'yardCodeLocations': instance.yardCodeLocations
          ?.map((k, e) => MapEntry(_$LocationTypeEnumEnumMap[k]!, e)),
      'driverEvents': instance.driverEvents,
    };

const _$LocationTypeEnumEnumMap = {
  LocationTypeEnum.startLocation: 'StartLocation',
  LocationTypeEnum.customerLocation: 'CustomerLocation',
  LocationTypeEnum.endLocation: 'EndLocation',
};
