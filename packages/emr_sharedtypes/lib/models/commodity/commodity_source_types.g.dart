// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity_source_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommoditySourceTypes _$CommoditySourceTypesFromJson(
        Map<String, dynamic> json) =>
    CommoditySourceTypes(
      id: json['id'] as String,
      commoditySourceTypeName: json['commoditySourceTypeName'] as String?,
      commoditySourceTypeDescription:
          json['commoditySourceTypeDescription'] as String?,
    );

Map<String, dynamic> _$CommoditySourceTypesToJson(
        CommoditySourceTypes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'commoditySourceTypeName': instance.commoditySourceTypeName,
      'commoditySourceTypeDescription': instance.commoditySourceTypeDescription,
    };
