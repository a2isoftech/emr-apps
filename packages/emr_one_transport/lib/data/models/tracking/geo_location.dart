import 'package:json_annotation/json_annotation.dart';

part 'geo_location.g.dart';

@JsonSerializable(createToJson: false)
class GeoLocation {
  GeoLocation({
    required this.latitude,
    required this.longitude,
  });

  factory GeoLocation.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationFromJson(json);

  final double? latitude;
  final double? longitude;
}
