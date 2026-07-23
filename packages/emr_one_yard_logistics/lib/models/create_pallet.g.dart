// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePallet _$CreatePalletFromJson(Map<String, dynamic> json) => CreatePallet(
      code: json['code'] as String,
      yardCode: json['yardCode'] as String,
      palletType:
          $enumDecodeNullable(_$PalletTypeEnumMap, json['palletType']) ??
              PalletType.normal,
    );

Map<String, dynamic> _$CreatePalletToJson(CreatePallet instance) =>
    <String, dynamic>{
      'code': instance.code,
      'yardCode': instance.yardCode,
      'palletType': _$PalletTypeEnumMap[instance.palletType]!,
    };

const _$PalletTypeEnumMap = {
  PalletType.normal: 0,
  PalletType.polyJointBag: 1,
  PalletType.leadJointBag: 2,
};
