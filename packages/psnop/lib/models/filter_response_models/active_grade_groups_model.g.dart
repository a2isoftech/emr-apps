// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_grade_groups_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveGradeGroupsModel _$ActiveGradeGroupsModelFromJson(
        Map<String, dynamic> json) =>
    ActiveGradeGroupsModel(
      gradeGroup: json['gradeGroup'] as String,
      gradeGroupTerritoryName: json['gradeGroupTerritoryName'] as String?,
    );

Map<String, dynamic> _$ActiveGradeGroupsModelToJson(
        ActiveGradeGroupsModel instance) =>
    <String, dynamic>{
      'gradeGroup': instance.gradeGroup,
      'gradeGroupTerritoryName': instance.gradeGroupTerritoryName,
    };
