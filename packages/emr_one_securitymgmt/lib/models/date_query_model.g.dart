// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmDateQueryModel _$SmDateQueryModelFromJson(Map<String, dynamic> json) =>
    SmDateQueryModel(
      json['dateTime'] as String,
      json['timeZone'] as String,
    );

Map<String, dynamic> _$SmDateQueryModelToJson(SmDateQueryModel instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime,
      'timeZone': instance.timeZone,
    };
