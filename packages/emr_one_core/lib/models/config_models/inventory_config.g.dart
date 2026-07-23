// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryConfig _$InventoryConfigFromJson(Map<String, dynamic> json) =>
    InventoryConfig(
      gatewayUrl: json['gatewayUrl'] as String,
      labelPrinters: (json['labelPrinters'] as List<dynamic>)
          .map((e) => PrinterConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InventoryConfigToJson(InventoryConfig instance) =>
    <String, dynamic>{
      'gatewayUrl': instance.gatewayUrl,
      'labelPrinters': instance.labelPrinters,
    };
