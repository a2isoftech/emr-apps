import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'region.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
@immutable
class Region {
  const Region({
    required this.name,
    required this.id,
  });

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  Map<String, dynamic> toJson() => _$RegionToJson(this);

  final String id;
  final String name;
}
