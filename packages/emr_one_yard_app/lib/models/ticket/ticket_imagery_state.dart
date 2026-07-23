import 'package:json_annotation/json_annotation.dart';

enum TicketImageryState {
  @JsonValue(0)
  noImaging,
  @JsonValue(1)
  notSubmitted,
  @JsonValue(2)
  submitted,
  @JsonValue(3)
  failed,
  @JsonValue(4)
  submitting
}
