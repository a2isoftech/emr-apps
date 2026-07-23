import 'package:decimal/decimal.dart';
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
  final Decimal? latitude;
  final Decimal? longitude;

  Map<String, dynamic> toJson() => _$LatLongToJson(this);
}
