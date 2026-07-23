// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot_product_inner_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LotProductInnerMap _$LotProductInnerMapFromJson(Map<String, dynamic> json) =>
    LotProductInnerMap(
      value: json['value'] as String,
      acronym: json['acronym'] as String,
      productInfo:
          LotProductInfo.fromJson(json['productInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LotProductInnerMapToJson(LotProductInnerMap instance) =>
    <String, dynamic>{
      'value': instance.value,
      'acronym': instance.acronym,
      'productInfo': instance.productInfo,
    };
