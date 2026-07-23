// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions_to_move_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructionsToMoveSummary _$InstructionsToMoveSummaryFromJson(
        Map<String, dynamic> json) =>
    InstructionsToMoveSummary(
      depot: json['depot'] as String,
      grade: json['grade'] as String,
      tonnesToMove: (json['tonnesToMove'] as num).toDouble(),
      loadsToMove: (json['loadsToMove'] as num).toInt(),
      remainingTonnesToMove: (json['remainingTonnesToMove'] as num).toDouble(),
      remainingLoadsToMove: (json['remainingLoadsToMove'] as num).toInt(),
      destination: json['destination'] as String,
      dueFrom: DateTime.parse(json['dueFrom'] as String),
      dueBy: DateTime.parse(json['dueBy'] as String),
      hold: json['hold'] as bool?,
      priority: (json['priority'] as num?)?.toInt(),
      transportMode: json['transportMode'] as String,
      contractRefTag: json['contractRefTag'] as String?,
    );

Map<String, dynamic> _$InstructionsToMoveSummaryToJson(
        InstructionsToMoveSummary instance) =>
    <String, dynamic>{
      'depot': instance.depot,
      'grade': instance.grade,
      'tonnesToMove': instance.tonnesToMove,
      'loadsToMove': instance.loadsToMove,
      'remainingTonnesToMove': instance.remainingTonnesToMove,
      'remainingLoadsToMove': instance.remainingLoadsToMove,
      'destination': instance.destination,
      'dueFrom': instance.dueFrom.toIso8601String(),
      'dueBy': instance.dueBy.toIso8601String(),
      'hold': instance.hold,
      'priority': instance.priority,
      'transportMode': instance.transportMode,
      'contractRefTag': instance.contractRefTag,
    };
