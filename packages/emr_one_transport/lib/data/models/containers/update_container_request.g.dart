// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_container_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateContainerRequest _$UpdateContainerRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateContainerRequest(
      id: json['id'] as String,
      assetNumber: json['assetNumber'] as String,
      containerType: json['containerType'] as String,
      containerTypeId: json['containerTypeId'] as String,
      description: json['description'] as String,
      yardCode: json['yardCode'] as String,
      lifeCycleStatus: $enumDecode(
          _$ContainerLifeCycleStatusEnumEnumMap, json['lifeCycleStatus']),
      comments: json['comments'] as String?,
      length: (json['length'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      manufacturer: json['manufacturer'] as String?,
      cost: (json['cost'] as num?)?.toDouble(),
      condition: json['condition'] as String?,
      serialNumber: json['serialNumber'] as String?,
      active: json['active'] as bool? ?? true,
      currentLocation: json['currentLocation'] == null
          ? null
          : CurrentLocation.fromJson(
              json['currentLocation'] as Map<String, dynamic>),
      validUpTo: json['validUpTo'] == null
          ? null
          : DateTime.parse(json['validUpTo'] as String),
    );

Map<String, dynamic> _$UpdateContainerRequestToJson(
        UpdateContainerRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assetNumber': instance.assetNumber,
      'containerType': instance.containerType,
      'containerTypeId': instance.containerTypeId,
      'comments': instance.comments,
      'length': instance.length,
      'weight': instance.weight,
      'manufacturer': instance.manufacturer,
      'cost': instance.cost,
      'condition': instance.condition,
      'serialNumber': instance.serialNumber,
      'description': instance.description,
      'yardCode': instance.yardCode,
      'lifeCycleStatus':
          _$ContainerLifeCycleStatusEnumEnumMap[instance.lifeCycleStatus]!,
      'active': instance.active,
      'currentLocation': instance.currentLocation,
      'validUpTo': instance.validUpTo?.toIso8601String(),
    };

const _$ContainerLifeCycleStatusEnumEnumMap = {
  ContainerLifeCycleStatusEnum.active: 'active',
  ContainerLifeCycleStatusEnum.maintenance: 'maintenance',
  ContainerLifeCycleStatusEnum.missing: 'missing',
  ContainerLifeCycleStatusEnum.stolen: 'stolen',
  ContainerLifeCycleStatusEnum.scrapped: 'scrapped',
  ContainerLifeCycleStatusEnum.notInUse: 'notInUse',
};
