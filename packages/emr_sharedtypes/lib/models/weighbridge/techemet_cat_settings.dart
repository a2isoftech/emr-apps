import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'techemet_cat_settings.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TechemetCatSettings {
  const TechemetCatSettings({
    required this.enabled,
    this.defaultWeight,
    this.defaultWeightUom,
    this.defaultProductId,
    this.defaultProduct,
    this.defaultLocationId,
    this.defaultLocation,
  });

  const TechemetCatSettings.blank()
      : enabled = false,
        defaultWeight = null,
        defaultWeightUom = null,
        defaultProductId = null,
        defaultProduct = null,
        defaultLocationId = null,
        defaultLocation = null;

  factory TechemetCatSettings.fromJson(Map<String, dynamic> json) =>
      _$TechemetCatSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$TechemetCatSettingsToJson(this);

  final bool enabled;

  final double? defaultWeight;

  final Uom? defaultWeightUom;

  final String? defaultProductId;

  final Product? defaultProduct;

  final String? defaultLocationId;

  final InventoryLocation? defaultLocation;
}
