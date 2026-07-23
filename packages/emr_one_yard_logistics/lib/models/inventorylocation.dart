import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventorylocation.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class InventoryLocation extends CodedEntity {
  InventoryLocation({
    required super.code,
    required super.id,
    required super.created,
    required super.modified,
    required this.trade2Key,
    required this.description,
    required this.productId,
  });

  factory InventoryLocation.fromJson(Map<String, dynamic> json) {
    if (json['code'] == null) {
      json['code'] = json['productId'].toString().split('/').last;
    }
    return _$InventoryLocationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InventoryLocationToJson(this);

  final int? trade2Key;
  final String description;
  final String? productId;
}
