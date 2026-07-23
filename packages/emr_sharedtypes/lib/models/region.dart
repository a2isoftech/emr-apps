import 'package:json_annotation/json_annotation.dart';

part 'region.g.dart';

@JsonSerializable()
class Region {
  const Region(
    this.id,
    this.name,
    this.parentRegionId,
  );

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  Map<String, dynamic> toJson() => _$RegionToJson(this);

  final String id;

  final String name;

  final String? parentRegionId;
}
