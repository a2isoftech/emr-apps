import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_data_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

/// Control panel for truck locator displaying filter bar and stats.
class TruckLocatorControlPanel extends StatelessWidget {
  const TruckLocatorControlPanel({
    required this.mapController,
    super.key,
  });

  final GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Consumer<TruckLocatorController>(
      builder: (context, truckController, _) {
        return Consumer<TruckLocatorFilterController>(
          builder: (context, filterController, _) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Filter bar
                _buildFilterBar(context, filterController),

                // Stats display
                _buildStatsBar(
                  context,
                  truckController,
                  filterController,
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildFilterBar(
    BuildContext context,
    TruckLocatorFilterController filterController,
  ) {
    return Container(
      padding: const EdgeInsets.all(Insets.gutter/2),
      color: TransportAppColors.whiteTextColor,
      child: EmrFilter(controller: filterController),
    );
  }

  Widget _buildStatsBar(
    BuildContext context,
    TruckLocatorController controller,
    TruckLocatorFilterController filterController,
  ) {
    return Container(
      padding: 
        const EdgeInsets
                .fromLTRB(Insets.gutter/2, 0, Insets.gutter/2, Insets.gutter/2),
      color: TransportAppColors.whiteTextColor,
      child: Row(
        children: [
          // Moving trucks
          Container(
            padding: 
              const EdgeInsets
                      .symmetric(horizontal: Insets.gutter/2, 
                                  vertical: Insets.gutter/4),
            decoration: BoxDecoration(
              color: TransportAppColors.yardStatBgColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Text(
                  '${context.l10n.moving}:',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(width: 4),
                Text(
                  '${controller.movingTruckCount}',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),

          // Stopped trucks
          Container(
            padding:
              const EdgeInsets
                      .symmetric(horizontal: Insets.gutter/2,
                                vertical: Insets.gutter/4),
            decoration: BoxDecoration(
              color: TransportAppColors.truckStoppedBgColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Text(
                  '${context.l10n.stopped}:',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(width: 4),
                Text(
                  '${controller.stoppedTruckCount}',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),

          // Total
          Text(
            '${context.l10n.total}: '
            '${controller.totalTruckCount}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const Spacer(),

          // Refresh button - disabled only while loading
          ElevatedButton.icon(
            icon: const Icon(Icons.refresh, size: 16),
            label: Text(
              context.l10n.refresh,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            onPressed: controller.isLoading
                ? null
                : () => _onRefreshPressed(context, filterController),
          ),
          const SizedBox(width: 8),

          // Reset button
          OutlinedButton.icon(
            icon: const Icon(Icons.clear_all, size: 16),
            label: Text(
              context.l10n.reset,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            onPressed:
                controller.isLoading || !filterController.hasActiveFilters()
                    ? null
                    : () => _onResetPressed(context, filterController),
          ),
        ],
      ),
    );
  }

  Future<void> _onRefreshPressed(
    BuildContext ctx,
    TruckLocatorFilterController filterController,
  ) async {
    final truckController = ctx.read<TruckLocatorController>();
    final dataController = ctx.read<TruckLocatorDataController>();

    // If yards are empty (e.g., after network failure), fetch them first
    if (dataController.allYards.isEmpty) {
      await dataController.getFilterValues();
    }

    // If NO trucks are currently displayed, re-fetch default viewport
    // This handles recovery from initial load failure
    if (truckController.allTrucks.isEmpty) {
      final defaultPosition = await truckController.getDefaultCameraPosition();
      if (ctx.mounted) {
        await mapController.animateCamera(
          CameraUpdate.newCameraPosition(defaultPosition),
        );
      }
    }

    // Get current filter selection (may be empty if initial load failed)
    var selectedYards = filterController.getSelectedYardCodes();

    // If a truck is selected, only refresh its yard
    final selectedTruck = truckController.selectedTruck;
    if (selectedTruck?.yard != null) {
      selectedYards = [selectedTruck!.yard!];
    } else if (selectedYards.isEmpty && dataController.allYards.isNotEmpty) {
      // If no yards selected but yards are now available, select all by default
      // This handles the case where initial load failed and user never selected
      await filterController.selectAllYards();
      selectedYards = filterController.getSelectedYardCodes();
    }

    // Refresh trucks with current selection
    await truckController.refreshTruckPositions(selectedYards);

    // If a truck is selected, reload its detailed data (jobs, summary, route)
    if (truckController.selectedTruck != null) {
      await truckController.reloadSelectedTruckData();
    }
  }

  Future<void> _onResetPressed(
    BuildContext ctx,
    TruckLocatorFilterController filterController,
  ) async {
    final truckController = ctx.read<TruckLocatorController>();
    final dataController = ctx.read<TruckLocatorDataController>();
    await filterController.resetFilters();
    truckController.clearTrucks();

    // Reset to default viewport
    final defaultPosition = await truckController.getDefaultCameraPosition();
    if (ctx.mounted) {
      await mapController.animateCamera(
        CameraUpdate.newCameraPosition(defaultPosition),
      );
    }

    // Select all yards and refresh truck positions
    if (dataController.allYards.isNotEmpty) {
      await filterController.selectAllYards();
      final selectedYards = filterController.getSelectedYardCodes();
      await truckController.refreshTruckPositions(selectedYards);
    }
  }
}
