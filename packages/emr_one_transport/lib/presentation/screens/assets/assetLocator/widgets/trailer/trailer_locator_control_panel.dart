import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_data_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_filter_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/base_asset_locator_control_panel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

/// Trailer locator control panel widget
///
/// Displays all trailer-specific UI controls
/// - Filter toolbar with yard/type/status filters
/// - Statistics (yard count, truck count, customer count)
class TrailerLocatorControlPanel extends BaseAssetLocatorControlPanel<
  TrailerLocatorController,
  TrailerLocatorFilterController,
  TrailerLocatorDataController
> {
  const TrailerLocatorControlPanel({
    required super.mapController,
    super.key,
  });

  @override
  TrailerLocatorController getLocatorController(BuildContext context) {
    return context.read<TrailerLocatorController>();
  }

  @override
  TrailerLocatorFilterController getFilterController(BuildContext context) {
    return context.read<TrailerLocatorFilterController>();
  }

  @override
  Future<void> fetchAssetsInBounds({
    required TrailerLocatorController controller,
    required LatLngBounds bounds,
    required AssetGeoSearchRequest filterRequest,
  }) async {
    await controller.fetchAssetsInBounds(
      bounds: bounds,
      filterRequest: filterRequest,
    );
  }

  @override
  void stopAssetTracking(TrailerLocatorController controller) {
    controller.stopAssetTracking();
  }

  @override
  Future<void> startAssetTracking({
    required TrailerLocatorController controller,
    required String assetNumber,
    required DateTime startTime,
    required DateTime endTime,
  }) async {
    await controller.startAssetTracking(
      assetNumber: assetNumber,
      startTime: startTime,
      endTime: endTime,
    );
  }

  @override
  AssetType getAssetType() => AssetType.trailer;

  @override
  AssetType getTrackingAssetType() => AssetType.trailer;

  @override
  Future<void> ensureFilterValuesLoaded(BuildContext context) async {
    final dataController = context.read<TrailerLocatorDataController>();
    if (dataController.allYards.isEmpty ||
        dataController.allTrailerTypes.isEmpty) {
      await dataController.getFilterValues();
    }
  }

  @override
  Widget? buildOptionalActionButtons(
    BuildContext context,
    TrailerLocatorController controller,
  ) {
    // Trailers don't have export functionality
    return null;
  }
}
