// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaAsset _$MediaAssetFromJson(Map<String, dynamic> json) => MediaAsset(
      json['url'] as String,
      sasUrl: json['sasUrl'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  createdByUserInfoId: json['createdByUserInfoId'] as String?,
  createdByUserName: json['createdByUserName'] as String?,
    );

Map<String, dynamic> _$MediaAssetToJson(MediaAsset instance) =>
    <String, dynamic>{
      'url': instance.url,
      'sasUrl': instance.sasUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdByUserInfoId': instance.createdByUserInfoId,
      'createdByUserName': instance.createdByUserName,
    };
