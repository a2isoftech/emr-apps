// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetLocation _$AssetLocationFromJson(Map<String, dynamic> json) =>
    AssetLocation(
      id: json['id'] as String,
      assetNumber: json['assetNumber'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      assetType: $enumDecode(_$AssetTypeEnumMap, json['assetType']),
      assetTypeName: json['assetTypeName'] as String?,
      status: json['status'] as String?,
      yardCode: json['yardCode'] as String?,
      typeId: json['typeId'] as String?,
      comments: json['comments'] as String?,
      length: (json['length'] as num?)?.toInt(),
      locationCode: json['locationCode'] as String?,
      accountCode: json['accountCode'] as String?,
      accountName: json['accountName'] as String?,
    );

Map<String, dynamic> _$AssetLocationToJson(AssetLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assetNumber': instance.assetNumber,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'assetType': _$AssetTypeEnumMap[instance.assetType]!,
      'assetTypeName': instance.assetTypeName,
      'status': instance.status,
      'yardCode': instance.yardCode,
      'typeId': instance.typeId,
      'comments': instance.comments,
      'length': instance.length,
      'locationCode': instance.locationCode,
      'accountCode': instance.accountCode,
      'accountName': instance.accountName,
    };

const _$AssetTypeEnumMap = {
  AssetType.truck: 'Truck',
  AssetType.container: 'Container',
  AssetType.trailer: 'Trailer',
};
