import 'package:emr_one_yard_logistics/models/lot_product_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lot_product_inner_map.g.dart';

@JsonSerializable()
class LotProductInnerMap {
  LotProductInnerMap({
    required this.value,
    required this.acronym,
    required this.productInfo,
  });

  factory LotProductInnerMap.fromJson(Map<String, dynamic> json) =>
      _$LotProductInnerMapFromJson(json);

  final String value;
  final String acronym;
  final LotProductInfo productInfo;

  Map<String, dynamic> toJson() => _$LotProductInnerMapToJson(this);
}
