// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pallet_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PalletListing _$PalletListingFromJson(Map<String, dynamic> json) =>
    PalletListing(
      palletTypes: (json['palletTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PalletTypeEnumMap, e))
              .toList() ??
          const <PalletType>[],
      palletStates: (json['palletStates'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PalletStateEnumMap, e))
              .toList() ??
          const <PalletState>[],
      yards:
          (json['yards'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$PalletListingToJson(PalletListing instance) =>
    <String, dynamic>{
      'palletTypes':
          instance.palletTypes.map((e) => _$PalletTypeEnumMap[e]!).toList(),
      'palletStates':
          instance.palletStates.map((e) => _$PalletStateEnumMap[e]!).toList(),
      'yards': instance.yards,
    };

const _$PalletTypeEnumMap = {
  PalletType.normal: 0,
  PalletType.polyJointBag: 1,
  PalletType.leadJointBag: 2,
};

const _$PalletStateEnumMap = {
  PalletState.empty: 0,
  PalletState.inProgress: 1,
  PalletState.packed: 2,
  PalletState.onPackingList: 3,
};
