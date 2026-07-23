import 'package:json_annotation/json_annotation.dart';

enum AtmServerDeviceType {
  @JsonValue('EZ_CASH')
  ezCash,
  @JsonValue('CONSILLION')
  consillion,
}
