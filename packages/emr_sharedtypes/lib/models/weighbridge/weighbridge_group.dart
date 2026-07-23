import 'package:json_annotation/json_annotation.dart';

part 'weighbridge_group.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class WeighbridgeGroup {
  WeighbridgeGroup({
    required this.yardCode,
    required this.group,
  });

  factory WeighbridgeGroup.fromJson(Map<String, dynamic> json) =>
      _$WeighbridgeGroupFromJson(json);

  Map<String, dynamic> toJson() => _$WeighbridgeGroupToJson(this);

  String yardCode;
  List<String> group;
}
