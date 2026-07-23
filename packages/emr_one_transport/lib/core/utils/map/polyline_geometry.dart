import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Converts screen coordinates to LatLng using map bounds
LatLng screenToLatLng({
  required double screenX,
  required double screenY,
  required double mapWidth,
  required double mapHeight,
  required LatLngBounds bounds,
}) {
  // Normalize screen coords to 0-1 range
  final normalizedX = screenX / mapWidth;
  final normalizedY = screenY / mapHeight;

  // Convert to LatLng using bounds
  final lat = bounds.northeast.latitude -
      (normalizedY * (bounds.northeast.latitude - bounds.southwest.latitude));
  final lng = bounds.southwest.longitude +
      (normalizedX * (bounds.northeast.longitude - bounds.southwest.longitude));

  return LatLng(lat, lng);
}

/// Calculates shortest distance from point to line segment using Haversine
/// formula for accurate geographic distance
double distanceToSegment({
  required LatLng point,
  required LatLng segmentStart,
  required LatLng segmentEnd,
}) {
  // Use lat/lon differences for projection calculation
  final dLng = segmentEnd.longitude - segmentStart.longitude;
  final dLat = segmentEnd.latitude - segmentStart.latitude;

  if (dLng == 0 && dLat == 0) {
    // Segment is a point
    return _haversineDistance(point, segmentStart);
  }

  // Calculate projection parameter t using equirectangular approximation
  // This projects the point onto the line segment
  final t = ((point.longitude - segmentStart.longitude) * dLng +
          (point.latitude - segmentStart.latitude) * dLat) /
      (dLng * dLng + dLat * dLat);

  // Clamp t to [0, 1] to stay on segment
  final clampedT = t.clamp(0.0, 1.0);

  // Find closest point on segment
  final closestPoint = LatLng(
    segmentStart.latitude + clampedT * dLat,
    segmentStart.longitude + clampedT * dLng,
  );

  // Calculate accurate Haversine distance
  return _haversineDistance(point, closestPoint);
}

/// Haversine formula: calculates great-circle distance between two points
/// on Earth given their latitude and longitude in degrees.
/// Returns distance in degrees (where 1 degree ≈ 111.32 km at equator)
double _haversineDistance(LatLng p1, LatLng p2) {
  const earthRadiusKm = 6371.0;

  // Convert to radians
  final lat1 = p1.latitude * pi / 180.0;
  final lat2 = p2.latitude * pi / 180.0;
  final dLat = (p2.latitude - p1.latitude) * pi / 180.0;
  final dLng = (p2.longitude - p1.longitude) * pi / 180.0;

  // Haversine formula
  final a = sin(dLat / 2) * sin(dLat / 2) +
      cos(lat1) * cos(lat2) * sin(dLng / 2) * sin(dLng / 2);
  final c = 2 * asin(sqrt(a));
  final distanceKm = earthRadiusKm * c;

  // Convert back to degrees for consistency with threshold
  // (approximately: 1 degree ≈ 111.32 km)
  return distanceKm / 111.32;
}

/// Finds nearest point on any polyline to the given position
/// Returns null if no polyline is within threshold
PolylineHoverResult? findNearestPolylinePoint({
  required LatLng position,
  required List<PolylineData> polylines,
  required double thresholdDegrees,
}) {
  var minDistance = double.infinity;
  PolylineHoverResult? result;

  for (final polylineData in polylines) {
    final points = polylineData.points;

    for (var i = 0; i < points.length - 1; i++) {
      final distance = distanceToSegment(
        point: position,
        segmentStart: points[i].latLng,
        segmentEnd: points[i + 1].latLng,
      );

      if (distance < minDistance) {
        minDistance = distance;

        // Use the earlier point's timestamp for the segment
        result = PolylineHoverResult(
          timestamp: points[i].timestamp,
          latLng: points[i].latLng,
          distance: distance,
        );
      }
    }
  }

  // Return null if no polyline within threshold
  if (result != null && result.distance <= thresholdDegrees) {
    return result;
  }

  return null;
}

/// Data for a single polyline with timestamps
class PolylineData {

  const PolylineData({
    required this.points,
    required this.color,
  });
  final List<PolylinePoint> points;
  final Color color;
}

/// A point on a polyline with timestamp
class PolylinePoint {

  const PolylinePoint({
    required this.latLng,
    required this.timestamp,
  });
  final LatLng latLng;
  final DateTime timestamp;
}

/// Result of finding nearest polyline point
class PolylineHoverResult {

  const PolylineHoverResult({
    required this.timestamp,
    required this.latLng,
    required this.distance,
  });
  final DateTime timestamp;
  final LatLng latLng;
  final double distance;
}
