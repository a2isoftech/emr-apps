// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_vor_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TruckVORSchedule _$TruckVORScheduleFromJson(Map<String, dynamic> json) =>
    TruckVORSchedule(
      id: json['id'] as String?,
      vrm: json['vrm'] as String?,
      vorSchedule: (json['vorSchedule'] as List<dynamic>?)
          ?.map((e) => VORSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] == null
          ? null
          : UserActionInfo.fromJson(json['created'] as Map<String, dynamic>),
      modified: json['modified'] == null
          ? null
          : UserActionInfo.fromJson(json['modified'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TruckVORScheduleToJson(TruckVORSchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vrm': instance.vrm,
      'vorSchedule': instance.vorSchedule,
      'created': instance.created,
      'modified': instance.modified,
    };
