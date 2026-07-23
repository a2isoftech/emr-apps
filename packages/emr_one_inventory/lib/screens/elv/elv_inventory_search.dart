import 'package:collection/collection.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/constants/inventory_constants.dart';
import 'package:emr_one_inventory/controllers/elv_inventory_search_controller.dart';
import 'package:emr_one_inventory/data_sources/elv_inventory_search_data_source.dart';
import 'package:emr_one_inventory/models/elv_inventory_item.dart';
import 'package:emr_one_inventory/services/elv_inventory_search_service.dart';
import 'package:flutter/material.dart';

class ElvInventorySearch extends StatefulWidget {
  const ElvInventorySearch({
    required this.queryLayoutController,
    required this.elvInventorySearchService,
    required this.elvInventorySearchController,
    required this.userInfoService,
    super.key,
  });

  final EmrQueryLayoutController<ElvInventoryItem> queryLayoutController;
  final ElvInventorySearchService elvInventorySearchService;
  final ElvInventorySearchController elvInventorySearchController;
  final UserInfoService userInfoService;
  @override
  State<ElvInventorySearch> createState() => _ElvInventorySearchState();
}

class _ElvInventorySearchState extends State<ElvInventorySearch> {
  late EmrGridController<ElvInventoryItem> _gridController;
  late ElvInventorySearchDataSource _dataSource;

  @override
  void initState() {
    super.initState();

    _dataSource =
        widget.queryLayoutController.dataSource as ElvInventorySearchDataSource;
    _gridController = EmrGridController<ElvInventoryItem>(
      data: _dataSource.data,
      rowSelectionMode: RowSelectionMode.multiple,
      showLoader: _dataSource.loading,
    );

    // Clear the grid selection when a search is performed.
    _dataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<ElvInventoryItem>.grid(
      queryLayoutController: widget.queryLayoutController,
      gridController: _gridController,
      columns: [
        columnBuilder(
          headerText: context.l10n.vin,
          cellText: (rowItem) => rowItem.vin,
          getSortIcon: () => _sortIcon('vin'),
          onSortTap: () => _dataSource.sortBy('vin'),
        ),
        columnBuilder(
          headerText: context.l10n.productType,
          width: 100,
          cellText: (rowItem) => rowItem.productType,
          getSortIcon: () => _sortIcon('productType'),
          onSortTap: () => _dataSource.sortBy('productType'),
        ),
        columnBuilder(
          headerText: context.l10n.status,
          width: 80,
          cellText: (rowItem) => rowItem.status,
          getSortIcon: () => _sortIcon('status'),
          onSortTap: () => _dataSource.sortBy('status'),
        ),
        columnBuilder(
          headerText: context.l10n.yard,
          width: 80,
          cellText: (rowItem) => rowItem.yardCode,
          getSortIcon: () => _sortIcon('yardCode'),
          onSortTap: () => _dataSource.sortBy('yardCode'),
        ),
        columnBuilder(
          headerText: context.l10n.location,
          width: 80,
          cellText: (rowItem) => rowItem.location ?? '',
          getSortIcon: () => _sortIcon('location'),
          onSortTap: () => _dataSource.sortBy('location'),
        ),
        columnBuilder(
          headerText: context.l10n.weight,
          width: 80,
          cellText: (rowItem) => '${rowItem.weight.value}'
              ' ${rowItem.weight.uom.name}',
          getSortIcon: () => _sortIcon('weight'),
          onSortTap: () => _dataSource.sortBy('weight'),
        ),
        columnBuilder(
          headerText: context.l10n.value,
          width: 80,
          cellText: (rowItem) =>
              rowItem.price?.toStringAsFixed(
                InventoryConstants.uom.displayFormatFractionalDigits,
              ) ??
              '',
          getSortIcon: () => _sortIcon('purchasePrice'),
          onSortTap: () => _dataSource.sortBy('purchasePrice'),
        ),
      ],
    );
  }

  EmrGridColumn<ElvInventoryItem> columnBuilder({
    required String headerText,
    required String Function(
      ElvInventoryItem,
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
      cellBuilder: (ElvInventoryItem rowItem) => GestureDetector(
        child: Text(
          cellText.call(rowItem),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  EmrGridColumn<ElvInventoryItem> columnBuilderWidget({
    required String headerText,
    required Widget Function(
      ElvInventoryItem,
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
      cellBuilder: (ElvInventoryItem rowItem) => GestureDetector(
        child: cellWidget.call(rowItem),
      ),
    );
  }

  Widget _sortIcon(String field) {
    final value = _dataSource.queryScope.sortOrder.firstWhereOrNull(
      (element) => element.field == field,
    );

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
            ? const Icon(Icons.arrow_drop_up)
            : const Icon(Icons.arrow_drop_down);
  }
}
