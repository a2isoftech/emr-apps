// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_search_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuoteSearchInput _$QuoteSearchInputFromJson(Map<String, dynamic> json) =>
    QuoteSearchInput(
      json['query'] as String?,
      (json['yardCodes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['quoteStatuses'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$QuoteStatusEnumEnumMap, e))
          .toList(),
      (json['acquisitionTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AcquisitionTypeEnumEnumMap, e))
          .toList(),
      (json['collectionStatuses'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CollectionStatusEnumEnumMap, e))
          .toList(),
      (json['leadSources'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$LeadSourceEnumEnumMap, e))
          .toList(),
      json['collectionDateMin'] == null
          ? null
          : DateTime.parse(json['collectionDateMin'] as String),
      json['collectionDateMax'] == null
          ? null
          : DateTime.parse(json['collectionDateMax'] as String),
      json['createdDateMin'] == null
          ? null
          : DateTime.parse(json['createdDateMin'] as String),
      json['createdDateMax'] == null
          ? null
          : DateTime.parse(json['createdDateMax'] as String),
      json['territoryCode'] as String?,
      includeExpiredQuotes: json['includeExpiredQuotes'] as bool? ?? true,
    );

Map<String, dynamic> _$QuoteSearchInputToJson(QuoteSearchInput instance) =>
    <String, dynamic>{
      'query': instance.query,
      'yardCodes': instance.yardCodes,
      'quoteStatuses': instance.quoteStatuses
          ?.map((e) => _$QuoteStatusEnumEnumMap[e]!)
          .toList(),
      'acquisitionTypes': instance.acquisitionTypes
          ?.map((e) => _$AcquisitionTypeEnumEnumMap[e]!)
          .toList(),
      'collectionStatuses': instance.collectionStatuses
          ?.map((e) => _$CollectionStatusEnumEnumMap[e]!)
          .toList(),
      'leadSources': instance.leadSources
          ?.map((e) => _$LeadSourceEnumEnumMap[e]!)
          .toList(),
      'collectionDateMin': instance.collectionDateMin?.toIso8601String(),
      'collectionDateMax': instance.collectionDateMax?.toIso8601String(),
      'createdDateMin': instance.createdDateMin?.toIso8601String(),
      'createdDateMax': instance.createdDateMax?.toIso8601String(),
      'territoryCode': instance.territoryCode,
      'includeExpiredQuotes': instance.includeExpiredQuotes,
    };

const _$QuoteStatusEnumEnumMap = {
  QuoteStatusEnum.unknown: 'unknown',
  QuoteStatusEnum.draft: 'draft',
  QuoteStatusEnum.confirmed: 'confirmed',
  QuoteStatusEnum.inspected: 'inspected',
  QuoteStatusEnum.inspectionInProgress: 'inspectionInProgress',
  QuoteStatusEnum.abandoned: 'abandoned',
};

const _$AcquisitionTypeEnumEnumMap = {
  AcquisitionTypeEnum.unknown: 'unknown',
  AcquisitionTypeEnum.delivered: 'delivered',
  AcquisitionTypeEnum.collected: 'collected',
};

const _$CollectionStatusEnumEnumMap = {
  CollectionStatusEnum.pendingAllocation: 'pendingAllocation',
  CollectionStatusEnum.allocated: 'allocated',
};

const _$LeadSourceEnumEnumMap = {
  LeadSourceEnum.none: 'none',
  LeadSourceEnum.carTakeBack: 'carTakeBack',
  LeadSourceEnum.scrapCarComparison: 'scrapCarComparison',
  LeadSourceEnum.auction: 'auction',
  LeadSourceEnum.emrVehicleRecycling: 'emrVehicleRecycling',
  LeadSourceEnum.b2b: 'b2b',
};
