// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planned_movements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlannedMovements _$PlannedMovementsFromJson(Map<String, dynamic> json) =>
    PlannedMovements(
      ref: (json['ref'] as num).toInt(),
      depot: json['depot'] as String,
      grade: json['grade'] as String,
      heap: json['heap'] as String,
      destination: json['destination'] as String?,
      party: json['party'] as String?,
      contract: json['contract'] as String?,
      transport: json['transport'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      onHold: json['onHold'] as bool?,
      tonnes: (json['tonnes'] as num).toDouble(),
      loads: (json['loads'] as num?)?.toInt(),
      dueFrom: json['dueFrom'] == null
          ? null
          : DateTime.parse(json['dueFrom'] as String),
      dueTo: json['dueTo'] == null
          ? null
          : DateTime.parse(json['dueTo'] as String),
      requestedDate: json['requestedDate'] == null
          ? null
          : DateTime.parse(json['requestedDate'] as String),
      transportStatus: json['transportStatus'] as String?,
      transportPlanId: (json['transportPlanId'] as num?)?.toInt(),
      type: json['type'] as String,
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$PlannedMovementsToJson(PlannedMovements instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'depot': instance.depot,
      'grade': instance.grade,
      'heap': instance.heap,
      'destination': instance.destination,
      'party': instance.party,
      'contract': instance.contract,
      'transport': instance.transport,
      'priority': instance.priority,
      'onHold': instance.onHold,
      'tonnes': instance.tonnes,
      'loads': instance.loads,
      'dueFrom': instance.dueFrom?.toIso8601String(),
      'dueTo': instance.dueTo?.toIso8601String(),
      'requestedDate': instance.requestedDate?.toIso8601String(),
      'transportStatus': instance.transportStatus,
      'transportPlanId': instance.transportPlanId,
      'type': instance.type,
      'comments': instance.comments,
    };
