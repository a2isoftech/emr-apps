// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depot_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepotFilterModel _$DepotFilterModelFromJson(Map<String, dynamic> json) =>
    DepotFilterModel(
      depotNo: json['depotNo'] as String?,
      gradeGroup: json['gradeGroup'] as String?,
      grade: json['grade'] as String?,
      gradeType: json['gradeType'] as String?,
      ignoreZeroHeaps: json['ignoreZeroHeaps'] as bool?,
      weeks: (json['weeks'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DepotFilterModelToJson(DepotFilterModel instance) =>
    <String, dynamic>{
      'depotNo': instance.depotNo,
      'gradeGroup': instance.gradeGroup,
      'grade': instance.grade,
      'gradeType': instance.gradeType,
      'ignoreZeroHeaps': instance.ignoreZeroHeaps,
      'weeks': instance.weeks,
    };
