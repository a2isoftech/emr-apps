import 'package:json_annotation/json_annotation.dart';

enum LotType {
  @JsonValue(0)
  unknown,
  @JsonValue(1)
  sticks,
  @JsonValue(2)
  joints
}

enum LotState {
  @JsonValue(0)
  newLot,
  @JsonValue(1)
  createdInTrade,
  @JsonValue(2)
  deleted,
}
