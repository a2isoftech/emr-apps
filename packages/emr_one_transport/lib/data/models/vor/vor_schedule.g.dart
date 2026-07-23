// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vor_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VORSchedule _$VORScheduleFromJson(Map<String, dynamic> json) => VORSchedule(
      id: json['id'] as String?,
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      endDateTime: json['endDateTime'] == null
          ? null
          : DateTime.parse(json['endDateTime'] as String),
      active: json['active'] as bool?,
      created: json['created'] == null
          ? null
          : UserActionInfo.fromJson(json['created'] as Map<String, dynamic>),
      modified: json['modified'] == null
          ? null
          : UserActionInfo.fromJson(json['modified'] as Map<String, dynamic>),
      reason: json['reason'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$VORScheduleToJson(VORSchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDateTime': instance.startDateTime?.toIso8601String(),
      'endDateTime': instance.endDateTime?.toIso8601String(),
      'active': instance.active,
      'created': instance.created,
      'modified': instance.modified,
      'reason': instance.reason,
      'notes': instance.notes,
    };
