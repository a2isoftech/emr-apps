// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot_product_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LotProductInfo _$LotProductInfoFromJson(Map<String, dynamic> json) =>
    LotProductInfo(
      id: json['id'] as String,
      description: json['description'] as String,
      code: json['code'] as String,
      requiredPercentages: (json['requiredPercentages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LotProductInfoToJson(LotProductInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'code': instance.code,
      'requiredPercentages': instance.requiredPercentages,
    };
