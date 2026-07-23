import 'package:emr_one_cashiersearch/models/advance.dart';
import 'package:json_annotation/json_annotation.dart';

part 'advance_usage.g.dart';

@JsonSerializable(explicitToJson: true)
class AdvanceUsage {
  AdvanceUsage({
    required this.advanceId,
    required this.advanceAmountBeforeOffset,
    required this.applicableOffset,
    required this.advanceAmountAfterOffset,
    this.details,
  });

  factory AdvanceUsage.fromJson(Map<String, dynamic> json) =>
      _$AdvanceUsageFromJson(json);

  Map<String, dynamic> toJson() => _$AdvanceUsageToJson(this);

  final String advanceId;
  final double advanceAmountBeforeOffset;
  final double applicableOffset;
  final double advanceAmountAfterOffset;
  final Advance? details;
}
