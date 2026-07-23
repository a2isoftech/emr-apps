// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_yard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerYard _$SchedulerYardFromJson(Map<String, dynamic> json) =>
    SchedulerYard(
      yardCode: json['yardCode'] as String,
      yardName: json['yardName'] as String,
      trucks: (json['trucks'] as List<dynamic>)
          .map((e) => SchedulerTruck.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SchedulerYardToJson(SchedulerYard instance) =>
    <String, dynamic>{
      'yardCode': instance.yardCode,
      'yardName': instance.yardName,
      'trucks': instance.trucks,
    };
