import 'package:json_annotation/json_annotation.dart';

part 'list_value.g.dart';

@JsonSerializable()
class ListValue {
  ListValue({
    this.id,
    this.text,
    this.value,
    this.orderIndex,
    this.active,
  });

  factory ListValue.fromJson(Map<String, dynamic> json) =>
      _$ListValueFromJson(json);

  Map<String, dynamic> toJson() => _$ListValueToJson(this);

  String? id;
  String? text;
  String? value;
  int? orderIndex;
  bool? active;
}
