import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/depot_position_table/depot_position_model.dart';
import 'package:psnop/models/depot_position_table/grade_grouped_total_model.dart';
import 'package:psnop/models/depot_position_table/sales_grade_model.dart';

part 'depot_position_grade_grouped_model.g.dart';

@JsonSerializable()
class DepotPositionGradeGroupedModel {
  DepotPositionGradeGroupedModel({
    required this.gradeGroupedTotal,
    required this.depotPosition,
    required this.salesGrade,
  });

  /// Connect the generated [_$DepotPositionGradeGroupedModelFromJson] function
  /// to the `fromJson` factory.
  factory DepotPositionGradeGroupedModel.fromJson(Map<String, dynamic> json) =>
      _$DepotPositionGradeGroupedModelFromJson(json);

  /// Connect the generated [_$DepotPositionGradeGroupedModelToJson] function
  /// to the `toJson` method.
  Map<String, dynamic> toJson() => _$DepotPositionGradeGroupedModelToJson(this);

  GradeGroupedTotalModel gradeGroupedTotal;
  List<DepotPositionModel> depotPosition;
  List<SalesGradeModel> salesGrade;
}
