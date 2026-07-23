// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_haulier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerHaulier _$SchedulerHaulierFromJson(Map<String, dynamic> json) =>
    SchedulerHaulier(
      haulierCode: json['haulierCode'] as String,
      haulierName: json['haulierName'] as String,
      trucks: (json['trucks'] as List<dynamic>)
          .map((e) => SchedulerTruck.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SchedulerHaulierToJson(SchedulerHaulier instance) =>
    <String, dynamic>{
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'trucks': instance.trucks,
    };
