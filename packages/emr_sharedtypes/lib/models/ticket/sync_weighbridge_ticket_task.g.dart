// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_weighbridge_ticket_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncWeighbridgeTicketTask _$SyncWeighbridgeTicketTaskFromJson(
  Map<String, dynamic> json,
) => SyncWeighbridgeTicketTask(
  id: json['id'] as String,
  ticketId: json['ticketId'] as String,
  weighbridgeId: json['weighbridgeId'] as String,
  status: $enumDecode(_$SyncWeighbridgeTicketTaskStatusEnumMap, json['status']),
  machineName: json['machineName'] as String,
  ticketCompletedBy: json['ticketCompletedBy'] as String,
  ticketCompletedDate: DateTime.parse(json['ticketCompletedDate'] as String),
  isComplete: json['isComplete'] as bool,
  inTrade: json['inTrade'] as bool,
  eventLogs: (json['eventLogs'] as List<dynamic>)
      .map((e) => EventLog.fromJson(e as Map<String, dynamic>))
      .toList(),
  completedDate: json['completedDate'] == null
      ? null
      : DateTime.parse(json['completedDate'] as String),
  modifiedOn: json['modifiedOn'] == null
      ? null
      : DateTime.parse(json['modifiedOn'] as String),
);

Map<String, dynamic> _$SyncWeighbridgeTicketTaskToJson(
  SyncWeighbridgeTicketTask instance,
) => <String, dynamic>{
  'id': instance.id,
  'ticketId': instance.ticketId,
  'weighbridgeId': instance.weighbridgeId,
  'status': _$SyncWeighbridgeTicketTaskStatusEnumMap[instance.status]!,
  'machineName': instance.machineName,
  'ticketCompletedBy': instance.ticketCompletedBy,
  'ticketCompletedDate': instance.ticketCompletedDate.toIso8601String(),
  'completedDate': instance.completedDate?.toIso8601String(),
  'isComplete': instance.isComplete,
  'inTrade': instance.inTrade,
  'modifiedOn': instance.modifiedOn?.toIso8601String(),
  'eventLogs': instance.eventLogs,
};

const _$SyncWeighbridgeTicketTaskStatusEnumMap = {
  SyncWeighbridgeTicketTaskStatus.ready: 'READY',
  SyncWeighbridgeTicketTaskStatus.inProgress: 'IN_PROGRESS',
  SyncWeighbridgeTicketTaskStatus.error: 'ERROR',
  SyncWeighbridgeTicketTaskStatus.success: 'SUCCESS',
};
