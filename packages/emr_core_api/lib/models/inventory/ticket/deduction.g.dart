// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deduction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deduction _$DeductionFromJson(Map<String, dynamic> json) => Deduction()
  ..typeId = json['typeId'] as String
  ..subType = $enumDecodeNullable(_$DeductionSubTypeEnumMap, json['subType'])
  ..weight = json['weight'] == null
      ? null
      : UomValue.fromJson(json['weight'] as Map<String, dynamic>)
  ..value = (json['value'] as num?)?.toDouble()
  ..scaleIdentifier = json['scaleIdentifier'] as String?
  ..weightSerial = json['weightSerial'] as String?
  ..isTareFromPreviousWeight = json['isTareFromPreviousWeight'] as bool
  ..hasSeenZero = json['hasSeenZero'] as bool
  ..mediaAssets = (json['mediaAssets'] as List<dynamic>)
      .map((e) => InventoryMediaAsset.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$DeductionToJson(Deduction instance) => <String, dynamic>{
  'typeId': instance.typeId,
  'subType': _$DeductionSubTypeEnumMap[instance.subType],
  'weight': instance.weight,
  'value': instance.value,
  'scaleIdentifier': instance.scaleIdentifier,
  'weightSerial': instance.weightSerial,
  'isTareFromPreviousWeight': instance.isTareFromPreviousWeight,
  'hasSeenZero': instance.hasSeenZero,
  'mediaAssets': instance.mediaAssets,
};

const _$DeductionSubTypeEnumMap = {
  DeductionSubType.internal: 'INTERNAL',
  DeductionSubType.externalOn: 'EXTERNAL_ON',
  DeductionSubType.externalOff: 'EXTERNAL_OFF',
};
