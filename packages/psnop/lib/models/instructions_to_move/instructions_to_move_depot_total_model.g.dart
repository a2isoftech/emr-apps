// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions_to_move_depot_total_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructionsToMoveDepotTotalModel _$InstructionsToMoveDepotTotalModelFromJson(
        Map<String, dynamic> json) =>
    InstructionsToMoveDepotTotalModel(
      depot: json['depot'] as String,
      tonnesToMove: (json['tonnesToMove'] as num).toDouble(),
      loadsToMove: (json['loadsToMove'] as num).toDouble(),
      remainingTonnesToMove: (json['remainingTonnesToMove'] as num).toDouble(),
      remainingLoadsToMove: (json['remainingLoadsToMove'] as num).toDouble(),
    );

Map<String, dynamic> _$InstructionsToMoveDepotTotalModelToJson(
        InstructionsToMoveDepotTotalModel instance) =>
    <String, dynamic>{
      'depot': instance.depot,
      'tonnesToMove': instance.tonnesToMove,
      'loadsToMove': instance.loadsToMove,
      'remainingTonnesToMove': instance.remainingTonnesToMove,
      'remainingLoadsToMove': instance.remainingLoadsToMove,
    };
