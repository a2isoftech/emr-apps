import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_depot_grouped_model.dart';

part 'instructions_to_move_summary_response_model.g.dart';

@JsonSerializable()
class InstructionsToMoveSummaryResponseModel {
  InstructionsToMoveSummaryResponseModel({
    required this.summaries,
  });

  factory InstructionsToMoveSummaryResponseModel.empty() =>
      InstructionsToMoveSummaryResponseModel(
        summaries: [],
      );

  // Connect the generated [_$AllocationSummaryFromJson] function to the
  // `fromJson` factory.
  factory InstructionsToMoveSummaryResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InstructionsToMoveSummaryResponseModelFromJson(json);

  /// Connect the generated [_$InstructionsToMoveSummaryResponseModelToJson]
  /// function to the `toJson` method.
  Map<String, dynamic> toJson() =>
      _$InstructionsToMoveSummaryResponseModelToJson(this);

  List<InstructionsToMoveDepotGroupedModel> summaries;
}
