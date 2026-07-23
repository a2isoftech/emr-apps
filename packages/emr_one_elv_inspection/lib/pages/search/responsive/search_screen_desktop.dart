import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/generic/inspection_header.dart';
import 'package:emr_one_elv_inspection/pages/search/controller/search_controller.dart';
import 'package:emr_one_elv_inspection/routing/named_routes.dart';
import 'package:emr_one_elv_quote_api/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionSearchScreenDesktop extends StatelessWidget {
  const InspectionSearchScreenDesktop({super.key});

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
      breadcrumb: ElvBreadCrumb(headings: [context.l10n.inspection]),
      child: Scaffold(
        body: ElvVehicleSearch<InspectionResponseModel>(
          vehicles: (controller.results ?? [])
              .map(
                (x) => ElvVehicleSearchModel<InspectionResponseModel>(
                  data: x,
                  make: x.vehicleDetail.make,
                  model: x.vehicleDetail.model,
                  year: x.vehicleDetail.year,
                  vehicleIdentifier:
                      (controller.activeTerritory == ElvTerritory.uk
                          ? x.vehicleDetail.vehicleReg
                          : x.vehicleDetail.vin) ??
                      '',
                  inProgress:
                      x.quoteStatus ==
                      Enum$QuoteStatusEnum.INSPECTION_IN_PROGRESS.name,
                ),
              )
              .toList(),
          onRefresh: controller.refreshList,
          onTap: (data) {
            context.goNamed(
              NamedRoutesElv.elvInspection,
              params: {
                'identifier':
                    data.vehicleDetail.vin ??
                    data.vehicleDetail.vehicleReg ??
                    '',
                'quoteId': data.quote.quoteId.toString(),
              },
            );
            controller.searchOnBack();
          },
          onSearchChanged: (val) {
            controller.searchText = val;
            controller.currentPage = 1;
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
