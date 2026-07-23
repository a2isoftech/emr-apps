// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanRequest _$PlanRequestFromJson(Map<String, dynamic> json) => PlanRequest(
      json['planDate'] == null
          ? null
          : DateTime.parse(json['planDate'] as String),
      json['productFamily'] == null
          ? null
          : ProductFamily.fromJson(
              json['productFamily'] as Map<String, dynamic>),
      (json['loads'] as num).toInt(),
      json['dispatchYard'] as String,
      json['due'] as String,
      json['jobType'] as String,
      json['dispatcherNotes'] as String,
      json['officeNotes'] as String,
      CustomerDetails.fromJson(json['customer'] as Map<String, dynamic>),
      LocationInfo.fromJson(json['customerLocation'] as Map<String, dynamic>),
      LocationInfo.fromJson(json['startLocation'] as Map<String, dynamic>),
      LocationInfo.fromJson(json['endLocation'] as Map<String, dynamic>),
      (json['haulierScheduleDetails'] as List<dynamic>)
          .map((e) => HaulierScheduleDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['containers'] == null
          ? null
          : PlanContainer.fromJson(json['containers'] as Map<String, dynamic>),
      json['trailer'] == null
          ? null
          : PlanTrailer.fromJson(json['trailer'] as Map<String, dynamic>),
      (json['selectedDaysToClone'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      active: json['active'] as bool? ?? true,
      jobsToDelete: (json['jobsToDelete'] as List<dynamic>?)
              ?.map((e) => DeleteJobRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      uomValue: json['uomValue'] == null
          ? null
          : UomValue.fromJson(json['uomValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlanRequestToJson(PlanRequest instance) =>
    <String, dynamic>{
      'planDate': instance.planDate?.toIso8601String(),
      'productFamily': instance.productFamily,
      'uomValue': instance.uomValue,
      'loads': instance.loads,
      'dispatchYard': instance.dispatchYard,
      'due': instance.due,
      'jobType': instance.jobType,
      'dispatcherNotes': instance.dispatcherNotes,
      'officeNotes': instance.officeNotes,
      'customer': instance.customer,
      'customerLocation': instance.customerLocation,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'haulierScheduleDetails': instance.haulierScheduleDetails,
      'containers': instance.containers,
      'trailer': instance.trailer,
      'selectedDaysToClone': instance.selectedDaysToClone,
      'active': instance.active,
      'jobsToDelete': instance.jobsToDelete,
    };
