import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/components/route_to_market_view/route_to_market_filter_controller.dart';
import 'package:emr_one_yard_management/components/route_to_market_view/route_to_market_grid_controller.dart';
import 'package:emr_one_yard_management/models/routeToMarket/change_history_model.dart';
import 'package:emr_one_yard_management/models/routeToMarket/route_to_market_grid_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RouteToMarketGrid extends StatefulWidget {
  RouteToMarketGrid({
    required this.filterController,
    required this.controller,
    super.key,
  });

  final RouteToMarketFilterController filterController;
  final RouteToMarketGridController controller;

  final ScrollController scrollController = ScrollController();
  final ScrollController scrollController2 = ScrollController();

  @override
  State<RouteToMarketGrid> createState() => _RouteToMarketGridState();
}

class _RouteToMarketGridState extends State<RouteToMarketGrid> {
  @override
  void dispose() {
    widget.controller.dispose();
    widget.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.scrollController.addListener(
      () {
        final nextPageTrigger =
            0.8 * widget.scrollController.position.maxScrollExtent;
        if (widget.scrollController.position.pixels > nextPageTrigger) {
          widget.controller.getRouteToMarketData();
        }
      },
    );

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.85,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: EmrFilter(controller: widget.filterController),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: widget.controller.busy,
              builder: (BuildContext context, value, child) {
                return ValueListenableBuilder(
                  valueListenable: widget.controller.gridController.data,
                  builder: (BuildContext context2, value2, Widget? child) {
                    return Stack(
                      children: [
                        if (widget.controller.busy.value)
                          const Center(child: CircularProgressIndicator()),
                        if (!widget.controller.busy.value &&
                            widget.controller.gridController.data.value.isEmpty)
                          Center(
                            child: Text(context.l10n.noResults),
                          ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: _grid(context2),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _grid(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    final theme = Theme.of(context);

    return Stack(
      children: [
        Positioned(
          child: RefreshIndicator(
            onRefresh: () =>
                widget.controller.getRouteToMarketData(isRefresh: true),
            child: EmrGrid<RouteToMarketGridModel>(
              controller: widget.controller.gridController,
              verticalScrollController: widget.scrollController,
              columns: [
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Origin',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (RouteToMarketGridModel rowItem) => Text(
                    rowItem.depotNo.toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                  flex: 2,
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Grade',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (RouteToMarketGridModel rowItem) => Text(
                    rowItem.grade.toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Destination',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (RouteToMarketGridModel rowItem) => Text(
                    rowItem.route.toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Effective Date',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (RouteToMarketGridModel rowItem) => Text(
                    rowItem.effectiveDate != null
                        ? DateFormat.yMd().format(rowItem.effectiveDate!)
                        : '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(''),
                  cellBuilder: (RouteToMarketGridModel rowItem) =>
                      rowItem.changeHistories != null
                          ? IconButton(
                              onPressed: () {
                                showDialog<void>(
                                  context: context,
                                  builder: (context) {
                                    return _changeHistoryDialog(
                                      context,
                                      rowItem.id,
                                    );
                                  },
                                );
                              },
                              icon: const Icon(Icons.history),
                            )
                          : Container(),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: Insets.gutter,
          right: Insets.gutter,
          child: Tooltip(
            message: context.l10n.reloadResults,
            child: FloatingActionButton(
              backgroundColor: theme.colorScheme.surface,
              onPressed: () =>
                  widget.controller.getRouteToMarketData(isRefresh: true),
              child: const Icon(
                Icons.refresh,
              ),
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: widget.controller.isLoadingNextPage,
          builder: (BuildContext context3, value3, child3) {
            if (value3) {
              return const Positioned(
                bottom: Insets.gutter,
                right: Insets.gutter,
                left: Insets.gutter,
                height: 100,
                child: SizedBox.expand(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            }
            return Container();
          },
        ),
      ],
    );
  }

  Widget _changeHistoryDialog(BuildContext context, int selectedId) {
    widget.controller.selectedRouteToMarketId.value = selectedId;
    return AlertDialog(
      title: Text(
        'Change History (RouteToMarket:$selectedId)',
      ),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.70,
        height: MediaQuery.sizeOf(context).height * 0.70,
        child: ValueListenableBuilder(
          valueListenable: widget.controller.busyHistory,
          builder: (context, value, child) {
            return ValueListenableBuilder(
              valueListenable: widget.controller.historyGridController.data,
              builder: (context2, value2, child2) {
                return Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: _changeHistoryGrid(
                        context,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _changeHistoryGrid(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    final theme = Theme.of(context);

    return Stack(
      children: [
        Positioned(
          child: RefreshIndicator(
            onRefresh: () => widget.controller.getChangeHistory(),
            child: EmrGrid<ChangeHistoryModel>(
              verticalScrollController: widget.scrollController2,
              controller: widget.controller.historyGridController,
              columns: [
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Column',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (ChangeHistoryModel rowItem) => Text(
                    rowItem.columnName ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Date Changed (local)',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (ChangeHistoryModel rowItem) => Text(
                    rowItem.modifiedDate == null
                        ? ''
                        : DateFormat.yMd()
                            .add_jms()
                            .format(rowItem.modifiedDate!.toLocal()),
                    overflow: TextOverflow.ellipsis,
                  ),
                  flex: 2,
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Date Changed (UK)',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (ChangeHistoryModel rowItem) => Text(
                    rowItem.modifiedDate == null
                        ? ''
                        : DateFormat.yMd()
                            .add_jms()
                            .format(rowItem.modifiedDate!),
                    overflow: TextOverflow.ellipsis,
                  ),
                  flex: 2,
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Old Value',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (ChangeHistoryModel rowItem) => Text(
                    rowItem.oldValue ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                  flex: 2,
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'New Value',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (ChangeHistoryModel rowItem) => Text(
                    rowItem.newValue ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                  flex: 2,
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Username',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (ChangeHistoryModel rowItem) => Text(
                    rowItem.userName ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: Insets.gutter,
          right: Insets.gutter,
          child: Tooltip(
            message: context.l10n.reloadResults,
            child: FloatingActionButton(
              backgroundColor: theme.colorScheme.surface,
              onPressed: () => widget.controller.getChangeHistory(),
              child: const Icon(
                Icons.refresh,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
