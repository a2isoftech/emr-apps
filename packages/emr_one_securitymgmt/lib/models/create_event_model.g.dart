// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmCreateEventModel _$SmCreateEventModelFromJson(Map<String, dynamic> json) =>
    SmCreateEventModel(
      SmDateQueryModel.fromJson(json['start'] as Map<String, dynamic>),
      SmDateQueryModel.fromJson(json['end'] as Map<String, dynamic>),
      json['subject'] as String,
      SmLocationModel.fromJson(json['location'] as Map<String, dynamic>),
      json['showAs'] as String,
      (json['attendees'] as List<dynamic>)
          .map((e) => SmAttendeeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['transactionId'] as String,
    );

Map<String, dynamic> _$SmCreateEventModelToJson(SmCreateEventModel instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'subject': instance.subject,
      'showAs': instance.showAs,
      'location': instance.location,
      'attendees': instance.attendees,
      'transactionId': instance.transactionId,
    };
