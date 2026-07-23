import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/queries/inventory/search_inventory/search_inventory.graphql.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/constants/inventory_constants.dart';
import 'package:emr_one_inventory/services/inventory_search_service.dart';
import 'package:flutter/material.dart';

class InventorySearch extends StatefulWidget {
  const InventorySearch({
    required this.queryLayoutController,
    required this.inventorySearchService,
    super.key,
  });

  final EmrQueryLayoutController<Query$SearchInventory$searchInventory$nodes>
      queryLayoutController;
  final InventorySearchService inventorySearchService;

  @override
  State<InventorySearch> createState() => _InventorySearchState();
}

class _InventorySearchState extends State<InventorySearch> {
  late EmrGridController<Query$SearchInventory$searchInventory$nodes>
      _gridController;

  @override
  void initState() {
    super.initState();

    _gridController =
        EmrGridController<Query$SearchInventory$searchInventory$nodes>(
      data: widget.queryLayoutController.dataSource.data,
      rowSelectionMode: RowSelectionMode.multiple,
      showLoader: widget.queryLayoutController.dataSource.loading,
    );

    // Clear the grid selection when a search is performed.
    widget.queryLayoutController.dataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<Query$SearchInventory$searchInventory$nodes>.grid(
      queryLayoutController: widget.queryLayoutController,
      gridController: _gridController,
      columns: [
        columnBuilder(
          headerText: context.l10n.yard,
          cellText: (rowItem) => rowItem.yardId,
          getSortIcon: () => _sortIcon('yardId'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('yardId'),
        ),
        columnBuilder(
          headerText: context.l10n.heap,
          cellText: (rowItem) => rowItem.code,
          getSortIcon: () => _sortIcon('heap'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('heap'),
        ),
        columnBuilder(
          headerText: 'Heap Description',
          cellText: (rowItem) => rowItem.description,
          getSortIcon: () => _sortIcon('heapDescription'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('heapDescription'),
        ),
        columnBuilder(
          headerText: context.l10n.product,
          cellText: (rowItem) => rowItem.productCode ?? '',
          getSortIcon: () => _sortIcon('productCode'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('productCode'),
        ),
        columnBuilder(
          headerText: 'Current Weight',
          cellText: (rowItem) =>
              '${rowItem.weight.value} ${rowItem.weight.uom.name}',
          getSortIcon: () => _sortIcon('currentWeight'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('currentWeight'),
        ),
        columnBuilder(
          headerText: 'Current Rate',
          cellText: (rowItem) =>
              '${rowItem.rate.value} / ${rowItem.rate.uom.name}',
          getSortIcon: () => _sortIcon('currentRate'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('currentRate'),
        ),
        columnBuilder(
          headerText: 'Current Value',
          cellText: (rowItem) => rowItem.value
              .toStringAsFixed(InventoryConstants.defaultDecimalPrecision),
          getSortIcon: () => _sortIcon('currentValue'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('currentValue'),
        ),
      ],
    );
  }

  Widget _sortIcon(String field) {
    final value = widget.queryLayoutController.dataSource.queryScope.sortOrder
        .firstWhereOrNull(
      (element) => element.field == field,
    );

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
            ? const Icon(Icons.arrow_drop_up)
            : const Icon(Icons.arrow_drop_down);
  }

  EmrGridColumn<Query$SearchInventory$searchInventory$nodes> columnBuilder({
    required String headerText,
    required String Function(
      Query$SearchInventory$searchInventory$nodes,
    ) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 150,
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
            ),
            if (getSortIcon != null) getSortIcon.call(),
          ],
        ),
      ),
      cellBuilder: (Query$SearchInventory$searchInventory$nodes rowItem) =>
          GestureDetector(
        child: Text(
          cellText.call(rowItem),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  EmrGridColumn<Query$SearchInventory$searchInventory$nodes>
      columnBuilderWidget({
    required String headerText,
    required Widget Function(
      Query$SearchInventory$searchInventory$nodes,
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
      cellBuilder: (Query$SearchInventory$searchInventory$nodes rowItem) =>
          GestureDetector(
        child: cellWidget.call(rowItem),
      ),
    );
  }
}
