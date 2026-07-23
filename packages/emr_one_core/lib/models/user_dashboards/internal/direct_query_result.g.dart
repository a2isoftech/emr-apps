// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_query_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectQueryResult _$DirectQueryResultFromJson(Map<String, dynamic> json) =>
    DirectQueryResult(
      results: (json['Results'] as List<dynamic>)
          .map(
              (e) => DirectQueryFacetResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: (json['TotalResults'] as num).toInt(),
    );

Map<String, dynamic> _$DirectQueryResultToJson(DirectQueryResult instance) =>
    <String, dynamic>{
      'Results': instance.results,
      'TotalResults': instance.totalResults,
    };
