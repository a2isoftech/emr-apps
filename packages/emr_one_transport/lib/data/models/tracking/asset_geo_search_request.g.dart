// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_geo_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetGeoSearchRequest _$AssetGeoSearchRequestFromJson(
        Map<String, dynamic> json) =>
    AssetGeoSearchRequest(
      latitudeNorthEast: (json['latitudeNorthEast'] as num).toDouble(),
      longitudeNorthEast: (json['longitudeNorthEast'] as num).toDouble(),
      latitudeSouthWest: (json['latitudeSouthWest'] as num).toDouble(),
      longitudeSouthWest: (json['longitudeSouthWest'] as num).toDouble(),
      assetType: $enumDecode(_$AssetTypeEnumMap, json['assetType']),
      assetNumbers: json['assetNumbers'] as String?,
      accountCodes: json['accountCodes'] as String?,
      yardCodes: json['yardCodes'] as String?,
      typeIds: json['typeIds'] as String?,
      statusTypes: json['statusTypes'] as String?,
      take: (json['take'] as num?)?.toInt() ?? 1000,
    );

Map<String, dynamic> _$AssetGeoSearchRequestToJson(
        AssetGeoSearchRequest instance) =>
    <String, dynamic>{
      'latitudeNorthEast': instance.latitudeNorthEast,
      'longitudeNorthEast': instance.longitudeNorthEast,
      'latitudeSouthWest': instance.latitudeSouthWest,
      'longitudeSouthWest': instance.longitudeSouthWest,
      'assetType': _$AssetTypeEnumMap[instance.assetType]!,
      'assetNumbers': instance.assetNumbers,
      'accountCodes': instance.accountCodes,
      'yardCodes': instance.yardCodes,
      'typeIds': instance.typeIds,
      'statusTypes': instance.statusTypes,
      'take': instance.take,
    };

const _$AssetTypeEnumMap = {
  AssetType.truck: 'Truck',
  AssetType.container: 'Container',
  AssetType.trailer: 'Trailer',
};
