// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContainerDetails _$ContainerDetailsFromJson(Map<String, dynamic> json) =>
    ContainerDetails(
      jobContainerGuid: json['jobContainerGuid'] as String?,
      containerType: json['containerType'] as String?,
      suggestedAssetNumber: json['suggestedAssetNumber'] as String?,
      isContainerRetained: json['isContainerRetained'] as bool?,
      isContainerFull: json['isContainerFull'] as bool?,
      active: json['active'] as bool?,
      assetNumberUsed: json['assetNumberUsed'] as String?,
    );

Map<String, dynamic> _$ContainerDetailsToJson(ContainerDetails instance) =>
    <String, dynamic>{
      'jobContainerGuid': instance.jobContainerGuid,
      'containerType': instance.containerType,
      'suggestedAssetNumber': instance.suggestedAssetNumber,
      'isContainerRetained': instance.isContainerRetained,
      'isContainerFull': instance.isContainerFull,
      'active': instance.active,
      'assetNumberUsed': instance.assetNumberUsed,
    };
