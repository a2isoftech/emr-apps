import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class SmLocationModel {
  SmLocationModel(this.displayName);

  factory SmLocationModel.fromJson(Map<String, dynamic> json) =>
      _$SmLocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$SmLocationModelToJson(this);

  final String displayName;
}
