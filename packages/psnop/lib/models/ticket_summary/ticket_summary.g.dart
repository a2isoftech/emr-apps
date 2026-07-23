// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketSummary _$TicketSummaryFromJson(Map<String, dynamic> json) =>
    TicketSummary(
      direction: json['direction'] as String,
      grade: json['grade'] as String,
      heap: (json['heap'] as num).toInt(),
      line: (json['line'] as num).toInt(),
      party: json['party'] as String,
      partyName: json['partyName'] as String,
      priceType: json['priceType'] as String,
      provisionalRate: (json['provisionalRate'] as num?)?.toDouble(),
      provisionalValue: (json['provisionalValue'] as num?)?.toDouble(),
      provisionalWeight: (json['provisionalWeight'] as num).toDouble(),
      provisionalWeightUnit: json['provisionalWeightUnit'] as String,
      ticketNumber: (json['ticketNumber'] as num).toInt(),
    );

Map<String, dynamic> _$TicketSummaryToJson(TicketSummary instance) =>
    <String, dynamic>{
      'direction': instance.direction,
      'grade': instance.grade,
      'heap': instance.heap,
      'line': instance.line,
      'party': instance.party,
      'partyName': instance.partyName,
      'priceType': instance.priceType,
      'provisionalRate': instance.provisionalRate,
      'provisionalValue': instance.provisionalValue,
      'provisionalWeight': instance.provisionalWeight,
      'provisionalWeightUnit': instance.provisionalWeightUnit,
      'ticketNumber': instance.ticketNumber,
    };
