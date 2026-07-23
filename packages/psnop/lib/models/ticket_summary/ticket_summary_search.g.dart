// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_summary_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketSummarySearchModel _$TicketSummarySearchModelFromJson(
        Map<String, dynamic> json) =>
    TicketSummarySearchModel(
      depotNos:
          (json['depotNos'] as List<dynamic>).map((e) => e as String).toList(),
      grades:
          (json['grades'] as List<dynamic>?)?.map((e) => e as String).toList(),
      parties:
          (json['parties'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ticketDateFrom: json['ticketDateFrom'] == null
          ? null
          : DateTime.parse(json['ticketDateFrom'] as String),
      ticketDateTo: json['ticketDateTo'] == null
          ? null
          : DateTime.parse(json['ticketDateTo'] as String),
      ticketDirection: json['ticketDirection'] as String?,
    );

Map<String, dynamic> _$TicketSummarySearchModelToJson(
        TicketSummarySearchModel instance) =>
    <String, dynamic>{
      'depotNos': instance.depotNos,
      'grades': instance.grades,
      'parties': instance.parties,
      'ticketDateFrom': instance.ticketDateFrom?.toIso8601String(),
      'ticketDateTo': instance.ticketDateTo?.toIso8601String(),
      'ticketDirection': instance.ticketDirection,
    };
