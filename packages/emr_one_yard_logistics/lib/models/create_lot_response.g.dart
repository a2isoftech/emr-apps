// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_lot_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLotResponse _$CreateLotResponseFromJson(Map<String, dynamic> json) =>
    CreateLotResponse(
      lot: Lot.fromJson(json['lot'] as Map<String, dynamic>),
      condition:
          $enumDecode(_$CreateLotResponseConditionEnumMap, json['condition']),
    );

Map<String, dynamic> _$CreateLotResponseToJson(CreateLotResponse instance) =>
    <String, dynamic>{
      'lot': instance.lot,
      'condition': _$CreateLotResponseConditionEnumMap[instance.condition]!,
    };

const _$CreateLotResponseConditionEnumMap = {
  CreateLotResponseCondition.created: 0,
  CreateLotResponseCondition.codeInUse: 1,
};
