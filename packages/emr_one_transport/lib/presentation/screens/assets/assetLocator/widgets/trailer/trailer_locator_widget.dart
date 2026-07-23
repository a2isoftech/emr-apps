import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_data_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_filter_controller.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/base_asset_locator_widget.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/trailer/trailer_locator_control_panel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

/// Widget that displays the trailer locator map.
///
/// With trailer-specific behavior.
/// Delegates all shared map logic to the base class 
/// and implements trailer-specific
/// methods for fetching, selecting, and displaying trailer data.
class TrailerLocatorWidget extends BaseAssetLocatorWidget<
  TrailerLocatorController,
  TrailerLocatorFilterController,
  TrailerLocatorDataController,
  TrailerLocatorControlPanel
> {
  const TrailerLocatorWidget({
    super.initialAssetNumber,
    super.onAssetSelected,
    super.key,
  });

  @override
  TrailerLocatorController getLocatorController(BuildContext context) =>
      context.read<TrailerLocatorController>();

  @override
  TrailerLocatorFilterController getFilterController(BuildContext context) =>
      context.read<TrailerLocatorFilterController>();

  @override
  TrailerLocatorDataController getDataController(BuildContext context) =>
      context.read<TrailerLocatorDataController>();

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
  Future<void> selectAssetByNumber({
    required TrailerLocatorController controller,
    required String assetNumber,
    required double screenHeight,
    required double screenWidth,
  }) async {
    await controller.selectAssetByAssetNumber(
      assetNumber,
      screenHeight,
      screenWidth,
    );
  }

  @override
  CameraPosition getInitialCameraPosition() {
    return const CameraPosition(
      target: LatLng(
        Constants.defaultMapLatitude,
        Constants.defaultMapLongitude,
      ),
      zoom: Constants.defaultTruckMapZoom,
    );
  }

  @override
  String getHeroTag() => 'trailerMapTypeToggle';

  @override
  TrailerLocatorControlPanel buildControlPanel(GoogleMapController controller) {
    return TrailerLocatorControlPanel(mapController: controller);
  }

  @override
  bool isAssetSelected(TrailerLocatorController controller) {
    return controller.selectedAsset != null;
  }
}
