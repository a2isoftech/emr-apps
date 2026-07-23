// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanFilter _$PlanFilterFromJson(Map<String, dynamic> json) => PlanFilter(
      fromTo: json['fromTo'] as String?,
      dateRange: json['dateRange'] == null
          ? null
          : DateRangeValue.fromJson(json['dateRange'] as Map<String, dynamic>),
      jobTypes: (json['jobTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      planTypes: (json['planTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      containerTypes: (json['containerTypes'] as List<dynamic>?)
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
      haulierCodes: (json['haulierCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      productFamilies: (json['productFamilies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      jobStatuses: (json['jobStatuses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlanFilterToJson(PlanFilter instance) =>
    <String, dynamic>{
      'fromTo': instance.fromTo,
      'dateRange': instance.dateRange,
      'jobTypes': instance.jobTypes,
      'planTypes': instance.planTypes,
      'containerTypes': instance.containerTypes,
      'startLocations': instance.startLocations,
      'endLocation': instance.endLocation,
      'actionLocations': instance.actionLocations,
      'yardCodes': instance.yardCodes,
      'haulierCodes': instance.haulierCodes,
      'productFamilies': instance.productFamilies,
      'products': instance.products,
      'jobStatuses': instance.jobStatuses,
    };
