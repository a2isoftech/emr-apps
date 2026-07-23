import 'package:json_annotation/json_annotation.dart';

part 'uom_value.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UomValue {
  UomValue(
    this.uom,
    this.value, {
    this.isRate = false,
  });

  factory UomValue.fromJson(Map<String, dynamic> json) =>
      _$UomValueFromJson(json);

  Map<String, dynamic> toJson() => _$UomValueToJson(this);

  final String uom;
  final int value;
  final bool isRate;
}
