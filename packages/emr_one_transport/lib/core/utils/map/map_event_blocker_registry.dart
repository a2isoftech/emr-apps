import 'package:flutter/material.dart';

/// Per-screen registry that tracks active map event blockers.
///
/// When blockerCount > 0, map events should be disabled.
/// Each map screen (container, truck) should have its own instance
/// to avoid cross-screen contamination.
///
/// Example:
/// ```dart
/// class ContainerLocatorController {
///   final MapEventBlockerRegistry 
///     eventBlockerRegistry = MapEventBlockerRegistry();
///
///   @override
///   void dispose() {
///     eventBlockerRegistry.dispose();
///     super.dispose();
///   }
/// }
/// ```
class MapEventBlockerRegistry {
  /// Tracks the number of active blockers
  final ValueNotifier<int> _blockerCount = ValueNotifier<int>(0);

  /// Public getter for blockerCount notifier
  ValueNotifier<int> get blockerCount => _blockerCount;

  /// Whether map events are currently blocked (blockerCount > 0)
  bool get isBlocked => _blockerCount.value > 0;

  /// Register a blocker (called in widget initState)
  void register() {
    _blockerCount.value++;
  }

  /// Unregister a blocker (called in widget dispose)
  void unregister() {
    _blockerCount.value--;
  }

  /// Dispose the registry (cleanup ValueNotifier)
  void dispose() {
    _blockerCount.dispose();
  }
}
