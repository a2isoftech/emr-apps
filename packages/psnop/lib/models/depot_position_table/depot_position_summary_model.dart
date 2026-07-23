import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/depot_position_table/depot_grouped_total_model.dart';
import 'package:psnop/models/depot_position_table/depot_position_grade_grouped_model.dart';

part 'depot_position_summary_model.g.dart';

@JsonSerializable()
class DepotPositionSummaryModel {
  DepotPositionSummaryModel({
    required this.depotTotal,
    required this.depotPositionGradeGroupedModels,
  });

  /// Connect the generated [_$DepotPositionSummaryModelFromJson] function to
  /// the `fromJson` factory.
  factory DepotPositionSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$DepotPositionSummaryModelFromJson(json);

  /// Connect the generated [_$DepotPositionSummaryModelToJson] function to
  /// the `toJson` method.
  Map<String, dynamic> toJson() => _$DepotPositionSummaryModelToJson(this);

  DepotGroupedTotalModel depotTotal;
  List<DepotPositionGradeGroupedModel> depotPositionGradeGroupedModels;

  // extensions for UI
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool expanded = false;
}
