import 'package:json_annotation/json_annotation.dart';

part 'confirm_lot.g.dart';

@JsonSerializable()
class ConfirmLot {
  ConfirmLot({
    required this.id,
  });
  factory ConfirmLot.fromJson(Map<String, dynamic> json) =>
      _$ConfirmLotFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$ConfirmLotToJson(this);
}
