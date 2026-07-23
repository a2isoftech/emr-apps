import 'dart:convert';

import 'package:emr_account_registration/models/yard.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<Position?> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return null;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return null;
    }
    return Geolocator.getCurrentPosition(
      locationSettings: AndroidSettings(
        accuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 10),
      ),
    );
  }

  Future<String?> getUserCountry() async {
    try {
      final position = await getCurrentLocation();
      if (position == null) {
        return null;
      }
      final placemarks = await getCountryFromCoordinates(
        position.latitude,
        position.longitude,
      );

      return placemarks;
    } catch (e) {
      return null;
    }
  }

  Future<List<Map<String, dynamic>>> loadCountryGeoJson() async {
    try {
      final jsonString = await rootBundle.loadString(
        'packages/emr_one_portal/assets/files/countries.geo.json',
      );
      final jsonResponse = jsonDecode(jsonString) as Map<String, dynamic>;
      final features = jsonResponse['features'] as List<dynamic>;
      return features.cast<Map<String, dynamic>>();
    } catch (e) {
      return <Map<String, dynamic>>[];
    }
  }

  bool isPointInPolygon(
    double latitude,
    double longitude,
    List<List<List<double>>> polygon,
  ) {
    var inside = false;

    for (final boundary in polygon) {
      final numberOfVertices = boundary.length;
      var previousVertexIndex = numberOfVertices - 1;

      for (
        var currentVertexIndex = 0;
        currentVertexIndex < numberOfVertices;
        currentVertexIndex++
      ) {
        final currentVertexLatitude = boundary[currentVertexIndex][1];
        final currentVertexLongitude = boundary[currentVertexIndex][0];
        final previousVertexLatitude = boundary[previousVertexIndex][1];
        final previousVertexLongitude = boundary[previousVertexIndex][0];

        if ((currentVertexLatitude > latitude) !=
                (previousVertexLatitude > latitude) &&
            (longitude <
                (previousVertexLongitude - currentVertexLongitude) *
                        (latitude - currentVertexLatitude) /
                        (previousVertexLatitude - currentVertexLatitude) +
                    currentVertexLongitude)) {
          inside = !inside;
        }

        previousVertexIndex = currentVertexIndex;
      }
    }

    return inside;
  }

  Future<String> getCountryFromCoordinates(
    double latitude,
    double longitude,
  ) async {
    final countries = await loadCountryGeoJson();

    for (final country in countries) {
      final properties = country['properties'] as Map<String, dynamic>?;
      final countryName = properties!['name'] as String;
      final geometry = country['geometry'] as Map<String, dynamic>;

      if (geometry['type'] == 'Polygon') {
        final coordinates = (geometry['coordinates'] as List)
            .map(
              (c) =>
                  (c as List).map((p) => (p as List).cast<double>()).toList(),
            )
            .toList();

        if (isPointInPolygon(latitude, longitude, coordinates)) {
          return countryName;
        }
      } else if (geometry['type'] == 'MultiPolygon') {
        final coordinates = (geometry['coordinates'] as List)
            .map(
              (mp) => (mp as List)
                  .map(
                    (p) => (p as List)
                        .map((pt) => (pt as List).cast<double>())
                        .toList(),
                  )
                  .toList(),
            )
            .toList();

        for (final polygon in coordinates) {
          if (isPointInPolygon(latitude, longitude, polygon)) {
            return countryName;
          }
        }
      }
    }

    return '';
  }

  Future<List<Yard>> sortYards(List<Yard> localYards) async {
    Position? position;
    position = await getCurrentLocation();

    if (position == null) {
      return localYards;
    }
    localYards.sort((yard1, yard2) {
      final yard1HasCoordinates =
          yard1.latitude != null && yard1.longitude != null;
      final yard2HasCoordinates =
          yard2.latitude != null && yard2.longitude != null;

      if (yard1HasCoordinates && yard2HasCoordinates) {
        final distanceToYard1 = yard1.distanceTo(position!) ?? double.infinity;
        final distanceToYard2 = yard2.distanceTo(position) ?? double.infinity;
        return distanceToYard1.compareTo(distanceToYard2);
      } else if (yard1HasCoordinates) {
        return -1;
      } else if (yard2HasCoordinates) {
        return 1;
      } else {
        return 0;
      }
    });
    return localYards;
  }
}
