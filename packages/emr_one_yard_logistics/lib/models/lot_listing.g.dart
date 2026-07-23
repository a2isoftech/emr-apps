// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LotListing _$LotListingFromJson(Map<String, dynamic> json) => LotListing(
      skip: (json['skip'] as num).toInt(),
      take: (json['take'] as num).toInt(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      search: json['search'] as String?,
      orderBy: (json['orderBy'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      outerCasingFilter: (json['outerCasingFilter'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      innerCompositionFilter: (json['innerCompositionFilter'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      yards:
          (json['yards'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      lotTypes: (json['lotTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LotTypeEnumMap, e))
              .toList() ??
          const <LotType>[],
    );

Map<String, dynamic> _$LotListingToJson(LotListing instance) =>
    <String, dynamic>{
      'search': instance.search,
      'skip': instance.skip,
      'take': instance.take,
      'orderBy': instance.orderBy,
      'outerCasingFilter': instance.outerCasingFilter,
      'innerCompositionFilter': instance.innerCompositionFilter,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'yards': instance.yards,
      'lotTypes': instance.lotTypes.map((e) => _$LotTypeEnumMap[e]!).toList(),
    };

const _$LotTypeEnumMap = {
  LotType.unknown: 0,
  LotType.sticks: 1,
  LotType.joints: 2,
};
