import 'package:emr_sharedtypes/models/ticket/event_log_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_log.g.dart';

@JsonSerializable()
class EventLog {
  EventLog({
    required this.type,
    required this.dateTime,
    required this.message,
    required this.details,
  });

  factory EventLog.fromJson(Map<String, dynamic> json) =>
      _$EventLogFromJson(json);

  final EventLogType type;
  final DateTime dateTime;
  final String message;
  final Map<String, Object> details;

  Map<String, dynamic> toJson() => _$EventLogToJson(this);
}
