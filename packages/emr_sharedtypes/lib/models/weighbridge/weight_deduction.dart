import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weight_deduction.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class WeightDeduction {
  WeightDeduction({
    required this.value,
    this.comments,
    this.serialNo,
    this.expiryDate,
  });

  factory WeightDeduction.fromJson(Map<String, dynamic> json) =>
      _$WeightDeductionFromJson(json);

  Map<String, dynamic> toJson() => _$WeightDeductionToJson(this);

  UomValue value;
  String? comments;
  String? serialNo;
  DateTime? expiryDate;
}
