import 'package:emr_sharedtypes/enums/rounding_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rounding.g.dart';

@JsonSerializable()
class Rounding {
  Rounding(
    this.value, {
    this.roundingType,
  });

  factory Rounding.fromJson(Map<String, dynamic> json) =>
      _$RoundingFromJson(json);

  Map<String, dynamic> toJson() => _$RoundingToJson(this);

  final double? value;
  final RoundingType? roundingType;
}
