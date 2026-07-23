// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'techemet_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechemetSearchResponse _$TechemetSearchResponseFromJson(
        Map<String, dynamic> json) =>
    TechemetSearchResponse(
      id: json['id'] as String,
      fill: (json['fill'] as num).toDouble(),
      unitCost: (json['unitCost'] as num).toDouble(),
      unitCostPaid: (json['unitCostPaid'] as num).toDouble(),
      make: json['make'] as String,
      model: json['model'] as String,
      serial: json['serial'] as String,
      sealNo: json['sealNo'] as String,
    );

Map<String, dynamic> _$TechemetSearchResponseToJson(
        TechemetSearchResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fill': instance.fill,
      'unitCost': instance.unitCost,
      'unitCostPaid': instance.unitCostPaid,
      'make': instance.make,
      'model': instance.model,
      'serial': instance.serial,
      'sealNo': instance.sealNo,
    };
