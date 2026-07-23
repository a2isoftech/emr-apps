import 'package:json_annotation/json_annotation.dart';

enum RoundingType { 
  @JsonValue('NO_ROUNDING')
  noRounding, 
  @JsonValue('ROUND_UP')
  roundUp, 
  @JsonValue('ROUND_DOWN')
  roundDown }
