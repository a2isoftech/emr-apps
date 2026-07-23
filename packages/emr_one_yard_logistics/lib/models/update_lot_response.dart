import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_lot_response.g.dart';

enum UpdateLotResponseCondition {
  @JsonValue(0)
  updated,
}

@JsonSerializable()
class UpdateLotResponse {
  UpdateLotResponse({
    required this.lot,
    required this.condition,
  });
  factory UpdateLotResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateLotResponseFromJson(json);

  final Lot lot;
  final UpdateLotResponseCondition condition;

  Map<String, dynamic> toJson() => _$UpdateLotResponseToJson(this);
}
