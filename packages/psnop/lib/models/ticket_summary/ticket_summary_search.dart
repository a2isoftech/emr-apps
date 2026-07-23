import 'package:json_annotation/json_annotation.dart';

part 'ticket_summary_search.g.dart';

@JsonSerializable()
class TicketSummarySearchModel {
  TicketSummarySearchModel({
    required this.depotNos,
    this.grades,
    this.parties,
    this.ticketDateFrom,
    this.ticketDateTo,
    this.ticketDirection,
  });

  TicketSummarySearchModel.fromMap(Map<String, List<String>> map)
      : depotNos = map['depotNos'] ?? [],
        grades = map['grades'],
        parties = map['parties'],
        ticketDateFrom = DateTime.tryParse(['ticketDateFrom'].last),
        ticketDateTo = DateTime.tryParse(['ticketDateTo'].last),
        ticketDirection = map['ticketDirection']?.last;

  /// Connect the generated [_$TicketSummarySearchModelFromJson] function to
  /// the `fromJson` factory.
  factory TicketSummarySearchModel.fromJson(Map<String, dynamic> json) =>
      _$TicketSummarySearchModelFromJson(json);

  /// Connect the generated [_$TicketSummarySearchModelToJson] function to
  /// the `toJson` method.
  Map<String, dynamic> toJson() => _$TicketSummarySearchModelToJson(this);

  List<String> depotNos;
  List<String>? grades;
  List<String>? parties;
  DateTime? ticketDateFrom;
  DateTime? ticketDateTo;
  String? ticketDirection;
}
