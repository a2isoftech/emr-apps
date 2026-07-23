// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containers _$ContainersFromJson(Map<String, dynamic> json) => Containers(
      typeId: (json['typeId'] as num?)?.toInt(),
      assetNumber: json['assetNumber'] as String?,
      containerType: json['containerType'] as String?,
    );

Map<String, dynamic> _$ContainersToJson(Containers instance) =>
    <String, dynamic>{
      'containerType': instance.containerType,
      'assetNumber': instance.assetNumber,
      'typeId': instance.typeId,
    };
