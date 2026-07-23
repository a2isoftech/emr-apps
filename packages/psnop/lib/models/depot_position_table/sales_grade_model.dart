import 'package:json_annotation/json_annotation.dart';

part 'sales_grade_model.g.dart';

@JsonSerializable()
class SalesGradeModel {
  SalesGradeModel({
    required this.depotNo,
    required this.directSalesTotalWeight,
    required this.gradeGroup,
    required this.gradeGroupTerritoryName,
    required this.salesGrade,
    required this.yardCode,
  });

  /// Connect the generated [_$DepotPositionModelFromJson] function to the
  ///  `fromJson`factory.
  factory SalesGradeModel.fromJson(Map<String, dynamic> json) =>
      _$SalesGradeModelFromJson(json);

  /// Connect the generated [_$DepotPositionModelToJson] function to the
  ///  `toJson` method.
  Map<String, dynamic> toJson() => _$SalesGradeModelToJson(this);

  String depotNo;
  double directSalesTotalWeight;
  String gradeGroup;
  String gradeGroupTerritoryName;
  String salesGrade;
  String yardCode;
}
