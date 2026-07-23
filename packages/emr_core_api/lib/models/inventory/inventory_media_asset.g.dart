// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_media_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryMediaAsset _$InventoryMediaAssetFromJson(Map<String, dynamic> json) =>
    InventoryMediaAsset(
      json['url'] as String,
      json['sasThumbnailUrl'] as String?,
      json['sasUrl'] as String?,
    );

Map<String, dynamic> _$InventoryMediaAssetToJson(
  InventoryMediaAsset instance,
) => <String, dynamic>{
  'url': instance.url,
  'sasUrl': instance.sasUrl,
  'sasThumbnailUrl': instance.sasThumbnailUrl,
};
