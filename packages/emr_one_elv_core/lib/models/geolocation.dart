class GeoLocation {
  /// Returns a new [GeoLocation] instance.
  GeoLocation({
    required this.longitude,
    required this.latitude,
  });

  double longitude;

  double latitude;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['longitude'] = longitude;
    json['latitude'] = latitude;
    return json;
  }

  static GeoLocation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return GeoLocation(
        longitude: json['longitude'] as double,
        latitude: json['latitude'] as double,
      );
    }
    return null;
  }
}
