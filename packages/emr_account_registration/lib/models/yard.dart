import 'dart:math';

import 'package:geolocator/geolocator.dart';

class Yard {
  Yard(this.yardCode, this.yardName, [this.latitude, this.longitude]);

  factory Yard.fromJson(Map<String, dynamic> json) {
    return Yard(
      json['yardCode']?.toString() ?? '',
      json['yardName']?.toString() ?? '',
      json['latitude'] != null ? (json['latitude'] as num).toDouble() : null,
      json['longitude'] != null ? (json['longitude'] as num).toDouble() : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'yardCode': yardCode,
      'yardName': yardName,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  final String yardCode;
  final String yardName;
  final double? latitude;
  final double? longitude;

  double? distanceTo(Position userPosition) {
    return calculateDistance(
      latitude,
      longitude,
      userPosition.latitude,
      userPosition.longitude,
    );
  }

  double? calculateDistance(
    double? yardLatitude,
    double? yardLongitude,
    double userLatitude,
    double userLongitude,
  ) {
    if (yardLatitude == null || yardLongitude == null) {
      return null;
    }

    const earthRadius = 6371000;

    final latitudeDifference = (userLatitude - yardLatitude) * pi / 180;
    final longitudeDifference = (userLongitude - yardLongitude) * pi / 180;

    final sphericalDistanceFactor =
        sin(latitudeDifference / 2) * sin(latitudeDifference / 2) +
            cos(yardLatitude * pi / 180) *
                cos(userLatitude * pi / 180) *
                sin(longitudeDifference / 2) *
                sin(longitudeDifference / 2);

    final centralAngle = 2 *
        atan2(sqrt(sphericalDistanceFactor), sqrt(1 - sphericalDistanceFactor));

    return earthRadius * centralAngle;
  }
}
