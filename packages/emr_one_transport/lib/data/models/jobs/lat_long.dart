import 'package:json_annotation/json_annotation.dart';

part 'lat_long.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class LatLong {
  LatLong(
    this.latitude,
    this.longitude,
  );

  factory LatLong.fromJson(Map<String, dynamic> json) =>
      _$LatLongFromJson(json);

  Map<String, dynamic> toJson() => _$LatLongToJson(this);

  final num? latitude;
  final num? longitude;
}
