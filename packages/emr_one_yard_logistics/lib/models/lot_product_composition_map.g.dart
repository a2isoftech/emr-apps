// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot_product_composition_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LotProductCompositionMap _$LotProductCompositionMapFromJson(
        Map<String, dynamic> json) =>
    LotProductCompositionMap(
      outerValue: json['outerValue'] as String,
      outerValueAcronym: json['outerValueAcronym'] as String,
      innerCompositions: (json['innerCompositions'] as List<dynamic>)
          .map((e) => LotProductInnerMap.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportedLotTypes: (json['supportedLotTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LotTypeEnumMap, e))
              .toList() ??
          const <LotType>[],
    );

Map<String, dynamic> _$LotProductCompositionMapToJson(
        LotProductCompositionMap instance) =>
    <String, dynamic>{
      'outerValue': instance.outerValue,
      'outerValueAcronym': instance.outerValueAcronym,
      'innerCompositions': instance.innerCompositions,
      'supportedLotTypes':
          instance.supportedLotTypes.map((e) => _$LotTypeEnumMap[e]!).toList(),
    };

const _$LotTypeEnumMap = {
  LotType.unknown: 0,
  LotType.sticks: 1,
  LotType.joints: 2,
};
