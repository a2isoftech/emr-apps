import 'package:json_annotation/json_annotation.dart';

part 'remove_lot_from_pallet.g.dart';

@JsonSerializable()
class RemoveLotFromPallet {
  RemoveLotFromPallet({
    required this.palletCode,
    required this.lotId,
  });

  factory RemoveLotFromPallet.fromJson(Map<String, dynamic> json) =>
      _$RemoveLotFromPalletFromJson(json);

  final String palletCode;
  final String lotId;

  Map<String, dynamic> toJson() => _$RemoveLotFromPalletToJson(this);
}
