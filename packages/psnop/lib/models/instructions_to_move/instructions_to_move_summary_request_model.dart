import 'package:json_annotation/json_annotation.dart';

part 'instructions_to_move_summary_request_model.g.dart';

@JsonSerializable()
class InstructionsToMoveSummaryRequestModel {
  InstructionsToMoveSummaryRequestModel({
    required this.depotNos,
    required this.grades,
    required this.startDate,
    required this.endDate,
  });

  // Connect the generated [_$AllocationSummaryFromJson] function to
  // the `fromJson` factory.
  factory InstructionsToMoveSummaryRequestModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InstructionsToMoveSummaryRequestModelFromJson(json);
  List<String> depotNos;
  List<String> grades;
  DateTime startDate;
  DateTime endDate;

  /// Connect the generated [_$InstructionsToMoveSummaryRequestModelToJson]
  /// function to the `toJson` method.
  Map<String, dynamic> toJson() =>
      _$InstructionsToMoveSummaryRequestModelToJson(this);
}
