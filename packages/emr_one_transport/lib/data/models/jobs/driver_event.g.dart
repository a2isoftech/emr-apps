// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverEvent _$DriverEventFromJson(Map<String, dynamic> json) => DriverEvent(
      eventType: json['eventType'] as String?,
      subType: json['subType'] as String?,
      started: json['started'] == null
          ? null
          : DateTime.parse(json['started'] as String),
      eventId: json['eventId'] as String?,
      ended: json['ended'] == null
          ? null
          : DateTime.parse(json['ended'] as String),
      comments: json['comments'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DriverEventData.fromJson(e as Map<String, dynamic>))
          .toList(),
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$DriverEventToJson(DriverEvent instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'eventType': instance.eventType,
      'subType': instance.subType,
      'started': instance.started?.toIso8601String(),
      'ended': instance.ended?.toIso8601String(),
      'comments': instance.comments,
      'active': instance.active,
      'data': instance.data,
    };
