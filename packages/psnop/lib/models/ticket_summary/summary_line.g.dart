// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryLine _$SummaryLineFromJson(Map<String, dynamic> json) => SummaryLine(
      ticketNumberCount: (json['ticketNumberCount'] as num).toInt(),
      lineCount: (json['lineCount'] as num).toInt(),
      partyCount: (json['partyCount'] as num).toInt(),
      gradeCount: (json['gradeCount'] as num).toInt(),
      heapCount: (json['heapCount'] as num).toInt(),
      provisionalWeightSum: (json['provisionalWeightSum'] as num).toDouble(),
      provisionalValueSum: (json['provisionalValueSum'] as num).toDouble(),
    );

Map<String, dynamic> _$SummaryLineToJson(SummaryLine instance) =>
    <String, dynamic>{
      'ticketNumberCount': instance.ticketNumberCount,
      'lineCount': instance.lineCount,
      'partyCount': instance.partyCount,
      'gradeCount': instance.gradeCount,
      'heapCount': instance.heapCount,
      'provisionalWeightSum': instance.provisionalWeightSum,
      'provisionalValueSum': instance.provisionalValueSum,
    };
