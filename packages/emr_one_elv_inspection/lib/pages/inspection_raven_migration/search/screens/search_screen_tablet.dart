import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_elv_core/models/elv_vehicle_search_models/elv_vehicle_search_model.dart';
import 'package:emr_one_elv_core/widgets/elv_vehicle_search/elv_vehicle_search.dart';
import 'package:emr_one_elv_core/widgets/elv_wrapper.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/search_response_model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/generic/inspection_header.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/search/controller/search_controller.dart';
import 'package:emr_one_elv_inspection/routing/named_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionSearchScreenTablet extends StatelessWidget {
  const InspectionSearchScreenTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionSearchController>(context);
    return ElvScreenWrapper(
      header: InspectionHeader(
        title: Row(
          children: [
            Expanded(
              child: Text(
                context.l10n.inspection,
                style: Theme.of(context).primaryTextTheme.headlineSmall,
              ),
            ),
          ],
        ),
      ),
      child: Scaffold(
        body: ElvVehicleSearch<SearchResponseModel>(
          vehicles: (controller.results ?? [])
              .map(
                (x) => ElvVehicleSearchModel<SearchResponseModel>(
                  data: x,
                  make: x.make,
                  model: x.model,
                  year: x.year,
                  vehicleIdentifier: x.vehicleIdentifier,
                  inProgress:
                      x.status == Enum$QuoteStatus.INSPECTION_IN_PROGRESS.name,
                ),
              )
              .toList(),
          onRefresh: controller.refreshList,
          onTap: (data) {
            context.goNamed(
              NamedRoutesElv.elvInspectionRaven,
              params: {
                'quoteId': data.quoteNumber,
                'vehicleKey': data.vehicleKey,
              },
            );
            controller.searchOnBack();
          },
          onSearchChanged: (val) {
            controller.searchText = val;
          },
          onSearchSubmitted: (v) => controller.searchForVehicles(),
          onSearchLoading: controller.loadingSearch,
          selectedYardName: controller.selectedYard?.name,
          subtitle: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: '${context.l10n.thereAre} '),
                TextSpan(
                  text: (controller.results ?? []).length.toString(),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextSpan(
                  text: ' ${context.l10n.vehiclesAwaiting.toLowerCase()}.',
                ),
              ],
              style: EmrOneConstants.kSmallSubtleTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
