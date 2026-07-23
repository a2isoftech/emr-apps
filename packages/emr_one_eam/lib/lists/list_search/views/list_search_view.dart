import 'package:collection/collection.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/graphql/queries/lists_search.graphql.dart';
import 'package:emr_one_eam/lists/list_search/views/list_search_data_source.dart';
import 'package:emr_one_eam/models/update_list_model.dart';
import 'package:flutter/material.dart';

class ListSearchView extends StatefulWidget {
  const ListSearchView({
    required this.queryLayoutController,
    this.onListSelected,
    super.key,
  });

  final EmrQueryLayoutController<Query$getLists$lists$nodes>
      queryLayoutController;

  final void Function(UpdateListModel?)? onListSelected;

  @override
  State<ListSearchView> createState() => _ListSearchView1State();
}

class _ListSearchView1State extends State<ListSearchView> {
  late EmrGridController<Query$getLists$lists$nodes> _gridController;

  @override
  void initState() {
    super.initState();

    _gridController = EmrGridController<Query$getLists$lists$nodes>(
      data: widget.queryLayoutController.dataSource.data,
      showLoader: widget.queryLayoutController.dataSource.loading,
    );
    final gridDataSource =
        widget.queryLayoutController.dataSource as ListSearchDataSource;
    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };

    gridDataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: EmrQueryLayout<Query$getLists$lists$nodes>.grid(
            gridController: _gridController,
            queryLayoutController: widget.queryLayoutController,
            onRowTapped: (Query$getLists$lists$nodes row) {
              widget.onListSelected?.call(
                UpdateListModel(
                  id: row.id,
                  name: row.listName,
                  values: row.listValue
                      ?.map(
                        (e) => UpdateListValueWrapModel(
                          oldValue: UpdateListValueModel(
                            active: e.active,
                            orderIndex: e.orderIndex,
                            text: e.text,
                            value: e.value,
                          ),
                          newValue: UpdateListValueModel(
                            active: e.active,
                            orderIndex: e.orderIndex,
                            text: e.text,
                            value: e.value,
                          ),
                        ),
                      )
                      .toList(),
                ),
              );
            },
            columns: [
              columnBuilder(
                headerText: context.l10n.listNameLabel,
                getSortIcon: () => _sortIcon('listName'),
                onSortTap: () =>
                    widget.queryLayoutController.dataSource.sortBy('listName'),
                cellText: (p0) => p0.listName ?? '',
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: Insets.gutter,
          child: ElevatedButton(
            onPressed: () {
              widget.onListSelected?.call(null);
            },
            child: const Icon(Icons.add),
          ),
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

  EmrGridColumn<Query$getLists$lists$nodes> columnBuilder({
    required String headerText,
    required String Function(
      Query$getLists$lists$nodes,
    ) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor:
            onSortTap != null ? SystemMouseCursors.click : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  headerText,
                ),
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder: (Query$getLists$lists$nodes rowItem) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          cellText.call(rowItem),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
