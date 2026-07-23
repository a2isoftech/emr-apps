// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containers _$ContainersFromJson(Map<String, dynamic> json) => Containers(
      id: json['id'] as String,
      assetNumber: json['assetNumber'] as String,
      containerType: json['containerType'] as String?,
      containerTypeId: json['containerTypeId'] as String?,
      description: json['description'] as String?,
      yardCode: json['yardCode'] as String?,
      lifeCycleStatus: json['lifeCycleStatus'] as String?,
      active: json['active'] as bool?,
      created: json['created'] == null
          ? null
          : UserActionInfo.fromJson(json['created'] as Map<String, dynamic>),
      modified: json['modified'] == null
          ? null
          : UserActionInfo.fromJson(json['modified'] as Map<String, dynamic>),
      comments: json['comments'] as String?,
      length: (json['length'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      manufacturer: json['manufacturer'] as String?,
      cost: (json['cost'] as num?)?.toDouble(),
      condition: json['condition'] as String?,
      serialNumber: json['serialNumber'] as String?,
      currentLocation: json['currentLocation'] == null
          ? null
          : CurrentLocation.fromJson(
              json['currentLocation'] as Map<String, dynamic>),
      validUpTo: json['validUpTo'] == null
          ? null
          : DateTime.parse(json['validUpTo'] as String),
    );

Map<String, dynamic> _$ContainersToJson(Containers instance) =>
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
      'lifeCycleStatus': instance.lifeCycleStatus,
      'active': instance.active,
      'currentLocation': instance.currentLocation,
      'created': instance.created,
      'modified': instance.modified,
      'validUpTo': instance.validUpTo?.toIso8601String(),
    };
