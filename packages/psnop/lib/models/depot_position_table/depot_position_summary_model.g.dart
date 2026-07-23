// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depot_position_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepotPositionSummaryModel _$DepotPositionSummaryModelFromJson(
        Map<String, dynamic> json) =>
    DepotPositionSummaryModel(
      depotTotal: DepotGroupedTotalModel.fromJson(
          json['depotTotal'] as Map<String, dynamic>),
      depotPositionGradeGroupedModels:
          (json['depotPositionGradeGroupedModels'] as List<dynamic>)
              .map((e) => DepotPositionGradeGroupedModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$DepotPositionSummaryModelToJson(
        DepotPositionSummaryModel instance) =>
    <String, dynamic>{
      'depotTotal': instance.depotTotal,
      'depotPositionGradeGroupedModels':
          instance.depotPositionGradeGroupedModels,
    };
