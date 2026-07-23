import 'package:json_annotation/json_annotation.dart';

part 'ticket_summary.g.dart';

@JsonSerializable()
class TicketSummary {
  TicketSummary({
    required this.direction,
    required this.grade,
    required this.heap,
    required this.line,
    required this.party,
    required this.partyName,
    required this.priceType,
    required this.provisionalRate,
    required this.provisionalValue,
    required this.provisionalWeight,
    required this.provisionalWeightUnit,
    required this.ticketNumber,
  });

  /// Connect the generated [_$TicketSummaryFromJson] function to
  /// the `fromJson` factory.
  factory TicketSummary.fromJson(Map<String, dynamic> json) =>
      _$TicketSummaryFromJson(json);

  /// Connect the generated [_$TicketSummaryToJson] function to
  /// the `toJson` method.
  Map<String, dynamic> toJson() => _$TicketSummaryToJson(this);

  String direction;
  String grade;
  int heap;
  int line;
  String party;
  String partyName;
  String priceType;
  double? provisionalRate;
  double? provisionalValue;
  double provisionalWeight;
  String provisionalWeightUnit;
  int ticketNumber;

  //extensions for UI
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool selected = false;
}
