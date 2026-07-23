import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'uom_value.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class UomValue {
  UomValue({this.isRate = false});

  factory UomValue.fromJson(Map<String, dynamic> json) =>
      _$UomValueFromJson(json);

  factory UomValue.fromValue(double value, Uom unit, {bool isRate = false}) =>
      UomValue()
        ..value = value
        ..id = Uom.values.indexOf(unit)
        ..uom = unit
        ..isRate = isRate;

  factory UomValue.weight(double value, Uom unit) => UomValue()
    ..value = value
    ..uom = unit
    ..isRate = false;

  factory UomValue.rate(double value, Uom unit) => UomValue()
    ..value = value
    ..uom = unit
    ..isRate = true;

  Map<String, dynamic> toJson() => _$UomValueToJson(this);

  late int id;
  late double value;
  late Uom uom;
  late bool isRate;

  double get mtValue => uom.isConvertible
      ? isRate
          ? convertRate(uom, Uom.mt, value)
          : convertWeight(uom, Uom.mt, value)
      : 0;

  @override
  String toString() => isRate ? toRateString() : toWeightString();
}
