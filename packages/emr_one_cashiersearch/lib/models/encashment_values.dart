import 'package:json_annotation/json_annotation.dart';

part 'encashment_values.g.dart';

@JsonSerializable(explicitToJson: true)
class EncashmentValues {
  EncashmentValues({
    required this.encashValue,
    required this.commissionValue,
    required this.baseCommissionValue,
    required this.roundingAdjustment,
  });
  factory EncashmentValues.fromJson(Map<String, dynamic> json) =>
      _$EncashmentValuesFromJson(json);

  double encashValue;
  double commissionValue;
  double baseCommissionValue;
  double roundingAdjustment;

  Map<String, dynamic> toJson() => _$EncashmentValuesToJson(this);
}
