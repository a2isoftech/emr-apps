import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_tracking_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/job_tracking_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_truck_geometry.dart';
import 'package:emr_one_transport/presentation/screens/jobs/timeline_builder.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/notes_card.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class JobTrackingScreen extends StatefulWidget {
  const JobTrackingScreen({required this.jobId, this.territoryCode, super.key});

  final int jobId;
  final String? territoryCode;

  @override
  State<JobTrackingScreen> createState() => JobTrackingScreenState();
}

class JobTrackingScreenState extends State<JobTrackingScreen> {
  late Future<void> _loadJobTrackingFuture;
  late JobTrackingController jobTrackingcontroller;
  late JobTrackingDetails trackingDetails;
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};
  final Set<Polyline> _polylines = {};
  final polylinePoints = <LatLng>[];
  JobTruckGeometry? truckGeometry;
  MapType _currentMapType = MapType.normal;

  @override
  void initState() {
    super.initState();
    jobTrackingcontroller = Provider.of<JobTrackingController>(
      context,
      listen: false,
    );
    _loadJobTrackingFuture = jobTrackingcontroller.fetchJobTrackingDetails(
      widget.jobId,
      widget.territoryCode,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _loadJobTrackingFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: LoadingIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text(context.l10n.noDataFound));
        } else {
          trackingDetails = jobTrackingcontroller.trackingDetails;
          return _build(trackingDetails);
        }
      },
    );
  }

  Widget _build(JobTrackingDetails trackingDetails) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Insets.gutter / 4,
        children: [
          Row(children: [Expanded(child: _buildHeader(trackingDetails))]),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Column(
              spacing: Insets.gutter / 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: Insets.gutter,
                  children: [
                    Expanded(
                      child: Text(
                        context.l10n.jobDetails,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        context.l10n.map,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Insets.gutter / 2),
                SizedBox(
                  height: 250,
                  child: Row(
                    children: [
                      Expanded(child: _buldDetails(trackingDetails)),
                      const SizedBox(width: Insets.gutter),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: _buildMap(),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                _buildTimeLine(trackingDetails),
                const Divider(),
                Text(
                  context.l10n.notes,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                _buildNotes(trackingDetails),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(JobTrackingDetails trackingDetails) {
    return ColoredBox(
      color: TransportAppColors.blueBg,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SelectableText.rich(
                  selectionColor: TransportAppColors.displayGreyColor,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${context.l10n.job}:',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: TransportAppColors.whiteTextColor,
                        ),
                      ),
                      TextSpan(
                        text: '#${trackingDetails.jobNumber}',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: TransportAppColors.whiteTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: Insets.gutter),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.gutter,
                    vertical: Insets.gutter / 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Insets.gutter / 4),
                    color: TransportAppColors.whiteTextColor,
                  ),
                  child: Text(
                    trackingDetails.jobStatus,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buldDetails(JobTrackingDetails trackingDetails) {
    // helper to style label
    Text label(String text) =>
        Text(text, style: Theme.of(context).textTheme.labelLarge);
    // helper to style value
    SelectableText value(String text) => SelectableText(
      text,
      style: Theme.of(
        context,
      ).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
    );

    return Column(
      spacing: Insets.gutter,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  label(context.l10n.jobType),
                  const SizedBox(width: Insets.gutter),
                  value(
                    jobTypeFromApiValue(trackingDetails.jobType).toString(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  label(context.l10n.customerLocation),
                  const SizedBox(width: Insets.gutter),
                  value(
                    '${trackingDetails.customerLocation.code} –'
                    ' ${trackingDetails.customerLocation.name}',
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  label('${context.l10n.startLocation}:'),
                  const SizedBox(width: Insets.gutter),
                  value(
                    '${trackingDetails.startLocation.code} –'
                    ' ${trackingDetails.startLocation.name}',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  label(context.l10n.endLocationText),
                  const SizedBox(width: Insets.gutter),
                  value(
                    '${trackingDetails.endLocation.code} –'
                    ' ${trackingDetails.endLocation.name}',
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  label('${context.l10n.vrm}:'),
                  const SizedBox(width: Insets.gutter),
                  value(trackingDetails.vrm ?? '-'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  label('${context.l10n.scheduledDate}:'),
                  const SizedBox(width: Insets.gutter),
                  value(
                    trackingDetails.scheduledDate?.toLocal().toString() ?? '-',
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  label('${context.l10n.totalTimeTaken}:'),
                  const SizedBox(width: Insets.gutter),
                  value(getTimeTakenInMins()),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildNotes(JobTrackingDetails t) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Insets.gutter,
        children: [
          Expanded(
            child: NoteCard(
              title: context.l10n.dispatcherNotes,
              note: t.dispatcherNotes,
              icon: Icons.support_agent,
              badgeBg: TransportAppColors.dispatherEventBgColor,
              iconColor: TransportAppColors.dispatherIconColor,
            ),
          ),
          Expanded(
            child: NoteCard(
              title: context.l10n.officeNotes,
              note: t.officeNotes,
              icon: Icons.support_agent,
              badgeBg: TransportAppColors.dispatherEventBgColor,
              iconColor: TransportAppColors.dispatherIconColor,
            ),
          ),
          Expanded(
            child: NoteCard(
              title: context.l10n.driverNotes,
              note: t.driverNotes,
              icon: Icons.local_shipping,
              badgeBg: TransportAppColors.driverEventBgColor,
              iconColor: TransportAppColors.driverIconColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeLine(JobTrackingDetails trackingDetails) {
    return TimelineBuilder(
      timelineData: trackingDetails.timeLine,
      jobStatus: trackingDetails.jobStatus,
      dispatcherName: trackingDetails.dispatcherName,
      driverName: trackingDetails.driverName,
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;

    setState(() {
      _markers.clear();
      polylinePoints.clear();
      _polylines.clear();

      _addOtherJobEventLocation();

      //If route exists, add polyline + start/end markers
      final tg = jobTrackingcontroller.truckGeometry;
      if (tg != null && tg.geometry.isNotEmpty) {
        for (final p in tg.geometry) {
          final lat = p.latitude!.toDouble();
          final lng = p.longitude!.toDouble();
          polylinePoints.add(LatLng(lat, lng));
        }

        // Start/End markers
        _markers.add(
          Marker(
            markerId: MarkerId(context.l10n.start),
            position: polylinePoints.first,
            infoWindow: InfoWindow(title: context.l10n.start),
          ),
        );
        _markers.add(
          Marker(
            markerId: MarkerId(context.l10n.end),
            position: polylinePoints.last,
            infoWindow: InfoWindow(title: context.l10n.end),
          ),
        );

        // Route polyline
        _polylines.add(
          Polyline(
            polylineId: PolylineId(context.l10n.track),
            points: polylinePoints,
            width: 4,
            color: Colors.blue,
          ),
        );
      }
    });

    //Fit camera to all available points (markers and/or polyline)
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _fitCameraToAllPoints(),
    );
  }

  void _fitCameraToAllPoints() {
    final allPoints = <LatLng>[];

    // Include polyline points if present
    if (polylinePoints.isNotEmpty) {
      allPoints.addAll(polylinePoints);
    }

    // Always include marker positions
    allPoints.addAll(_markers.map((m) => m.position));

    if (allPoints.isEmpty) return;

    if (allPoints.length == 1) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: allPoints.first, zoom: 15),
        ),
      );
      return;
    }

    final bounds = _boundsFromLatLngList(allPoints);
    mapController.animateCamera(CameraUpdate.newLatLngBounds(bounds, 50));
  }

  void _addOtherJobEventLocation() {
    final eventLocations = jobTrackingcontroller.trackingDetails.timeLine
        .where((e) => e.geoLocation != null)
        .toList();

    for (var i = 0; i < eventLocations.length; i++) {
      final event = eventLocations[i];
      final location = event.geoLocation;
      final locationAt = (event.locationAt?.isEmpty ?? true)
          ? ''
          : ' - ${event.locationAt}';

      _markers.add(
        Marker(
          markerId: MarkerId('$i'),
          position: LatLng(
            location!.latitude!.toDouble(),
            location.longitude!.toDouble(),
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueOrange,
          ),
          infoWindow: InfoWindow(
            title: '${event.eventSubType}$locationAt',
            snippet: event.eventType,
          ),
        ),
      );
    }
  }

  /// Computes map bounds for a list of LatLng points
  LatLngBounds _boundsFromLatLngList(List<LatLng> list) {
    assert(list.isNotEmpty);
    var minLat = list.first.latitude;
    var maxLat = list.first.latitude;
    var minLng = list.first.longitude;
    var maxLng = list.first.longitude;
    for (final p in list) {
      if (p.latitude < minLat) minLat = p.latitude;
      if (p.latitude > maxLat) maxLat = p.latitude;
      if (p.longitude < minLng) minLng = p.longitude;
      if (p.longitude > maxLng) maxLng = p.longitude;
    }
    return LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );
  }

  /// Builds the GoogleMap widget with markers, polyline, and controls.
  Widget _buildMap() {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(0, 0),
            zoom: 1,
          ),
          markers: _markers,
          polylines: _polylines,
          mapType: _currentMapType,
        ),

        // Toggle map type button
        Positioned(
          top: 16,
          left: 16,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _currentMapType = _currentMapType == MapType.normal
                    ? MapType.satellite
                    : MapType.normal;
              });
            },
            child: Text(
              _currentMapType == MapType.normal
                  ? context.l10n.satelliteView
                  : context.l10n.normalView,
            ),
          ),
        ),

        // Fullscreen button
        Positioned(
          top: 16,
          right: 16,
          child: Tooltip(
            message: context.l10n.enlarge,
            child: ColoredBox(
              color: Colors.black,
              child: IconButton(
                icon: const Icon(
                  Icons.fullscreen,
                  size: Constants.iconSizeL,
                  color: Colors.white,
                ),
                onPressed: _showFullScreenMap,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String getTimeTakenInMins() {
    return trackingDetails.timeTakenInMinutes != null
        ? formatMinutes(trackingDetails.timeTakenInMinutes!)
        : '-';
  }

  String formatMinutes(double minutes) {
    final totalMinutes = minutes.round(); // ignores seconds by rounding
    final h = totalMinutes ~/ 60;
    final m = totalMinutes % 60;
    return '${h}h ${m.toString().padLeft(2, '0')}m';
  }

  LatLng _initialTarget() {
    if (polylinePoints.isNotEmpty) return polylinePoints.first;
    if (_markers.isNotEmpty) return _markers.first.position;
    // neutral fallback (zoomed out)
    return const LatLng(0, 0);
  }

  double _initialZoom() {
    // If we have any geometry/markers, start reasonably close; otherwise world view
    return (polylinePoints.isNotEmpty || _markers.isNotEmpty) ? 12 : 2.5;
  }

  void _showFullScreenMap() {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Stack(
            children: [
              GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _initialTarget(),
                  zoom: _initialZoom(),
                ),
                markers: _markers,
                polylines: _polylines,
                mapType: _currentMapType,
                zoomControlsEnabled: false,
                myLocationEnabled: true,
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(1),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.fullscreen_exit,
                      color: Colors.white,
                      size: Constants.iconSizeL,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
