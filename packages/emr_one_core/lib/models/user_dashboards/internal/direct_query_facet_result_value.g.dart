// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_query_facet_result_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectQueryFacetResultValue _$DirectQueryFacetResultValueFromJson(
        Map<String, dynamic> json) =>
    DirectQueryFacetResultValue(
      range: json['Range'] as String,
      count: (json['Count'] as num).toInt(),
      name: json['Name'] as String?,
    );

Map<String, dynamic> _$DirectQueryFacetResultValueToJson(
        DirectQueryFacetResultValue instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Range': instance.range,
      'Count': instance.count,
    };
