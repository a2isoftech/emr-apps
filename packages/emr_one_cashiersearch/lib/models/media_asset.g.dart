// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaAsset _$MediaAssetFromJson(Map<String, dynamic> json) => MediaAsset(
  url: json['url'] as String?,
  type: $enumDecodeNullable(_$MediaAssetTypeEnumMap, json['type']),
  mediaType: $enumDecodeNullable(_$MediaTypeEnumMap, json['mediaType']),
  thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
  sasUrl: json['sasUrl'] as String? ?? '',
  created: json['created'] == null
      ? null
      : Created.fromJson(json['created'] as Map<String, dynamic>),
  modified: json['modified'] == null
      ? null
      : Modified.fromJson(json['modified'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MediaAssetToJson(MediaAsset instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': _$MediaAssetTypeEnumMap[instance.type],
      'mediaType': _$MediaTypeEnumMap[instance.mediaType],
      'thumbnailUrl': instance.thumbnailUrl,
      'sasUrl': instance.sasUrl,
      'created': instance.created?.toJson(),
      'modified': instance.modified?.toJson(),
    };

const _$MediaAssetTypeEnumMap = {
  MediaAssetType.commodityImage: 'COMMODITY_IMAGE',
  MediaAssetType.inspectionImage: 'INSPECTION_IMAGE',
  MediaAssetType.t2CommodityImage: 'T2_COMMODITY_IMAGE',
  MediaAssetType.inventoryDefab: 'INVENTORY_DEFAB',
  MediaAssetType.inventoryCutting: 'INVENTORY_CUTTING',
};

const _$MediaTypeEnumMap = {MediaType.image: 'image', MediaType.video: 'video'};
