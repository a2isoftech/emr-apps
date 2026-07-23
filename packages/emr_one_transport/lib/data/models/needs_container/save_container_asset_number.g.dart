// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_container_asset_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveContainerAssetNumber _$SaveContainerAssetNumberFromJson(
        Map<String, dynamic> json) =>
    SaveContainerAssetNumber(
      (json['jobNumber'] as num).toInt(),
      json['containerGuid'] as String,
      json['assetNumber'] as String,
    );

Map<String, dynamic> _$SaveContainerAssetNumberToJson(
        SaveContainerAssetNumber instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'containerGuid': instance.containerGuid,
      'assetNumber': instance.assetNumber,
    };
