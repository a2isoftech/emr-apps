// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrinterConfig _$PrinterConfigFromJson(Map<String, dynamic> json) =>
    PrinterConfig(
      piPrintUrl: json['piPrintUrl'] as String,
      printerName: json['printerName'] as String,
      friendlyName: json['friendlyName'] as String,
      apiKey: json['apiKey'] as String,
    );

Map<String, dynamic> _$PrinterConfigToJson(PrinterConfig instance) =>
    <String, dynamic>{
      'piPrintUrl': instance.piPrintUrl,
      'friendlyName': instance.friendlyName,
      'printerName': instance.printerName,
      'apiKey': instance.apiKey,
    };
