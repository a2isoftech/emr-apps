// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_lot_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateLotResponse _$UpdateLotResponseFromJson(Map<String, dynamic> json) =>
    UpdateLotResponse(
      lot: Lot.fromJson(json['lot'] as Map<String, dynamic>),
      condition:
          $enumDecode(_$UpdateLotResponseConditionEnumMap, json['condition']),
    );

Map<String, dynamic> _$UpdateLotResponseToJson(UpdateLotResponse instance) =>
    <String, dynamic>{
      'lot': instance.lot,
      'condition': _$UpdateLotResponseConditionEnumMap[instance.condition]!,
    };

const _$UpdateLotResponseConditionEnumMap = {
  UpdateLotResponseCondition.updated: 0,
};
