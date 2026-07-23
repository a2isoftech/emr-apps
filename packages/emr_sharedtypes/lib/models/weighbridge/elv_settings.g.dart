// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elv_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElvSettings _$ElvSettingsFromJson(Map<String, dynamic> json) => ElvSettings(
      productId: json['productId'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      locationId: json['locationId'] as String?,
      location: json['location'] == null
          ? null
          : InventoryLocation.fromJson(
              json['location'] as Map<String, dynamic>),
      enforceELVInspectionForLeadSources:
          (json['enforceELVInspectionForLeadSources'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LeadSourceEnumMap, e))
              .toList(),
    );

Map<String, dynamic> _$ElvSettingsToJson(ElvSettings instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'product': instance.product,
      'locationId': instance.locationId,
      'location': instance.location,
      'enforceELVInspectionForLeadSources': instance
          .enforceELVInspectionForLeadSources
          ?.map((e) => _$LeadSourceEnumMap[e]!)
          .toList(),
    };

const _$LeadSourceEnumMap = {
  LeadSource.none: 'NONE',
  LeadSource.scrapCarComparison: 'SCRAP_CAR_COMPARISON',
  LeadSource.carTakeBack: 'CAR_TAKE_BACK',
  LeadSource.auction: 'AUCTION',
  LeadSource.emrVehicleRecycling: 'EMR_VEHICLE_RECYCLING',
  LeadSource.b2b: 'B2B',
};
