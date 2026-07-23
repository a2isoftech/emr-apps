import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weight.g.dart';

@JsonSerializable()
class Weight {
  Weight({
    required this.uom,
    required this.value,
    this.id = 0,
    this.mtValue = 0,
  });

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);

  final Uom uom;
  final double value;
  final int id;
  final double mtValue;

  String get uomCode => uom.toString().split('.').last.toUpperCase();

  Map<String, dynamic> toJson() => _$WeightToJson(this);
}
