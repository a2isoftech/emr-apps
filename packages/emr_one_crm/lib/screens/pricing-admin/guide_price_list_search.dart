import 'package:collection/collection.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_screen_controller.dart';
import 'package:emr_one_crm/screens/pricing-admin/icon_with_popup.dart';
import 'package:flutter/material.dart';

class GuidePriceListSearch extends StatelessWidget {
  const GuidePriceListSearch({
    required this.queryLayoutController,
    required this.controller,
    required this.gridController,
    super.key,
  });

  final GplScreenController controller;
  final EmrQueryLayoutController<GuidePriceListLine> queryLayoutController;
  final EmrGridController<GuidePriceListLine> gridController;

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<GuidePriceListLine>.grid(
      queryLayoutController: queryLayoutController,
      gridController: gridController,
      columns: [
        columnBuilderWidget(
          headerText: context.l10n.tags,
          cellWidget: (rowItem) => rowItem.listItems.itemTags.isNotEmpty
              ? IconWithPopup(
                  priceListId: rowItem.id,
                  productCode: rowItem.listItems.productCode,
                  tags: rowItem.listItems.itemTags,
                  controller: controller,
                )
              : Container(),
          getSortIcon: () => sortIcon('tags'),
          onSortTap: () => queryLayoutController.dataSource.sortBy('tags'),
        ),
        columnBuilder(
          headerText: context.l10n.managers.substring(0, 7),
          cellText: (rowItem) => rowItem.manager,
          getSortIcon: () => sortIcon('manager'),
          onSortTap: () => queryLayoutController.dataSource.sortBy('manager'),
        ),
        columnBuilder(
          headerText: context.l10n.accountNumber,
          cellText: (rowItem) => rowItem.accountNo,
          getSortIcon: () => sortIcon('accountNo'),
          onSortTap: () => queryLayoutController.dataSource.sortBy('accountNo'),
        ),
        columnBuilder(
          headerText: context.l10n.grade,
          cellText: (rowItem) => rowItem.listItems.productCode,
          getSortIcon: () => sortIcon('productCode'),
          onSortTap: () =>
              queryLayoutController.dataSource.sortBy('productCode'),
        ),
        columnBuilder(
          headerText: context.l10n.yard,
          cellText: (rowItem) => rowItem.listItems.deltas.length > 1
              ? context.l10n.psnopMulti.toUpperCase()
              : rowItem.listItems.deltas.first.yard,
          getSortIcon: () => sortIcon('yardCode'),
          toolTipMsg: (rowItem) =>
              rowItem.listItems.deltas.map((delta) => delta.yard).join(', '),
          onSortTap: () => queryLayoutController.dataSource.sortBy('yardCode'),
        ),
        columnBuilder(
          headerText: context.l10n.priceType,
          cellText: (rowItem) => rowItem.listItems.deliveryType,
          getSortIcon: () => sortIcon('priceType'),
          onSortTap: () => queryLayoutController.dataSource.sortBy('priceType'),
        ),
        columnBuilder(
          headerText: context.l10n.haulagePrice,
          cellText: (rowItem) =>
              rowItem.listItems.haulageChargeUoMValue.toString(),
          getSortIcon: () => sortIcon('haulagePrice'),
          onSortTap: () =>
              queryLayoutController.dataSource.sortBy('haulagePrice'),
        ),
        columnBuilder(
          headerText: context.l10n.gplPrice,
          cellText: (rowItem) =>
              rowItem.listItems.baseMaterialPriceUoMValue.toString(),
          getSortIcon: () => sortIcon('gplPrice'),
          onSortTap: () => queryLayoutController.dataSource.sortBy('gplPrice'),
        ),
        columnBuilder(
          headerText: context.l10n.resultantPrice,
          cellText: (rowItem) => rowItem.listItems.haulageAdjustment.toString(),
          getSortIcon: () => sortIcon('haulageRate'),
          onSortTap: () =>
              queryLayoutController.dataSource.sortBy('haulageRate'),
        ),
      ],
    );
  }

  Widget sortIcon(String field) {
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

  EmrGridColumn<GuidePriceListLine> columnBuilderWidget({
    required String headerText,
    required Widget Function(
      GuidePriceListLine,
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
            ),
            if (getSortIcon != null) getSortIcon.call(),
          ],
        ),
      ),
      cellBuilder: (GuidePriceListLine rowItem) => GestureDetector(
        child: cellWidget.call(rowItem),
      ),
    );
  }

  EmrGridColumn<GuidePriceListLine> columnBuilder({
    required String headerText,
    required String Function(
      GuidePriceListLine,
    ) cellText,
    String Function(
      GuidePriceListLine,
    )? toolTipMsg,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    toolTipMsg ??= (GuidePriceListLine line) => '';
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
      cellBuilder: (GuidePriceListLine rowItem) => GestureDetector(
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
