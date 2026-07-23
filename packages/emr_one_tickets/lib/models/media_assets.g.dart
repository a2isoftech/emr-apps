// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_assets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaAssets _$MediaAssetsFromJson(Map<String, dynamic> json) => MediaAssets(
      type: $enumDecode(_$MediaAssetTypeEnumMap, json['type']),
      url: json['url'] as String,
      metaData: (json['metaData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$MediaAssetsToJson(MediaAssets instance) =>
    <String, dynamic>{
      'type': _$MediaAssetTypeEnumMap[instance.type]!,
      'url': instance.url,
      'metaData': instance.metaData,
    };

const _$MediaAssetTypeEnumMap = {
  MediaAssetType.commodityImage: 'commodityImage',
  MediaAssetType.inspectionImage: 'inspectionImage',
  MediaAssetType.t2CommodityImage: 't2CommodityImage',
};
