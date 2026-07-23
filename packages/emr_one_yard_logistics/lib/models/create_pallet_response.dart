import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_pallet_response.g.dart';

enum CreatePalletResponseCondition {
  @JsonValue(0)
  created,
  @JsonValue(1)
  codeInUse,
}

@JsonSerializable()
class CreatePalletResponse {
  CreatePalletResponse({
    required this.pallet,
    required this.condition,
  });
  factory CreatePalletResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePalletResponseFromJson(json);

  final Pallet pallet;
  final CreatePalletResponseCondition condition;

  Map<String, dynamic> toJson() => _$CreatePalletResponseToJson(this);
}
