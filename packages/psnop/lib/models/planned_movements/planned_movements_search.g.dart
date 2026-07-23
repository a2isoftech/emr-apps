// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planned_movements_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlannedMovementsSearchModel _$PlannedMovementsSearchModelFromJson(
        Map<String, dynamic> json) =>
    PlannedMovementsSearchModel(
      weeks: (json['weeks'] as num).toInt(),
      contract: (json['contract'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      destinations: (json['destinations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      depotNos:
          (json['depotNos'] as List<dynamic>).map((e) => e as String).toList(),
      depotRegionNames: (json['depotRegionNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dueTo: json['dueTo'] == null
          ? null
          : DateTime.parse(json['dueTo'] as String),
      dueFrom: json['dueFrom'] == null
          ? null
          : DateTime.parse(json['dueFrom'] as String),
      ignoreZeroHeaps: json['ignoreZeroHeaps'] as bool,
      movementType: (json['movementType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      transportStatus: (json['transportStatus'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      parties:
          (json['parties'] as List<dynamic>?)?.map((e) => e as String).toList(),
      transport: json['transport'] as String?,
      refs: (json['refs'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      priority: (json['priority'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toDouble(),
      heaps:
          (json['heaps'] as List<dynamic>?)?.map((e) => e as String).toList(),
      transportPlanId: (json['transportPlanId'] as num?)?.toInt(),
      requestedDate: json['requestedDate'] == null
          ? null
          : DateTime.parse(json['requestedDate'] as String),
      gradeGroups: (json['gradeGroups'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      grades:
          (json['grades'] as List<dynamic>?)?.map((e) => e as String).toList(),
      gradeTypes: (json['gradeTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlannedMovementsSearchModelToJson(
        PlannedMovementsSearchModel instance) =>
    <String, dynamic>{
      'depotRegionNames': instance.depotRegionNames,
      'depotNos': instance.depotNos,
      'gradeGroups': instance.gradeGroups,
      'grades': instance.grades,
      'gradeTypes': instance.gradeTypes,
      'ignoreZeroHeaps': instance.ignoreZeroHeaps,
      'weeks': instance.weeks,
      'dueTo': instance.dueTo?.toIso8601String(),
      'dueFrom': instance.dueFrom?.toIso8601String(),
      'contract': instance.contract,
      'destinations': instance.destinations,
      'movementType': instance.movementType,
      'transportStatus': instance.transportStatus,
      'parties': instance.parties,
      'transport': instance.transport,
      'refs': instance.refs,
      'priority': instance.priority,
      'weight': instance.weight,
      'heaps': instance.heaps,
      'transportPlanId': instance.transportPlanId,
      'requestedDate': instance.requestedDate?.toIso8601String(),
    };
