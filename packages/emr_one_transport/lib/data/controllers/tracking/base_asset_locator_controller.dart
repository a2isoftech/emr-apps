import 'dart:async';
import 'dart:typed_data';

import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/utils/map/info_window_positioning.dart';
import 'package:emr_one_transport/core/utils/map/map_event_blocker_registry.dart';
import 'package:emr_one_transport/core/utils/map/polyline_geometry.dart';
import 'package:emr_one_transport/data/controllers/tracking/map_marker_builder.dart';
import 'package:emr_one_transport/data/controllers/tracking/polyline_hover_state.dart';
import 'package:emr_one_transport/data/controllers/tracking/polyline_rendering_mixin.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/data/models/tracking/asset_location.dart';
import 'package:emr_one_transport/data/models/tracking/marker_screen_position.dart';
import 'package:emr_one_transport/data/models/tracking/tracking_asset_location_response.dart';
import 'package:emr_one_transport/data/services/tracking/common_asset_locator_service.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Base class for asset locator controllers 
/// with generic location tracking functionality.
/// Supports containers, trailers, 
/// and other assets if have similar functionality. 
/// via parameterized subclasses.
/// Handles map display, marker management, GPS tracking, and info windows.
///
/// Subclasses must implement:
/// - [assetType]: Asset type enum (Container, Trailer)
/// - [assetType]: Asset type for locator and tracking API calls
/// - [getMarkerColorForStatus]: Map asset status to marker color category
/// - [getStatusCounts]: Return status count map for this asset type
abstract class BaseAssetLocatorController extends ChangeNotifier
    with PolylineRenderingMixin {
  BaseAssetLocatorController({
    required this.service,
  });

  final CommonAssetLocatorService service;

  // Custom marker dimensions (in physical pixels for web)
  // Icon tip anchored at 43px, text occupies top 17px
  // Note: Mobile is not supported; if added, use logical pixels (e.g., 30.0 / 3.0)
  static const double _customMarkerWidth = 30;
  static const double _customMarkerHeight = 60;

  // Default Google marker dimensions (approximate, in logical pixels)
  // Default marker scales with device pixel ratio
  static const double _defaultMarkerWidth = 22;  // Width at 1x DPR
  static const double _defaultMarkerHeight = 40; // Height at 1x DPR

  // Store device pixel ratio for default marker calculations
  double? _devicePixelRatio;

  // Store last known screen dimensions for position calculations
  double _lastScreenWidth = 0;
  double _lastScreenHeight = 0;
  double get lastScreenWidth => _lastScreenWidth;
  double get lastScreenHeight => _lastScreenHeight;

  // notifier for mpa bounds
  final ValueNotifier<LatLngBounds?> boundsNotifier =
      ValueNotifier<LatLngBounds?>(null);

  // Notifier for info window height (measured from actual content)
  final ValueNotifier<double?> infoWindowHeightNotifier =
      ValueNotifier<double?>(null);

  // Notifier for selected asset
  final ValueNotifier<AssetLocation?> selectedAssetNotifier =
      ValueNotifier<AssetLocation?>(null);

  // Notifier for marker visibility state (show/hide info window)
  final ValueNotifier<bool> showInfoWindowNotifier = ValueNotifier<bool>(false);

  // Tracking-specific notifiers
  final ValueNotifier<bool> trackingLoadingNotifier =
      ValueNotifier<bool>(false);
  final ValueNotifier<String?> trackingErrorNotifier =
      ValueNotifier<String?>(null);
  final ValueNotifier<bool> trackingActiveNotifier =
      ValueNotifier<bool>(false);

  // Marker notifiers — drive GoogleMap markers via ValueListenableBuilder
  final ValueNotifier<Set<Marker>> markersNotifier =
      ValueNotifier<Set<Marker>>({});
  final ValueNotifier<Set<Marker>> arrowMarkersNotifier =
      ValueNotifier<Set<Marker>>({});

  // Download-specific notifiers
  final ValueNotifier<bool> downloadingNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<String?> downloadErrorNotifier =
      ValueNotifier<String?>(null);

  // Event blocker registry for managing map event blocking state
  // Each map screen has its own instance to avoid cross-screen contamination
  final MapEventBlockerRegistry eventBlockerRegistry =
      MapEventBlockerRegistry();

  // Polyline hover state for tracking mode
  late final PolylineHoverState<void> hoverState = PolylineHoverState<void>();

  // Expose notifiers for widgets
  ValueNotifier<DateTime?> get hoveredTimestampNotifier =>
      hoverState.timestampNotifier;
  ValueNotifier<Offset?> get cursorPositionNotifier =>
      hoverState.positionNotifier;

  // Throttle timer for bounds updates during panning
  Timer? _boundsThrottleTimer;
  DateTime? _lastBoundsUpdate;
  // 10ms throttle fires at least once every 10ms (100fps)
  static const int _boundsThrottleMs = 10;

  // Track if controller is disposed to prevent updates after disposal
  bool _isDisposed = false;

  List<AssetLocation> _allAssets = [];
  List<AssetLocation> get allAssets => _allAssets;

  List<AssetLocation> _assets = [];
  List<AssetLocation> get assets => _assets;

  int _totalCount = 0;
  int get totalCount => _totalCount;

  int _filteredCount = 0;
  int get filteredCount => _filteredCount;

  bool get isLoading => !_isMapInitialized || _isApiFetching;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  bool _isDownloading = false;
  bool get isDownloading => _isDownloading;

  String? _downloadErrorMessage;
  String? get downloadErrorMessage => _downloadErrorMessage;

  AssetLocation? _selectedAsset;
  AssetLocation? get selectedAsset => _selectedAsset;

  bool _showCustomInfoWindow = false;
  bool get showCustomInfoWindow => _showCustomInfoWindow;

  LatLngBounds? _lastVisibleBounds;
  LatLngBounds? get lastVisibleBounds => _lastVisibleBounds;

  MapType _currentMapType = MapType.normal;
  MapType get currentMapType => _currentMapType;

  late GoogleMapController mapController;

  // API Race condition handling
  int _requestCounter = 0;

  // Loading state tracking
  bool _isMapInitialized = false;
  bool _isApiFetching = false;

  // Marker management
  final Map<String, BitmapDescriptor> _customMarkerCache = {};
  static const int _maxCacheSize = 500;
  final Set<Marker> _lastBuiltMarkers = {};
  bool _markersInitialized = false;
  int _markerBuildCounter = 0;
  final bool _useCustomMarkers = true;
  bool get useCustomMarkers => _useCustomMarkers;

  // Arrow marker cache (uses constants from PolylineRenderingMixin)
  final Map<String, BitmapDescriptor> _arrowMarkerCache = {};

  // Store colors for on-demand marker creation
  late Color _customerColor;
  late Color _yardColor;
  late Color _customerOutlineColor;
  late Color _yardOutlineColor;

  /// Get marker dimensions based on current marker type
  /// Returns (width, height) in pixels for the current marker configuration
  ({double width, double height}) _getMarkerDimensions() {
    if (_useCustomMarkers) {
      return (width: _customMarkerWidth, height: _customMarkerHeight);
    } else {
      // Default markers scale with device pixel ratio
      // Use stored DPR or default to 1.0
      final dpr = _devicePixelRatio ?? 1.0;
      return (
        width: _defaultMarkerWidth * dpr,
        height: _defaultMarkerHeight * dpr,
      );
    }
  }

  // Info window type toggle
  bool _useCustomInfoWindow = true;
  bool get useCustomInfoWindow => _useCustomInfoWindow;

  // Skip camera idle handler after auto-pan
  bool _skipNextCameraIdle = false;
  bool get shouldSkipCameraIdle => _skipNextCameraIdle;

  // Asset tracking state
  bool _isTrackingActive = false;
  bool get isTrackingActive => _isTrackingActive;

  String? _trackingAssetNumber;
  String? get trackingAssetNumber => _trackingAssetNumber;

  DateTime? _trackingStartTime;
  DateTime? get trackingStartTime => _trackingStartTime;

  DateTime? _trackingEndTime;
  DateTime? get trackingEndTime => _trackingEndTime;

  List<LocationRow> _trackPoints = [];
  List<LocationRow> get trackPoints => _trackPoints;

  bool _isTrackLoading = false;
  bool get isTrackLoading => _isTrackLoading;

  String? _trackErrorMessage;
  String? get trackErrorMessage => _trackErrorMessage;

  // ===== ABSTRACT METHODS =====
  // Subclasses must implement these methods with asset-type-specific logic

  /// Asset type enum
  /// Returns: Truck, Container, Trailer, etc.
  AssetType get assetType;

  /// Map asset status to marker color category
  /// Returns a color category string like 'blue', 'green', etc.
  /// This is used to select the appropriate marker color
  String getMarkerColorForStatus(String? status);

  /// Get status counts specific to this asset type
  /// Return map with keys like 'yard', 'truck', 'customer'
  /// depending on what status categories apply to this asset type
  Map<String, int> getStatusCounts();

  /// Yard asset count (derived from status counts)
  int get yardCount => getStatusCounts()['yard'] ?? 0;

  /// Truck asset count (derived from status counts)
  int get truckCount => getStatusCounts()['truck'] ?? 0;

  /// Customer asset count (derived from status counts)
  int get customerCount => getStatusCounts()['customer'] ?? 0;

  /// Fetch assets from service in the given geographic bounds
  /// Must be implemented by subclass to call the appropriate service method
  /// and return the list of assets. This is called by _performFetch internally.
  Future<List<AssetLocation>> fetchAssetsFromService(
    AssetGeoSearchRequest request,
  );

  // ===== CONCRETE METHODS =====

  void toggleMapType() {
    _currentMapType = _currentMapType == MapType.normal
        ? MapType.satellite
        : MapType.normal;
    notifyListeners();
  }

  void clearSkipCameraIdle() {
    _skipNextCameraIdle = false;
  }

  void selectAsset(AssetLocation? asset) {
    _selectedAsset = asset;
    _showCustomInfoWindow = asset != null;
    selectedAssetNotifier.value = asset;
    showInfoWindowNotifier.value = asset != null;
  }

  Future<void> selectAssetWithAutoPan(
    AssetLocation? asset, {
    double screenHeight = 0,
    double screenWidth = 0,
  }) async {
    _selectedAsset = asset;
    _showCustomInfoWindow = asset != null;
    selectedAssetNotifier.value = asset;
    showInfoWindowNotifier.value = asset != null;

    if (asset != null && _useCustomInfoWindow) {
      // Auto-pan to show info window
      _skipNextCameraIdle = true;
      await _panMapToShowInfoWindow(
        asset,
        screenHeight: screenHeight,
        screenWidth: screenWidth,
      );
    }
  }

  Future<void> _panMapToShowInfoWindow(
    AssetLocation asset, {
    double screenHeight = 0,
    double screenWidth = 0,
  }) async {
    try {
      // Get current viewport
      final bounds = await mapController.getVisibleRegion();

      // Get marker's current visual bounds
      final markerPosition = calculateMarkerScreenPosition(
        asset,
        screenWidth,
        screenHeight,
      );

      if (markerPosition == null) {
        // Marker is off-screen, center map on it
        await mapController.animateCamera(
          CameraUpdate.newLatLng(
            LatLng(asset.latitude, asset.longitude),
          ),
        );
        return;
      }

      // Calculate info window position using shared utility
      final infoWindowHeight = infoWindowHeightNotifier.value ??
          Constants.infoWindowDefaultHeight;

      final windowPosition = calculateInfoWindowPosition(
        markerPosition: markerPosition,
        screenWidth: screenWidth,
        infoWindowHeight: infoWindowHeight,
      );

      // Check if info window fits on screen
      var needsPan = false;
      var panX = 0.0;
      var panY = 0.0;
      const padding = Constants.infoWindowPadding;

      // Check top edge
      if (windowPosition.top < padding) {
        needsPan = true;
        // Need to pan down (move marker down on screen = decrease latitude)
        panY = windowPosition.top - padding; // Negative value
      }

      // Check bottom edge (marker bottom, not info window)
      if (markerPosition.markerBottom > screenHeight - padding) {
        needsPan = true;
        // Need to pan up (move marker up on screen = increase latitude)
        panY = markerPosition.markerBottom - (screenHeight - padding);
      }

      // Check left edge
      if (markerPosition.markerLeft < padding) {
        needsPan = true;
        // Need to pan right (move marker right on screen = increase longitude)
        panX = markerPosition.markerLeft - padding; // Negative value
      }

      // Check right edge
      if (markerPosition.markerRight > screenWidth - padding) {
        needsPan = true;
        // Need to pan left (move marker left on screen = decrease longitude)
        panX = markerPosition.markerRight - (screenWidth - padding);
      }

      if (!needsPan) {
        // Info window fits, no panning needed
        _skipNextCameraIdle = false;
        return;
      }

      // Convert pixel delta to lat/lng delta
      final latRange = bounds.northeast.latitude - bounds.southwest.latitude;
      final lngRange = bounds.northeast.longitude - bounds.southwest.longitude;

      // Screen Y increases downward, latitude increases upward
      // So positive panY (need to move marker down) means decrease latitude
      final latDelta = -(panY / screenHeight) * latRange;
      final lngDelta = (panX / screenWidth) * lngRange;

      // Calculate current center
      final currentCenter = LatLng(
        (bounds.northeast.latitude + bounds.southwest.latitude) / 2,
        (bounds.northeast.longitude + bounds.southwest.longitude) / 2,
      );

      // Calculate new center
      final newCenter = LatLng(
        currentCenter.latitude + latDelta,
        currentCenter.longitude + lngDelta,
      );

      // Animate to new center (pan only, no zoom change)
      await mapController.animateCamera(CameraUpdate.newLatLng(newCenter));
    } catch (e) {
      // Gracefully handle errors
      _skipNextCameraIdle = false;
    }
  }

  void closeCustomInfoWindow() {
    _showCustomInfoWindow = false;
    selectedAssetNotifier.value = null;
    showInfoWindowNotifier.value = false;
  }

  void toggleInfoWindowType() {
    _useCustomInfoWindow = !_useCustomInfoWindow;
    _showCustomInfoWindow = false;
    notifyListeners();
  }

  void setMapInitialized({required bool value}) {
    _isMapInitialized = value;
    notifyListeners();
  }

  void updateVisibleBounds(LatLngBounds bounds) {
    // Ignore updates after disposal
    if (_isDisposed) return;

    _lastVisibleBounds = bounds;

    final now = DateTime.now();
    final lastUpdate = _lastBoundsUpdate;

    // Throttle: Fire at least once every 10ms
    if (lastUpdate == null ||
        now.difference(lastUpdate).inMilliseconds >= _boundsThrottleMs) {
      // Enough time has passed, fire immediately
      _lastBoundsUpdate = now;
      _boundsThrottleTimer?.cancel();
      boundsNotifier.value = bounds;
    } else {
      // Too soon, schedule for next throttle window
      _boundsThrottleTimer?.cancel();
      final timeSinceLastUpdate = now.difference(lastUpdate).inMilliseconds;
      final delayMs = _boundsThrottleMs - timeSinceLastUpdate;

      _boundsThrottleTimer = Timer(Duration(milliseconds: delayMs), () {
        // Double-check not disposed before updating
        if (!_isDisposed) {
          _lastBoundsUpdate = DateTime.now();
          boundsNotifier.value = bounds;
        }
      });
    }
  }

  /// Calculate screen position and visual bounds of a marker.
  /// Returns normalized (0-1) position of anchor point and pixel bounds.
  MarkerScreenPosition? calculateMarkerScreenPosition(
    AssetLocation asset,
    double screenWidth,
    double screenHeight,
  ) {
    final bounds = _lastVisibleBounds;
    if (bounds == null) return null;

    final lat = asset.latitude;
    final lng = asset.longitude;

    // Check if marker is within visible bounds
    if (lat < bounds.southwest.latitude ||
        lat > bounds.northeast.latitude ||
        lng < bounds.southwest.longitude ||
        lng > bounds.northeast.longitude) {
      return null; // Marker is outside visible area
    }

    // Calculate normalized position (0-1) within bounds
    final latRange = bounds.northeast.latitude - bounds.southwest.latitude;
    final lngRange = bounds.northeast.longitude - bounds.southwest.longitude;

    final anchorY = (bounds.northeast.latitude - lat) / latRange; // Top is 0
    final anchorX = (lng - bounds.southwest.longitude) / lngRange; // Left is 0

    // Convert to pixel coordinates
    final pixelX = anchorX * screenWidth;
    final pixelY = anchorY * screenHeight;

    // Get marker dimensions based on current marker type
    final markerDimensions = _getMarkerDimensions();
    final markerWidth = markerDimensions.width;
    final markerHeight = markerDimensions.height;

    // Calculate marker visual bounds
    // NOTE: Google Maps centers custom bitmap markers at (pixelX, pixelY)
    // So the marker extends (height/2) above and (height/2) below this point
    final markerTop = pixelY - (markerHeight / 2);
    final markerBottom = pixelY + (markerHeight / 2);
    final markerLeft = pixelX - (markerWidth / 2);
    final markerRight = pixelX + (markerWidth / 2);

    return MarkerScreenPosition(
      anchorX: anchorX,
      anchorY: anchorY,
      pixelX: pixelX,
      pixelY: pixelY,
      markerTop: markerTop,
      markerBottom: markerBottom,
      markerLeft: markerLeft,
      markerRight: markerRight,
    );
  }

  Future<void> initializeCustomMarkers(
    Color customerColor,
    Color yardColor, {
    Color? customerOutlineColor,
    Color? yardOutlineColor,
    double? devicePixelRatio,
  }) async {
    if (_markersInitialized) return;
    if (!_useCustomMarkers) return;

    // Store colors for on-demand marker creation (no pre-caching)
    _customerColor = customerColor;
    _yardColor = yardColor;
    _customerOutlineColor =
        customerOutlineColor ?? TransportAppColors.customerMarkerOutlineColor;
    _yardOutlineColor =
        yardOutlineColor ?? TransportAppColors.yardMarkerOutlineColor;

    _markersInitialized = true;
  }

  Future<void> buildMarkers() async {
    final buildId = ++_markerBuildCounter;

    // When tracking is active, only show the tracked asset marker
    final assetsToShow = _isTrackingActive
        ? _assets
            .where((a) => a.assetNumber == _trackingAssetNumber)
            .toList()
        : _assets;

    // Create all markers in parallel
    final markers = await Future.wait(
      assetsToShow.map((asset) {
        return _buildCustomMarker(
          asset,
          screenHeight: _lastScreenHeight,
          screenWidth: _lastScreenWidth,
        );
      }),
    );

    // Abort if a newer build was requested while we were building
    if (buildId != _markerBuildCounter) return;

    final markerSet = markers.toSet();
    // Cache the last built markers for synchronous access
    _lastBuiltMarkers.clear();
    _lastBuiltMarkers.addAll(markerSet);
    // Update marker notifier — triggers ValueListenableBuilder rebuild
    markersNotifier.value = markerSet;
  }

  /// Get last built markers synchronously (for widget rebuild)
  /// Returns previously cached markers while async build happens
  Set<Marker> getLastBuiltMarkers() => _lastBuiltMarkers;

  /// Update screen dimensions used for marker position calculations.
  /// Call this when layout constraints change.
  void updateScreenDimensions({
    required double width,
    required double height,
  }) {
    _lastScreenWidth = width;
    _lastScreenHeight = height;
  }

  Future<Marker> _buildCustomMarker(
    AssetLocation asset, {
    double screenHeight = 0,
    double screenWidth = 0,
  }) async {
    // Use custom markers if enabled, otherwise use default marker
    final icon = _useCustomMarkers
        ? await _getCustomMarkerIcon(asset.status, asset.assetNumber)
        : BitmapDescriptor.defaultMarker;

    return Marker(
      markerId: MarkerId(asset.id),
      position: LatLng(asset.latitude, asset.longitude),
      icon: icon,
      onTap: () {
        // Block marker tap if events are disabled
        if (eventBlockerRegistry.isBlocked) {
          return;
        }

        // Call with error handling to prevent focus issues
        try {
          selectAssetWithAutoPan(
            asset,
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          );
        } catch (e) {
          // Silently handle any errors during selection
        }
      },
      infoWindow: _useCustomInfoWindow
          ? InfoWindow.noText
          : InfoWindow(
              title: asset.assetNumber,
              snippet:
                  '${asset.assetTypeName ?? ''} / ${asset.yardCode ?? ''}',
            ),
    );
  }

  Future<BitmapDescriptor> _getCustomMarkerIcon(
    String? status,
    String assetNumber,
  ) async {
    final colorCategory = getMarkerColorForStatus(status);
    final cacheKey = '${assetNumber}_$colorCategory';

    // Return cached marker if exists
    if (_customMarkerCache.containsKey(cacheKey)) {
      return _customMarkerCache[cacheKey]!;
    }

    // Create marker on-demand using shared MapMarkerBuilder
    final isCustomer =
        colorCategory == StringConstants.assetLocatorMarkerColorCustomer;
    final color = isCustomer ? _customerColor : _yardColor;
    final outlineColor =
        isCustomer ? _customerOutlineColor : _yardOutlineColor;

    final marker = await MapMarkerBuilder.createMarkerIcon(
      icon: Icons.location_on,
      fillColor: color,
      outlineColor: outlineColor,
      label: assetNumber,
      labelFontWeight: FontWeight.w100,
    );

    // Cache with size limit
    _customMarkerCache[cacheKey] = marker;

    if (_customMarkerCache.length > _maxCacheSize) {
      final keysToRemove = _customMarkerCache.keys.take(100).toList();
      for (final key in keysToRemove) {
        _customMarkerCache.remove(key);
      }
    }

    return marker;
  }

  Future<CameraPosition> getDefaultCameraPosition() async {
    const fallbackViewport = LatLng(
      Constants.defaultMapLatitude,
      Constants.defaultMapLongitude,
    );
    try {
      final viewportResponse = await service.getDefaultViewport();

      if (viewportResponse.isSuccess && viewportResponse.data != null) {
        final viewport = viewportResponse.data!;
        final lat = viewport.latitude;
        final lng = viewport.longitude;
        final zoom = (viewport.zoom as num).toDouble();
        return CameraPosition(
          target: LatLng(lat, lng),
          zoom: zoom,
        );
      } else {
        // Fallback to UK coordinates if API fails
        return const CameraPosition(
          target: fallbackViewport,
          zoom: Constants.defaultContainerMapZoom,
        );
      }
    } catch (e) {
      // Fallback on error
      return const CameraPosition(
        target: fallbackViewport,
        zoom: Constants.defaultContainerMapZoom,
      );
    }
  }

  Future<void> fetchAssetsInBounds({
    required LatLngBounds bounds,
    required AssetGeoSearchRequest filterRequest,
  }) async {
    final requestId = ++_requestCounter;
    await _performFetch(bounds, filterRequest, requestId);
  }

  Future<void> _performFetch(
    LatLngBounds bounds,
    AssetGeoSearchRequest filterRequest,
    int requestId,
  ) async {
    _isApiFetching = true;
    _errorMessage = null;
    _assets = []; // Reset assets at start of fetch
    notifyListeners();

    try {
      final request = AssetGeoSearchRequest(
        latitudeNorthEast: bounds.northeast.latitude,
        longitudeNorthEast: bounds.northeast.longitude,
        latitudeSouthWest: bounds.southwest.latitude,
        longitudeSouthWest: bounds.southwest.longitude,
        assetType: assetType,
        assetNumbers: filterRequest.assetNumbers,
        accountCodes: filterRequest.accountCodes,
        yardCodes: filterRequest.yardCodes,
        typeIds: filterRequest.typeIds,
        statusTypes: filterRequest.statusTypes,
      );

      final assetLocations = await fetchAssetsFromService(request);

      // Check if this is still the latest request
      if (requestId != _requestCounter) {
        return;
      }

      _allAssets = assetLocations;
      _assets = _allAssets; // No client-side filtering
      _totalCount = _allAssets.length;
      _filteredCount = _assets.length;
      _errorMessage = null;

      // Rebuild markers with new asset data
      unawaited(buildMarkers());
    } catch (e) {
      // Check if this is still the latest request
      if (requestId != _requestCounter) {
        return;
      }
      // Preserve specific error message from exception
      _errorMessage = e.toString().replaceFirst('Exception: ', '');
      _allAssets = [];
      _assets = [];
    } finally {
      // Only clear loading if this is still the latest request
      if (requestId == _requestCounter) {
        _isApiFetching = false;
        notifyListeners();
      }
    }
  }

  Future<ApiResponse<Uint8List>> downloadAssetsExport() async {
    _isDownloading = true;
    _downloadErrorMessage = null;
    downloadingNotifier.value = true;
    downloadErrorNotifier.value = null;

    try {
      final bounds = await mapController.getVisibleRegion();

      final response = await service.downloadAssetsExport(
        latNE: bounds.northeast.latitude,
        lngNE: bounds.northeast.longitude,
        latSW: bounds.southwest.latitude,
        lngSW: bounds.southwest.longitude,
        assetType: assetType,
      );

      if (!response.isSuccess) {
        _downloadErrorMessage = 'Failed to download export.';
        downloadErrorNotifier.value = _downloadErrorMessage;
      }

      return response;
    } catch (e) {
      _downloadErrorMessage = 'Failed to download export.';
      downloadErrorNotifier.value = _downloadErrorMessage;
      return ApiResponse<Uint8List>(
        null,
        isSuccess: false,
        errorMessage: _downloadErrorMessage!,
      );
    } finally {
      _isDownloading = false;
      downloadingNotifier.value = false;
    }
  }

  /// Initialize map markers with given colors and styling
  Future<void> setupMapMarkers(double devicePixelRatio) async {
    // Store for default marker dimension calculations
    _devicePixelRatio = devicePixelRatio;

    await initializeCustomMarkers(
      TransportAppColors.customerStatBgColor,
      TransportAppColors.yardStatBgColor,
      customerOutlineColor: TransportAppColors.customerMarkerOutlineColor,
      yardOutlineColor: TransportAppColors.yardMarkerOutlineColor,
      devicePixelRatio: devicePixelRatio,
    );
  }

  /// Select an asset by its asset number and pan to it
  /// This method handles the auto-selection logic
  Future<void> selectAssetByAssetNumber(
    String assetNumber,
    double screenHeight,
    double screenWidth,
  ) async {
    if (assetNumber.isEmpty) return;

    // Give a small delay for API data to settle
    await Future<void>.delayed(const Duration(milliseconds: 500));

    // Find and select asset from loaded list
    AssetLocation? targetAsset;
    for (final asset in assets) {
      if (asset.assetNumber == assetNumber) {
        targetAsset = asset;
        break;
      }
    }

    if (targetAsset != null) {
      await selectAssetWithAutoPan(
        targetAsset,
        screenHeight: screenHeight,
        screenWidth: screenWidth,
      );
    }
  }

  /// Handle camera idle event
  /// This method handles the camera idle logic
  Future<void> handleCameraIdle(GoogleMapController mapController) async {
    final bounds = await mapController.getVisibleRegion();
    updateVisibleBounds(bounds);

    // Skip closing info window if we just auto-panned
    if (shouldSkipCameraIdle) {
      clearSkipCameraIdle();
      return;
    }

    // Check if marker is still visible
    final showWindow = showCustomInfoWindow;
    final hasAsset = selectedAsset != null;
    if (showWindow && hasAsset) {
      final markerPos = calculateMarkerScreenPosition(
        selectedAsset!,
        _lastScreenWidth,
        _lastScreenHeight,
      );

      if (markerPos == null) {
        // Marker went off-screen, close window
        closeCustomInfoWindow();
      }
    }
  }

  /// Start tracking an asset by fetching GPS data for a date/time range
  Future<void> startAssetTracking({
    required String assetNumber,
    required DateTime startTime,
    required DateTime endTime,
  }) async {
    _isTrackLoading = true;
    trackingLoadingNotifier.value = true;
    _trackErrorMessage = null;
    trackingErrorNotifier.value = null;

    try {
      final response = await service.getPositionsByTimeRange(
        assetNumber: assetNumber,
        fromDate: startTime.toUtc(),
        toDate: endTime.toUtc(),
        assetType: assetType,
      );

      if (_isDisposed) return;

      if (response.isSuccess && response.data != null) {
        final gpsPlayer = response.data!;
        _trackPoints =
            (gpsPlayer.locationRows ?? [])
                .where((row) => row.latitude != null && row.longitude != null)
                .toList();

        if (_trackPoints.isNotEmpty) {
          _trackingAssetNumber = assetNumber;
          _trackingStartTime = startTime;
          _trackingEndTime = endTime;
          _isTrackingActive = true;
          trackingActiveNotifier.value = true;
          _trackErrorMessage = null;
          trackingErrorNotifier.value = null;

          // Fit map bounds to show full track
          await _fitMapBoundsToTrack();
        } else {
          _trackErrorMessage = 'No GPS data available for selected time range';
          trackingErrorNotifier.value = _trackErrorMessage;
          _isTrackingActive = false;
          trackingActiveNotifier.value = false;
        }
      } else {
        _trackErrorMessage = 'Error loading GPS data.';
        trackingErrorNotifier.value = _trackErrorMessage;
        _isTrackingActive = false;
        trackingActiveNotifier.value = false;
        _trackPoints = [];
      }
    } catch (e) {
      _trackErrorMessage = 'Error loading GPS data.';
      trackingErrorNotifier.value = _trackErrorMessage;
      _isTrackingActive = false;
      trackingActiveNotifier.value = false;
      _trackPoints = [];
    } finally {
      _isTrackLoading = false;
      trackingLoadingNotifier.value = false;
      // Rebuild markers since tracking state changed
      unawaited(buildMarkers());
      if (_isTrackingActive) {
        unawaited(buildDirectionalArrowMarkers());
      }
      notifyListeners();
    }
  }

  /// Fit map bounds to show the entire track
  Future<void> _fitMapBoundsToTrack() async {
    if (_trackPoints.isEmpty) return;

    try {
      var minLat = _trackPoints[0].latitude!;
      var maxLat = _trackPoints[0].latitude!;
      var minLng = _trackPoints[0].longitude!;
      var maxLng = _trackPoints[0].longitude!;

      for (final point in _trackPoints) {
        if (point.latitude != null) {
          minLat = minLat > point.latitude! ? point.latitude! : minLat;
          maxLat = maxLat < point.latitude! ? point.latitude! : maxLat;
        }
        if (point.longitude != null) {
          minLng = minLng > point.longitude! ? point.longitude! : minLng;
          maxLng = maxLng < point.longitude! ? point.longitude! : maxLng;
        }
      }

      final bounds = LatLngBounds(
        southwest: LatLng(minLat, minLng),
        northeast: LatLng(maxLat, maxLng),
      );

      await mapController.animateCamera(
        CameraUpdate.newLatLngBounds(bounds, 100),
      );
    } catch (e) {
      // Silently fail if map animation fails
    }
  }

  /// Stop asset tracking and clear track data
  void stopAssetTracking() {
    _isTrackingActive = false;
    trackingActiveNotifier.value = false;
    _trackingAssetNumber = null;
    _trackingStartTime = null;
    _trackingEndTime = null;
    _trackPoints = [];
    _trackErrorMessage = null;
    trackingErrorNotifier.value = null;
    // Rebuild markers since tracking state changed
    unawaited(buildMarkers());
    arrowMarkersNotifier.value = {};
    notifyListeners();
  }

  /// Build polylines for the GPS track
  Set<Polyline> buildTrackPolylines() {
    if (!_isTrackingActive || _trackPoints.isEmpty) {
      return {};
    }
    return {
      buildSinglePolyline(
        polylineId: 'asset_track',
        geometry: _trackPoints,
        color: TransportAppColors.mapRouteColor,
      ),
    };
  }

  /// Returns polyline data for tooltip overlay
  List<PolylineData> getPolylineDataForTooltip() {
    if (!_isTrackingActive || _trackPoints.isEmpty) {
      return [];
    }
    return convertToPolylineData(_trackPoints, 
                                TransportAppColors.mapRouteColor);
  }

  /// Build directional arrow markers along the track polyline.
  /// Uses mixin for consistent arrow placement with stationary handling.
  Future<void> buildDirectionalArrowMarkers() async {
    if (!_isTrackingActive || _trackPoints.isEmpty) {
      arrowMarkersNotifier.value = {};
      return;
    }
    final zoom = await mapController.getZoomLevel();
    final arrows = await buildArrowMarkersForGeometry(
      geometryPoints: _trackPoints,
      zoom: zoom,
      color: PolylineRenderingMixin.arrowColor,
      markerIdPrefix: 'arrow',
      arrowCache: _arrowMarkerCache,
    );
    arrowMarkersNotifier.value = arrows;
  }

  @override
  void dispose() {
    // Mark as disposed first to prevent further updates
    _isDisposed = true;
    _boundsThrottleTimer?.cancel();
    hoverState.dispose();
    boundsNotifier.dispose();
    infoWindowHeightNotifier.dispose();
    selectedAssetNotifier.dispose();
    showInfoWindowNotifier.dispose();
    eventBlockerRegistry.dispose();
    markersNotifier.dispose();
    arrowMarkersNotifier.dispose();
    _customMarkerCache.clear();
    _arrowMarkerCache.clear();
    super.dispose();
  }
}
