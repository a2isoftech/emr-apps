import 'package:json_annotation/json_annotation.dart';

part 'pricing_services_config.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PricingServicesConfig {
  const PricingServicesConfig({
    this.retailAccount = false,
    this.businessAccount = false,
    this.interDepot = false,
  });

  factory PricingServicesConfig.fromJson(Map<String, dynamic> json) =>
      _$PricingServicesConfigFromJson(json);

  Map<String, dynamic> toJson() => _$PricingServicesConfigToJson(this);

  final bool retailAccount;
  final bool businessAccount;
  final bool interDepot;
}
