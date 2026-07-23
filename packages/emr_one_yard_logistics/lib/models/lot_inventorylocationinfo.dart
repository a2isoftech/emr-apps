import 'package:emr_one_yard_logistics/models/inventorylocation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lot_inventorylocationinfo.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class InventoryLocationInfo {
  InventoryLocationInfo({
    required this.id,
    required this.trade2Key,
    required this.description,
    required this.productId,
  });

  factory InventoryLocationInfo.fromJson(Map<String, dynamic> json) =>
      _$InventoryLocationInfoFromJson(json);

  factory InventoryLocationInfo.fromInventoryLocation(
    InventoryLocation inventoryLocation,
  ) =>
      InventoryLocationInfo(
        id: inventoryLocation.id,
        trade2Key: inventoryLocation.trade2Key ?? 0,
        description: inventoryLocation.description,
        productId: inventoryLocation.productId?.toString() ?? '',
      );

  final String id;
  final int trade2Key;
  final String description;
  final String productId;

  Map<String, dynamic> toJson() => _$InventoryLocationInfoToJson(this);
}
