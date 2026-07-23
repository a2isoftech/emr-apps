// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assets_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetsFilter _$AssetsFilterFromJson(Map<String, dynamic> json) => AssetsFilter(
      yardCodes: (json['yardCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      statuses: (json['statuses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      assetTypes: (json['assetTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      haulierCodes: (json['haulierCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AssetsFilterToJson(AssetsFilter instance) =>
    <String, dynamic>{
      'yardCodes': instance.yardCodes,
      'conditions': instance.conditions,
      'statuses': instance.statuses,
      'assetTypes': instance.assetTypes,
      'haulierCodes': instance.haulierCodes,
    };
