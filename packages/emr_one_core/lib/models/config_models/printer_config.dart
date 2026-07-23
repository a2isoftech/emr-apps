import 'package:json_annotation/json_annotation.dart';

part 'printer_config.g.dart';

@JsonSerializable()
class PrinterConfig {
  PrinterConfig({
    required this.piPrintUrl,
    required this.printerName,
    required this.friendlyName,
    required this.apiKey,
  });
  factory PrinterConfig.fromJson(Map<String, dynamic> json) =>
      _$PrinterConfigFromJson(json);
  final String piPrintUrl;
  final String friendlyName;
  final String printerName;
  final String apiKey;
  Map<String, dynamic> toJson() => _$PrinterConfigToJson(this);
}
