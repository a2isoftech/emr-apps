import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'haulage_charge.g.dart';

@JsonSerializable(explicitToJson: true)
class HaulageCharge {
  HaulageCharge({
    required this.provRate,
    required this.provValue,
    this.confRate,
    this.confValue,
    this.charge,
  });

  factory HaulageCharge.fromJson(Map<String, dynamic> json) =>
      _$HaulageChargeFromJson(json);

  UomValue provRate;
  UomValue? confRate;
  double provValue;
  double? confValue;
  UomValue? charge;

  Map<String, dynamic> toJson() => _$HaulageChargeToJson(this);
}
