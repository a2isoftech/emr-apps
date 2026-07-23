// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'can_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CanMode _$CanModeFromJson(Map<String, dynamic> json) => CanMode(
      enabled: json['enabled'] as bool? ?? false,
      productId: json['productId'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      locationId: json['locationId'] as String?,
      location: json['location'] == null
          ? null
          : InventoryLocation.fromJson(
              json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CanModeToJson(CanMode instance) => <String, dynamic>{
      'enabled': instance.enabled,
      'productId': instance.productId,
      'product': instance.product,
      'locationId': instance.locationId,
      'location': instance.location,
    };
