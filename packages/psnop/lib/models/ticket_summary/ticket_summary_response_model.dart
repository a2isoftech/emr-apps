import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/ticket_summary/summary_line.dart';
import 'package:psnop/models/ticket_summary/ticket_summary.dart';

part 'ticket_summary_response_model.g.dart';

@JsonSerializable()
class TicketSummaryResponseModel {
  TicketSummaryResponseModel({
    required this.ticketSummaries,
    required this.summaryLine,
  });

  factory TicketSummaryResponseModel.empty() => TicketSummaryResponseModel(
        ticketSummaries: [],
        summaryLine: SummaryLine.empty(),
      );

  /// Connect the generated [_$TicketSummaryResponseModelFromJson] function
  /// to the `fromJson`factory.
  factory TicketSummaryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TicketSummaryResponseModelFromJson(json);

  /// Connect the generated [_$TicketSummaryResponseModelToJson] function
  /// to the `toJson` method.
  Map<String, dynamic> toJson() => _$TicketSummaryResponseModelToJson(this);

  List<TicketSummary> ticketSummaries;
  SummaryLine summaryLine;
}
