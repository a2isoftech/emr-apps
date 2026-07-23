// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uom_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UomValue _$UomValueFromJson(Map<String, dynamic> json) => UomValue(
      json['uom'] as String,
      (json['value'] as num).toInt(),
      isRate: json['isRate'] as bool? ?? false,
    );

Map<String, dynamic> _$UomValueToJson(UomValue instance) => <String, dynamic>{
      'uom': instance.uom,
      'value': instance.value,
      'isRate': instance.isRate,
    };
