// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing_order_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandingOrderFilter _$StandingOrderFilterFromJson(Map<String, dynamic> json) =>
    StandingOrderFilter(
      dateRange: json['dateRange'] == null
          ? null
          : DateRangeValue.fromJson(json['dateRange'] as Map<String, dynamic>),
      status:
          (json['status'] as List<dynamic>?)?.map((e) => e as String).toList(),
      jobTypes: (json['jobTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      containerTpes: (json['containerTpes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      trailerTypes: (json['trailerTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      startLocations: (json['startLocations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      endLocation: (json['endLocation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      actionLocations: (json['actionLocations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      yardCodes: (json['yardCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$StandingOrderFilterToJson(
        StandingOrderFilter instance) =>
    <String, dynamic>{
      'dateRange': instance.dateRange,
      'status': instance.status,
      'jobTypes': instance.jobTypes,
      'containerTpes': instance.containerTpes,
      'trailerTypes': instance.trailerTypes,
      'startLocations': instance.startLocations,
      'endLocation': instance.endLocation,
      'actionLocations': instance.actionLocations,
      'yardCodes': instance.yardCodes,
    };
