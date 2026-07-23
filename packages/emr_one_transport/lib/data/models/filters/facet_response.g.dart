// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetResponse _$FacetResponseFromJson(Map<String, dynamic> json) =>
    FacetResponse(
      name: json['name'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => FacetResponseValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FacetResponseToJson(FacetResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'values': instance.values,
    };
