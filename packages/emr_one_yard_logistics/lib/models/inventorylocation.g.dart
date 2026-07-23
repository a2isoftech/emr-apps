// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventorylocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryLocation _$InventoryLocationFromJson(Map<String, dynamic> json) =>
    InventoryLocation(
      code: json['code'] as String,
      id: json['id'] as String,
      created: Created.fromJson(json['created'] as Map<String, dynamic>),
      modified: Modified.fromJson(json['modified'] as Map<String, dynamic>),
      trade2Key: (json['trade2Key'] as num?)?.toInt(),
      description: json['description'] as String,
      productId: json['productId'] as String?,
    )
      ..extendedProperties = json['extendedProperties'] as Map<String, dynamic>
      ..changeVector = json['changeVector'] as String?;

Map<String, dynamic> _$InventoryLocationToJson(InventoryLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extendedProperties': instance.extendedProperties,
      'created': instance.created,
      'modified': instance.modified,
      'code': instance.code,
      'changeVector': instance.changeVector,
      'trade2Key': instance.trade2Key,
      'description': instance.description,
      'productId': instance.productId,
    };
