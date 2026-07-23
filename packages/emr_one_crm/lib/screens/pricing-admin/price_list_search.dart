import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_screen_controller.dart';
import 'package:flutter/material.dart';

class PriceListSearch extends StatelessWidget {
  const PriceListSearch({
    required this.controller,
    required this.queryLayoutController,
    required this.gridController,
    super.key,
  });

  final GplScreenController controller;
  final EmrQueryLayoutController<AccountPrice> queryLayoutController;
  final EmrGridController<AccountPrice> gridController;

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<AccountPrice>.grid(
      queryLayoutController: queryLayoutController,
      gridController: gridController,
      columns: [
        columnBuilderWidget(
          headerText: context.l10n.tags,
          cellWidget: (rowItem) => Container(),
          getSortIcon: () => _sortIcon('tags'),
          onSortTap: () => queryLayoutController.dataSource.sortBy('tags'),
        ),
        columnBuilder(
          headerText: context.l10n.managers.substring(0, 7),
          cellText: (rowItem) => rowItem.managerName,
          getSortIcon: () => _sortIcon('manager'),
          onSortTap: () =>
              queryLayoutController.dataSource.sortBy('managerName'),
        ),
        columnBuilder(
          headerText: context.l10n.accountCode,
          cellText: (rowItem) => rowItem.accountCode,
          getSortIcon: () => _sortIcon('accountCode'),
          toolTipMsg: (rowItem) => rowItem.accountName,
          onSortTap: () =>
              queryLayoutController.dataSource.sortBy('accountCode'),
        ),
        columnBuilder(
          headerText: context.l10n.publicationName,
          cellText: (rowItem) => rowItem.publicationName,
          getSortIcon: () => _sortIcon('publicationName'),
          onSortTap: () =>
              queryLayoutController.dataSource.sortBy('publicationName'),
        ),
        columnBuilder(
          headerText: context.l10n.product,
          cellText: (rowItem) => rowItem.product,
          getSortIcon: () => _sortIcon('product'),
          onSortTap: () =>
              queryLayoutController.dataSource.sortBy('publicationName'),
        ),
        columnBuilder(
          headerText: context.l10n.yard,
          cellText: (rowItem) => rowItem.yardCode,
          getSortIcon: () => _sortIcon('yardCode'),
          onSortTap: () => queryLayoutController.dataSource.sortBy('yardCode'),
        ),
        columnBuilder(
          headerText: context.l10n.deliveryMethod,
          cellText: (rowItem) => rowItem.deliveryMethod.name,
          getSortIcon: () => _sortIcon('deliveryMethod'),
          onSortTap: () =>
              queryLayoutController.dataSource.sortBy('deliveryMethod'),
        ),
        columnBuilder(
          headerText: context.l10n.resultantPrice,
          cellText: (rowItem) => rowItem.resultantPrice?.toString() ?? '',
          getSortIcon: () => _sortIcon('resultantRate'),
          onSortTap: () =>
              queryLayoutController.dataSource.sortBy('resultantRate'),
        ),
      ],
    );
  }

  EmrGridColumn<AccountPrice> columnBuilderWidget({
    required String headerText,
    required Widget Function(
      AccountPrice,
    ) cellWidget,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => GestureDetector(
        onTap: onSortTap,
        child: Row(
          children: [
            Text(
              headerText,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            if (getSortIcon != null) getSortIcon.call(),
          ],
        ),
      ),
      cellBuilder: (AccountPrice rowItem) => GestureDetector(
        child: cellWidget.call(rowItem),
      ),
    );
  }

  Widget _sortIcon(String field) {
    final value =
        queryLayoutController.dataSource.queryScope.sortOrder.firstWhereOrNull(
      (element) => element.field == field,
    );

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
            ? const Icon(Icons.arrow_drop_up)
            : const Icon(Icons.arrow_drop_down);
  }

  EmrGridColumn<AccountPrice> columnBuilder({
    required String headerText,
    required String Function(
      AccountPrice,
    ) cellText,
    String Function(
      AccountPrice,
    )? toolTipMsg,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    toolTipMsg ??= (AccountPrice line) => '';
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => GestureDetector(
        onTap: onSortTap,
        child: Row(
          children: [
            Expanded(
              child: Text(
                headerText,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            if (getSortIcon != null) getSortIcon.call(),
          ],
        ),
      ),
      cellBuilder: (AccountPrice rowItem) => GestureDetector(
        child: Tooltip(
          message: toolTipMsg!.call(rowItem),
          child: Text(
            cellText.call(rowItem),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
