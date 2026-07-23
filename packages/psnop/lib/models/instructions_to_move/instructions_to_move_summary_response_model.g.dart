// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions_to_move_summary_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructionsToMoveSummaryResponseModel
    _$InstructionsToMoveSummaryResponseModelFromJson(
            Map<String, dynamic> json) =>
        InstructionsToMoveSummaryResponseModel(
          summaries: (json['summaries'] as List<dynamic>)
              .map((e) => InstructionsToMoveDepotGroupedModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$InstructionsToMoveSummaryResponseModelToJson(
        InstructionsToMoveSummaryResponseModel instance) =>
    <String, dynamic>{
      'summaries': instance.summaries,
    };
