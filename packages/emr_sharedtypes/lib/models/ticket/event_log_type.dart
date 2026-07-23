import 'package:json_annotation/json_annotation.dart';

enum EventLogType {
  @JsonValue('SUCCESS')
  success,
  @JsonValue('ERROR')
  error,
  @JsonValue('WARNING')
  warning,
  @JsonValue('INFORMATION')
  information
}
