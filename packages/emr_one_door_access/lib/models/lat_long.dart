class LatLong {
  LatLong({required this.latitude, required this.longitude});

  factory LatLong.fromJson(Map<String, dynamic> json) {
    return LatLong(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
    );
  }
  final double latitude;
  final double longitude;

  Map<String, dynamic> toJson() {
    return {'latitude': latitude, 'longitude': longitude};
  }
}
