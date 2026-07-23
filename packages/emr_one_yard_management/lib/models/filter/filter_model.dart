import 'package:json_annotation/json_annotation.dart';

part 'filter_model.g.dart';

@JsonSerializable()
class FilterModel {
  FilterModel({required this.id, required this.name});

  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
  int id;
  String name;

  Map<String, dynamic> toJson() => _$FilterModelToJson(this);
}
