// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weighbridge_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeighbridgeConfiguration _$WeighbridgeConfigurationFromJson(
        Map<String, dynamic> json) =>
    WeighbridgeConfiguration(
      id: json['id'] as String,
      weighbridgeId: json['weighbridgeId'] as String,
      machineName: json['machineName'] as String,
      yardId: json['yardId'] as String,
      ipAddress: json['ipAddress'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      created: Created.fromJson(json['created'] as Map<String, dynamic>),
      modified: Modified.fromJson(json['modified'] as Map<String, dynamic>),
      active: json['active'] as bool,
      configurations:
          json['configurations'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$WeighbridgeConfigurationToJson(
        WeighbridgeConfiguration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weighbridgeId': instance.weighbridgeId,
      'machineName': instance.machineName,
      'yardId': instance.yardId,
      'ipAddress': instance.ipAddress,
      'configurations': instance.configurations,
      'tags': instance.tags,
      'created': instance.created,
      'modified': instance.modified,
      'active': instance.active,
    };
