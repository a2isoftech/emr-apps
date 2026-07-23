import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:emr_sharedtypes/models/ticket/event_log.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sync_weighbridge_ticket_task.g.dart';

@JsonSerializable()
class SyncWeighbridgeTicketTask {
  SyncWeighbridgeTicketTask({
    required this.id,
    required this.ticketId,
    required this.weighbridgeId,
    required this.status,
    required this.machineName,
    required this.ticketCompletedBy,
    required this.ticketCompletedDate,
    required this.isComplete,
    required this.inTrade,
    required this.eventLogs,
    this.completedDate,
    this.modifiedOn,
  });

  factory SyncWeighbridgeTicketTask.fromJson(Map<String, dynamic> json) =>
      _$SyncWeighbridgeTicketTaskFromJson(json);

  final String id;

  final String ticketId;

  final String weighbridgeId;

  final SyncWeighbridgeTicketTaskStatus status;

  final String machineName;

  final String ticketCompletedBy;

  final DateTime ticketCompletedDate;

  final DateTime? completedDate;

  final bool isComplete;

  final bool inTrade;

  final DateTime? modifiedOn;

  final List<EventLog> eventLogs;

  Map<String, dynamic> toJson() => _$SyncWeighbridgeTicketTaskToJson(this);
}
