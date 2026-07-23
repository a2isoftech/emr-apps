import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/data/controllers/tracking/base_asset_locator_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/asset_stat_container.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/asset_track_bottom_sheet.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/map_event_blocker.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

/// Mixin that defines the required contract for filter controllers
/// used by the BaseAssetLocatorControlPanel
mixin BaseAssetLocatorFilterMixin {
  /// Check if any filters are currently active
  bool hasActiveFilters();

  /// Convert applied filters to an AssetGeoSearchRequest for API calls
  AssetGeoSearchRequest getAppliedFilterAsRequest({
    required double latNE,
    required double lngNE,
    required double latSW,
    required double lngSW,
  });
}

/// Base asset locator control panel widget
///
/// Generic base class that displays asset-specific UI overlays on the
/// GoogleMap:
/// - Filter toolbar with asset-specific filters
/// - Statistics (yard count, truck count, customer count)
/// - Track button and polyline controls
/// - Asset-type specific features (e.g., export for containers)
abstract class BaseAssetLocatorControlPanel<
  TLocatorController extends BaseAssetLocatorController,
  TFilterController extends EmrFilterController,
  TDataController
> extends StatefulWidget {
  const BaseAssetLocatorControlPanel({
    required this.mapController,
    super.key,
  });

  final GoogleMapController mapController;

  /// Get the asset-specific locator controller from context
  TLocatorController getLocatorController(BuildContext context);

  /// Get the asset-specific filter controller from context
  TFilterController getFilterController(BuildContext context);

  /// Fetch assets in bounds using the asset-specific controller method
  Future<void> fetchAssetsInBounds({
    required TLocatorController controller,
    required LatLngBounds bounds,
    required AssetGeoSearchRequest filterRequest,
  });

  /// Stop tracking using the asset-specific controller method
  void stopAssetTracking(TLocatorController controller);

  /// Start tracking using the asset-specific controller method
  Future<void> startAssetTracking({
    required TLocatorController controller,
    required String assetNumber,
    required DateTime startTime,
    required DateTime endTime,
  });

  /// Get the asset type enum (Container, Trailer, etc.)
  AssetType getAssetType();

  /// Get the asset type enum for tracking API calls
  AssetType getTrackingAssetType();

  /// Ensure filter values are loaded. Fetch if yards/types are empty.
  Future<void> ensureFilterValuesLoaded(BuildContext context);

  /// Build optional action buttons (like export for containers)
  Widget? buildOptionalActionButtons(
    BuildContext context,
    TLocatorController controller,
  );

  @override
  State<BaseAssetLocatorControlPanel<TLocatorController, TFilterController,
      TDataController>>
    createState() => _BaseAssetLocatorControlPanelState<TLocatorController,
        TFilterController, TDataController>();
}

class _BaseAssetLocatorControlPanelState<
  TLocatorController extends BaseAssetLocatorController,
  TFilterController extends EmrFilterController,
  TDataController
> extends State<BaseAssetLocatorControlPanel<
    TLocatorController, 
    TFilterController,
    TDataController>> {

  Future<void> _onLoadAssetsPressed(BuildContext context) async {
    final filterController = widget.getFilterController(context);
    final locatorController = widget.getLocatorController(context);
    final failedToRefresh = context.l10n.failedToRefresh;

    try {
      // Close info window before making API call
      locatorController.closeCustomInfoWindow();

      // Fetch filter values if they're empty (e.g., after network failure)
      await widget.ensureFilterValuesLoaded(context);
      if (!mounted) return;

      // If NO assets are currently displayed, re-fetch default viewport
      // This handles recovery from initial load failure
      if (locatorController.allAssets.isEmpty) {
        final defaultPosition =
            await locatorController.getDefaultCameraPosition();
        if (mounted) {
          await widget.mapController.animateCamera(
            CameraUpdate.newCameraPosition(defaultPosition),
          );
        }
        if (!mounted) return;
      }

      final region = await widget.mapController.getVisibleRegion();
      if (!mounted) return;

      final filterRequest = (filterController
              as BaseAssetLocatorFilterMixin)
          .getAppliedFilterAsRequest(
        latNE: region.northeast.latitude,
        lngNE: region.northeast.longitude,
        latSW: region.southwest.latitude,
        lngSW: region.southwest.longitude,
      );

      await widget.fetchAssetsInBounds(
        controller: locatorController,
        bounds: region,
        filterRequest: filterRequest,
      );

      // If tracking is active, re-fetch the GPS route for the date range
      if (locatorController.isTrackingActive &&
          locatorController.trackingAssetNumber != null &&
          locatorController.trackingStartTime != null &&
          locatorController.trackingEndTime != null) {
        await widget.startAssetTracking(
          controller: locatorController,
          assetNumber: locatorController.trackingAssetNumber!,
          startTime: locatorController.trackingStartTime!,
          endTime: locatorController.trackingEndTime!,
        );
      }
    } catch (e) {
      if (!context.mounted) return;
      await EmrModal.showMessageBar(
        context,
        failedToRefresh,
        messageType: MessageBarTypes.error,
      );
    }
  }

  Future<void> _onResetPressed(BuildContext context) async {
    final locatorController = widget.getLocatorController(context);
    final filterController = widget.getFilterController(context);
    final failedToRefresh = context.l10n.failedToRefresh;

    try {
      // Stop tracking if active
      if (locatorController.isTrackingActive) {
        widget.stopAssetTracking(locatorController);
      }

      // Clear all filter selections in the UI
      filterController.filters.value = [];

      // Close info window when resetting
      locatorController.closeCustomInfoWindow();

      // Reset to default viewport before fetching assets
      final defaultPosition =
          await locatorController.getDefaultCameraPosition();
      if (!mounted) return;
      await widget.mapController.animateCamera(
        CameraUpdate.newCameraPosition(defaultPosition),
      );
      if (!mounted) return;

      final region = await widget.mapController.getVisibleRegion();
      if (!mounted) return;

      // Load assets without filters by passing an empty filter request
      final filterRequest = AssetGeoSearchRequest(
        latitudeNorthEast: region.northeast.latitude,
        longitudeNorthEast: region.northeast.longitude,
        latitudeSouthWest: region.southwest.latitude,
        longitudeSouthWest: region.southwest.longitude,
        assetType: widget.getAssetType(),
      );

      await widget.fetchAssetsInBounds(
        controller: locatorController,
        bounds: region,
        filterRequest: filterRequest,
      );
    } catch (e) {
      if (!context.mounted) return;
      await EmrModal.showMessageBar(
        context,
        failedToRefresh,
        messageType: MessageBarTypes.error,
      );
    }
  }

  void _onChangeTrackingDatesPressed(BuildContext context) {
    final locatorController = widget.getLocatorController(context);

    if (locatorController.trackingAssetNumber == null) {
      return;
    }

    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      barrierColor: TransportAppColors.modalBarrierColor,
      builder: (bottomSheetContext) => MapEventBlocker(
        registry: locatorController.eventBlockerRegistry,
        child: AssetTrackBottomSheet(
          assetNumber: locatorController.trackingAssetNumber!,
          assetType: widget.getTrackingAssetType(),
          initialStartDate: locatorController.trackingStartTime,
          initialEndDate: locatorController.trackingEndTime,
          controller: locatorController,
          onTrackClick: ({
            required startDateTime,
            required endDateTime,
          }) async {
            await widget.startAssetTracking(
              controller: locatorController,
              assetNumber: locatorController.trackingAssetNumber!,
              startTime: startDateTime,
              endTime: endDateTime,
            );
            if (bottomSheetContext.mounted) {
              Navigator.of(bottomSheetContext).pop();
            }
          },
        ),
      ),
    ).then((_) {
      locatorController.trackingErrorNotifier.value = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Filter bar and stats - top overlay
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Consumer<TLocatorController>(
            builder: (context, locatorController, _) {
              return Consumer<TFilterController>(
                builder: (context, filterController, _) {
                  final hasFilters = (filterController
                          as BaseAssetLocatorFilterMixin)
                      .hasActiveFilters();
                  return Column(
                    children: [
                      // Filter section
                      Padding(
                        padding: const EdgeInsets.all(Insets.gutter/2),
                        child: GestureDetector(
                          onTap: () =>
                              locatorController.closeCustomInfoWindow(),
                          behavior: HitTestBehavior.translucent,
                          child: EmrFilter(
                            controller: filterController,
                          ),
                        ),
                      ),
                      // Stats section
                      Padding(
                        padding: const EdgeInsets.fromLTRB(Insets.gutter/2, 
                          0, 
                          Insets.gutter/2, 
                          Insets.gutter/2),
                        child: Row(
                          children: [
                            AssetStatContainer(
                              label: '${context.l10n.yard}: ',
                              count: locatorController.yardCount,
                              bgColor: TransportAppColors.yardStatBgColor,
                            ),
                            const SizedBox(width: 8),
                            AssetStatContainer(
                              label: '${context.l10n.truck}: ',
                              count: locatorController.truckCount,
                              bgColor: TransportAppColors.yardStatBgColor,
                            ),
                            const SizedBox(width: 8),
                            AssetStatContainer(
                              label: '${context.l10n.customer}: ',
                              count: locatorController.customerCount,
                              bgColor:
                                  TransportAppColors.customerStatBgColor,
                            ),
                            const SizedBox(width: 12),
                            // Divider before total
                            Container(
                              width: 1,
                              height: 24,
                              color: TransportAppColors.dividerColor,
                            ),
                            const SizedBox(width: 12),
                            // Total count
                            Expanded(
                              child: Builder(
                                builder: (context) {
                                  final totalLabel =
                                      context.l10n.total;
                                  final filteredLabel =
                                      context.l10n.filtered;
                                  final total =
                                      '$totalLabel: '
                                      '${locatorController.totalCount}';
                                  final filtered =
                                      '$filteredLabel: '
                                      '${locatorController.filteredCount}';
                                  final statsText = hasFilters
                                      ? '$total | $filtered'
                                      : total;
                                  return Text(
                                    statsText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall,
                                  );
                                },
                              ),
                            ),
                            // Spacer to push buttons to the right
                            const SizedBox(width: 8),
                            ElevatedButton.icon(
                              icon: const Icon(Icons.refresh),
                              label: Text(context.l10n.refresh),
                              onPressed: locatorController.isLoading
                                  ? null
                                  : () => _onLoadAssetsPressed(context),
                            ),
                            const SizedBox(width: 8),
                            // Change tracking dates button (only when tracking)
                            if (locatorController.isTrackingActive)
                              ElevatedButton.icon(
                                icon: const Icon(Icons.date_range),
                                label: Text(
                                  context.l10n.changeTrackingDates,
                                ),
                                onPressed: locatorController.isTrackLoading
                                    ? null
                                    : () => _onChangeTrackingDatesPressed(
                                          context,
                                        ),
                              ),
                            const SizedBox(width: 8),
                            // Vertical divider
                            Container(
                              width: 1,
                              height: 24,
                              color: TransportAppColors.dividerColor,
                            ),
                            const SizedBox(width: 8),
                            OutlinedButton.icon(
                              icon: const Icon(Icons.clear_all),
                              label: Text(context.l10n.reset),
                              onPressed: locatorController.isLoading
                                  ? null
                                  : () => _onResetPressed(context),
                            ),
                            // Optional action buttons (export for containers)
                            if (widget.buildOptionalActionButtons(
                                  context,
                                  locatorController,
                                ) !=
                                null)
                              widget.buildOptionalActionButtons(
                                context,
                                locatorController,
                              )!,
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
