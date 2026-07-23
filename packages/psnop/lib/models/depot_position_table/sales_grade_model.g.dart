// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_grade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesGradeModel _$SalesGradeModelFromJson(Map<String, dynamic> json) =>
    SalesGradeModel(
      depotNo: json['depotNo'] as String,
      directSalesTotalWeight:
          (json['directSalesTotalWeight'] as num).toDouble(),
      gradeGroup: json['gradeGroup'] as String,
      gradeGroupTerritoryName: json['gradeGroupTerritoryName'] as String,
      salesGrade: json['salesGrade'] as String,
      yardCode: json['yardCode'] as String,
    );

Map<String, dynamic> _$SalesGradeModelToJson(SalesGradeModel instance) =>
    <String, dynamic>{
      'depotNo': instance.depotNo,
      'directSalesTotalWeight': instance.directSalesTotalWeight,
      'gradeGroup': instance.gradeGroup,
      'gradeGroupTerritoryName': instance.gradeGroupTerritoryName,
      'salesGrade': instance.salesGrade,
      'yardCode': instance.yardCode,
    };
