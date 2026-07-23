import 'package:emr_one_elv_inspection/models/raven_migration/part_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'part_price.g.dart';

@JsonSerializable()
class PartPrice {
  PartPrice({
    required this.price,
    required this.partInfo,
    required this.vehiclePartKeys,
  });

  factory PartPrice.fromJson(Map<String, dynamic> json) =>
      _$PartPriceFromJson(json);

  Map<String, dynamic> toJson() => _$PartPriceToJson(this);

  final double price;
  final PartInfo partInfo;
  List<String> vehiclePartKeys;
}
