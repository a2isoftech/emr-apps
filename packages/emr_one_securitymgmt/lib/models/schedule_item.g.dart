// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmScheduleItem _$SmScheduleItemFromJson(Map<String, dynamic> json) =>
    SmScheduleItem(
      json['isPrivate'] as bool? ?? false,
      json['status'] as String? ?? '',
      json['subject'] as String? ?? '',
      json['location'] as String? ?? '',
      json['isMeeting'] as bool? ?? false,
      json['isRecurring'] as bool? ?? false,
      json['isException'] as bool? ?? false,
      json['isReminderSet'] as bool? ?? false,
      SmDateQueryModel.fromJson(json['start'] as Map<String, dynamic>),
      SmDateQueryModel.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SmScheduleItemToJson(SmScheduleItem instance) =>
    <String, dynamic>{
      'isPrivate': instance.isPrivate,
      'status': instance.status,
      'subject': instance.subject,
      'location': instance.location,
      'isMeeting': instance.isMeeting,
      'isRecurring': instance.isRecurring,
      'isException': instance.isException,
      'isReminderSet': instance.isReminderSet,
      'start': instance.start,
      'end': instance.end,
    };
