import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  LocationModel({
    required this.description,
    required this.yardId,
    required this.id,
    required this.code,
    required this.active,
    this.parentId,
    this.what3Words,
  });
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
  final String description;

  final String yardId;

  final String id;

  final String code;

  final bool active;

  final String? what3Words;

  final String? parentId;
  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
