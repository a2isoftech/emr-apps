// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rounding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rounding _$RoundingFromJson(Map<String, dynamic> json) => Rounding(
      (json['value'] as num?)?.toDouble(),
      roundingType:
          $enumDecodeNullable(_$RoundingTypeEnumMap, json['roundingType']),
    );

Map<String, dynamic> _$RoundingToJson(Rounding instance) => <String, dynamic>{
      'value': instance.value,
      'roundingType': _$RoundingTypeEnumMap[instance.roundingType],
    };

const _$RoundingTypeEnumMap = {
  RoundingType.noRounding: 'NO_ROUNDING',
  RoundingType.roundUp: 'ROUND_UP',
  RoundingType.roundDown: 'ROUND_DOWN',
};
