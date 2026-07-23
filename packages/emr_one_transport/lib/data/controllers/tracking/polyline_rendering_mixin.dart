import 'dart:math';
import 'dart:ui' as ui;

import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/utils/map/polyline_geometry.dart';
import 'package:emr_one_transport/data/models/tracking/tracking_asset_location_response.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart' show Color, Offset;
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Mixin providing shared polyline and arrow rendering functionality.
mixin PolylineRenderingMixin {
  // ===== Zoom-Adaptive Arrow Configuration =====
  static const double zoomAdaptiveReferenceZoom = 15;

  // Arrow spacing configuration
  static const double arrowDefaultSpacingPixels = 76; // 2 CM at 96 DPI
  static const double arrowTightSpacingPixels = 38; // 1 CM at 96 DPI
  static const Color arrowColor = TransportAppColors.mapRouteColor;
  static const double arrowIconSize = 24; // Physical pixels
  static const int arrowCacheRoundingDegrees = 5; // Cache slots: 360/5 = 72

  // Lookahead distance configuration
  static const double _zoomAdaptiveBaseDistance = 100; // meters at zoom 15
  // zoomed in (buildings)
  static const double _zoomAdaptiveMinDistance = 20;
  // zoomed out (city blocks)
  static const double _zoomAdaptiveMaxDistance = 1000;

  // Lookahead point count configuration
  static const int _zoomAdaptiveBaseMaxPoints = 10; // points at zoom 15
  static const int _zoomAdaptiveMinMaxPoints = 3; // minimum points
  static const int _zoomAdaptiveMaxMaxPoints = 50; // maximum points

  // Turn threshold configuration (for lookahead algorithm)
  static const double _zoomAdaptiveBaseTurnThreshold = 10; // degrees at zoom 15
  static const double _zoomAdaptiveMinTurnThreshold = 5; // zoomed in
  static const double _zoomAdaptiveMaxTurnThreshold = 45; // zoomed out

  // Arrow placement bearing change threshold
  static const double _zoomAdaptiveBaseBearingThreshold = 5; // deg at zoom 15
  static const double _zoomAdaptiveMinBearingThreshold = 3; // zoomed in
  static const double _zoomAdaptiveMaxBearingThreshold = 30; // zoomed out

  // Stationary period detection
  static const double stationaryRadiusMeters = 100; // spatial threshold
  static const int stationaryMinDurationSeconds = 24 * 3600; // 24 hours

  // Curvature-based filtering configuration
  static const double _curvatureBaseRadiusThreshold = 500; // meters at zoom 15

  // Marker overlap detection configuration
  static const double markerOverlapThresholdPixels = 50;
  static const double markerOffsetPixels = 60;

  // ===== Hover Detection Configuration =====
  static const int hoverDebounceMs = 16; // 60fps throttle
  static const double hoverBaseThresholdDegrees = 0.00018; // ~20m at zoom 15
  static const double hoverReferenceZoom = 15;
  static const double hoverTargetPixels = 10;
  static const double hoverTooltipOffset = 15;

  // ===== Distance Calculations =====

  /// Calculate Haversine distance between two LatLng points in meters
  double haversineDistanceMeters(LatLng p1, LatLng p2) {
    const earthRadiusKm = 6371.0;
    final lat1 = p1.latitude * pi / 180;
    final lat2 = p2.latitude * pi / 180;
    final dLat = (p2.latitude - p1.latitude) * pi / 180;
    final dLng = (p2.longitude - p1.longitude) * pi / 180;

    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(lat1) * cos(lat2) * sin(dLng / 2) * sin(dLng / 2);
    final c = 2 * asin(sqrt(a));
    return earthRadiusKm * c * 1000; // meters
  }

  /// Calculate compass bearing between two LatLng points (0-360 degrees)
  /// 0° = North, 90° = East, 180° = South, 270° = West
  double calculateBearing(LatLng from, LatLng to) {
    final lat1 = from.latitude * pi / 180;
    final lat2 = to.latitude * pi / 180;
    final dLng = (to.longitude - from.longitude) * pi / 180;

    final y = sin(dLng) * cos(lat2);
    final x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLng);
    final bearing = atan2(y, x) * 180 / pi;

    // Normalize to 0-360
    return (bearing + 360) % 360;
  }

  /// Convert geographic distance between two LatLng points to screen pixels
  /// Uses Google Maps Web Mercator projection scale formula
  double calculateScreenPixels(LatLng p1, LatLng p2, double zoom) {
    // Google Maps zoom scale formula:
    // At zoom Z, meters per pixel = 156543.03392 * cos(latitude) / 2^Z
    final metersPerPixel =
        156543.03392 * cos(p1.latitude * pi / 180) / pow(2, zoom);
    final distanceMeters = haversineDistanceMeters(p1, p2);
    return distanceMeters / metersPerPixel;
  }

  /// Normalize bearing delta to -180 to +180 range
  double normalizeBearingDelta(double delta) {
    var d = delta;
    while (d > 180) {
      d -= 360;
    }
    while (d < -180) {
      d += 360;
    }
    return d;
  }

  // ===== Zoom-Adaptive Helper Methods =====

  /// Calculate zoom-adaptive lookahead distance.
  /// Formula: baseDistance * 2^(referenceZoom - currentZoom)
  double calculateAdaptiveLookaheadDistance(double zoom) {
    final zoomFactor = pow(2, zoomAdaptiveReferenceZoom - zoom);
    final adaptiveDistance = _zoomAdaptiveBaseDistance * zoomFactor;
    return adaptiveDistance.clamp(
      _zoomAdaptiveMinDistance,
      _zoomAdaptiveMaxDistance,
    );
  }

  /// Calculate zoom-adaptive maximum point lookahead.
  int calculateAdaptiveMaxPoints(double zoom) {
    final zoomFactor = pow(2, zoomAdaptiveReferenceZoom - zoom);
    final adaptivePoints = (_zoomAdaptiveBaseMaxPoints * zoomFactor).round();
    return adaptivePoints.clamp(
      _zoomAdaptiveMinMaxPoints,
      _zoomAdaptiveMaxMaxPoints,
    );
  }

  /// Calculate zoom-adaptive turn threshold (for lookahead algorithm).
  /// At zoom ≤12: ∞ (disabled - prevents early stops on dense GPS data)
  double calculateAdaptiveTurnThreshold(double zoom) {
    if (zoom <= 12.0) {
      return double.infinity;
    }
    if (zoom <= 14.0) {
      return 90;
    }
    final zoomFactor = pow(2, zoomAdaptiveReferenceZoom - zoom);
    final adaptiveThreshold = _zoomAdaptiveBaseTurnThreshold * zoomFactor;
    return adaptiveThreshold.clamp(
      _zoomAdaptiveMinTurnThreshold,
      _zoomAdaptiveMaxTurnThreshold,
    );
  }

  /// Calculate zoom-adaptive bearing threshold (for arrow placement spacing).
  double calculateAdaptiveBearingThreshold(double zoom) {
    final zoomFactor = pow(2, zoomAdaptiveReferenceZoom - zoom);
    final adaptiveThreshold = _zoomAdaptiveBaseBearingThreshold * zoomFactor;
    return adaptiveThreshold.clamp(
      _zoomAdaptiveMinBearingThreshold,
      _zoomAdaptiveMaxBearingThreshold,
    );
  }

  // ===== Arrow Placement Logic =====

  /// Determine if arrow should be placed based on distance and bearing.
  /// Uses zoom-adaptive bearing threshold to match visual perception.
  bool shouldPlaceArrow(
    double screenDistanceFromLast,
    double bearingChange,
    double zoom,
  ) {
    // Always place if far enough from last arrow (default spacing)
    if (screenDistanceFromLast >= arrowDefaultSpacingPixels) {
      return true;
    }

    // Tighter spacing on significant direction changes (adaptive threshold)
    final adaptiveBearingThreshold = calculateAdaptiveBearingThreshold(zoom);
    if (screenDistanceFromLast >= arrowTightSpacingPixels &&
        bearingChange.abs() >= adaptiveBearingThreshold) {
      return true;
    }

    return false;
  }

  // ===== Stationary Detection =====

  /// Detect if a segment represents a stationary period.
  /// Returns the end index of stationary segment, or null if not stationary.
  /// Criteria:
  /// - All points within stationaryRadiusMeters of first point
  /// - Time span >= stationaryMinDurationSeconds
  int? detectStationarySegment(int startIndex, List<LocationRow> trackPoints) {
    if (startIndex >= trackPoints.length - 1) return null;

    final origin = trackPoints[startIndex];
    if (origin.latitude == null ||
        origin.longitude == null ||
        origin.locationTimestamp == null) {
      return null;
    }

    final originPoint = LatLng(origin.latitude!, origin.longitude!);
    final originTime = origin.locationTimestamp!;

    var endIndex = startIndex;

    // Scan forward while points remain within stationary radius
    for (var i = startIndex + 1; i < trackPoints.length; i++) {
      final candidate = trackPoints[i];

      if (candidate.latitude == null ||
          candidate.longitude == null ||
          candidate.locationTimestamp == null) {
        break;
      }

      final candidatePoint = LatLng(candidate.latitude!, candidate.longitude!);
      final distance = haversineDistanceMeters(originPoint, candidatePoint);

      // Break if moved beyond stationary radius
      if (distance > stationaryRadiusMeters) {
        break;
      }

      endIndex = i;
    }

    // Check if time span meets minimum duration
    if (endIndex > startIndex) {
      final endTime = trackPoints[endIndex].locationTimestamp!;
      final durationSeconds = endTime.difference(originTime).inSeconds;

      if (durationSeconds >= stationaryMinDurationSeconds) {
        return endIndex; // Stationary segment detected
      }
    }

    return null; // Not stationary
  }

  // ===== Curvature Analysis =====

  /// Calculate curvature radius using three consecutive points.
  /// Uses Heron's formula to find triangle area, then calculates circumradius.
  /// Returns radius in meters (larger radius = gentler curve).
  double? calculateCurvatureRadius(LatLng p1, LatLng p2, LatLng p3) {
    // Calculate side lengths of triangle formed by 3 points
    final a = haversineDistanceMeters(p1, p2);
    final b = haversineDistanceMeters(p2, p3);
    final c = haversineDistanceMeters(p1, p3);

    // Skip if points are too close (< 2 meters) - likely GPS noise
    if (a < 2.0 || b < 2.0 || c < 2.0) return null;

    // Calculate semi-perimeter
    final s = (a + b + c) / 2.0;

    // Calculate area using Heron's formula
    final areaSquared = s * (s - a) * (s - b) * (s - c);
    if (areaSquared <= 0) return null; // Collinear or invalid triangle

    final area = sqrt(areaSquared);

    // Radius of circumscribed circle = (abc) / (4 * area)
    final radius = (a * b * c) / (4.0 * area);

    return radius;
  }

  /// Determine if a point represents a significant curve at current zoom.
  bool isSignificantCurve(double? radiusMeters, double currentZoom) {
    if (radiusMeters == null) return false;

    final adaptiveThreshold = _curvatureBaseRadiusThreshold *
        pow(2, zoomAdaptiveReferenceZoom - currentZoom);

    return radiusMeters < adaptiveThreshold;
  }

  // ===== Bearing Calculation with Lookahead =====

  /// Calculate bearing with zoom-adaptive lookahead.
  /// Looks ahead to determine general direction of travel, stopping at
  /// sharp turns. Uses zoom-adaptive parameters for consistent perception.
  double? getBearingForArrowZoomAdaptive(
    int currentIndex,
    double zoom,
    List<LocationRow> trackPoints,
  ) {
    if (currentIndex >= trackPoints.length - 1) {
      return null;
    }

    final origin = trackPoints[currentIndex];
    if (origin.latitude == null || origin.longitude == null) {
      return null;
    }

    final originPoint = LatLng(origin.latitude!, origin.longitude!);

    // Calculate zoom-adaptive parameters
    final adaptiveLookaheadDist = calculateAdaptiveLookaheadDistance(zoom);
    final adaptiveMaxPoints = calculateAdaptiveMaxPoints(zoom);
    final adaptiveTurnThreshold = calculateAdaptiveTurnThreshold(zoom);

    // Calculate point sampling interval based on zoom
    final pointSampleInterval = zoom <= 12.0
        ? 5
        : zoom <= 14.0
            ? 3
            : 1;

    var accumulatedDistance = 0.0;
    var distanceSinceLastCheck = 0.0;
    double? previousBearing;
    var lastValidIndex = currentIndex + 1;

    final endIndex = min(
      currentIndex + adaptiveMaxPoints,
      trackPoints.length - 1,
    );

    for (var j = currentIndex + 1; j <= endIndex; j++) {
      final candidate = trackPoints[j];

      if (candidate.latitude == null || candidate.longitude == null) {
        continue;
      }

      final candidatePoint = LatLng(candidate.latitude!, candidate.longitude!);

      // Accumulate distance from previous point
      if (j > currentIndex + 1) {
        final prev = trackPoints[j - 1];
        if (prev.latitude != null && prev.longitude != null) {
          final prevPoint = LatLng(prev.latitude!, prev.longitude!);
          final segmentDistance =
              haversineDistanceMeters(prevPoint, candidatePoint);
          accumulatedDistance += segmentDistance;
          distanceSinceLastCheck += segmentDistance;
        }
      }

      // Determine if we should check bearing at this point
      final shouldCheckBearing =
          (j - currentIndex) % pointSampleInterval == 0 ||
              (zoom <= 12.0 && distanceSinceLastCheck >= 50.0) ||
              j == endIndex;

      if (shouldCheckBearing) {
        final currentBearing = calculateBearing(originPoint, candidatePoint);

        // Calculate curvature if we have enough points
        var significantCurve = false;
        if (j >= currentIndex + 2) {
          final prevPrev = trackPoints[j - 2];
          final prev = trackPoints[j - 1];
          if (prevPrev.latitude != null &&
              prevPrev.longitude != null &&
              prev.latitude != null &&
              prev.longitude != null) {
            final prevPrevPoint =
                LatLng(prevPrev.latitude!, prevPrev.longitude!);
            final prevPoint = LatLng(prev.latitude!, prev.longitude!);
            final radius = calculateCurvatureRadius(
              prevPrevPoint,
              prevPoint,
              candidatePoint,
            );
            significantCurve = isSignificantCurve(radius, zoom);
          }
        }

        // Check for sharp turn using adaptive threshold
        if (previousBearing != null && !adaptiveTurnThreshold.isInfinite) {
          final bearingDelta =
              normalizeBearingDelta(currentBearing - previousBearing).abs();

          if (bearingDelta >= adaptiveTurnThreshold || significantCurve) {
            break;
          }
        }

        lastValidIndex = j;
        previousBearing = currentBearing;
        distanceSinceLastCheck = 0.0;
      }

      if (accumulatedDistance >= adaptiveLookaheadDist) {
        break;
      }
    }

    final target = trackPoints[lastValidIndex];
    if (target.latitude == null || target.longitude == null) {
      return null;
    }

    final targetPoint = LatLng(target.latitude!, target.longitude!);
    return calculateBearing(originPoint, targetPoint);
  }

  // ===== Arrow Icon Creation =====

  /// Create a rotated arrow icon with red arrow and blue/colored circle background
  Future<BitmapDescriptor> createArrowIcon(
    double rotationDegrees,
    Color color,
  ) async {
    const size = arrowIconSize;

    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder);

    // Translate to center, rotate, translate back
    canvas.translate(size / 2, size / 2);
    canvas.rotate(rotationDegrees * pi / 180);
    canvas.translate(-size / 2, -size / 2);

    const centerX = size / 2;
    const centerY = size / 2;

    // Draw circle background
    final circlePaint = ui.Paint()
      ..color = color
      ..style = ui.PaintingStyle.fill;

    canvas.drawCircle(
      const ui.Offset(12, 12),
      9,
      circlePaint,
    );

    // Draw red arrow/triangle pointing up
    final arrowPaint = ui.Paint()
      ..color = TransportAppColors.redSavina
      ..style = ui.PaintingStyle.fill;

    final arrowPath = ui.Path();
    arrowPath.moveTo(centerX, centerY - 6.0);
    arrowPath.lineTo(centerX - 4.0, centerY + 4.0);
    arrowPath.lineTo(centerX + 4.0, centerY + 4.0);
    arrowPath.close();

    canvas.drawPath(arrowPath, arrowPaint);

    // Convert to BitmapDescriptor (platform-aware sizing)
    final picture = recorder.endRecording();
    final image = await picture.toImage(size.toInt(), size.toInt());
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);

    return kIsWeb
        ? BytesMapBitmap(
            bytes!.buffer.asUint8List(),
            width: size,
            height: size,
          )
        : BytesMapBitmap(
            bytes!.buffer.asUint8List(),
            width: size / 3,
            height: size / 3,
          );
  }

  /// Get or create cached arrow icon for given rotation
  Future<BitmapDescriptor> getArrowIcon(
    double rotation,
    Color color,
    Map<String, BitmapDescriptor> cache,
  ) async {
    final roundedRotation = (rotation / arrowCacheRoundingDegrees).round() *
        arrowCacheRoundingDegrees;
    final cacheKey = 'arrow_${roundedRotation}_${color.toARGB32()}';

    if (cache.containsKey(cacheKey)) {
      return cache[cacheKey]!;
    }

    final icon = await createArrowIcon(rotation, color);
    cache[cacheKey] = icon;
    return icon;
  }

  // ===== Geometry Helpers =====

  /// Sort geometry by locationTimestamp
  List<LocationRow> sortGeometryByTimestamp(List<LocationRow> geometry) {
    return List<LocationRow>.from(geometry)
      ..sort((a, b) {
        final aTime = a.locationTimestamp ?? DateTime(1970);
        final bTime = b.locationTimestamp ?? DateTime(1970);
        return aTime.compareTo(bTime);
      });
  }

  // ===== Marker Overlap Detection =====

  /// Checks if two positions would create overlapping markers at given zoom.
  /// Returns true if screen distance between points is less than threshold.
  bool areMarkersOverlapping({
    required LatLng position1,
    required LatLng position2,
    required double zoom,
    double thresholdPixels = markerOverlapThresholdPixels,
  }) {
    final screenDistance = calculateScreenPixels(position1, position2, zoom);
    return screenDistance < thresholdPixels;
  }

  // ===== Marker Offset Calculations =====

  /// Calculates offset positions for overlapping markers (left/right spread).
  /// Returns positions with first marker offset left, second offset right.
  ({LatLng offsetPosition1, LatLng offsetPosition2}) 
    calculateOverlapOffsetPositions({
      required LatLng originalPosition,
      required double zoom,
      double offsetPixels = markerOffsetPixels,
  }) {
    // Google Maps zoom formula: meters per pixel = 156543.03392 * cos(lat) / 2^zoom
    final metersPerPixel =
        156543.03392 * cos(originalPosition.latitude * pi / 180) / pow(2, zoom);
    final offsetMeters = offsetPixels * metersPerPixel;

    // Convert meters to approximate degrees
    // 1 degree longitude ≈ 111320 * cos(latitude) meters
    final lngOffsetDegrees =
        offsetMeters / (111320.0 * cos(originalPosition.latitude * pi / 180));

    return (
      offsetPosition1: LatLng(
        originalPosition.latitude,
        originalPosition.longitude - lngOffsetDegrees,
      ),
      offsetPosition2: LatLng(
        originalPosition.latitude,
        originalPosition.longitude + lngOffsetDegrees,
      ),
    );
  }

  /// Calculates a single offset position away from a reference point.
  /// Uses bearing to determine offset direction.
  LatLng calculateBearingOffsetPosition({
    required LatLng markerPosition,
    required LatLng referencePosition,
    required double zoom,
    double offsetPixels = markerOffsetPixels,
  }) {
    // Calculate bearing from reference to marker 
    // (direction away from reference)
    final bearing = calculateBearing(referencePosition, markerPosition);

    // Calculate offset distance in meters
    final metersPerPixel =
        156543.03392 * cos(markerPosition.latitude * pi / 180) / pow(2, zoom);
    final offsetMeters = offsetPixels * metersPerPixel;

    // Convert to lat/lng offset using bearing
    final bearingRad = bearing * pi / 180;
    final latOffset = offsetMeters * cos(bearingRad) / 111320.0;
    final lngOffset = offsetMeters *
        sin(bearingRad) /
        (111320.0 * cos(markerPosition.latitude * pi / 180));

    return LatLng(
      markerPosition.latitude + latOffset,
      markerPosition.longitude + lngOffset,
    );
  }

  // ===== Geometry Filtering =====

  /// Filters geometry points within a time range.
  /// Returns points where locationTimestamp 
  /// is between start and end (inclusive).
  List<LocationRow> getGeometryForTimeRange(
    List<LocationRow> sortedGeometry,
    DateTime start,
    DateTime end,
  ) {
    return sortedGeometry.where((coord) {
      final timestamp = coord.locationTimestamp;
      if (timestamp == null) return false;
      return !timestamp.isBefore(start) && !timestamp.isAfter(end);
    }).toList();
  }

  /// Converts geometry points to LatLng list (filters out null coords).
  List<LatLng> geometryToLatLngList(List<LocationRow> geometry) {
    return geometry
        .where((c) => c.latitude != null && c.longitude != null)
        .map((c) => LatLng(c.latitude!, c.longitude!))
        .toList();
  }

  // ===== Bearing with Backend Preference =====

  /// Prefers backend heading if available, 
  /// falls back to zoom-adaptive lookahead.
  double? getBearingWithBackendPreference(
    int index,
    double zoom,
    List<LocationRow> geometry,
  ) {
    final point = geometry[index];
    if (point.heading != null) return point.heading!;
    return getBearingForArrowZoomAdaptive(index, zoom, geometry);
  }

  // ===== Arrow Marker Building =====

  /// Builds arrow markers for a list of geometry points.
  /// Handles stationary segments by placing single arrow at segment start.
  /// Uses backend heading when available, falls back to calculated bearing.
  Future<Set<Marker>> buildArrowMarkersForGeometry({
    required List<LocationRow> geometryPoints,
    required double zoom,
    required Color color,
    required String markerIdPrefix,
    required Map<String, BitmapDescriptor> arrowCache,
    bool handleStationarySegments = true,
  }) async {
    final markers = <Marker>{};

    if (geometryPoints.length < 2) return markers;

    LatLng? lastArrowPosition;
    double? previousBearing;
    var i = 0;

    while (i < geometryPoints.length - 1) {
      // Check for stationary segment if enabled
      if (handleStationarySegments) {
        final stationaryEndIndex = detectStationarySegment(i, geometryPoints);

        if (stationaryEndIndex != null) {
          // Stationary segment - place one arrow at start
          final current = geometryPoints[i];
          if (current.latitude != null && current.longitude != null) {
            final currentPoint = LatLng(current.latitude!, current.longitude!);

            // Use bearing with backend preference
            final bearing = getBearingWithBackendPreference(
              stationaryEndIndex,
              zoom,
              geometryPoints,
            );

            if (bearing != null) {
              final icon = await getArrowIcon(bearing, color, arrowCache);
              markers.add(
                Marker(
                  markerId: MarkerId('${markerIdPrefix}_$i'),
                  position: currentPoint,
                  icon: icon,
                  anchor: const Offset(0.5, 0.5),
                  flat: true,
                ),
              );
              lastArrowPosition = currentPoint;
              previousBearing = bearing;
            }
          }
          i = stationaryEndIndex + 1;
          continue;
        }
      }

      // Normal moving segment
      final current = geometryPoints[i];
      if (current.latitude == null || current.longitude == null) {
        i++;
        continue;
      }

      final currentPoint = LatLng(current.latitude!, current.longitude!);
      final bearing = getBearingWithBackendPreference(i, zoom, geometryPoints);

      if (bearing == null) {
        i++;
        continue;
      }

      var screenDistanceFromLast = double.infinity;
      var bearingChange = 0.0;

      if (lastArrowPosition != null) {
        screenDistanceFromLast = calculateScreenPixels(
          lastArrowPosition,
          currentPoint,
          zoom,
        );
        if (previousBearing != null) {
          bearingChange = normalizeBearingDelta(bearing - previousBearing);
        }
      }

      if (shouldPlaceArrow(screenDistanceFromLast, bearingChange, zoom)) {
        final icon = await getArrowIcon(bearing, color, arrowCache);
        markers.add(
          Marker(
            markerId: MarkerId('${markerIdPrefix}_$i'),
            position: currentPoint,
            icon: icon,
            anchor: const Offset(0.5, 0.5),
            flat: true,
          ),
        );
        lastArrowPosition = currentPoint;
      }

      previousBearing = bearing;
      i++;
    }

    return markers;
  }

  // ===== Polyline Building =====

  /// Creates a single polyline from geometry points.
  Polyline buildSinglePolyline({
    required String polylineId,
    required List<LocationRow> geometry,
    required Color color,
    int width = 3,
    bool geodesic = true,
  }) {
    final points = geometryToLatLngList(geometry);
    return Polyline(
      polylineId: PolylineId(polylineId),
      points: points,
      color: color,
      width: width,
      geodesic: geodesic,
    );
  }

  /// Creates a connector polyline between two points (for offset markers).
  Polyline createConnectorPolyline({
    required String polylineId,
    required LatLng actualPosition,
    required LatLng offsetPosition,
    required Color color,
    int width = 2,
    double opacity = 0.7,
  }) {
    return Polyline(
      polylineId: PolylineId(polylineId),
      points: [offsetPosition, actualPosition],
      color: color.withValues(alpha: opacity),
      width: width,
      patterns: [PatternItem.dash(10), PatternItem.gap(5)],
    );
  }

  // ===== Polyline Data Conversion =====

  /// Converts LocationRow list to PolylineData format for tooltip support.
  List<PolylineData> convertToPolylineData(
    List<LocationRow> points,
    Color color,
  ) {
    final polylinePoints = <PolylinePoint>[];

    for (final location in points) {
      if (location.latitude != null &&
          location.longitude != null &&
          location.locationTimestamp != null) {
        polylinePoints.add(
          PolylinePoint(
            latLng: LatLng(location.latitude!, location.longitude!),
            timestamp: location.locationTimestamp!,
          ),
        );
      }
    }

    if (polylinePoints.isEmpty) return [];

    return [
      PolylineData(
        points: polylinePoints,
        color: color,
      ),
    ];
  }

  // ===== Hover Detection Methods =====

  /// Calculate zoom-adaptive hover threshold in degrees.
  /// At zoom 15: ~20 meters (~0.00018 degrees)
  /// Zoomed in (zoom > 15): smaller threshold (tighter matching)
  /// Zoomed out (zoom < 15): larger threshold (more lenient)
  double calculateHoverThreshold(double currentZoom) {
    final zoomAdjustment = pow(2, hoverReferenceZoom - currentZoom);
    return hoverBaseThresholdDegrees * zoomAdjustment;
  }

  /// Calculate threshold using visible bounds 
  /// (more accurate for varying latitudes).
  double calculateBoundsBasedThreshold({
    required LatLngBounds bounds,
    required double mapHeight,
    double targetPixels = hoverTargetPixels,
  }) {
    final latSpan = bounds.northeast.latitude - bounds.southwest.latitude;
    final latPerPixel = latSpan / mapHeight;
    return latPerPixel * targetPixels;
  }

  /// Core hover detection - finds nearest polyline point to cursor.
  /// Returns PolylineHoverResult or null if no polyline within threshold.
  PolylineHoverResult? detectPolylineHover({
    required Offset cursorPosition,
    required double mapWidth,
    required double mapHeight,
    required LatLngBounds bounds,
    required List<PolylineData> polylineData,
  }) {
    if (polylineData.isEmpty) return null;

    final hoveredLatLng = screenToLatLng(
      screenX: cursorPosition.dx,
      screenY: cursorPosition.dy,
      mapWidth: mapWidth,
      mapHeight: mapHeight,
      bounds: bounds,
    );

    final thresholdDegrees = calculateBoundsBasedThreshold(
      bounds: bounds,
      mapHeight: mapHeight,
    );

    return findNearestPolylinePoint(
      position: hoveredLatLng,
      polylines: polylineData,
      thresholdDegrees: thresholdDegrees,
    );
  }
}
