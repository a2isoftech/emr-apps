import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_depot_total_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_summary.dart';

part 'instructions_to_move_depot_grouped_model.g.dart';

@JsonSerializable()
class InstructionsToMoveDepotGroupedModel {
  InstructionsToMoveDepotGroupedModel({
    required this.summaries,
    required this.total,
  });

  // Connect the generated [_$InstructionsToMoveDepotGroupedModelFromJson]
  //function to the `fromJson` factory.
  factory InstructionsToMoveDepotGroupedModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InstructionsToMoveDepotGroupedModelFromJson(json);

  /// Connect the generated [_$InstructionsToMoveDepotGroupedModelToJson]
  /// function to the `toJson` method.
  Map<String, dynamic> toJson() =>
      _$InstructionsToMoveDepotGroupedModelToJson(this);

  List<InstructionsToMoveSummary> summaries;
  InstructionsToMoveDepotTotalModel total;

  // extensions for UI
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool expanded = false;
}
