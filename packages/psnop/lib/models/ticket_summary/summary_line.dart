import 'package:json_annotation/json_annotation.dart';

part 'summary_line.g.dart';

@JsonSerializable()
class SummaryLine {
  SummaryLine({
    required this.ticketNumberCount,
    required this.lineCount,
    required this.partyCount,
    required this.gradeCount,
    required this.heapCount,
    required this.provisionalWeightSum,
    required this.provisionalValueSum,
  });

  factory SummaryLine.empty() => SummaryLine(
        ticketNumberCount: 0,
        lineCount: 0,
        partyCount: 0,
        gradeCount: 0,
        heapCount: 0,
        provisionalWeightSum: 0,
        provisionalValueSum: 0,
      );

  /// Connect the generated [_$TicketSummaryFromJson] function to
  /// the `fromJson` factory.
  factory SummaryLine.fromJson(Map<String, dynamic> json) =>
      _$SummaryLineFromJson(json);

  /// Connect the generated [_$TicketSummaryToJson] function to
  /// the `toJson` method.
  Map<String, dynamic> toJson() => _$SummaryLineToJson(this);

  int ticketNumberCount;
  int lineCount;
  int partyCount;
  int gradeCount;
  int heapCount;
  double provisionalWeightSum;
  double provisionalValueSum;

  //extensions for UI
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool selected = false;
}
