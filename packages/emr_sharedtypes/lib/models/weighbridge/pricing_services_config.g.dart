// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_services_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PricingServicesConfig _$PricingServicesConfigFromJson(
        Map<String, dynamic> json) =>
    PricingServicesConfig(
      retailAccount: json['retailAccount'] as bool? ?? false,
      businessAccount: json['businessAccount'] as bool? ?? false,
      interDepot: json['interDepot'] as bool? ?? false,
    );

Map<String, dynamic> _$PricingServicesConfigToJson(
        PricingServicesConfig instance) =>
    <String, dynamic>{
      'retailAccount': instance.retailAccount,
      'businessAccount': instance.businessAccount,
      'interDepot': instance.interDepot,
    };
