// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vor_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VorSchedule _$VorScheduleFromJson(Map<String, dynamic> json) => VorSchedule(
      startDateTime: DateTime.parse(json['startDateTime'] as String),
      endDateTime: DateTime.parse(json['endDateTime'] as String),
      reason: json['reason'] as String,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$VorScheduleToJson(VorSchedule instance) =>
    <String, dynamic>{
      'startDateTime': instance.startDateTime.toIso8601String(),
      'endDateTime': instance.endDateTime.toIso8601String(),
      'reason': instance.reason,
      'notes': instance.notes,
    };
