// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joblist_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoblistFilter _$JoblistFilterFromJson(Map<String, dynamic> json) =>
    JoblistFilter(
      fromTo: json['fromTo'] as String?,
      dateRange: json['dateRange'] == null
          ? null
          : DateRangeValue.fromJson(json['dateRange'] as Map<String, dynamic>),
      jobTypes: (json['jobTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      jobStatuses: (json['jobStatuses'] as List<dynamic>?)
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
      hasJobContainerImages: (json['hasJobContainerImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      haulierCodes: (json['haulierCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      jobSources: (json['jobSources'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      productFamilies: (json['productFamilies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$JoblistFilterToJson(JoblistFilter instance) =>
    <String, dynamic>{
      'fromTo': instance.fromTo,
      'dateRange': instance.dateRange,
      'jobTypes': instance.jobTypes,
      'jobStatuses': instance.jobStatuses,
      'containerTpes': instance.containerTpes,
      'trailerTypes': instance.trailerTypes,
      'startLocations': instance.startLocations,
      'endLocation': instance.endLocation,
      'actionLocations': instance.actionLocations,
      'yardCodes': instance.yardCodes,
      'hasJobContainerImages': instance.hasJobContainerImages,
      'haulierCodes': instance.haulierCodes,
      'jobSources': instance.jobSources,
      'productFamilies': instance.productFamilies,
      'products': instance.products,
    };
