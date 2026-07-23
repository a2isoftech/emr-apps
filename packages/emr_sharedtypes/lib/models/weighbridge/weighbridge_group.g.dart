// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weighbridge_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeighbridgeGroup _$WeighbridgeGroupFromJson(Map<String, dynamic> json) =>
    WeighbridgeGroup(
      yardCode: json['yardCode'] as String,
      group: (json['group'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$WeighbridgeGroupToJson(WeighbridgeGroup instance) =>
    <String, dynamic>{
      'yardCode': instance.yardCode,
      'group': instance.group,
    };
