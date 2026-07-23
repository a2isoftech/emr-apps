// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depot_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepotSearchModel _$DepotSearchModelFromJson(Map<String, dynamic> json) =>
    DepotSearchModel(
      depotRegionNames: (json['depotRegionNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      depotNos:
          (json['depotNos'] as List<dynamic>).map((e) => e as String).toList(),
      gradeGroups: (json['gradeGroups'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      grades:
          (json['grades'] as List<dynamic>?)?.map((e) => e as String).toList(),
      gradeTypes: (json['gradeTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ignoreZeroHeaps: json['ignoreZeroHeaps'] as bool,
      weeks: (json['weeks'] as num).toInt(),
    );

Map<String, dynamic> _$DepotSearchModelToJson(DepotSearchModel instance) =>
    <String, dynamic>{
      'depotRegionNames': instance.depotRegionNames,
      'depotNos': instance.depotNos,
      'gradeGroups': instance.gradeGroups,
      'grades': instance.grades,
      'gradeTypes': instance.gradeTypes,
      'ignoreZeroHeaps': instance.ignoreZeroHeaps,
      'weeks': instance.weeks,
    };
