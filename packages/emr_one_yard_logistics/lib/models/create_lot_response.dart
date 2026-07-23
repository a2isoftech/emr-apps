import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_lot_response.g.dart';

enum CreateLotResponseCondition {
  @JsonValue(0)
  created,
  @JsonValue(1)
  codeInUse,
}

@JsonSerializable()
class CreateLotResponse {
  CreateLotResponse({
    required this.lot,
    required this.condition,
  });
  factory CreateLotResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLotResponseFromJson(json);

  final Lot lot;
  final CreateLotResponseCondition condition;

  Map<String, dynamic> toJson() => _$CreateLotResponseToJson(this);
}
