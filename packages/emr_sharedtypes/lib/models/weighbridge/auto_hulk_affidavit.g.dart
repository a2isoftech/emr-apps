// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_hulk_affidavit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoHulkAffidavit _$AutoHulkAffidavitFromJson(Map<String, dynamic> json) =>
    AutoHulkAffidavit(
      allowedProductIds:
          (json['allowedProductIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      allowedProducts:
          (json['allowedProducts'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      enabled: json['enabled'] as bool? ?? false,
    );

Map<String, dynamic> _$AutoHulkAffidavitToJson(AutoHulkAffidavit instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'allowedProductIds': instance.allowedProductIds,
      'allowedProducts': instance.allowedProducts,
    };
