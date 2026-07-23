import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/controllers/tracking/polyline_rendering_mixin.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_data_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_filter_controller.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/polyline_hover_tooltip.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/truck/truck_info_sidebar.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/truck/truck_locator_control_panel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

/// Widget that displays the truck tracking map with all truck-specific logic,
/// initialization, and overlays. Owns the GoogleMap instance for trucks.
class TruckLocatorWidget extends StatefulWidget {
  const TruckLocatorWidget({
    this.initialAssetNumber,
    super.key,
  });

  final String? initialAssetNumber;

  @override
  State<TruckLocatorWidget> createState() => _TruckLocatorWidgetState();
}

class _TruckLocatorWidgetState extends State<TruckLocatorWidget> {
  final ValueNotifier<GoogleMapController?> _mapControllerNotifier =
      ValueNotifier<GoogleMapController?>(null);
  late TruckLocatorController _truckController;
  bool _initialized = false;
  String? _lastErrorMessage;

  /// Shows SnackBar when controller error message changes
  void _onControllerChanged() {
    final errorMessage = _truckController.errorMessage;
    if (errorMessage != null && errorMessage != _lastErrorMessage) {
      _lastErrorMessage = errorMessage;
      if (mounted) {
        EmrModal.showMessageBar(
          context,
          errorMessage,
          messageType: MessageBarTypes.error,
        );
      }
    } else if (errorMessage == null) {
      _lastErrorMessage = null;
    }
  }
  
  /// Trigger async marker building and return all markers from controller.
  Set<Marker> _buildMarkersSync(TruckLocatorController truckController) {
    // Trigger async marker building in background (fire and forget)
    unawaited(truckController.buildTruckMarkers());
    truckController.triggerJobEndpointMarkerBuild();
    truckController.triggerTrackArrowMarkerBuild();

    // Return all markers from controller synchronously
    return truckController.getAllMarkers();
  }

  Future<void> _initializeMapAfterCreation() async {
    if (_initialized) return;
    _initialized = true;

    _truckController = context.read<TruckLocatorController>();
    final truckFilterController = context.read<TruckLocatorFilterController>();
    final truckDataController = context.read<TruckLocatorDataController>();

    // Add listener for error changes
    _truckController.addListener(_onControllerChanged);

    // Load filter values (yards) before initializing filter controller
    await truckDataController.getFilterValues();

    // 1. Pan to default viewport quickly (before trucks load)
    final defaultPosition = await _truckController.getDefaultCameraPosition();
    if (!mounted) return;
    await _truckController.mapController.animateCamera(
      CameraUpdate.newCameraPosition(defaultPosition),
    );

    // 2. Setup filters and load trucks (will fit bounds after load)
    if (!mounted) return;
    await _truckController.setupTruckFilters(truckFilterController);

    // 3. Auto-select truck if provided via URL
    if (widget.initialAssetNumber != null && mounted) {
      await _truckController
          .selectTruckByAssetNumber(widget.initialAssetNumber!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TruckLocatorController>(
      builder: (context, truckController, _) {
        return Column(
          children: [
            // Control panel ABOVE map - fixed 100dp height
            ValueListenableBuilder<GoogleMapController?>(
              valueListenable: _mapControllerNotifier,
              builder: (context, controller, _) {
                if (controller == null) return const SizedBox.shrink();
                return SizedBox(
                  height: 100,
                  child: TruckLocatorControlPanel(mapController: controller),
                );
              },
            ),

            // Map area BELOW control panel
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: [
                      // GoogleMap - rebuild on selection/highlight/blocker changes
                      ValueListenableBuilder<Set<int>>(
                        valueListenable: truckController.selectedJobsNotifier,
                        builder: (context, selectedJobs, _) {
                          return ValueListenableBuilder<int?>(
                            valueListenable:
                                truckController.highlightedJobNotifier,
                            builder: (context, highlightedJob, _) {
                              return ValueListenableBuilder<int>(
                                valueListenable: truckController
                                    .eventBlockerRegistry.blockerCount,
                                builder: (context, blockerCount, _) {
                                  return ValueListenableBuilder<Set<Polyline>>(
                                    valueListenable: truckController
                                        .jobConnectorPolylinesNotifier,
                                    builder: (context, connectorPolylines, _) {
                                      final shouldDisableGestures =
                                          blockerCount > 0;

                                      return MouseRegion(
                                        cursor: shouldDisableGestures
                                            ? SystemMouseCursors.forbidden
                                            : MouseCursor.defer,
                                        onHover: (event) {
                                          if (truckController.selectedTruck !=
                                                  null &&
                                              truckController.truckGeometry !=
                                                  null) {
                                            truckController.handlePolylineHover(
                                              cursorPosition:
                                                  event.localPosition,
                                              mapWidth: constraints.maxWidth,
                                              mapHeight: constraints.maxHeight,
                                            );
                                          }
                                        },
                                        onExit: (_) =>
                                            truckController
                                              .clearPolylineHover(),
                                        child: GoogleMap(
                                          onMapCreated: (controller) {
                                            if (!mounted) return;
                                            _mapControllerNotifier.value =
                                                controller;
                                            truckController.mapController =
                                                controller;
                                            _initializeMapAfterCreation();
                                          },
                                          initialCameraPosition:
                                              const CameraPosition(
                                            target: LatLng(
                                              Constants
                                                  .defaultMapLatitude,
                                              Constants
                                                  .defaultMapLongitude,
                                            ),
                                            zoom: Constants
                                                .defaultTruckMapZoom,
                                          ),
                                          zoomGesturesEnabled:
                                              !shouldDisableGestures,
                                          scrollGesturesEnabled:
                                              !shouldDisableGestures,
                                          rotateGesturesEnabled:
                                              !shouldDisableGestures,
                                          tiltGesturesEnabled:
                                              !shouldDisableGestures,
                                          onCameraIdle: () {
                                            truckController
                                                .updateVisibleBounds();
                                            truckController
                                                .triggerTrackArrowMarkerBuild();
                                          },
                                          markers: _buildMarkersSync(
                                            truckController,
                                          ),
                                          polylines: {
                                            ...truckController
                                                .buildRoutePolylines(),
                                            ...connectorPolylines,
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),

                      // Track hover tooltip - uses unified widget
                      ValueListenableBuilder<DateTime?>(
                        valueListenable:
                            truckController.hoveredTimestampNotifier,
                        builder: (context, hoveredTimestamp, _) {
                          if (hoveredTimestamp == null) {
                            return const SizedBox.shrink();
                          }
                          return ValueListenableBuilder<Offset?>(
                            valueListenable:
                                truckController.cursorPositionNotifier,
                            builder: (context, cursorPosition, _) {
                              if (cursorPosition == null) {
                                return const SizedBox.shrink();
                              }
                              return ValueListenableBuilder<int?>(
                                valueListenable:
                                    truckController.hoveredJobNumberNotifier,
                                builder: (context, jobNumber, _) {
                                  return Positioned(
                                    left: cursorPosition.dx +
                                      PolylineRenderingMixin.hoverTooltipOffset,
                                    top: cursorPosition.dy +
                                      PolylineRenderingMixin.hoverTooltipOffset,
                                    child: IgnorePointer(
                                      child:
                                          PolylineHoverTooltipWidget
                                          .withJobNumber(
                                            timestamp: hoveredTimestamp,
                                            jobPrefix: '${context.l10n.job} #',
                                            jobNumber: jobNumber,
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),

                      // Truck info sidebar (shows when truck selected)
                      if (truckController.selectedTruck != null)
                        Positioned(
                          top: 0,
                          right: 8,
                          bottom: 8,
                          width: 280,
                          child: TruckInfoSidebar(controller: truckController),
                        ),

                      // Loading indicator
                      if (truckController.isLoading)
                        const Center(child: CircularProgressIndicator()),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    // Stop auto-refresh when widget is disposed
    if (_initialized) {
      _truckController.removeListener(_onControllerChanged);
      _truckController.stopAutoRefresh();
    }
    _mapControllerNotifier.dispose();
    super.dispose();
  }
}
