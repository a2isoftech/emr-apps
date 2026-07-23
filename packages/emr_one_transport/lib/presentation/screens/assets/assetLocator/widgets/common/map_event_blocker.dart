import 'dart:async';

import 'package:emr_one_transport/core/utils/map/map_event_blocker_registry.dart';
import 'package:flutter/material.dart';

/// Widget that automatically blocks map events while mounted.
///
/// Use this to wrap any modal content (bottom sheets, dialogs) so that
/// marker taps and map gestures are automatically blocked when the modal
/// is shown, and unblocked when it's dismissed.
///
/// Example:
/// ```dart
/// showModalBottomSheet(
///   builder: (context) => MapEventBlocker(
///     registry: controller.eventBlockerRegistry,
///     child: MyBottomSheetContent(),
///   ),
/// );
/// ```
class MapEventBlocker extends StatefulWidget {
  const MapEventBlocker({
    required this.registry,
    required this.child,
    super.key,
  });

  final MapEventBlockerRegistry registry;
  final Widget child;

  @override
  State<MapEventBlocker> createState() => _MapEventBlockerState();
}

class _MapEventBlockerState extends State<MapEventBlocker> {
  bool _registered = false;

  @override
  void initState() {
    super.initState();
    // Defer registration to after build frame completes to avoid
    // "setState called during build" error
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        widget.registry.register();
        _registered = true;
      }
    });
  }

  @override
  void dispose() {
    // Defer unregistration to next microtask 
    // to avoid "widget tree locked" error
    if (_registered) {
      scheduleMicrotask(() {
        try {
          widget.registry.unregister();
        } catch (e) {
          // Silently ignore errors if registry is already disposed
        }
      });
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

/// Widget that blocks map events while pointer is hovering over it.
///
/// Use this to wrap content that the user may hover over (like info windows).
/// When the pointer enters the widget, map events are blocked.
/// When the pointer exits, map events are unblocked.
///
/// Example:
/// ```dart
/// MapEventBlockerOnHover(
///   registry: controller.eventBlockerRegistry,
///   child: MyInfoWindow(),
/// )
/// ```
class MapEventBlockerOnHover extends StatefulWidget {
  const MapEventBlockerOnHover({
    required this.registry,
    required this.child,
    super.key,
  });

  final MapEventBlockerRegistry registry;
  final Widget child;

  @override
  State<MapEventBlockerOnHover> createState() =>
      _MapEventBlockerOnHoverState();
}

class _MapEventBlockerOnHoverState extends State<MapEventBlockerOnHover> {
  bool _isHovering = false;
  bool _isRegistered = false;

  @override
  void dispose() {
    // Only unregister if we're actually registered
    if (_isRegistered) {
      scheduleMicrotask(() {
        try {
          widget.registry.unregister();
        } catch (e) {
          // Silently ignore errors if registry is already disposed
        }
      });
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      hitTestBehavior: HitTestBehavior.opaque,
      onEnter: (_) {
        _isHovering = true;
        // Only register if not already registered
        if (!_isRegistered) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // Check again - user might have exited before callback
            if (mounted && _isHovering && !_isRegistered) {
              widget.registry.register();
              _isRegistered = true;
            }
          });
        }
      },
      onExit: (_) {
        _isHovering = false;
        // Only unregister if we're actually registered
        if (_isRegistered) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // Check again - user might have re-entered before callback
            if (mounted && !_isHovering && _isRegistered) {
              widget.registry.unregister();
              _isRegistered = false;
            }
          });
        }
      },
      child: widget.child,
    );
  }
}
