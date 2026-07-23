// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanJobResponse _$PlanJobResponseFromJson(Map<String, dynamic> json) =>
    PlanJobResponse(
      sourceId: json['sourceId'] as String,
      jobNumber: (json['jobNumber'] as num).toInt(),
      dispatchYard: json['dispatchYard'] as String,
      jobStatus: json['jobStatus'] as String,
      customerLocation: LocationInfo.fromJson(
          json['customerLocation'] as Map<String, dynamic>),
      startLocation:
          LocationInfo.fromJson(json['startLocation'] as Map<String, dynamic>),
      endLocation:
          LocationInfo.fromJson(json['endLocation'] as Map<String, dynamic>),
      haulier: json['haulier'] == null
          ? null
          : HaulierScheduleDetail.fromJson(
              json['haulier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlanJobResponseToJson(PlanJobResponse instance) =>
    <String, dynamic>{
      'sourceId': instance.sourceId,
      'jobNumber': instance.jobNumber,
      'dispatchYard': instance.dispatchYard,
      'jobStatus': instance.jobStatus,
      'haulier': instance.haulier,
      'customerLocation': instance.customerLocation,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
    };
