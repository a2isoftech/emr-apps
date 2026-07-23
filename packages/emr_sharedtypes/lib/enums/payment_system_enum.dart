import 'package:json_annotation/json_annotation.dart';

enum PaymentSystemEnum {
  @JsonValue('TRADE2')
  trade2,
  @JsonValue('OPPRA')
  oppra,
}
