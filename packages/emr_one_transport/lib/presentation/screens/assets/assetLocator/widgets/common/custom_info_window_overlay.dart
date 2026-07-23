import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/utils/map/info_window_positioning.dart';
import 'package:emr_one_transport/data/controllers/tracking/'
    'base_asset_locator_controller.dart';
import 'package:emr_one_transport/data/models/tracking/'
    'asset_location.dart';
import 'package:emr_one_transport/data/models/tracking/marker_screen_position.dart';
import 'package:emr_one_transport/presentation/screens/'
    'assets/assetLocator/widgets/common/asset_track_bottom_sheet.dart';
import 'package:emr_one_transport/presentation/screens/'
    'assets/assetLocator/widgets/common/custom_info_window.dart';
import 'package:emr_one_transport/presentation/screens/'
    'assets/assetLocator/widgets/common/map_event_blocker.dart';
import 'package:emr_one_transport/presentation/screens/'
    'assets/assetLocator/widgets/common/measure_size.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Widget that displays a custom info window
/// overlay on the map with proper positioning
class CustomInfoWindowOverlay<T extends BaseAssetLocatorController>
    extends StatelessWidget {
  const CustomInfoWindowOverlay({
    required this.controller,
    required this.actualMapWidth,
    required this.actualMapHeight,
    super.key,
  });

  final T controller;
  final double actualMapWidth;
  final double actualMapHeight;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.showInfoWindowNotifier,
      builder: (context, showWindow, _) {
        if (!controller.useCustomInfoWindow ||
            !showWindow) {
          return const SizedBox.shrink();
        }
        return _buildInfoWindowStack(context);
      },
    );
  }

  Widget _buildInfoWindowStack(BuildContext context) {
    return ValueListenableBuilder<AssetLocation?>(
      valueListenable: controller
          .selectedAssetNotifier,
      builder: (context, selectedContainer, _) {
        if (selectedContainer == null) {
          return const SizedBox.shrink();
        }
        return _buildWithHeight(
          context,
          selectedContainer,
        );
      },
    );
  }

  Widget _buildWithHeight(
    BuildContext context,
    AssetLocation selectedContainer,
  ) {
    return ValueListenableBuilder<double?>(
      valueListenable: controller
          .infoWindowHeightNotifier,
      builder: (context, measuredHeight, _) {
        return _buildWithBounds(
          context,
          selectedContainer,
          measuredHeight,
        );
      },
    );
  }

  Widget _buildWithBounds(
    BuildContext context,
    AssetLocation selectedContainer,
    double? measuredHeight,
  ) {
    return ValueListenableBuilder<LatLngBounds?>(
      valueListenable: controller.boundsNotifier,
      builder: (context, bounds, _) {
        return _buildPositionedWindow(
          context,
          selectedContainer,
          measuredHeight,
        );
      },
    );
  }

  Widget _buildPositionedWindow(
    BuildContext context,
    AssetLocation selectedContainer,
    double? measuredHeight,
  ) {
    final markerPosition = controller.calculateMarkerScreenPosition(
      selectedContainer,
      actualMapWidth,
      actualMapHeight,
    );

    if (markerPosition == null) {
      return const SizedBox.shrink();
    }

    return _buildWindow(
      context,
      selectedContainer,
      markerPosition,
      measuredHeight,
    );
  }

  Widget _buildWindow(
    BuildContext context,
    AssetLocation selectedContainer,
    MarkerScreenPosition markerPosition,
    double? measuredHeight,
  ) {
    final infoWindowHeight =
        measuredHeight ?? Constants.infoWindowDefaultHeight;

    final positions = calculateInfoWindowPosition(
      markerPosition: markerPosition,
      screenWidth: actualMapWidth,
      infoWindowHeight: infoWindowHeight,
    );

    final infoWindowWidget = CustomInfoWindow<T>(
      asset: selectedContainer,
      onClose: controller.closeCustomInfoWindow,
      onTrack: () => _onTrackContainer(context, selectedContainer),
      controller: controller,
    );

    // before first render measureHeight would be null
    if (measuredHeight == null) {
      return _buildMeasurementWidget(
        infoWindowWidget,
      );
    }

    return _buildFinalWidget(
      infoWindowWidget,
      positions,
    );
  }

  Widget _buildMeasurementWidget(
    Widget infoWindowWidget,
  ) {
    return Positioned(
      left: -9999,
      top: -9999,
      child: MeasureSize(
        onChange: (Size size) {
          controller.infoWindowHeightNotifier
              .value = size.height;
        },
        child: Material(
          color: Colors.transparent,
          child: infoWindowWidget,
        ),
      ),
    );
  }

  Widget _buildFinalWidget(
    Widget infoWindowWidget,
    InfoWindowPosition positions,
  ) {
    return Positioned(
      left: positions.left,
      top: positions.top,
      child: FocusScope(
        canRequestFocus: true,
        onKey: (node, event) => KeyEventResult.ignored,
        child: MouseRegion(
          child: Material(
            color: Colors.transparent,
            child: infoWindowWidget,
          ),
        ),
      ),
    );
  }

  /// Handle Track button click
  void _onTrackContainer(
    BuildContext context,
    AssetLocation container,
  ) {
    // Close info window first
    controller.closeCustomInfoWindow();

    // Show tracking bottom sheet wrapped with event blocker
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      barrierColor: TransportAppColors.darkModalBarrierColor,
      builder: (bottomSheetContext) => MapEventBlocker(
        registry: controller.eventBlockerRegistry,
        child: AssetTrackBottomSheet(
        assetNumber: container.assetNumber,
        assetType: controller.assetType,
        initialStartDate: controller.trackingStartTime,
        initialEndDate: controller.trackingEndTime,
        controller: controller,
        onTrackClick: ({
          required startDateTime,
          required endDateTime,
        }) async {
          try {
            await controller.startAssetTracking(
              assetNumber: container.assetNumber,
              startTime: startDateTime,
              endTime: endDateTime,
            );

            // Check if tracking data was found
            if (controller.trackPoints.isEmpty) {
              // Message is already shown in the bottom sheet
              // via trackingErrorNotifier.
              // Don't close - allow user to try different dates
              return;
            }

            // Close bottom sheet on success with data
            // Clear error message for next time
            controller.trackingErrorNotifier.value = null;
            if (bottomSheetContext.mounted) {
              Navigator.pop(bottomSheetContext);
            }
          } catch (e) {
            // Set error message that will be displayed in the bottom sheet
            controller.trackingErrorNotifier.value = 'Error: $e';
          }
        },
      ),
      ), // closes MapEventBlocker
    ).then((_) {
      // MapEventBlocker automatically unregisters when dismissed
      controller.trackingErrorNotifier.value = null;
    });
  }
}
