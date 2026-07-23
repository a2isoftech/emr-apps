import 'package:json_annotation/json_annotation.dart';

part 'current_location.g.dart';

@JsonSerializable()
class CurrentLocation {
  CurrentLocation({
    this.coordinates,
    this.status,
    this.locationCode,
  });

  factory CurrentLocation.fromJson(Map<String, dynamic> json) =>
      _$CurrentLocationFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentLocationToJson(this);

  LatLong? coordinates;
  String? status;
  String? locationCode;
}

@JsonSerializable()
class LatLong {
  LatLong({
    this.latitude = 0.0,
    this.longitude = 0.0,
  });

  factory LatLong.fromJson(Map<String, dynamic> json) =>
      _$LatLongFromJson(json);

  Map<String, dynamic> toJson() => _$LatLongToJson(this);

  double latitude;
  double longitude;
}
