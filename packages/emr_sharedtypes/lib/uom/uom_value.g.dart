// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uom_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UomValue _$UomValueFromJson(Map<String, dynamic> json) => UomValue(
      isRate: json['isRate'] as bool? ?? false,
    )
      ..id = (json['id'] as num).toInt()
      ..value = (json['value'] as num).toDouble()
      ..uom = $enumDecode(_$UomEnumMap, json['uom']);

Map<String, dynamic> _$UomValueToJson(UomValue instance) => <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'uom': _$UomEnumMap[instance.uom]!,
      'isRate': instance.isRate,
    };

const _$UomEnumMap = {
  Uom.unknown: 'unknown',
  Uom.mt: 'MT',
  Uom.lb: 'LB',
  Uom.gt: 'GT',
  Uom.nt: 'NT',
  Uom.kg: 'KG',
  Uom.ld: 'LD',
  Uom.ea: 'EA',
  Uom.lt: 'LT',
  Uom.hr: 'HR',
  Uom.cwt: 'CWT',
};
