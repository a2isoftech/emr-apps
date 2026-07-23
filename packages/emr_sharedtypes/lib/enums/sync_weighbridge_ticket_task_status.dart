import 'package:json_annotation/json_annotation.dart';

enum SyncWeighbridgeTicketTaskStatus {
  @JsonValue('READY')
  ready,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('ERROR')
  error,
  @JsonValue('SUCCESS')
  success,
}
