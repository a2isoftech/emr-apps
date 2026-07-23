import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_data_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_filter_controller.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/base_asset_locator_widget.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/container/container_locator_control_panel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

/// Widget that displays the container locator map.
///
/// Container-specific behavior.
/// Delegates all shared map logic to the base class 
/// and implements container-specific
/// methods for fetching, selecting, and displaying container data.
class ContainerLocatorWidget extends BaseAssetLocatorWidget<
  ContainerLocatorController,
  ContainerLocatorFilterController,
  ContainerLocatorDataController,
  ContainerLocatorControlPanel
> {
  const ContainerLocatorWidget({
    super.initialAssetNumber,
    super.onAssetSelected,
    super.key,
  });

  @override
  ContainerLocatorController getLocatorController(BuildContext context) =>
      context.read<ContainerLocatorController>();

  @override
  ContainerLocatorFilterController getFilterController(BuildContext context) =>
      context.read<ContainerLocatorFilterController>();

  @override
  ContainerLocatorDataController getDataController(BuildContext context) =>
      context.read<ContainerLocatorDataController>();

  @override
  Future<void> fetchAssetsInBounds({
    required ContainerLocatorController controller,
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
    required ContainerLocatorController controller,
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
      zoom: Constants.defaultContainerMapZoom,
    );
  }

  @override
  String getHeroTag() => 'containerMapTypeToggle';

  @override
  ContainerLocatorControlPanel
    buildControlPanel(GoogleMapController controller) {
      return ContainerLocatorControlPanel(mapController: controller);
  }

  @override
  bool isAssetSelected(ContainerLocatorController controller) {
    return controller.selectedAsset != null;
  }
}
