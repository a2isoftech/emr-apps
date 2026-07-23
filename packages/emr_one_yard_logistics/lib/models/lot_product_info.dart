import 'package:json_annotation/json_annotation.dart';

part 'lot_product_info.g.dart';

@JsonSerializable()
class LotProductInfo {
  LotProductInfo({
    required this.id,
    required this.description,
    required this.code,
    required this.requiredPercentages,
  });

  factory LotProductInfo.fromJson(Map<String, dynamic> json) =>
      _$LotProductInfoFromJson(json);

  final String id;
  final String description;
  final String code;
  final List<String> requiredPercentages;

  Map<String, dynamic> toJson() => _$LotProductInfoToJson(this);
}
