import 'dart:async';

import 'package:emr_one_transport/core/utils/map/polyline_geometry.dart';
import 'package:emr_one_transport/data/controllers/tracking/polyline_rendering_mixin.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Callback type for finding contextual metadata from a timestamp.
/// Example: finding job number from a hovered timestamp.
typedef HoverMetadataFinder<T> = T? Function(DateTime timestamp);

/// Manages polyline hover state with debouncing and reactive updates.
/// Generic type [TMetadata] allows for asset-specific context 
/// (e.g., job number).
class PolylineHoverState<TMetadata> {
  PolylineHoverState({
    this.metadataFinder,
    this.debounceMs = PolylineRenderingMixin.hoverDebounceMs,
  });

  /// Optional callback to find metadata for a hovered timestamp.
  final HoverMetadataFinder<TMetadata>? metadataFinder;

  /// Debounce duration in milliseconds.
  final int debounceMs;

  Timer? _debounceTimer;

  // ValueNotifiers for efficient widget rebuilds
  final ValueNotifier<DateTime?> timestampNotifier = ValueNotifier(null);
  final ValueNotifier<Offset?> positionNotifier = ValueNotifier(null);
  final ValueNotifier<TMetadata?> metadataNotifier = ValueNotifier(null);

  /// Process hover event with debouncing.
  ///
  /// [cursorPosition] - Current cursor position in widget coordinates
  /// [mapWidth] - Map widget width for coordinate conversion
  /// [mapHeight] - Map widget height for coordinate conversion
  /// [isBlocked] - Whether events should be suppressed (e.g., modal open)
  /// [bounds] - Current visible map bounds
  /// [polylineData] - Polyline data for hover detection
  /// [detectHover] - Detection function from mixin
  void handleHover({
    required Offset cursorPosition,
    required double mapWidth,
    required double mapHeight,
    required bool isBlocked,
    required LatLngBounds? bounds,
    required List<PolylineData> polylineData,
    required PolylineHoverResult? Function({
      required Offset cursorPosition,
      required double mapWidth,
      required double mapHeight,
      required LatLngBounds bounds,
      required List<PolylineData> polylineData,
    }) detectHover,
  }) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(Duration(milliseconds: debounceMs), () {
      // Clear if blocked or no bounds
      if (isBlocked || bounds == null) {
        clear();
        return;
      }

      // Clear if no polyline data
      if (polylineData.isEmpty) {
        clear();
        return;
      }

      // Detect nearest polyline point
      final result = detectHover(
        cursorPosition: cursorPosition,
        mapWidth: mapWidth,
        mapHeight: mapHeight,
        bounds: bounds,
        polylineData: polylineData,
      );

      if (result != null) {
        _updateState(
          timestamp: result.timestamp,
          position: cursorPosition,
          metadata: metadataFinder?.call(result.timestamp),
        );
      } else {
        clear();
      }
    });
  }

  /// Clear all hover state and cancel pending debounce timer.
  void clear() {
    _debounceTimer?.cancel();
    if (timestampNotifier.value != null) {
      timestampNotifier.value = null;
      positionNotifier.value = null;
      metadataNotifier.value = null;
    }
  }

  void _updateState({
    required DateTime timestamp,
    required Offset position,
    TMetadata? metadata,
  }) {
    timestampNotifier.value = timestamp;
    positionNotifier.value = position;
    metadataNotifier.value = metadata;
  }

  /// Dispose of resources. Call this in the controller's dispose method.
  void dispose() {
    _debounceTimer?.cancel();
    timestampNotifier.dispose();
    positionNotifier.dispose();
    metadataNotifier.dispose();
  }
}
