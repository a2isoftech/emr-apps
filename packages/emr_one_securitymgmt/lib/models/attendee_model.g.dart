// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmAttendeeModel _$SmAttendeeModelFromJson(Map<String, dynamic> json) =>
    SmAttendeeModel(
      json['type'] as String,
      SmEmailAddressModel.fromJson(
          json['emailAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SmAttendeeModelToJson(SmAttendeeModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'emailAddress': instance.emailAddress,
    };
