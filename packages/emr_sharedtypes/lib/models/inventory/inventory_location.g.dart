// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryLocation _$InventoryLocationFromJson(Map<String, dynamic> json) =>
    InventoryLocation(
      id: json['id'] as String?,
      description: json['description'] as String?,
      code: json['code'] as String?,
      productId: json['productId'] as String?,
      productCode: json['productCode'] as String?,
      depotId: json['depotId'] as String?,
    );

Map<String, dynamic> _$InventoryLocationToJson(InventoryLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'code': instance.code,
      'productId': instance.productId,
      'productCode': instance.productCode,
      'depotId': instance.depotId,
    };
