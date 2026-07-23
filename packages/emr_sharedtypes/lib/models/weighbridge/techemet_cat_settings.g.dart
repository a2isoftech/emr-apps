// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'techemet_cat_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechemetCatSettings _$TechemetCatSettingsFromJson(Map<String, dynamic> json) =>
    TechemetCatSettings(
      enabled: json['enabled'] as bool,
      defaultWeight: (json['defaultWeight'] as num?)?.toDouble(),
      defaultWeightUom:
          $enumDecodeNullable(_$UomEnumMap, json['defaultWeightUom']),
      defaultProductId: json['defaultProductId'] as String?,
      defaultProduct: json['defaultProduct'] == null
          ? null
          : Product.fromJson(json['defaultProduct'] as Map<String, dynamic>),
      defaultLocationId: json['defaultLocationId'] as String?,
      defaultLocation: json['defaultLocation'] == null
          ? null
          : InventoryLocation.fromJson(
              json['defaultLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TechemetCatSettingsToJson(
        TechemetCatSettings instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'defaultWeight': instance.defaultWeight,
      'defaultWeightUom': _$UomEnumMap[instance.defaultWeightUom],
      'defaultProductId': instance.defaultProductId,
      'defaultProduct': instance.defaultProduct,
      'defaultLocationId': instance.defaultLocationId,
      'defaultLocation': instance.defaultLocation,
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
