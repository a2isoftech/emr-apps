// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductFamily _$ProductFamilyFromJson(Map<String, dynamic> json) =>
    ProductFamily(
      code: json['code'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$ProductFamilyToJson(ProductFamily instance) =>
    <String, dynamic>{
      'code': instance.code,
      'products': instance.products,
      'active': instance.active,
    };
