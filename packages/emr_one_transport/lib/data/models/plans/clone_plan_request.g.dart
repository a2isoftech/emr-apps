// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clone_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClonePlanRequest _$ClonePlanRequestFromJson(Map<String, dynamic> json) =>
    ClonePlanRequest(
      (json['planNumber'] as num).toInt(),
      DateTime.parse(json['planDate'] as String),
      (json['loads'] as num).toInt(),
      json['productFamily'] == null
          ? null
          : ProductFamily.fromJson(
              json['productFamily'] as Map<String, dynamic>),
      PlanContainer.fromJson(json['containers'] as Map<String, dynamic>),
      (json['selectedDaysToClone'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ClonePlanRequestToJson(ClonePlanRequest instance) =>
    <String, dynamic>{
      'planNumber': instance.planNumber,
      'planDate': instance.planDate.toIso8601String(),
      'loads': instance.loads,
      'productFamily': instance.productFamily,
      'containers': instance.containers,
      'selectedDaysToClone': instance.selectedDaysToClone,
    };
