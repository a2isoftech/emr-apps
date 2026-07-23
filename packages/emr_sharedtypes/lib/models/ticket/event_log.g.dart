// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventLog _$EventLogFromJson(Map<String, dynamic> json) => EventLog(
      type: $enumDecode(_$EventLogTypeEnumMap, json['type']),
      dateTime: DateTime.parse(json['dateTime'] as String),
      message: json['message'] as String,
      details: (json['details'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$EventLogToJson(EventLog instance) => <String, dynamic>{
      'type': _$EventLogTypeEnumMap[instance.type]!,
      'dateTime': instance.dateTime.toIso8601String(),
      'message': instance.message,
      'details': instance.details,
    };

const _$EventLogTypeEnumMap = {
  EventLogType.success: 'SUCCESS',
  EventLogType.error: 'ERROR',
  EventLogType.warning: 'WARNING',
  EventLogType.information: 'INFORMATION',
};
