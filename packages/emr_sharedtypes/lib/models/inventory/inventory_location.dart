import 'package:json_annotation/json_annotation.dart';

part 'inventory_location.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class InventoryLocation {
  InventoryLocation({
    this.id,
    this.description,
    this.code,
    this.productId,
    this.productCode,
    this.depotId,
  });

  InventoryLocation.none()
      : this(id: '', description: '', code: '', productCode: '', depotId: '');

  factory InventoryLocation.fromJson(Map<String, dynamic> json) =>
      _$InventoryLocationFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryLocationToJson(this);

  String? id;
  String? description;
  String? code;
  String? productId;
  String? productCode;
  String? depotId;
}
