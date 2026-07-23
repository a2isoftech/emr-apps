// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_query_facet_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectQueryFacetResult _$DirectQueryFacetResultFromJson(
        Map<String, dynamic> json) =>
    DirectQueryFacetResult(
      name: json['Name'] as String,
      values: (json['Values'] as List<dynamic>)
          .map((e) =>
              DirectQueryFacetResultValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DirectQueryFacetResultToJson(
        DirectQueryFacetResult instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Values': instance.values,
    };
