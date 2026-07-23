// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desk_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmDeskQueryModel _$SmDeskQueryModelFromJson(Map<String, dynamic> json) =>
    SmDeskQueryModel(
      (json['schedules'] as List<dynamic>).map((e) => e as String).toList(),
      SmDateQueryModel.fromJson(json['startTime'] as Map<String, dynamic>),
      SmDateQueryModel.fromJson(json['endTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SmDeskQueryModelToJson(SmDeskQueryModel instance) =>
    <String, dynamic>{
      'schedules': instance.schedules,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
