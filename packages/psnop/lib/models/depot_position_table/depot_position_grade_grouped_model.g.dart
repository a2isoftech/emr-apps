// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depot_position_grade_grouped_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepotPositionGradeGroupedModel _$DepotPositionGradeGroupedModelFromJson(
        Map<String, dynamic> json) =>
    DepotPositionGradeGroupedModel(
      gradeGroupedTotal: GradeGroupedTotalModel.fromJson(
          json['gradeGroupedTotal'] as Map<String, dynamic>),
      depotPosition: (json['depotPosition'] as List<dynamic>)
          .map((e) => DepotPositionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      salesGrade: (json['salesGrade'] as List<dynamic>)
          .map((e) => SalesGradeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DepotPositionGradeGroupedModelToJson(
        DepotPositionGradeGroupedModel instance) =>
    <String, dynamic>{
      'gradeGroupedTotal': instance.gradeGroupedTotal,
      'depotPosition': instance.depotPosition,
      'salesGrade': instance.salesGrade,
    };
