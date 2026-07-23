import 'package:json_annotation/json_annotation.dart';

part 'instructions_to_move_summary.g.dart';

@JsonSerializable()
class InstructionsToMoveSummary {
  InstructionsToMoveSummary({
    required this.depot,
    required this.grade,
    required this.tonnesToMove,
    required this.loadsToMove,
    required this.remainingTonnesToMove,
    required this.remainingLoadsToMove,
    required this.destination,
    required this.dueFrom,
    required this.dueBy,
    required this.hold,
    required this.priority,
    required this.transportMode,
    this.contractRefTag,
  });

  // Connect the generated [_$AllocationSummaryFromJson] function to the
  // `fromJson` factory.
  factory InstructionsToMoveSummary.fromJson(Map<String, dynamic> json) =>
      _$InstructionsToMoveSummaryFromJson(json);

  /// Connect the generated [_$InstructionsToMoveSummaryToJson] function to
  /// the `toJson` method.
  Map<String, dynamic> toJson() => _$InstructionsToMoveSummaryToJson(this);

  String depot;
  String grade;
  double tonnesToMove;
  int loadsToMove;
  double remainingTonnesToMove;
  int remainingLoadsToMove;
  String destination;
  DateTime dueFrom;
  DateTime dueBy;
  bool? hold;
  int? priority;
  String transportMode;
  String? contractRefTag;
}
