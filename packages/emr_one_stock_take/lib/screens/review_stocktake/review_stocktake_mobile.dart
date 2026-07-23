import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/extensions/stocktake_search_extensions.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_stocktake_buttons.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:emr_sharedtypes/uom/uom_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReviewStocktakeMobile extends StatefulWidget {
  const ReviewStocktakeMobile({
    required this.controller,
    required this.stockTake,
    required this.onVoteSubmit,
    super.key,
  });

  final ReviewStocktakeController controller;
  final StockTake stockTake;
  final void Function() onVoteSubmit;
  @override
  State<ReviewStocktakeMobile> createState() => _ReviewStocktakeMobileState();
}

class _ReviewStocktakeMobileState extends State<ReviewStocktakeMobile> {
  List<Uom> uoms = List.empty();
  late final EmrQueryLayoutController<StocktakeLocation>
      _emrQueryLayoutController;
  late final ReviewLocationDataSource _dataSource;

  @override
  void initState() {
    super.initState();
    final settingsController =
        Provider.of<BaseSettingsController>(context, listen: false)
            as SettingsController;

    final uomService = Provider.of<UomService>(context, listen: false);
    uoms = uomService.getUoms(
      settingsController.territory,
    );
    uoms.remove(Enum$Uom.EA.toUomModel());

    _dataSource = ReviewLocationDataSource(
      allLocations: widget.stockTake.locations,
    );
    _emrQueryLayoutController = EmrQueryLayoutController(
      dataSource: _dataSource,
      supportedViewModes: {EmrQueryLayoutViewMode.card},
      viewMode: EmrQueryLayoutViewMode.card,
    );

    _emrQueryLayoutController.dataSource.refresh();
    _emrQueryLayoutController.dataSource.selection.addListener(() {
      final location =
          _emrQueryLayoutController.dataSource.selection.value.firstOrNull;
      if (location != null) {
        HelperMethods.showLocationFullDetailsScreen(
          context,
          location,
          widget.controller,
        );
        _emrQueryLayoutController.dataSource.selection.value = [];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final locations = widget.stockTake.locations;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderDetails(
          productFamily: widget.stockTake.productFamily,
          name: widget.stockTake.name,
          yard: widget.stockTake.yardCode,
          conductedByLabel: widget.stockTake.isRoutineCheck
              ? context.l10n.completedBy
              : context.l10n.submittedBy,
          conductedBy: widget.stockTake.submitter ?? '',
          onShowWorkflowHistory: widget.stockTake.isRoutineCheck
              ? null
              : () => HelperMethods.showWorkflowHistory(
                    context,
                    widget.controller.service,
                    widget.stockTake,
                  ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
            top: Insets.gutter / 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${context.l10n.locations} (${locations.length})',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  DropdownButton<Uom>(
                    value: widget.controller.selectedUom.value,
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          widget.controller.selectedUom.value = value;
                        }
                      });
                    },
                    hint: Text(context.l10n.uom),
                    items: uoms.map<DropdownMenuItem<Uom>>(
                      (Uom value) {
                        return DropdownMenuItem<Uom>(
                          value: value,
                          child: Text(value.name.toUpperCase()),
                        );
                      },
                    ).toList(),
                  ),
                  PopupMenuButton(
                    icon: const Icon(Icons.sort),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem<void>(
                          child: Text(context.l10n.location),
                          onTap: () {
                            sortLocations(locations, context.l10n.location);
                          },
                        ),
                        PopupMenuItem<void>(
                          child: Text(context.l10n.adjustedWeight),
                          onTap: () {
                            sortLocations(
                              locations,
                              context.l10n.weightDiff,
                            );
                          },
                        ),
                        PopupMenuItem<void>(
                          child: Text(context.l10n.adjustedValue),
                          onTap: () {
                            sortLocations(
                              locations,
                              context.l10n.valueDiff,
                            );
                          },
                        ),
                        PopupMenuItem<void>(
                          child: Text(context.l10n.weight),
                          onTap: () {
                            sortLocations(locations, context.l10n.weight);
                          },
                        ),
                      ];
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: widget.controller.selectedUom,
            builder: (context, value, child) {
              return EmrQueryLayoutHybrid(
                controller: _emrQueryLayoutController,
                cardWidth: MediaQuery.of(context).size.width * 0.9,
                showSearch: false,
                buildCardTitle: (location) {
                  return '${location.code} - ${location.description}';
                },
                buildCardSubtitle: (location) =>
                    '${location.productCode} - ${location.productDesc}',
                buildCardTrailing: (item) => IconButton(
                  icon: const Icon(Icons.comment_outlined),
                  padding: EdgeInsets.zero,
                  onPressed: () => HelperMethods.openCommentsDialog(
                    context,
                    widget.stockTake.id!,
                    item,
                    widget.controller.service,
                  ),
                ),
                buildCardBody: (item, index) {
                  return LocationApproval(
                    location: locations[index],
                    controller: widget.controller,
                  );
                },
              );
            },
          ),
        ),
        Visibility(
          visible: widget.stockTake.canApprove(
            context,
            widget.controller.userInfoService.userInfo.emailAddress,
          ),
          child: ReviewStocktakeButtons(
            controller: widget.controller,
            stockTake: widget.stockTake,
            onVoteSubmit: widget.onVoteSubmit,
          ),
        ),
      ],
    );
  }

  void sortLocations(List<StocktakeLocation> locations, String sortBy) {
    switch (sortBy) {
      case 'Location':
        locations.sort(
          (a, b) => a.code.compareTo(b.code),
        );
      case 'Weight':
        locations.sort(
          (a, b) => b.netWeightMT!.value.compareTo(a.netWeightMT!.value),
        );
      case 'Weight Diff':
        locations.sort(
          (a, b) =>
              b.weightVariance!.value.compareTo(a.weightVariance?.value ?? 0),
        );
      case 'Value Diff':
        locations.sort(
          (a, b) => (b.valueVariance ?? 0).compareTo(a.valueVariance ?? 0),
        );
    }
    setState(() {
      _emrQueryLayoutController.dataSource.data.value = [...locations];
    });
  }
}
