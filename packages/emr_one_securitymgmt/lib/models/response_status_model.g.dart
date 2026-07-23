// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmResponseStatusModel _$SmResponseStatusModelFromJson(
        Map<String, dynamic> json) =>
    SmResponseStatusModel(
      json['response'] as String,
      json['time'] as String,
    );

Map<String, dynamic> _$SmResponseStatusModelToJson(
        SmResponseStatusModel instance) =>
    <String, dynamic>{
      'response': instance.response,
      'time': instance.time,
    };
