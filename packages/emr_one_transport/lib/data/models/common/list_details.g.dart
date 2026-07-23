// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListDetails _$ListDetailsFromJson(Map<String, dynamic> json) => ListDetails(
      id: json['id'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      order: (json['order'] as num?)?.toInt(),
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$ListDetailsToJson(ListDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'order': instance.order,
      'active': instance.active,
    };
