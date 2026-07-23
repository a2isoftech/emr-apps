// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_summary_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketSummaryResponseModel _$TicketSummaryResponseModelFromJson(
        Map<String, dynamic> json) =>
    TicketSummaryResponseModel(
      ticketSummaries: (json['ticketSummaries'] as List<dynamic>)
          .map((e) => TicketSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      summaryLine:
          SummaryLine.fromJson(json['summaryLine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketSummaryResponseModelToJson(
        TicketSummaryResponseModel instance) =>
    <String, dynamic>{
      'ticketSummaries': instance.ticketSummaries,
      'summaryLine': instance.summaryLine,
    };
