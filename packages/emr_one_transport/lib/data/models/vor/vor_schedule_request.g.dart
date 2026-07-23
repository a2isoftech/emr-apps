// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vor_schedule_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VORScheduleRequest _$VORScheduleRequestFromJson(Map<String, dynamic> json) =>
    VORScheduleRequest(
      id: json['id'] as String?,
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      endDateTime: json['endDateTime'] == null
          ? null
          : DateTime.parse(json['endDateTime'] as String),
      active: json['active'] as bool?,
      reason: json['reason'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$VORScheduleRequestToJson(VORScheduleRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDateTime': instance.startDateTime?.toIso8601String(),
      'endDateTime': instance.endDateTime?.toIso8601String(),
      'active': instance.active,
      'reason': instance.reason,
      'notes': instance.notes,
    };
