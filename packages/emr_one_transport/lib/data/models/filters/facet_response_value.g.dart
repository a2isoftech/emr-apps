// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_response_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetResponseValue _$FacetResponseValueFromJson(Map<String, dynamic> json) =>
    FacetResponseValue(
      name: json['name'] as String?,
      range: json['range'] as String?,
      count: (json['count'] as num).toDouble(),
      max: (json['max'] as num?)?.toDouble(),
      min: (json['min'] as num?)?.toDouble(),
      average: (json['average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FacetResponseValueToJson(FacetResponseValue instance) =>
    <String, dynamic>{
      'name': instance.name,
      'range': instance.range,
      'count': instance.count,
      'max': instance.max,
      'min': instance.min,
      'average': instance.average,
    };
