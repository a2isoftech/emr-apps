// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListValue _$ListValueFromJson(Map<String, dynamic> json) => ListValue(
  id: json['id'] as String?,
  text: json['text'] as String?,
  value: json['value'] as String?,
  orderIndex: (json['orderIndex'] as num?)?.toInt(),
  active: json['active'] as bool?,
);

Map<String, dynamic> _$ListValueToJson(ListValue instance) => <String, dynamic>{
  'id': instance.id,
  'text': instance.text,
  'value': instance.value,
  'orderIndex': instance.orderIndex,
  'active': instance.active,
};
