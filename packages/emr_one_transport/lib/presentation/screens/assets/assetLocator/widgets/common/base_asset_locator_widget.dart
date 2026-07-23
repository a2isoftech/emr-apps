import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/controllers/tracking/base_asset_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/polyline_rendering_mixin.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/custom_info_window_overlay.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/polyline_hover_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

/// Base widget for asset locator maps (containers, trailers, etc.)
///
/// Generic base class that manages GoogleMap instance, markers, polylines,
/// and overlays. Handles all common map interaction logic (hover detection,
/// async marker building, event blocking). Asset-specific behavior is
/// delegated to abstract methods.
///
/// Type parameters:
/// - [TLocatorController]: Asset-specific locator controller
///   (e.g., ContainerLocatorController)
/// - [TFilterController]: Asset-specific filter controller
/// - [TDataController]: Asset-specific data controller
/// - [TControlPanelWidget]: Concrete control panel widget for this asset type
abstract class BaseAssetLocatorWidget<
  TLocatorController extends BaseAssetLocatorController,
  TFilterController extends EmrFilterController,
  TDataController,
  TControlPanelWidget extends StatefulWidget
> extends StatefulWidget {
  const BaseAssetLocatorWidget({
    this.initialAssetNumber,
    this.onAssetSelected,
    super.key,
  });

  final String? initialAssetNumber;
  final ValueChanged<String?>? onAssetSelected;

  /// Get the asset-specific locator controller from Provider context
  TLocatorController getLocatorController(BuildContext context);

  /// Get the asset-specific filter controller from Provider context
  TFilterController getFilterController(BuildContext context);

  /// Get the asset-specific data controller from Provider context
  TDataController getDataController(BuildContext context);

  /// Fetch assets in visible bounds using asset-specific controller method
  Future<void> fetchAssetsInBounds({
    required TLocatorController controller,
    required LatLngBounds bounds,
    required AssetGeoSearchRequest filterRequest,
  });

  /// Select asset by number using asset-specific controller method
  Future<void> selectAssetByNumber({
    required TLocatorController controller,
    required String assetNumber,
    required double screenHeight,
    required double screenWidth,
  });

  /// Get the initial camera position for this asset type
  CameraPosition getInitialCameraPosition();

  /// Get the unique hero tag for map type toggle button
  String getHeroTag();

  /// Build the asset-specific control panel widget
  TControlPanelWidget buildControlPanel(GoogleMapController controller);

  /// Check if an asset is currently selected
  bool isAssetSelected(TLocatorController controller);

  @override
  State<BaseAssetLocatorWidget<TLocatorController, TFilterController,
      TDataController, TControlPanelWidget>>
    createState() => _BaseAssetLocatorWidgetState<TLocatorController,
        TFilterController, TDataController, TControlPanelWidget>();
}

class _BaseAssetLocatorWidgetState<
  TLocatorController extends BaseAssetLocatorController,
  TFilterController extends EmrFilterController,
  TDataController,
  TControlPanelWidget extends StatefulWidget
> extends State<BaseAssetLocatorWidget<TLocatorController, TFilterController,
    TDataController, TControlPanelWidget>> {
  GoogleMapController? _mapController;
  final ValueNotifier<GoogleMapController?> _mapControllerNotifier =
      ValueNotifier<GoogleMapController?>(null);
  late VoidCallback _filterChangeCallback;
  VoidCallback? _selectionListener;
  TLocatorController? _locatorController;
  ValueNotifier<List<dynamic>>? _filtersNotifier;
  bool _isInitialized = false;
  double _currentZoom = 15; // Default zoom level for threshold calculation
  String? _lastErrorMessage;

  @override
  void initState() {
    super.initState();
    // Wait for onMapCreated before initialization
  }

  /// Shows SnackBar when controller error message changes
  void _onControllerChanged() {
    final errorMessage = _locatorController?.errorMessage;
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

  /// Initialize map after GoogleMap widget is created.
  /// Loads filter values, setup markers, registers filter listener,
  /// and fetches initial assets in visible bounds.
  Future<void> _initializeMapAfterCreation() async {
    final locatorController = widget.getLocatorController(context);
    final filterController = widget.getFilterController(context);
    final dataController = widget.getDataController(context);
    final devicePixelRatio = MediaQuery.maybeDevicePixelRatioOf(context) ?? 3.0;

    locatorController.setMapInitialized(value: false);
    if (dataController != null) {
      await (dataController as dynamic).getFilterValues();
    }
    if (!mounted) return;

    await locatorController.setupMapMarkers(devicePixelRatio);
    if (!mounted) return;

    // Setup asset filter listener
    _filterChangeCallback = () async {
      if (!mounted) return;

      // Close info window when filters change
      locatorController.closeCustomInfoWindow();

      // Get current asset number filter value for URL update
      final assetNumberFilter = (filterController as EmrFilterController)
          .tryGetFilter<String>(key: 'assetNumber')?.value;
      widget.onAssetSelected?.call(assetNumberFilter);

      final region = await _mapController?.getVisibleRegion();
      if (region == null || !mounted) return;

      final filterRequest =
          (filterController as dynamic).getAppliedFilterAsRequest(
        latNE: region.northeast.latitude,
        lngNE: region.northeast.longitude,
        latSW: region.southwest.latitude,
        lngSW: region.southwest.longitude,
      ) as AssetGeoSearchRequest;

      await widget.fetchAssetsInBounds(
        controller: locatorController,
        bounds: region,
        filterRequest: filterRequest,
      );
    };

    // Store reference to filters notifier for later removal in dispose
    _filtersNotifier = filterController.filters;
    filterController.filters.addListener(_filterChangeCallback);

    // Store controller reference and setup listeners
    _locatorController = locatorController;
    locatorController.addListener(_onControllerChanged);
    if (widget.onAssetSelected != null) {
      _selectionListener = () {
        final selected = locatorController.selectedAsset;
        widget.onAssetSelected?.call(selected?.assetNumber);
      };
      locatorController.selectedAssetNotifier.addListener(_selectionListener!);
    }
    _isInitialized = true;

    // Get default position and animate
    final defaultPosition = await locatorController.getDefaultCameraPosition();
    if (!mounted) return;
    await _mapController!.animateCamera(
      CameraUpdate.newCameraPosition(defaultPosition),
    );

    // Fetch initial assets
    final bounds = await _mapController!.getVisibleRegion();
    if (!mounted) return;

    final filterRequest =
        (filterController as dynamic).getAppliedFilterAsRequest(
      latNE: bounds.northeast.latitude,
      lngNE: bounds.northeast.longitude,
      latSW: bounds.southwest.latitude,
      lngSW: bounds.southwest.longitude,
    ) as AssetGeoSearchRequest;
    await widget.fetchAssetsInBounds(
      controller: locatorController,
      bounds: bounds,
      filterRequest: filterRequest,
    );
    if (!mounted) return;

    locatorController.setMapInitialized(value: true);

    // Handle asset number from URL - set filter instead of selecting
    if (widget.initialAssetNumber != null && mounted) {
      // Create filter model for asset number
      final assetNumberName =
          context.l10n.assetNumber;
      final assetNumberFilter = EmrFilterModel<String>(
        key: 'assetNumber',
        name: assetNumberName,
      );

      // Add the filter with the asset number value
      // This will trigger _filterChangeCallback which fetches matching assets
      filterController.addOrUpdateFilter(
        filter: assetNumberFilter,
        text: '$assetNumberName: '
              '${widget.initialAssetNumber}',
        value: widget.initialAssetNumber,
      );
    }
  }

  /// Handle camera idle event - triggers asset fetching based on new bounds
  Future<void> _onCameraIdle(TLocatorController locatorController) async {
    if (!mounted) return;
    if (_mapController != null && mounted) {
      await locatorController.handleCameraIdle(_mapController!);
    }
  }

  /// Check if layout constraints changed and trigger marker rebuild if needed.
  void _checkConstraintsAndRebuildMarkers(
    TLocatorController locatorController,
    BoxConstraints constraints,
  ) {
    final newWidth = constraints.maxWidth;
    final newHeight = constraints.maxHeight;
    if (newWidth != locatorController.lastScreenWidth ||
        newHeight != locatorController.lastScreenHeight) {
      locatorController.updateScreenDimensions(
        width: newWidth,
        height: newHeight,
      );
      unawaited(locatorController.buildMarkers());
    }
  }

  /// Trigger arrow marker rebuild on zoom change (tracking mode only).
  void _rebuildArrowMarkers(TLocatorController locatorController) {
    if (locatorController.isTrackingActive) {
      unawaited(locatorController.buildDirectionalArrowMarkers());
    }
  }

  @override
  Widget build(BuildContext context) {
    final locatorController = widget.getLocatorController(context);
    return Consumer<TLocatorController>(
      builder: (context, controller, _) {
        return Column(
          children: [
            // Asset control panel overlay (filters/stats)
            ValueListenableBuilder<GoogleMapController?>(
              valueListenable: _mapControllerNotifier,
              builder: (context, mapController, _) {
                if (mapController == null) return const SizedBox.shrink();
                return SizedBox(
                  height: 100,
                  child: widget.buildControlPanel(mapController),
                );
              },
            ),

            // Map area with overlays
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Rebuild markers if screen dimensions changed
                  _checkConstraintsAndRebuildMarkers(
                    locatorController,
                    constraints,
                  );
                  return Stack(
                    children: [
                      // GoogleMap - disable gestures
                      // based on event blocker count
                      ValueListenableBuilder<int>(
                        valueListenable:
                            locatorController.eventBlockerRegistry.blockerCount,
                        builder: (context, blockerCount, _) {
                          final shouldDisableGestures = blockerCount > 0;

                          return MouseRegion(
                            cursor: shouldDisableGestures
                                ? SystemMouseCursors.forbidden
                                : MouseCursor.defer,
                            onHover: (event) {
                              if (widget.isAssetSelected(locatorController)) {
                                locatorController.hoverState.handleHover(
                                  cursorPosition: event.localPosition,
                                  mapWidth: constraints.maxWidth,
                                  mapHeight: constraints.maxHeight,
                                  isBlocked: locatorController
                                      .eventBlockerRegistry.isBlocked,
                                  bounds: locatorController.lastVisibleBounds,
                                  polylineData: locatorController
                                      .getPolylineDataForTooltip(),
                                  detectHover:
                                      locatorController.detectPolylineHover,
                                );
                              }
                            },
                            onExit: (_) {
                              locatorController.hoverState.clear();
                            },
                            child: ValueListenableBuilder<Set<Marker>>(
                              valueListenable:
                                  locatorController.markersNotifier,
                              builder: (context, markers, _) {
                                return ValueListenableBuilder<Set<Marker>>(
                                  valueListenable:
                                      locatorController.arrowMarkersNotifier,
                                  builder: (context, arrowMarkers, _) {
                                    return GoogleMap(
                              onMapCreated: (controller) {
                                if (!mounted) return;
                                _mapController = controller;
                                _mapControllerNotifier.value = controller;
                                locatorController.mapController = controller;
                                _initializeMapAfterCreation();
                              },
                              initialCameraPosition:
                                  widget.getInitialCameraPosition(),
                              mapType: locatorController.currentMapType,
                              // Disable ALL gestures when modal is active
                              // OR pointer over info window
                              zoomGesturesEnabled: !shouldDisableGestures,
                              scrollGesturesEnabled: !shouldDisableGestures,
                              rotateGesturesEnabled: !shouldDisableGestures,
                              tiltGesturesEnabled: !shouldDisableGestures,
                              onCameraMove: (position) {
                                // Track zoom level for threshold calculation
                                final previousZoom = _currentZoom;
                                _currentZoom = position.zoom;

                                // Rebuild arrows on integer zoom change
                                if (previousZoom.floor() !=
                                        _currentZoom.floor() &&
                                    locatorController.isTrackingActive) {
                                  _rebuildArrowMarkers(locatorController);
                                }

                                // Update bounds in real-time during pan
                                if (_mapController != null && mounted) {
                                  try {
                                    _mapController!.getVisibleRegion().then((
                                      bounds,
                                    ) {
                                      // Check mounted again
                                      // after async operation
                                      if (mounted) {
                                        locatorController.updateVisibleBounds(
                                          bounds,
                                        );
                                      }
                                    });
                                  } catch (e) {
                                    // Error updating bounds during pan
                                  }
                                }
                              },
                              onCameraIdle: () {
                                _onCameraIdle(locatorController);
                              },
                              markers: {...markers, ...arrowMarkers},
                              polylines: locatorController
                                  .buildTrackPolylines(),
                                    );
                                  },
                                );
                              },
                            ),
                          );
                        },
                      ),

                      // Map type toggle button
                      Positioned(
                        bottom: 16,
                        right: 16,
                        child: FloatingActionButton(
                          heroTag: widget.getHeroTag(),
                          mini: true,
                          onPressed: locatorController.toggleMapType,
                          child: Icon(
                            locatorController.currentMapType == MapType.normal
                                ? Icons.map
                                : Icons.satellite,
                          ),
                        ),
                      ),

                      // Custom info window overlay
                      CustomInfoWindowOverlay(
                        controller: locatorController,
                        actualMapWidth: constraints.maxWidth,
                        actualMapHeight: constraints.maxHeight,
                      ),

                      // Polyline hover tooltip
                      ValueListenableBuilder<DateTime?>(
                        valueListenable:
                            locatorController.hoveredTimestampNotifier,
                        builder: (context, timestamp, _) {
                          if (timestamp == null) {
                            return const SizedBox.shrink();
                          }
                          return ValueListenableBuilder<Offset?>(
                            valueListenable:
                                locatorController.cursorPositionNotifier,
                            builder: (context, position, _) {
                              if (position == null) {
                                return const SizedBox.shrink();
                              }
                              return Positioned(
                                left: position.dx +
                                    PolylineRenderingMixin.hoverTooltipOffset,
                                top: position.dy +
                                    PolylineRenderingMixin.hoverTooltipOffset,
                                child: IgnorePointer(
                                  child:
                                      PolylineHoverTooltipWidget.timestampOnly(
                                    timestamp: timestamp,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),

                      // Loading indicator
                      if (locatorController.isLoading)
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
    // Remove listeners before disposing (only if initialized)
    if (_isInitialized) {
      _filtersNotifier?.removeListener(_filterChangeCallback);
      _locatorController?.removeListener(_onControllerChanged);
      if (_selectionListener != null && _locatorController != null) {
        _locatorController!.selectedAssetNotifier
            .removeListener(_selectionListener!);
      }
    }
    _mapControllerNotifier.dispose();
    super.dispose();
  }
}
