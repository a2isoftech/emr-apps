// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_configuration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleConfigurationModel _$VehicleConfigurationModelFromJson(
        Map<String, dynamic> json) =>
    VehicleConfigurationModel(
      hasOriginalCat: json['hasOriginalCat'] as bool?,
      catDetails: (json['catDetails'] as List<dynamic>)
          .map((e) => VehicleCatDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nonConformingParts: (json['nonConformingParts'] as List<dynamic>)
          .map((e) =>
              VehicleNonConformingPartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      vehicleDocuments: (json['vehicleDocuments'] as List<dynamic>)
          .map((e) => VehicleDocumentsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      vinUnreadable: json['vinUnreadable'] as bool,
      hasBattery: json['hasBattery'] as bool?,
      batteryImage: json['batteryImage'] as String?,
      alloyWheels: (json['alloyWheels'] as num?)?.toInt(),
      steelWheels: (json['steelWheels'] as num?)?.toInt(),
      chromeWheels: (json['chromeWheels'] as num?)?.toInt(),
      priceAdjustment: (json['priceAdjustment'] as List<dynamic>?)
          ?.map((e) => PriceAdjustmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VehicleConfigurationModelToJson(
        VehicleConfigurationModel instance) =>
    <String, dynamic>{
      'hasOriginalCat': instance.hasOriginalCat,
      'catDetails': instance.catDetails,
      'nonConformingParts': instance.nonConformingParts,
      'vehicleDocuments': instance.vehicleDocuments,
      'hasBattery': instance.hasBattery,
      'batteryImage': instance.batteryImage,
      'alloyWheels': instance.alloyWheels,
      'steelWheels': instance.steelWheels,
      'chromeWheels': instance.chromeWheels,
      'priceAdjustment': instance.priceAdjustment,
      'vinUnreadable': instance.vinUnreadable,
    };
