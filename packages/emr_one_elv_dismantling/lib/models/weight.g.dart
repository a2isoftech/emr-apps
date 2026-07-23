// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      uom: $enumDecode(_$UomEnumMap, json['uom']),
      value: (json['value'] as num).toDouble(),
      id: (json['id'] as num?)?.toInt() ?? 0,
      mtValue: (json['mtValue'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      'uom': _$UomEnumMap[instance.uom]!,
      'value': instance.value,
      'id': instance.id,
      'mtValue': instance.mtValue,
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
