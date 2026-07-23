import 'dart:async';

import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/utils/map/map_event_blocker_registry.dart';
import 'package:emr_one_transport/core/utils/map/polyline_geometry.dart';
import 'package:emr_one_transport/data/controllers/tracking/map_marker_builder.dart';
import 'package:emr_one_transport/data/controllers/tracking/polyline_hover_state.dart';
import 'package:emr_one_transport/data/controllers/tracking/polyline_rendering_mixin.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_filter_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/tracking/job_summary_model.dart';
import 'package:emr_one_transport/data/models/tracking/tracker_summary_model.dart';
import 'package:emr_one_transport/data/models/tracking/tracking_asset_location_response.dart';
import 'package:emr_one_transport/data/models/tracking/truck_position_model.dart';
import 'package:emr_one_transport/data/services/tracking/common_asset_locator_service.dart';
import 'package:emr_one_transport/data/services/tracking/trucks_locator_service.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TruckLocatorController extends ChangeNotifier
    with PolylineRenderingMixin {
  TruckLocatorController({
    required this.service,
    required this.commonService,
  });

  final TrucksLocatorService service;
  final CommonAssetLocatorService commonService;

  // Disposal tracking
  bool _isMounted = true;

  // Date range for jobs/geometry API
  DateTime _jobsFromDate = DateTime.now().subtract(
    const Duration(hours: Constants.jobsDefaultDateRangeHours),
  );
  DateTime _jobsToDate = DateTime.now();
  DateTime get jobsFromDate => _jobsFromDate;
  DateTime get jobsToDate => _jobsToDate;

  // Truck geometry for job paths (uses getPositionsByTimeRange)
  List<LocationRow>? _truckGeometry;
  List<LocationRow>? get truckGeometry => _truckGeometry;
  bool _isGeometryLoading = false;
  bool get isGeometryLoading => _isGeometryLoading;

  // Truck list state
  List<TruckPosition> _allTrucks = [];
  List<TruckPosition> get allTrucks => _allTrucks;

  int _movingTruckCount = 0;
  int get movingTruckCount => _movingTruckCount;

  int _stoppedTruckCount = 0;
  int get stoppedTruckCount => _stoppedTruckCount;

  int get totalTruckCount => _allTrucks.length;

  // Selected truck state
  TruckPosition? _selectedTruck;
  TruckPosition? get selectedTruck => _selectedTruck;

  TrackerSummary? _truckSummary;
  TrackerSummary? get truckSummary => _truckSummary;

  List<JobSummary> _recentJobs = [];
  List<JobSummary> get recentJobs => _recentJobs;

  // Loading and error state
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  bool _isSummaryLoading = false;
  bool get isSummaryLoading => _isSummaryLoading;

  bool _isRecentJobsLoading = false;
  bool get isRecentJobsLoading => _isRecentJobsLoading;

  // Custom VRM marker cache (key: '{vrm}_{isMoving}')
  final Map<String, BitmapDescriptor> _vrmMarkerCache = {};
  static const int _maxMarkerCacheSize = 1000;

  // Last built markers (for sync access while async building happens)
  Set<Marker> _lastBuiltMarkers = {};
  Set<Marker> getLastBuiltMarkers() => _lastBuiltMarkers;

  /// Gets all markers: truck markers + job endpoint markers + track arrows
  Set<Marker> getAllMarkers() {
    return {
      ..._lastBuiltMarkers,
      ...jobEndpointMarkersNotifier.value,
      ...trackArrowMarkersNotifier.value,
    };
  }

  /// Triggers async build of job endpoint markers and updates notifiers
  void triggerJobEndpointMarkerBuild() {
    if (_selectedTruck != null &&
        _truckGeometry != null &&
        _recentJobs.isNotEmpty) {
      buildJobEndpointMarkers().then((result) {
        if (_isMounted) {
          if (result.markers != jobEndpointMarkersNotifier.value) {
            jobEndpointMarkersNotifier.value = result.markers;
          }
          if (result.connectors != jobConnectorPolylinesNotifier.value) {
            jobConnectorPolylinesNotifier.value = result.connectors;
          }
        }
      });
    } else {
      if (jobEndpointMarkersNotifier.value.isNotEmpty) {
        jobEndpointMarkersNotifier.value = {};
      }
      if (jobConnectorPolylinesNotifier.value.isNotEmpty) {
        jobConnectorPolylinesNotifier.value = {};
      }
    }
  }

  /// Triggers async build of track arrow markers and updates notifier
  void triggerTrackArrowMarkerBuild() {
    if (_selectedTruck != null && _truckGeometry != null) {
      buildTrackArrowMarkers().then((markers) {
        if (_isMounted && markers != trackArrowMarkersNotifier.value) {
          trackArrowMarkersNotifier.value = markers;
        }
      });
    } else if (trackArrowMarkersNotifier.value.isNotEmpty) {
      trackArrowMarkersNotifier.value = {};
    }
  }

  /// Handle polyline hover detection - delegates to hoverState
  void handlePolylineHover({
    required Offset cursorPosition,
    required double mapWidth,
    required double mapHeight,
  }) {
    if (!_isMounted) return;

    hoverState.handleHover(
      cursorPosition: cursorPosition,
      mapWidth: mapWidth,
      mapHeight: mapHeight,
      isBlocked: eventBlockerRegistry.isBlocked,
      bounds: _lastVisibleBounds,
      polylineData: getPolylineDataForTooltip(),
      detectHover: detectPolylineHover,
    );
  }

  /// Clear polyline hover state - delegates to hoverState
  void clearPolylineHover() {
    hoverState.clear();
  }

  // Map controller
  late GoogleMapController mapController;

  // Event blocker registry for managing map event blocking state
  // Each map screen has its own instance to avoid cross-screen contamination
  final MapEventBlockerRegistry eventBlockerRegistry =
      MapEventBlockerRegistry();

  final ValueNotifier<int> remainingSecondsNotifier =
      ValueNotifier<int>(Constants.autoRefreshIntervalSeconds);
  final ValueNotifier<bool> isLoadingNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isSummaryLoadingNotifier =
      ValueNotifier<bool>(false);
  final ValueNotifier<bool> isRecentJobsLoadingNotifier =
      ValueNotifier<bool>(false);
  final ValueNotifier<bool> isGeometryLoadingNotifier =
      ValueNotifier<bool>(false);

  // Jobs date range notifiers for reactive UI updates
  final ValueNotifier<DateTime> jobsFromDateNotifier = ValueNotifier<DateTime>(
    DateTime.now().subtract(
      const Duration(hours: Constants.jobsDefaultDateRangeHours),
    ),
  );
  final ValueNotifier<DateTime> jobsToDateNotifier = ValueNotifier<DateTime>(
    DateTime.now(),
  );

  // Job selection state - using ValueNotifiers for optimized UI updates
  final ValueNotifier<Set<int>> selectedJobsNotifier =
      ValueNotifier<Set<int>>({});
  Set<int> get selectedJobNumbers => selectedJobsNotifier.value;

  final ValueNotifier<int?> highlightedJobNotifier = ValueNotifier<int?>(null);
  int? get highlightedJobNumber => highlightedJobNotifier.value;

  // Map job number to its assigned color index (for consistent colors)
  final Map<int, int> _jobColorAssignments = {};

  // Cached markers for efficient rebuilds
  final ValueNotifier<Set<Marker>> jobEndpointMarkersNotifier =
      ValueNotifier<Set<Marker>>({});
  final ValueNotifier<Set<Marker>> trackArrowMarkersNotifier =
      ValueNotifier<Set<Marker>>({});

  // Connector polylines for offset markers (when start/end overlap)
  final ValueNotifier<Set<Polyline>> jobConnectorPolylinesNotifier =
      ValueNotifier<Set<Polyline>>({});

  // Polyline hover state (for tooltip display) - uses composition
  late final PolylineHoverState<int> hoverState = PolylineHoverState<int>(
    metadataFinder: findJobNumberForTimestamp,
  );

  // Backward-compatible notifier accessors for widgets
  ValueNotifier<DateTime?> get hoveredTimestampNotifier =>
      hoverState.timestampNotifier;
  ValueNotifier<Offset?> get cursorPositionNotifier =>
      hoverState.positionNotifier;
  ValueNotifier<int?> get hoveredJobNumberNotifier =>
      hoverState.metadataNotifier;

  // Auto-refresh timer (disabled by default, logic preserved for future use)
  Timer? _refreshTimer;
  Timer? _countdownTimer;
  bool _autoRefreshEnabled = false;
  int _remainingSeconds = Constants.autoRefreshIntervalSeconds;

  static const Duration _autoRefreshInterval =
      Duration(seconds: Constants.autoRefreshIntervalSeconds);

  void _notifyListenersIfMounted() {
    if (_isMounted) {
      notifyListeners();
    }
  }

  /// Sets the date range for loading jobs/geometry.
  /// Returns true if valid, false if date range exceeds max days.
  bool setJobsDateRange(DateTime from, DateTime to) {
    final difference = to.difference(from);
    if (difference.inDays > Constants.truckTrackingMaxDateRangeDays) {
      return false;
    }
    _jobsFromDate = from;
    _jobsToDate = to;
    jobsFromDateNotifier.value = from;
    jobsToDateNotifier.value = to;
    _notifyListenersIfMounted();
    return true;
  }

  /// Resets jobs date range to default
  void resetJobsDateRange() {
    _jobsToDate = DateTime.now();
    _jobsFromDate = _jobsToDate.subtract(
      const Duration(hours: Constants.jobsDefaultDateRangeHours),
    );
    jobsFromDateNotifier.value = _jobsFromDate;
    jobsToDateNotifier.value = _jobsToDate;
    _notifyListenersIfMounted();
  }

  /// Reloads jobs and geometry for the current jobs date range.
  /// Call this after changing jobsFromDate/jobsToDate.
  Future<void> reloadJobsAndGeometry() async {
    if (_selectedTruck?.assetNumber == null) return;

    _isRecentJobsLoading = true;
    _isGeometryLoading = true;
    isRecentJobsLoadingNotifier.value = true;
    isGeometryLoadingNotifier.value = true;
    _notifyListenersIfMounted();

    await Future.wait([
      _loadRecentJobsInternal(_selectedTruck!.assetNumber!),
      _loadTruckGeometryInternal(_selectedTruck!.assetNumber!),
    ]);

    _notifyListenersIfMounted();
  }

  // =========================================================================
  // Job Selection Methods
  // =========================================================================

  /// Toggle job selection. Returns true if job is now selected.
  bool toggleJobSelection(int jobNumber) {
    final currentSelection = Set<int>.from(selectedJobsNotifier.value);
    final wasSelected = currentSelection.contains(jobNumber);

    if (wasSelected) {
      currentSelection.remove(jobNumber);
      _jobColorAssignments.remove(jobNumber);
      highlightedJobNotifier.value = null;
    } else {
      currentSelection.add(jobNumber);
      _assignColorToJob(jobNumber);
    }

    selectedJobsNotifier.value = currentSelection;
    return !wasSelected;
  }

  /// Clear all job selections (shows full path)
  void clearJobSelection() {
    _jobColorAssignments.clear();
    selectedJobsNotifier.value = {};
  }

  /// Set highlighted job for hover preview (null to clear)
  void setHighlightedJob(int? jobNumber) {
    if (highlightedJobNotifier.value != jobNumber) {
      highlightedJobNotifier.value = jobNumber;
    }
  }

  /// Get color for a job (by its assigned color index)
  Color getJobColor(int jobNumber) {
    final colorIndex = _jobColorAssignments[jobNumber] ?? 0;
    return TransportAppColors
        .jobPathColors[colorIndex % TransportAppColors.jobPathColors.length];
  }

  /// Assign next available color to a job
  void _assignColorToJob(int jobNumber) {
    if (_jobColorAssignments.containsKey(jobNumber)) return;

    // Find next unused color index
    final usedIndices = _jobColorAssignments.values.toSet();
    var nextIndex = 0;
    while (usedIndices.contains(nextIndex)) {
      nextIndex++;
    }
    _jobColorAssignments[jobNumber] = nextIndex;
  }

  /// Check if a job is selected
  bool isJobSelected(int jobNumber) =>
      selectedJobsNotifier.value.contains(jobNumber);

  // =========================================================================
  // Job Sorting Methods
  // =========================================================================

  /// Compare dates descending (nulls last)
  int _compareDatesDesc(DateTime? a, DateTime? b) {
    if (a == null && b == null) return 0;
    if (a == null) return 1;
    if (b == null) return -1;
    return b.compareTo(a);
  }

  /// Returns jobs sorted by scheduledDate in descending order.
  List<JobSummary> getSortedJobsForDisplay() {
    if (_recentJobs.isEmpty) return [];
    final sorted = List<JobSummary>.from(_recentJobs);
    sorted.sort((a, b) => _compareDatesDesc(a.scheduledDate, b.scheduledDate));
    return sorted;
  }

  /// Auto-select the latest started job on initial load.
  /// Fallback: latest completed job, then first job overall.
  void _autoSelectFirstJob() {
    if (_recentJobs.isEmpty || selectedJobNumbers.isNotEmpty) return;

    final sortedJobs = getSortedJobsForDisplay();
    if (sortedJobs.isEmpty) return;

    // Find the latest started job (list is sorted by scheduledDate desc)
    JobSummary? startedJob;
    JobSummary? completedJob;
    for (final job in sortedJobs) {
      final status = job.jobStatus?.toLowerCase();
      if (startedJob == null &&
          status == JobStatus.started.apiValue.toLowerCase()) {
        startedJob = job;
        break;
      }
      if (completedJob == null &&
          status == JobStatus.completed.apiValue.toLowerCase()) {
        completedJob = job;
      }
    }

    final jobToSelect = startedJob ?? completedJob ?? sortedJobs.first;
    if (jobToSelect.jobNumber != null) {
      toggleJobSelection(jobToSelect.jobNumber!);
    }
  }

  /// Finds the job number that contains the given timestamp.
  /// Returns null if no job matches.
  /// Handles null jobEndTime by treating it as ongoing (use current time).
  /// Public for use by PolylineHoverState metadata finder.
  int? findJobNumberForTimestamp(DateTime timestamp) {
    for (final job in _recentJobs) {
      final startTime = job.jobStartTime;
      if (startTime == null) continue;

      final endTime = job.jobEndTime ?? DateTime.now().toUtc();

      // Check if timestamp falls within job time range
      if (!timestamp.isBefore(startTime) && !timestamp.isAfter(endTime)) {
        return job.jobNumber;
      }
    }
    return null;
  }

  void selectTruck(TruckPosition truck) {
    _selectedTruck = truck;

    if (truck.geoLocation != null) {
      mapController.animateCamera(
        CameraUpdate.newLatLng(
          LatLng(
            truck.geoLocation!.latitude ?? 0.0,
            truck.geoLocation!.longitude ?? 0.0,
          ),
        ),
      );
    }

    _notifyListenersIfMounted();

    if (truck.assetNumber != null) {
      _loadTruckDataBatched(truck.assetNumber!);
    }
  }

  Future<void> _loadTruckDataBatched(String assetNumber) async {
    _isSummaryLoading = true;
    _isRecentJobsLoading = true;
    _isGeometryLoading = true;
    isSummaryLoadingNotifier.value = true;
    isRecentJobsLoadingNotifier.value = true;
    isGeometryLoadingNotifier.value = true;

    await Future.wait([
      _loadTruckSummaryInternal(assetNumber),
      _loadRecentJobsInternal(assetNumber),
      _loadTruckGeometryInternal(assetNumber),
    ]);

    _notifyListenersIfMounted();
  }

  /// Reload data for the currently selected truck (summary, jobs, geometry)
  Future<void> reloadSelectedTruckData() async {
    if (_selectedTruck?.assetNumber == null) return;
    await _loadTruckDataBatched(_selectedTruck!.assetNumber!);
  }

  Future<void> _loadTruckSummaryInternal(String assetNumber) async {
    try {
      final response = await service.getTruckSummary(assetNumber: assetNumber);
      if (!_isMounted) return;

      if (response.isSuccess && response.data != null) {
        _truckSummary = response.data;
      } else {
        _truckSummary = null;
      }
    } catch (e) {
      _truckSummary = null;
    } finally {
      _isSummaryLoading = false;
      isSummaryLoadingNotifier.value = false;
    }
  }

  Future<void> _loadRecentJobsInternal(String assetNumber) async {
    try {
      final response = await service.getTruckJobsByDateRange(
        assetNumber: assetNumber,
        fromDate: _jobsFromDate,
        toDate: _jobsToDate,
      );
      if (!_isMounted) return;

      if (response.isSuccess && response.data != null) {
        _recentJobs = response.data!;
      } else {
        _recentJobs = [];
      }
    } catch (e) {
      _recentJobs = [];
    } finally {
      _isRecentJobsLoading = false;
      isRecentJobsLoadingNotifier.value = false;
      // Auto-select first job after loading
      _autoSelectFirstJob();
    }
  }

  Future<void> _loadTruckGeometryInternal(String assetNumber) async {
    try {
      final response = await commonService.getPositionsByTimeRange(
        assetNumber: assetNumber,
        fromDate: _jobsFromDate,
        toDate: _jobsToDate,
      );
      if (!_isMounted) return;

      if (response.isSuccess && response.data != null) {
        _truckGeometry = response.data!.locationRows;
      } else {
        _truckGeometry = null;
      }
    } catch (e) {
      _truckGeometry = null;
    } finally {
      _isGeometryLoading = false;
      isGeometryLoadingNotifier.value = false;
    }
  }

  void deselectTruck() {
    _selectedTruck = null;
    _truckSummary = null;
    _recentJobs = [];
    _truckGeometry = null;
    // Clear job selections when truck is deselected
    clearJobSelection();
    highlightedJobNotifier.value = null;
    // Clear map visualization notifiers
    jobEndpointMarkersNotifier.value = {};
    trackArrowMarkersNotifier.value = {};
    jobConnectorPolylinesNotifier.value = {};
    hoverState.clear();
    _notifyListenersIfMounted();
  }

  void toggleAutoRefresh() {
    _autoRefreshEnabled = !_autoRefreshEnabled;
    if (_autoRefreshEnabled) {
      startAutoRefresh();
    } else {
      stopAutoRefresh();
    }
    _notifyListenersIfMounted();
  }

  void clearTrucks() {
    _allTrucks = [];
    _movingTruckCount = 0;
    _stoppedTruckCount = 0;
    _selectedTruck = null;
    _truckSummary = null;
    _recentJobs = [];
    _truckGeometry = null;
    _errorMessage = null;
    resetJobsDateRange();
    _notifyListenersIfMounted();
  }

  Future<CameraPosition> getDefaultCameraPosition() async {
    const fallbackViewport = LatLng(
      Constants.defaultMapLatitude,
      Constants.defaultMapLongitude,
    );
    try {
      final viewportResponse = await commonService.getDefaultViewport();
      if (viewportResponse.isSuccess && viewportResponse.data != null) {
        final viewport = viewportResponse.data!;
        return CameraPosition(
          target: LatLng(viewport.latitude, viewport.longitude),
          zoom: (viewport.zoom as num).toDouble(),
        );
      }
    } catch (_) {}
    return const CameraPosition(
      target: fallbackViewport,
      zoom: Constants.defaultTruckMapZoom,
    );
  }

  Future<void> fitMapBoundsToAllTrucks() async {
    final trucksWithLocation = _allTrucks
        .where(
          (t) =>
              t.geoLocation?.latitude != null &&
              t.geoLocation?.longitude != null,
        )
        .toList();

    if (trucksWithLocation.isEmpty) return;

    var minLat = trucksWithLocation[0].geoLocation!.latitude!;
    var maxLat = minLat;
    var minLng = trucksWithLocation[0].geoLocation!.longitude!;
    var maxLng = minLng;

    for (final truck in trucksWithLocation) {
      final lat = truck.geoLocation!.latitude!;
      final lng = truck.geoLocation!.longitude!;
      if (lat < minLat) minLat = lat;
      if (lat > maxLat) maxLat = lat;
      if (lng < minLng) minLng = lng;
      if (lng > maxLng) maxLng = lng;
    }

    final bounds = LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );

    await mapController.animateCamera(
      CameraUpdate.newLatLngBounds(bounds, 100),
    );
  }

  Future<void> loadTrucksByYards(List<String> yardCodes) async {
    _isLoading = true;
    _errorMessage = null;
    _allTrucks = [];
    _notifyListenersIfMounted();

    try {
      // Don't send dates - backend defaults to 24 hours
      final response = await service.getTruckPosition(
        yardCodes: yardCodes,
      );

      // Check if widget is still mounted before updating state
      if (!_isMounted) return;

      if (response.isSuccess && response.data != null) {
        _allTrucks = response.data!;
        _updateTruckCounts();
        _errorMessage = null;
        // Fit map to show all trucks after initial load
        await fitMapBoundsToAllTrucks();
      } else {
        _errorMessage = 'Error loading trucks.';
        _allTrucks = [];
      }
    } catch (e) {
      _errorMessage = 'Error loading trucks.';
      _allTrucks = [];
    } finally {
      _isLoading = false;
      _notifyListenersIfMounted();
    }
  }

  Future<void> refreshTruckPositions(List<String> yardCodes) async {
    if (_isLoading || !_isMounted) return;

    _isLoading = true;
    _errorMessage = null;
    isLoadingNotifier.value = true;

    try {
      // Don't send dates - backend defaults to 24 hours
      final response = await service.getTruckPosition(
        yardCodes: yardCodes,
      );

      // Check if widget is still mounted before updating state
      if (!_isMounted) return;

      if (response.isSuccess && response.data != null) {
        _allTrucks = response.data!;
        _updateTruckCounts();

        // Update selected truck if it's in the new list
        if (_selectedTruck != null) {
          final updatedTruck = _allTrucks.firstWhere(
            (t) => t.assetNumber == _selectedTruck!.assetNumber,
            orElse: () => _selectedTruck!,
          );
          _selectedTruck = updatedTruck;
        }

        _errorMessage = null;
      } else {
        _errorMessage = 'Error refreshing trucks.';
      }
    } catch (e) {
      _errorMessage = 'Error refreshing trucks.';
    } finally {
      _isLoading = false;
      isLoadingNotifier.value = false;
      _notifyListenersIfMounted();
    }
  }

  /// Builds truck markers asynchronously with custom VRM labels.
  /// Returns immediately, updating _lastBuiltMarkers when complete.
  /// Call getLastBuiltMarkers() for sync access to current markers.
  Future<Set<Marker>> buildTruckMarkers() async {
    // If a truck is selected, only show that truck's marker
    final trucksToShow = _selectedTruck != null
        ? _allTrucks.where((t) => t.assetNumber == _selectedTruck!.assetNumber)
        : _allTrucks;

    final markers = await Future.wait(
      trucksToShow
          .where((truck) => truck.geoLocation != null)
          .map((truck) async {
        final isMoving = (truck.speed ?? 0) > 0;

        final geoLocation = truck.geoLocation!;
        final markerPosition = LatLng(
          geoLocation.latitude ?? 0,
          geoLocation.longitude ?? 0,
        );

        // Get or create custom marker with VRM
        final icon = await _getOrCreateVrmMarker(
          vrm: truck.vrm ?? '',
          isMoving: isMoving,
        );

        return Marker(
          markerId: MarkerId(truck.assetNumber ?? ''),
          position: markerPosition,
          icon: icon,
          rotation: truck.heading ?? 0,
          onTap: () {
            if (eventBlockerRegistry.isBlocked) return;
            selectTruck(truck);
          },
        );
      }),
    );
    
    if (!_isMounted) return _lastBuiltMarkers;

    _lastBuiltMarkers = markers.toSet();
    _notifyListenersIfMounted();
    return _lastBuiltMarkers;
  }

  /// Gets cached VRM marker or creates a new one using MapMarkerBuilder.
  Future<BitmapDescriptor> _getOrCreateVrmMarker({
    required String vrm,
    required bool isMoving,
  }) async {
    final cacheKey = '${vrm}_$isMoving';

    if (_vrmMarkerCache.containsKey(cacheKey)) {
      return _vrmMarkerCache[cacheKey]!;
    }

    final color = isMoving
        ? TransportAppColors.yardStatBgColor
        : TransportAppColors.truckStoppedBgColor;
    final outlineColor = isMoving
        ? TransportAppColors.truckMovingMarkerOutlineColor
        : TransportAppColors.truckStoppedMarkerOutlineColor;

    final marker = await MapMarkerBuilder.createMarkerIcon(
      icon: Icons.location_on,
      fillColor: color,
      outlineColor: outlineColor,
      label: vrm,
      iconFontSize: 42,
      canvasWidth: 50,
    );

    // Cache with size limit
    _vrmMarkerCache[cacheKey] = marker;
    if (_vrmMarkerCache.length > _maxMarkerCacheSize) {
      final keysToRemove = _vrmMarkerCache.keys.take(50).toList();
      for (final key in keysToRemove) {
        _vrmMarkerCache.remove(key);
      }
    }

    return marker;
  }

  Set<Polyline> buildRoutePolylines() {
    if (_selectedTruck == null ||
        _truckGeometry == null ||
        _truckGeometry!.isEmpty) {
      return {};
    }

    // If no jobs selected, show full track polyline
    if (selectedJobNumbers.isEmpty) {
      return {
        buildSinglePolyline(
          polylineId: 'truck_track',
          geometry: _truckGeometry!,
          color: TransportAppColors.mapRouteColor,
        ),
      };
    }

    // Show only selected jobs' paths
    return _buildSelectedJobPolylines();
  }

  /// Builds polylines only for selected jobs.
  /// If a job is highlighted (hover), only show that job's path.
  Set<Polyline> _buildSelectedJobPolylines() {
    final polylines = <Polyline>{};
    final geometry = _truckGeometry;
    if (geometry == null || geometry.isEmpty) return polylines;

    final sortedGeometry = sortGeometryByTimestamp(geometry);

    // If highlighting a specific job, only show that one
    final jobsToShow = highlightedJobNumber != null
        ? _recentJobs.where((j) => j.jobNumber == highlightedJobNumber)
        : _recentJobs.where(
            (j) =>
                j.jobNumber != null &&
                selectedJobNumbers.contains(j.jobNumber),
          );

    for (final job in jobsToShow) {
      final startTime = job.jobStartTime;
      final endTime = job.jobEndTime;
      if (startTime == null) continue;

      final jobPoints = getGeometryForTimeRange(
        sortedGeometry,
        startTime,
        endTime ?? DateTime.now(),
      );
      if (jobPoints.length < 2) continue;

      polylines.add(
        buildSinglePolyline(
          polylineId: 'job_path_${job.jobNumber}',
          geometry: jobPoints,
          color: getJobColor(job.jobNumber!),
          width: 4,
        ),
      );
    }

    return polylines;
  }

  /// Builds start/end markers for job paths with job numbers.
  /// Green marker at start (if jobStartTime exists).
  /// Red marker at end (if jobEndTime exists).
  /// Handles overlapping markers by offsetting positions and adding connectors.
  Future<({Set<Marker> markers, Set<Polyline> connectors})>
      buildJobEndpointMarkers() async {
    final markers = <Marker>{};
    final connectors = <Polyline>{};
    final geometry = _truckGeometry;

    if (_selectedTruck == null ||
        geometry == null ||
        geometry.isEmpty ||
        _recentJobs.isEmpty) {
      return (markers: markers, connectors: connectors);
    }

    // Get current zoom level for overlap detection
    double zoom;
    try {
      zoom = await mapController.getZoomLevel();
    } catch (_) {
      zoom = 14.0; // Default zoom
    }

    // Get truck marker position for overlap detection
    final truckGeo = _selectedTruck?.geoLocation;
    final truckPosition = (truckGeo?.latitude != null 
        && truckGeo?.longitude != null)
        ? LatLng(truckGeo!.latitude!, truckGeo.longitude!)
        : null;

    // Sort geometry by locationTimestamp
    final sortedGeometry = List<LocationRow>.from(geometry)
      ..sort((a, b) {
        final aTime = a.locationTimestamp ?? DateTime(1970);
        final bTime = b.locationTimestamp ?? DateTime(1970);
        return aTime.compareTo(bTime);
      });

    // Filter jobs: if jobs are selected, only show markers for selected jobs
    // If highlighting a job, only show that job's markers
    // If no selection, show all job markers
    final jobsToShow = highlightedJobNumber != null
        ? _recentJobs.where((j) => j.jobNumber == highlightedJobNumber)
        : selectedJobNumbers.isEmpty
            ? _recentJobs
            : _recentJobs.where(
                (j) =>
                    j.jobNumber != null &&
                    selectedJobNumbers.contains(j.jobNumber),
              );

    for (final job in jobsToShow) {
      final startTime = job.jobStartTime;
      final endTime = job.jobEndTime;
      final jobNumber = job.jobNumber?.toString() ?? '';
      final jobNumberInt = job.jobNumber ?? 0;

      if (startTime == null) continue;

      final jobPoints = getGeometryForTimeRange(
        sortedGeometry,
        startTime,
        endTime ?? DateTime.now(),
      );

      if (jobPoints.isEmpty) continue;

      // Get start point
      final startPoint = jobPoints.first;
      if (startPoint.latitude == null || startPoint.longitude == null) {
        continue;
      }

      final startPosition = LatLng(startPoint.latitude!, startPoint.longitude!);

      // Check if job has ended and has multiple points
      final hasEnded = endTime != null && jobPoints.length > 1;
      LatLng? endPosition;

      if (hasEnded) {
        final endPoint = jobPoints.last;
        if (endPoint.latitude != null && endPoint.longitude != null) {
          endPosition = LatLng(endPoint.latitude!, endPoint.longitude!);
        }
      }

      // Check all overlap conditions using mixin methods
      final startEndOverlap = endPosition != null &&
          areMarkersOverlapping(
            position1: startPosition,
            position2: endPosition,
            zoom: zoom,
          );
      final startOverlapsTruck = truckPosition != null &&
          areMarkersOverlapping(
            position1: startPosition,
            position2: truckPosition,
            zoom: zoom,
          );
      final endOverlapsTruck = endPosition != null &&
          truckPosition != null &&
          areMarkersOverlapping(
            position1: endPosition,
            position2: truckPosition,
            zoom: zoom,
          );

      // Calculate final positions
      var finalStartPosition = startPosition;
      var finalEndPosition = endPosition ?? startPosition;

      // Handle start/end overlapping each other
      if (startEndOverlap) {
        final centerLat =
            (startPosition.latitude + endPosition.latitude) / 2;
        final centerLng =
            (startPosition.longitude + endPosition.longitude) / 2;
        final centerPosition = LatLng(centerLat, centerLng);

        final offsets = calculateOverlapOffsetPositions(
          originalPosition: centerPosition,
          zoom: zoom,
        );

        finalStartPosition = offsets.offsetPosition1;
        finalEndPosition = offsets.offsetPosition2;

        // Add connector polylines for both
        connectors.add(createConnectorPolyline(
          polylineId: 'job_connector_start_$jobNumber',
          actualPosition: startPosition,
          offsetPosition: finalStartPosition,
          color: getJobColor(jobNumberInt),
        ));
        connectors.add(createConnectorPolyline(
          polylineId: 'job_connector_end_$jobNumber',
          actualPosition: endPosition,
          offsetPosition: finalEndPosition,
          color: getJobColor(jobNumberInt),
        ));
      } else {
        // Handle individual overlaps with truck marker
        if (startOverlapsTruck) {
          finalStartPosition = calculateBearingOffsetPosition(
            markerPosition: startPosition,
            referencePosition: truckPosition,
            zoom: zoom,
          );
          connectors.add(createConnectorPolyline(
            polylineId: 'job_connector_start_$jobNumber',
            actualPosition: startPosition,
            offsetPosition: finalStartPosition,
            color: getJobColor(jobNumberInt),
          ));
        }

        if (endOverlapsTruck) {
          finalEndPosition = calculateBearingOffsetPosition(
            markerPosition: endPosition,
            referencePosition: truckPosition,
            zoom: zoom,
          );
          connectors.add(createConnectorPolyline(
            polylineId: 'job_connector_end_$jobNumber',
            actualPosition: endPosition,
            offsetPosition: finalEndPosition,
            color: getJobColor(jobNumberInt),
          ));
        }
      }

      // Create start marker (green)
      final startIcon = await _getOrCreateJobEndpointMarker(
        label: 'S-$jobNumber',
        isStart: true,
      );
      markers.add(
        Marker(
          markerId: MarkerId('job_start_$jobNumber'),
          position: finalStartPosition,
          icon: startIcon,
        ),
      );

      // Create end marker (red) - only if job has ended
      if (hasEnded && endPosition != null) {
        final endIcon = await _getOrCreateJobEndpointMarker(
          label: 'E-$jobNumber',
          isStart: false,
        );
        markers.add(
          Marker(
            markerId: MarkerId('job_end_$jobNumber'),
            position: finalEndPosition,
            icon: endIcon,
          ),
        );
      }
    }

    return (markers: markers, connectors: connectors);
  }

  // Cache for job endpoint markers
  final Map<String, BitmapDescriptor> _jobEndpointMarkerCache = {};
  static const int _maxJobEndpointCacheSize = 200;

  /// Gets cached job endpoint marker or 
  /// creates a new one using MapMarkerBuilder.
  Future<BitmapDescriptor> _getOrCreateJobEndpointMarker({
    required String label,
    required bool isStart,
  }) async {
    final cacheKey = '${label}_$isStart';
    if (_jobEndpointMarkerCache.containsKey(cacheKey)) {
      return _jobEndpointMarkerCache[cacheKey]!;
    }

    final color = isStart
        ? TransportAppColors.jobStartMarkerColor
        : TransportAppColors.jobEndMarkerColor;
    final outlineColor = isStart
        ? TransportAppColors.jobStartMarkerOutlineColor
        : TransportAppColors.jobEndMarkerOutlineColor;

    final marker = await MapMarkerBuilder.createMarkerIcon(
      icon: Icons.flag,
      fillColor: color,
      outlineColor: outlineColor,
      label: label,
      trimLength: null,
      labelFontSize: 9,
      labelFontWeight: FontWeight.bold,
      iconFontSize: 32,
      canvasHeight: 50,
    );

    // Cache with size limit
    _jobEndpointMarkerCache[cacheKey] = marker;
    if (_jobEndpointMarkerCache.length > _maxJobEndpointCacheSize) {
      final keysToRemove = _jobEndpointMarkerCache.keys.take(50).toList();
      for (final key in keysToRemove) {
        _jobEndpointMarkerCache.remove(key);
      }
    }

    return marker;
  }

  // Arrow marker cache (uses constants from PolylineRenderingMixin)
  final Map<String, BitmapDescriptor> _arrowMarkerCache = {};

  /// Builds direction arrow markers along job paths.
  /// Uses heading from coordinate data to show travel direction.
  Future<Set<Marker>> buildJobPathArrowMarkers() async {
    final markers = <Marker>{};
    final geometry = _truckGeometry;

    if (_selectedTruck == null ||
        geometry == null ||
        geometry.isEmpty ||
        _recentJobs.isEmpty) {
      return markers;
    }

    // Sort geometry by locationTimestamp
    final sortedGeometry = sortGeometryByTimestamp(geometry);

    // Get current zoom level for spacing calculation
    double zoom;
    try {
      zoom = await mapController.getZoomLevel();
    } catch (_) {
      zoom = 12.0;
    }

    for (var jobIndex = 0; jobIndex < _recentJobs.length; jobIndex++) {
      final job = _recentJobs[jobIndex];
      final startTime = job.jobStartTime;
      final endTime = job.jobEndTime;

      if (startTime == null) continue;

      final jobPoints = getGeometryForTimeRange(
        sortedGeometry,
        startTime,
        endTime ?? DateTime.now(),
      );

      if (jobPoints.length < 2) continue;

      // Get the color for this job's arrows (match polyline color)
      final color = TransportAppColors
          .jobPathColors[jobIndex % TransportAppColors.jobPathColors.length];

      // Place arrows at intervals along the job path
      LatLng? lastArrowPos;
      for (var i = 0; i < jobPoints.length - 1; i++) {
        final coord = jobPoints[i];
        if (coord.latitude == null || coord.longitude == null) continue;

        final currentPos = LatLng(coord.latitude!, coord.longitude!);

        // Calculate screen distance from last arrow (using mixin method)
        if (lastArrowPos != null) {
          final screenDist =
              calculateScreenPixels(lastArrowPos, currentPos, zoom);
          if (screenDist < PolylineRenderingMixin.arrowDefaultSpacingPixels) {
            continue;
          }
        }

        // Use heading from coordinate data, or calculate from next point
        double heading;
        if (coord.heading != null) {
          heading = coord.heading!;
        } else {
          final nextCoord = jobPoints[i + 1];
          if (nextCoord.latitude == null || nextCoord.longitude == null) {
            continue;
          }
          heading = calculateBearing(
            currentPos,
            LatLng(nextCoord.latitude!, nextCoord.longitude!),
          );
        }

        final icon = await getArrowIcon(heading, color, _arrowMarkerCache);

        markers.add(
          Marker(
            markerId: MarkerId('arrow_${job.jobNumber}_$i'),
            position: currentPos,
            icon: icon,
            anchor: const Offset(0.5, 0.5),
            flat: true,
          ),
        );

        lastArrowPos = currentPos;
      }
    }

    return markers;
  }

  /// Builds zoom-adaptive direction arrow markers.
  /// If jobs are selected, shows arrows only on selected jobs' paths.
  /// Otherwise shows arrows on the full track.
  Future<Set<Marker>> buildTrackArrowMarkers() async {
    final geometry = _truckGeometry;
    if (_selectedTruck == null || geometry == null || geometry.isEmpty) {
      return {};
    }

    // Get current zoom level
    double zoom;
    try {
      zoom = await mapController.getZoomLevel();
    } catch (_) {
      zoom = 12.0;
    }

    final sortedGeometry = sortGeometryByTimestamp(geometry);

    // If jobs are selected, build arrows for selected job paths only
    if (selectedJobNumbers.isNotEmpty) {
      return _buildSelectedJobArrowMarkers(sortedGeometry, zoom);
    }

    // No jobs selected - use mixin for full track with stationary handling
    return buildArrowMarkersForGeometry(
      geometryPoints: sortedGeometry,
      zoom: zoom,
      color: PolylineRenderingMixin.arrowColor,
      markerIdPrefix: 'track_arrow',
      arrowCache: _arrowMarkerCache,
    );
  }

  /// Builds arrow markers only for selected jobs' paths.
  /// Filters by highlighted job for hover, or selected jobs otherwise.
  Future<Set<Marker>> _buildSelectedJobArrowMarkers(
    List<LocationRow> sortedGeometry,
    double zoom,
  ) async {
    final markers = <Marker>{};

    // Filter jobs: if highlighting, only that job; otherwise selected jobs
    final jobsToShow = highlightedJobNumber != null
        ? _recentJobs.where((j) => j.jobNumber == highlightedJobNumber)
        : _recentJobs.where(
            (j) =>
                j.jobNumber != null &&
                selectedJobNumbers.contains(j.jobNumber),
          );

    for (final job in jobsToShow) {
      final startTime = job.jobStartTime;
      final endTime = job.jobEndTime;
      if (startTime == null) continue;

      final jobPoints = getGeometryForTimeRange(
        sortedGeometry,
        startTime,
        endTime ?? DateTime.now(),
      );
      if (jobPoints.length < 2) continue;

      final jobArrows = await buildArrowMarkersForGeometry(
        geometryPoints: jobPoints,
        zoom: zoom,
        color: getJobColor(job.jobNumber!),
        markerIdPrefix: 'job_arrow_${job.jobNumber}',
        arrowCache: _arrowMarkerCache,
        handleStationarySegments: false,
      );
      markers.addAll(jobArrows);
    }

    return markers;
  }

  // Last known visible bounds for tooltip calculations
  LatLngBounds? _lastVisibleBounds;
  LatLngBounds? get lastVisibleBounds => _lastVisibleBounds;

  /// Updates the last known visible bounds (call from onCameraIdle).
  Future<void> updateVisibleBounds() async {
    try {
      _lastVisibleBounds = await mapController.getVisibleRegion();
    } catch (_) {
      // Ignore errors if map controller not ready
    }
  }

  /// Returns polyline data with timestamps for hover tooltips.
  List<PolylineData> getPolylineDataForTooltip() {
    if (_selectedTruck == null ||
        _truckGeometry == null ||
        _truckGeometry!.isEmpty) {
      return [];
    }
    final sortedGeometry = sortGeometryByTimestamp(_truckGeometry!);
    return convertToPolylineData(
      sortedGeometry, 
    TransportAppColors.mapRouteColor);
  }

  /// Returns polyline data for job paths only (legacy method).
  /// Format: List of (LatLng, DateTime?) pairs for each point in job paths.
  List<({LatLng position, DateTime? timestamp, int? jobNumber})>
      getJobPathPolylineData() {
    final data = <({LatLng position, DateTime? timestamp, int? jobNumber})>[];
    final geometry = _truckGeometry;

    if (_selectedTruck == null ||
        geometry == null ||
        geometry.isEmpty ||
        _recentJobs.isEmpty) {
      return data;
    }

    final sortedGeometry = List<LocationRow>.from(geometry)
      ..sort((a, b) {
        final aTime = a.locationTimestamp ?? DateTime(1970);
        final bTime = b.locationTimestamp ?? DateTime(1970);
        return aTime.compareTo(bTime);
      });

    for (final job in _recentJobs) {
      final startTime = job.jobStartTime;
      final endTime = job.jobEndTime;

      if (startTime == null) continue;

      final jobPoints = getGeometryForTimeRange(
        sortedGeometry,
        startTime,
        endTime ?? DateTime.now(),
      );

      for (final coord in jobPoints) {
        if (coord.latitude != null && coord.longitude != null) {
          data.add((
            position: LatLng(coord.latitude!, coord.longitude!),
            timestamp: coord.locationTimestamp,
            jobNumber: job.jobNumber,
          ));
        }
      }
    }

    return data;
  }

  void startAutoRefresh() {
    if (_refreshTimer != null) return;

    _remainingSeconds = Constants.autoRefreshIntervalSeconds;
    remainingSecondsNotifier.value = Constants.autoRefreshIntervalSeconds;

    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!_isMounted) {
        _countdownTimer?.cancel();
        _countdownTimer = null;
        return;
      }

      if (_remainingSeconds > 1) {
        _remainingSeconds--;
        remainingSecondsNotifier.value = _remainingSeconds;
      }
    });

    _refreshTimer = Timer.periodic(_autoRefreshInterval, (_) {
      if (!_isMounted) {
        _refreshTimer?.cancel();
        _refreshTimer = null;
        return;
      }

      if (_autoRefreshEnabled) {
        _remainingSeconds = Constants.autoRefreshIntervalSeconds;
        remainingSecondsNotifier.value = Constants.autoRefreshIntervalSeconds;

        if (_allTrucks.isNotEmpty) {
          final yardCodes = _allTrucks
              .map((t) => t.yard)
              .whereType<String>()
              .toSet()
              .toList();

          if (yardCodes.isNotEmpty) {
            refreshTruckPositions(yardCodes);
          }
        }
      }
    });
  }

  void stopAutoRefresh() {
    _refreshTimer?.cancel();
    _refreshTimer = null;
    _countdownTimer?.cancel();
    _countdownTimer = null;
  }

  void _updateTruckCounts() {
    _movingTruckCount = _allTrucks.where((t) => (t.speed ?? 0) > 0).length;
    _stoppedTruckCount = _allTrucks.where((t) => (t.speed ?? 0) == 0).length;
  }

  /// Setup truck filters and load initial data
  /// This method handles the filter initialization
  Future<void> setupTruckFilters(
    TruckLocatorFilterController filterController,
  ) async {
    filterController.filters.addListener(() async {
      final selectedYards = filterController.getSelectedYardCodes();
      await loadTrucksByYards(selectedYards);
    });
    // Load saved filters or default to all yards
    await filterController.initialize();

    // Auto-refresh disabled - uncomment to re-enable
    // startAutoRefresh();
  }

  /// Select a truck by its asset number
  /// This method handles the auto-selection logic
  Future<void> selectTruckByAssetNumber(String assetNumber) async {
    if (assetNumber.isEmpty) return;

    // Give a small delay for API data to settle
    await Future<void>.delayed(const Duration(milliseconds: 500));

    // Find truck in the loaded list
    TruckPosition? truck;
    for (final t in _allTrucks) {
      if (t.assetNumber == assetNumber) {
        truck = t;
        break;
      }
    }

    if (truck != null) {
      // Select the truck
      selectTruck(truck);

      // Zoom map to truck location
      if (truck.geoLocation?.latitude != null &&
          truck.geoLocation?.longitude != null) {
        await mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(
                truck.geoLocation!.latitude!,
                truck.geoLocation!.longitude!,
              ),
              zoom: 15,
            ),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _isMounted = false;
    hoverState.dispose();
    stopAutoRefresh();
    _countdownTimer?.cancel();
    eventBlockerRegistry.dispose();
    remainingSecondsNotifier.dispose();
    isLoadingNotifier.dispose();
    isSummaryLoadingNotifier.dispose();
    isRecentJobsLoadingNotifier.dispose();
    isGeometryLoadingNotifier.dispose();
    jobsFromDateNotifier.dispose();
    jobsToDateNotifier.dispose();
    selectedJobsNotifier.dispose();
    highlightedJobNotifier.dispose();
    jobEndpointMarkersNotifier.dispose();
    jobConnectorPolylinesNotifier.dispose();
    trackArrowMarkersNotifier.dispose();
    super.dispose();
  }
}
