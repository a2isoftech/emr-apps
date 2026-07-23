import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_pallet_response.g.dart';

enum UpdatePalletResponseCondition {
  @JsonValue(0)
  updated,
}

@JsonSerializable()
class UpdatePalletResponse {
  UpdatePalletResponse({
    required this.pallet,
    required this.condition,
  });
  factory UpdatePalletResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdatePalletResponseFromJson(json);

  final Pallet pallet;
  final UpdatePalletResponseCondition condition;

  Map<String, dynamic> toJson() => _$UpdatePalletResponseToJson(this);
}
