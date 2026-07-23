import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ElvInventoryItem {
  ElvInventoryItem({
    required this.vin,
    required this.yardCode,
    required this.status,
    required this.productType,
    required this.weight,
    this.location,
    this.price,
  });

  String vin;
  String yardCode;
  String? location;
  String status;
  String productType;
  UomValue weight;
  double? price;
}
