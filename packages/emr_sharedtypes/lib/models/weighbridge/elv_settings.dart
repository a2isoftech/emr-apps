import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'elv_settings.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ElvSettings {
  const ElvSettings({
    this.productId,
    this.product,
    this.locationId,
    this.location,
    this.enforceELVInspectionForLeadSources,
  });

  factory ElvSettings.fromJson(Map<String, dynamic> json) =>
      _$ElvSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$ElvSettingsToJson(this);

  final String? productId;
  final Product? product;
  final String? locationId;
  final InventoryLocation? location;
  final List<LeadSource>? enforceELVInspectionForLeadSources;
}
