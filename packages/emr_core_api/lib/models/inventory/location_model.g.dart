// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      description: json['description'] as String,
      yardId: json['yardId'] as String,
      id: json['id'] as String,
      code: json['code'] as String,
      active: json['active'] as bool,
      parentId: json['parentId'] as String?,
      what3Words: json['what3Words'] as String?,
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'yardId': instance.yardId,
      'id': instance.id,
      'code': instance.code,
      'active': instance.active,
      'what3Words': instance.what3Words,
      'parentId': instance.parentId,
    };
