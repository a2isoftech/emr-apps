import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/widgets/elv_wrapper.dart';
import 'package:emr_one_elv_dismantling/controllers/dismantling_search_controller.dart';
import 'package:emr_one_elv_dismantling/widgets/common/dismantling_header.dart';
import 'package:emr_one_elv_dismantling/widgets/search/search_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DismantlingSearchScreen extends StatefulWidget {
  const DismantlingSearchScreen({
    super.key,
  });

  @override
  State<DismantlingSearchScreen> createState() =>
      _DismantlingSearchScreenState();
}

class _DismantlingSearchScreenState extends State<DismantlingSearchScreen> {
  late final TextEditingController vehicleSearchController;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    vehicleSearchController = TextEditingController();
    final dismantlingSearchController =
        Provider.of<DismantlingSearchController>(context, listen: false);
    dismantlingSearchController.init();
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        if (dismantlingSearchController.pageInfo.hasNextPage &&
            !dismantlingSearchController.loadingSearch) {
          dismantlingSearchController.getVehiclesForDismantling(
            cursor: dismantlingSearchController.pageInfo.endCursor,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final dismantlingSearchController =
        Provider.of<DismantlingSearchController>(context);
    final vehicles = dismantlingSearchController.vehicles;
    final sliverListChildren = vehicles
        .map(
          (vehicle) => DismantlingSilverListChild(
            vehicle: vehicle,
            territory: dismantlingSearchController.settingsController.territory
                .toElvTerritory(),
          ),
        )
        .toList();
    return ElvScreenWrapper(
      header: DismantlingHeader(
        title: DismantlingSearchHeader(
          yardList: dismantlingSearchController.yards,
          onYardTap: dismantlingSearchController.setYard,
          searchVehicles: dismantlingSearchController.getVehiclesForDismantling,
        ),
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DismantlingSearchYardText(
              selectedYard: dismantlingSearchController.selectedYard,
            ),
            if (vehicles.isNotEmpty) ...{
              DismantlingSearchVehicleCount(vehicleCount: vehicles.length),
            },
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
              child: DismantlingSearchInput(
                searching: dismantlingSearchController.loadingSearch,
                onSearchTextChanged: (text) {
                  dismantlingSearchController.searchText = text;
                },
                searchVehicles:
                    dismantlingSearchController.getVehiclesForDismantling,
              ),
            ),
            Expanded(
              child: dismantlingSearchController.vehicleLoadingErrored
                  ? Center(
                      child: Text(
                        context.l10n.anErrorOccurredTryAgain,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    )
                  : RefreshIndicator(
                      onRefresh:
                          dismantlingSearchController.getVehiclesForDismantling,
                      child: CustomScrollView(
                        controller: scrollController,
                        slivers: [
                          SliverList(
                            delegate: SliverChildListDelegate(
                              sliverListChildren,
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
