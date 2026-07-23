// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing_order_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandingOrderContainer _$StandingOrderContainerFromJson(
        Map<String, dynamic> json) =>
    StandingOrderContainer(
      customerLocationContainers:
          (json['customerLocationContainers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      startLocationContainers:
          (json['startLocationContainers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$StandingOrderContainerToJson(
        StandingOrderContainer instance) =>
    <String, dynamic>{
      'customerLocationContainers': instance.customerLocationContainers,
      'startLocationContainers': instance.startLocationContainers,
    };
