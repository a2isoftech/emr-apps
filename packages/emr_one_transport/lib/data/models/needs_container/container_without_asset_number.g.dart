// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_without_asset_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContainerWithoutAssetNumber _$ContainerWithoutAssetNumberFromJson(
        Map<String, dynamic> json) =>
    ContainerWithoutAssetNumber(
      (json['jobNumber'] as num).toInt(),
      DateTime.parse(json['jobCompletionDate'] as String),
      json['containerGuid'] as String,
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['assetNumberReviewSkipDetail'] == null
          ? null
          : AssetReviewSkipDetail.fromJson(
              json['assetNumberReviewSkipDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContainerWithoutAssetNumberToJson(
        ContainerWithoutAssetNumber instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'jobCompletionDate': instance.jobCompletionDate.toIso8601String(),
      'containerGuid': instance.containerGuid,
      'images': instance.images,
      'assetNumberReviewSkipDetail': instance.assetNumberReviewSkipDetail,
    };
