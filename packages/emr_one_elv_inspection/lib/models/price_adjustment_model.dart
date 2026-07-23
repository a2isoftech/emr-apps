import 'package:json_annotation/json_annotation.dart';

part 'price_adjustment_model.g.dart';

@JsonSerializable()
class PriceAdjustmentModel {
  PriceAdjustmentModel({
    required this.componentName,
    required this.value,
  });

  factory PriceAdjustmentModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PriceAdjustmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$PriceAdjustmentModelToJson(this);

  final String componentName;
  final double value;
}
