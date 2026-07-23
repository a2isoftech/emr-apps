// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions_to_move_depot_grouped_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructionsToMoveDepotGroupedModel
    _$InstructionsToMoveDepotGroupedModelFromJson(Map<String, dynamic> json) =>
        InstructionsToMoveDepotGroupedModel(
          summaries: (json['summaries'] as List<dynamic>)
              .map((e) =>
                  InstructionsToMoveSummary.fromJson(e as Map<String, dynamic>))
              .toList(),
          total: InstructionsToMoveDepotTotalModel.fromJson(
              json['total'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$InstructionsToMoveDepotGroupedModelToJson(
        InstructionsToMoveDepotGroupedModel instance) =>
    <String, dynamic>{
      'summaries': instance.summaries,
      'total': instance.total,
    };
