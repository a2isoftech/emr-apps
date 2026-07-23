import 'package:json_annotation/json_annotation.dart';

part 'active_grade_groups_model.g.dart';

@JsonSerializable()
class ActiveGradeGroupsModel {
  ActiveGradeGroupsModel({
    required this.gradeGroup,
    this.gradeGroupTerritoryName,
  });

  /// Connect the generated [_$ActiveGradeGroupsModelFromJson] function to the
  /// `fromJson` factory.
  factory ActiveGradeGroupsModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveGradeGroupsModelFromJson(json);

  String gradeGroup;
  String? gradeGroupTerritoryName;
}
