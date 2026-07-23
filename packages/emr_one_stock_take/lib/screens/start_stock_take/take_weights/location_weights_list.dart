import 'dart:async';

import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/stock_take_model.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/widgets/loader_wrapper.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LocationWeightsList extends StatefulWidget {
  LocationWeightsList({
    required this.locationWeightController,
    required this.stockTakeId,
    super.key,
  });

  final LocationWeightController locationWeightController;
  final String stockTakeId;
  final Signal<bool> isSearchMode = signal(false);

  @override
  State<LocationWeightsList> createState() => _LocationWeightsListState();
}

class _LocationWeightsListState extends State<LocationWeightsList> {
  late Future<StockTake?> stockTakeFuture;

  @override
  void initState() {
    super.initState();
    loadLocations();
  }

  void loadLocations() {
    stockTakeFuture = widget.locationWeightController.stocktakeService
        .getStockTake(id: HelperMethods.decodedStocktakeId(widget.stockTakeId));
  }

  void refresh() {
    setState(loadLocations);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: stockTakeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            return LoaderWrapper(
              showLoader: widget.locationWeightController.showLoader,
              child: Locations(
                controller: widget.locationWeightController,
                stockTake: snapshot.data,
                isSearchMode: widget.isSearchMode,
                onEdited: refresh,
              ),
            );
          } else {
            return Center(
              child: Text(
                context.l10n.anErrorOccurredTryAgain,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            );
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class Locations extends StatefulWidget {
  const Locations({
    required this.controller,
    required this.stockTake,
    required this.isSearchMode,
    this.onEdited,
    super.key,
  });

  final LocationWeightController controller;
  final StockTake? stockTake;
  final Signal<bool> isSearchMode;
  final void Function()? onEdited;

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  final Signal<String> _searchQuery = signal('');
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    final locations = widget.stockTake?.locations ?? [];
    final hasAuditedLocations = locations.any(
      (location) => location.takenWeights.isNotEmpty,
    );
    final loggedInUserId = UserInfoService.instance?.userInfo.id;
    final isEnableFinishButton =
        widget.stockTake?.conductedBy.split('/').last == loggedInUserId ||
        widget.stockTake?.originatorId.split('/').last == loggedInUserId;

    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;

    return Watch(
      (context) => Column(
        children: [
          if (widget.isSearchMode.value)
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      onChanged: (text) {
                        if (_debounce?.isActive ?? false) {
                          _debounce?.cancel();
                        }
                        _debounce = Timer(
                          const Duration(milliseconds: 500),
                          () => _searchQuery.value = text,
                        );
                      },
                      decoration: InputDecoration(
                        hintText: context.l10n.searchLocations,
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.close),
                          padding: const EdgeInsets.only(
                            left: Insets.gutter / 2,
                          ),
                          onPressed: () {
                            widget.isSearchMode.value = false;
                            _searchQuery.value = '';
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          else
            HeaderDetails(
              productFamily: widget.stockTake!.productFamily,
              name: widget.stockTake!.name,
              yard: widget.stockTake!.yardCode,
              conductedBy: widget.stockTake!.conductor ?? '',
              onShowSearch: () => widget.isSearchMode.value = true,
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter / 2,
                left: Insets.gutter,
                right: Insets.gutter,
              ),
              child: Watch(
                (context) => DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            Insets.gutter * 2,
                          ),
                        ),
                        elevation: 1,
                        child: TabBar(
                          tabs: [
                            Tab(
                              text:
                                  '${context.l10n.pending} '
                                  '(${getPendingLocationsCount(locations)})',
                            ),
                            Tab(
                              text:
                                  '${context.l10n.completed} '
                                  '(${getCompletedLocationsCount(locations)})',
                            ),
                          ],
                          indicator: BoxDecoration(
                            color: Theme.of(context).colorScheme.onSurface,
                            borderRadius: BorderRadius.circular(
                              Insets.gutter * 2,
                            ),
                          ),
                          labelColor: Theme.of(context).colorScheme.surface,
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                      ),
                      const SizedBox(height: Insets.gutter / 2),
                      Expanded(
                        child: TabBarView(
                          children: [
                            _tabSection(context),
                            _tabSection(context, isCompleted: true),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter,
              right: Insets.gutter,
            ),
            child: Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: hasAuditedLocations && isEnableFinishButton
                        ? () => openConfirmSendToWorkflow(
                            context,
                            getCompletedLocationsCount(locations),
                          )
                        : null,
                    style: EmrButtonStyles.cta(),
                    child: Text(
                      widget.stockTake!.isRoutineCheck
                          ? context.l10n.completeStocktake
                          : context.l10n.submitForApproval,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: brandColours.onCtaColour,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int getCompletedLocationsCount(List<StocktakeLocation> locations) {
    final searchedLocations = locations
        .where(filterLocationsBySearchText)
        .map((x) => x.id);
    return locations
        .where(
          (x) =>
              x.status == Enum$StockTakeLocationStatus.COMPLETED &&
              searchedLocations.contains(x.id),
        )
        .length;
  }

  bool filterLocationsBySearchText(StocktakeLocation x) {
    final searchText = _searchQuery.value.toLowerCase();
    return x.code.toLowerCase().contains(searchText) ||
        x.description.toLowerCase().contains(searchText) ||
        x.productCode.toLowerCase().contains(searchText) ||
        (x.productDesc?.toLowerCase().contains(searchText) ?? false);
  }

  int getPendingLocationsCount(List<StocktakeLocation> locations) {
    final searchedLocations = locations
        .where(filterLocationsBySearchText)
        .map((x) => x.id);
    return locations
        .where(
          (x) =>
              x.status == Enum$StockTakeLocationStatus.PENDING &&
              searchedLocations.contains(x.id),
        )
        .length;
  }

  Widget _tabSection(BuildContext context, {bool isCompleted = false}) {
    final locations =
        widget.stockTake?.locations
            .where(
              (x) =>
                  (isCompleted
                      ? x.status == Enum$StockTakeLocationStatus.COMPLETED
                      : x.status == Enum$StockTakeLocationStatus.PENDING) &&
                  (filterLocationsBySearchText(x)),
            )
            .toList() ??
        [];
    return locations.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: locations.length,
                  itemBuilder: (context, index) {
                    return LocationCard(
                      location: locations[index],
                      controller: widget.controller,
                      stockTake: widget.stockTake!,
                      index: index,
                      onEdited: widget.onEdited,
                    );
                  },
                ),
              ),
            ],
          )
        : Center(child: Text(context.l10n.noLocationsFound));
  }

  Future<void> openConfirmSendToWorkflow(
    BuildContext context,
    int? completedLocationsCount,
  ) async {
    final remainingCount =
        widget.stockTake?.locations
            .where((x) => x.status == Enum$StockTakeLocationStatus.PENDING)
            .length ??
        0;

    if (remainingCount > 0) {
      return EmrDialog.modal(
        context,
        titleText: context.l10n.error,
        builder: (_) => SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
            // Hardcoded message for time being due to using latest
            // emr_one_localisations has errors in EmrApps
            // due to another package uses older version and some
            // existing localisations are removed in new versions
            // Need to get this message from localisations in future
            // localization key: stockTakePendingWeightsWarning
            'There ${remainingCount == 1 
              ? 'is still 1 location' 
              : 'are still $remainingCount locations'} '
            'without weights. '
            'Please complete ${remainingCount == 1 ? 'it' : 'them'} '
            'before submitting.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        isDanger: true,
        buttons: {EmrDialogButton.accept},
        dialogMode: DialogMode.compact,
        acceptLabel: context.l10n.ok,
      );
    }

    await widget.controller.showSubmitForApprovalConfirmation(
      context,
      remainingCount,
      () async {
        final response = await widget.controller.stocktakeService
            .updateDeltaWeight(widget.stockTake!.id!);
        if (!context.mounted) return;

        if (!response.success) {
          Navigator.of(context).pop();
          return EmrModal.showMessageBar(
            context,
            HelperMethods.getErrorMessage(context, response),
            messageType: MessageBarTypes.error,
          );
        }

        if (widget.stockTake!.isRoutineCheck) {
          await completeStockTake(context);
        } else {
          await sendStocktakeToWorkflow(context);
        }
      },
      isRoutineCheck: widget.stockTake!.isRoutineCheck,
    );
  }

  Future<void> sendStocktakeToWorkflow(BuildContext context) async {
    final result = await widget.controller.stocktakeService
        .sendStocktakeToWorkflow(widget.stockTake!.id!);

    if (!context.mounted) return;
    Navigator.of(context).pop();

    if (result.success) {
      Navigator.of(context).pop();
      await EmrModal.showMessageBar(
        context,
        context.l10n.stockTakeSentToWorkflow,
      );
    } else {
      await EmrModal.showMessageBar(
        context,
        HelperMethods.getErrorMessage(context, result),
        messageType: MessageBarTypes.error,
      );
    }
  }

  Future<void> completeStockTake(BuildContext context) async {
    final result = await widget.controller.stocktakeService.completeStockTake(
      id: widget.stockTake!.id!,
    );
    if (!context.mounted) return;
    Navigator.of(context).pop();

    if (!result.success) {
      await EmrModal.showMessageBar(
        context,
        HelperMethods.getErrorMessage(context, result),
        messageType: MessageBarTypes.error,
      );
    } else {
      Navigator.of(context).pop();
      await EmrModal.showMessageBar(
        context,
        context.l10n.completeStockTakeSuccess,
      );
    }
  }
}
