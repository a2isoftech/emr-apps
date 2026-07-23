import 'package:json_annotation/json_annotation.dart';

part 'active_grade_types_model.g.dart';

@JsonSerializable()
class ActiveGradeTypesModel {
  ActiveGradeTypesModel({
    required this.gradeType,
    this.gradeTypeTerritoryName,
  });

  /// Connect the generated [_$ActiveGradeTypesModelFromJson] function to the
  /// `fromJson` factory.
  factory ActiveGradeTypesModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveGradeTypesModelFromJson(json);

  String gradeType;
  String? gradeTypeTerritoryName;
}
