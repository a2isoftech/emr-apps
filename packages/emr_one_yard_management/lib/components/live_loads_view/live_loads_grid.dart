import 'dart:collection';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_filter_controller.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_filter_view.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_grid_controller.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LiveLoadsGrid extends StatelessWidget {
  LiveLoadsGrid({
    required this.controller,
    required this.filterController,
    super.key,
  });
  static const double headerHeight = 40;
  final LiveLoadsFilterController filterController;
  final LiveLoadsGridController controller;
  final ScrollController scrollController = ScrollController();

  final selectedRows = HashSet<LiveLoadsModel>.identity();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.gutter),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height -
            (LiveLoadsGrid.headerHeight + (2 * Insets.gutter)) -
            8,
      ),
      child: Column(
        children: [
          LiveLoadsFilterView(
            filterController: filterController,
            gridController: controller,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: controller.busy,
              builder: (BuildContext context, value, Widget? child) {
                return ValueListenableBuilder(
                  valueListenable: controller.gridController.data,
                  builder: (BuildContext context2, value2, Widget? child2) {
                    return Stack(
                      children: [
                        if (controller.busy.value)
                          const Center(child: CircularProgressIndicator()),
                        if (!controller.busy.value &&
                            !controller.noFilters &&
                            controller.gridController.data.value.isEmpty)
                          Center(child: Text(context.l10n.noResults)),
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
            onRefresh: controller.searchChanged,
            child: EmrGrid<LiveLoadsModel>(
              controller: controller.gridController,
              verticalScrollController: scrollController,
              columns: [
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Direction',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.direction,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Date',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    DateFormat.yMd().format(rowItem.scheduledDate.toLocal()),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Type',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.type,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Haulier',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.haulierName,
                    overflow: TextOverflow.ellipsis,
                  ),
                  flex: 3,
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Job No.',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.jobNumber.toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Customer',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.customerLocation,
                    overflow: TextOverflow.ellipsis,
                  ),
                  flex: 2,
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Planned',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.planned ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Instructions',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.instruction ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Actual',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.actual ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Remaining',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.remaining ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(
                    'Status',
                    style: headerTextStyle,
                  ),
                  cellBuilder: (LiveLoadsModel rowItem) => Text(
                    rowItem.status,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const Text(''),
                  cellBuilder: _indicator,
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
              onPressed: controller.searchChanged,
              child: const Icon(
                Icons.refresh,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _indicator(LiveLoadsModel item) {
    Color itemColor;
    switch (item.status) {
      case ('Completed'):
        itemColor = const Color(0xFF9BDE01);
      case ('InProgress'):
        itemColor = const Color(0xFFEDCE2C);
      case ('Scheduled'):
        itemColor = const Color(0xFF279DD4);
      case ('Requested'):
        itemColor = const Color(0xFFD5D1BC);
      case ('Abandoned'):
        itemColor = const Color(0xFFFF0000);
      case ('OnRoute'):
        itemColor = const Color(0xFFCF9FFF);
      case ('Booked'):
        itemColor = const Color(0xFFe9b31f);
      default:
        itemColor = Colors.red;
    }
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: itemColor,
      ),
    );
  }
}
