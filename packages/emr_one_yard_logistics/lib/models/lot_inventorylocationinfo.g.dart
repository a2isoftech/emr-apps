// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot_inventorylocationinfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryLocationInfo _$InventoryLocationInfoFromJson(
        Map<String, dynamic> json) =>
    InventoryLocationInfo(
      id: json['id'] as String,
      trade2Key: (json['trade2Key'] as num).toInt(),
      description: json['description'] as String,
      productId: json['productId'] as String,
    );

Map<String, dynamic> _$InventoryLocationInfoToJson(
        InventoryLocationInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trade2Key': instance.trade2Key,
      'description': instance.description,
      'productId': instance.productId,
    };
