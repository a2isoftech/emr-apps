// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanContainer _$PlanContainerFromJson(Map<String, dynamic> json) =>
    PlanContainer(
      (json['customerLocationContainers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      (json['startLocationContainers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlanContainerToJson(PlanContainer instance) =>
    <String, dynamic>{
      'customerLocationContainers': instance.customerLocationContainers,
      'startLocationContainers': instance.startLocationContainers,
    };
