import 'package:emr_one_yard_logistics/models/pallet.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_pallet.g.dart';

@JsonSerializable()
class CreatePallet {
  CreatePallet({
    required this.code,
    required this.yardCode,
    this.palletType = PalletType.normal,
  });
  factory CreatePallet.fromJson(Map<String, dynamic> json) =>
      _$CreatePalletFromJson(json);

  final String code;
  final String yardCode;
  final PalletType palletType;

  Map<String, dynamic> toJson() => _$CreatePalletToJson(this);
}
