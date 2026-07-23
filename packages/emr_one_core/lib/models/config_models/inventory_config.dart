import 'package:emr_one_core/models/config_models/printer_config.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_config.g.dart';

@JsonSerializable()
class InventoryConfig {
  InventoryConfig({required this.gatewayUrl, required this.labelPrinters});

  factory InventoryConfig.fromJson(Map<String, dynamic> json) =>
      _$InventoryConfigFromJson(json);
  final String gatewayUrl;
  final List<PrinterConfig> labelPrinters;
  Map<String, dynamic> toJson() => _$InventoryConfigToJson(this);
}
