import 'package:emr_one_cashiersearch/models/advance_usage.dart';
import 'package:json_annotation/json_annotation.dart';

part 'advance_adjustment_result.g.dart';

@JsonSerializable(explicitToJson: true)
class AdvanceAdjustmentResult {
  AdvanceAdjustmentResult({
    required this.totalOffset,
    this.advanceAmountBreakup = const [],
  });

  factory AdvanceAdjustmentResult.fromJson(Map<String, dynamic> json) =>
      _$AdvanceAdjustmentResultFromJson(json);

  Map<String, dynamic> toJson() => _$AdvanceAdjustmentResultToJson(this);

  final double totalOffset;
  final List<AdvanceUsage> advanceAmountBreakup;
}
