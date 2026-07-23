// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pallet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePalletResponse _$UpdatePalletResponseFromJson(
        Map<String, dynamic> json) =>
    UpdatePalletResponse(
      pallet: Pallet.fromJson(json['pallet'] as Map<String, dynamic>),
      condition: $enumDecode(
          _$UpdatePalletResponseConditionEnumMap, json['condition']),
    );

Map<String, dynamic> _$UpdatePalletResponseToJson(
        UpdatePalletResponse instance) =>
    <String, dynamic>{
      'pallet': instance.pallet,
      'condition': _$UpdatePalletResponseConditionEnumMap[instance.condition]!,
    };

const _$UpdatePalletResponseConditionEnumMap = {
  UpdatePalletResponseCondition.updated: 0,
};
