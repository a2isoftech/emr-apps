// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerFilter _$SchedulerFilterFromJson(Map<String, dynamic> json) =>
    SchedulerFilter(
      yardCodes: (json['yardCodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      managedThirdPartyHaulierCodes:
          (json['managedThirdPartyHaulierCodes'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
      thirdPartyHaulierCodes: (json['thirdPartyHaulierCodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      containerTypes: (json['containerTypes'] as List<dynamic>?)
              ?.map((e) => ListDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      truckTypes: (json['truckTypes'] as List<dynamic>?)
              ?.map((e) => ListDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      jobTypes: (json['jobTypes'] as List<dynamic>?)
              ?.map((e) => ListDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      productFamilies: (json['productFamilies'] as List<dynamic>?)
              ?.map((e) => ListDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SchedulerFilterToJson(SchedulerFilter instance) =>
    <String, dynamic>{
      'yardCodes': instance.yardCodes,
      'managedThirdPartyHaulierCodes': instance.managedThirdPartyHaulierCodes,
      'thirdPartyHaulierCodes': instance.thirdPartyHaulierCodes,
      'containerTypes': instance.containerTypes,
      'truckTypes': instance.truckTypes,
      'jobTypes': instance.jobTypes,
      'productFamilies': instance.productFamilies,
    };
