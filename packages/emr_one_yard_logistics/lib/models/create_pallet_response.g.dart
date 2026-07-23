// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pallet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePalletResponse _$CreatePalletResponseFromJson(
        Map<String, dynamic> json) =>
    CreatePalletResponse(
      pallet: Pallet.fromJson(json['pallet'] as Map<String, dynamic>),
      condition: $enumDecode(
          _$CreatePalletResponseConditionEnumMap, json['condition']),
    );

Map<String, dynamic> _$CreatePalletResponseToJson(
        CreatePalletResponse instance) =>
    <String, dynamic>{
      'pallet': instance.pallet,
      'condition': _$CreatePalletResponseConditionEnumMap[instance.condition]!,
    };

const _$CreatePalletResponseConditionEnumMap = {
  CreatePalletResponseCondition.created: 0,
  CreatePalletResponseCondition.codeInUse: 1,
};
