import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_data_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_filter_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/base_asset_locator_control_panel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

/// Container locator control panel widget
///
/// - Filter controls for refining container search
/// - Statistics display (yard count, customer count, totals)
/// - Toolbar buttons (refresh, reset, export)
class ContainerLocatorControlPanel extends BaseAssetLocatorControlPanel<
  ContainerLocatorController,
  ContainerLocatorFilterController,
  ContainerLocatorDataController
> {
  const ContainerLocatorControlPanel({required super.mapController, super.key});

  @override
  ContainerLocatorController getLocatorController(BuildContext context) {
    return context.read<ContainerLocatorController>();
  }

  @override
  ContainerLocatorFilterController getFilterController(BuildContext context) {
    return context.read<ContainerLocatorFilterController>();
  }

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
  void stopAssetTracking(ContainerLocatorController controller) {
    controller.stopAssetTracking();
  }

  @override
  Future<void> startAssetTracking({
    required ContainerLocatorController controller,
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
  AssetType getAssetType() => AssetType.container;

  @override
  AssetType getTrackingAssetType() => AssetType.container;

  @override
  Future<void> ensureFilterValuesLoaded(BuildContext context) async {
    final dataController = context.read<ContainerLocatorDataController>();
    if (dataController.allYards.isEmpty ||
        dataController.allContainerTypes.isEmpty) {
      await dataController.getFilterValues();
    }
  }

  @override
  Widget? buildOptionalActionButtons(
    BuildContext context,
    ContainerLocatorController controller,
  ) {
    // Export CSV button for containers
    return Row(
      children: [
        const SizedBox(width: 8),
        // Vertical divider
        Container(
          width: 1,
          height: 24,
          color: TransportAppColors.dividerColor,
        ),
        const SizedBox(width: 8),
        ElevatedButton.icon(
          icon: controller.isDownloading
              ? SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: TransportAppColors.whiteTextColor,
                  ),
                )
              : const Icon(Icons.download),
          label: Text(
            context.l10n.exportAsCSV,
          ),
          onPressed: controller.isDownloading
              ? null
              : () => _onDownloadExportPressed(context),
        ),
      ],
    );
  }

  Future<void> _onDownloadExportPressed(BuildContext context) async {
    final locatorController = context.read<ContainerLocatorController>();

    try {
      final response = await locatorController.downloadAssetsExport();

      if (!context.mounted) return;

      if (response.isSuccess) {
        await EmrModal.showMessageBar(
          context,
          context.l10n.exportSuccess,
        );
      } else {
        await EmrModal.showMessageBar(
          context,
          '${context.l10n.errMsgDownloadErrorPleaseTryAgain}: '
          '${response.errorMessage}',
          messageType: MessageBarTypes.error,
        );
      }
    } catch (e) {
      if (!context.mounted) return;
      await EmrModal.showMessageBar(
        context,
        context.l10n.errMsgDownloadErrorPleaseTryAgain,
        messageType: MessageBarTypes.error,
      );
    }
  }
}
