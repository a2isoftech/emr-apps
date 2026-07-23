// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facetresult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetResult _$FacetResultFromJson(Map<String, dynamic> json) => FacetResult(
      name: json['name'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$FacetResultToJson(FacetResult instance) =>
    <String, dynamic>{
      'name': instance.name,
      'count': instance.count,
    };
