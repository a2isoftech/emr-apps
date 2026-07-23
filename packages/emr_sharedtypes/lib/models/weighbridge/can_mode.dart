import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'can_mode.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class CanMode {
  const CanMode({
    this.enabled = false,
    this.productId,
    this.product,
    this.locationId,
    this.location,
  });

  factory CanMode.fromJson(Map<String, dynamic> json) =>
      _$CanModeFromJson(json);

  Map<String, dynamic> toJson() => _$CanModeToJson(this);

  final bool enabled;
  final String? productId;
  final Product? product;
  final String? locationId;
  final InventoryLocation? location;
}
