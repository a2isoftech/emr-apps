// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade2_media_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trade2MediaAsset _$Trade2MediaAssetFromJson(Map<String, dynamic> json) =>
    Trade2MediaAsset(
      json['url'] as String,
      json['sasThumbnailUrl'] as String?,
      json['sasUrl'] as String?,
      json['type'] == null
          ? null
          : Enum$Trade2MediaAssetType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$Trade2MediaAssetToJson(Trade2MediaAsset instance) =>
    <String, dynamic>{
      'url': instance.url,
      'sasThumbnailUrl': instance.sasThumbnailUrl,
      'sasUrl': instance.sasUrl,
      'type': instance.type,
    };
