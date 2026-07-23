// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_grade_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveGradeTypesModel _$ActiveGradeTypesModelFromJson(
        Map<String, dynamic> json) =>
    ActiveGradeTypesModel(
      gradeType: json['gradeType'] as String,
      gradeTypeTerritoryName: json['gradeTypeTerritoryName'] as String?,
    );

Map<String, dynamic> _$ActiveGradeTypesModelToJson(
        ActiveGradeTypesModel instance) =>
    <String, dynamic>{
      'gradeType': instance.gradeType,
      'gradeTypeTerritoryName': instance.gradeTypeTerritoryName,
    };
