import 'package:collection/collection.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EmrSortableGridHeader extends StatelessWidget {
  /// This widget provides default header cell functionality for sorting a
  /// column when the grid uses an EmrQueryDataSource.
  const EmrSortableGridHeader({
    required this.field,
    required this.dataSource,
    required this.child,
    super.key,
  });

  final String field;

  final EmrQueryDataSource<dynamic> dataSource;

  final Widget child;

  @override
  Widget build(BuildContext context) => MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => dataSource.sortBy(field),
          child: Row(
            children: [
              child,
              _sortIcon(field),
            ],
          ),
        ),
      );

  Widget _sortIcon(String field) {
    final value = dataSource.queryScope.sortOrder.firstWhereOrNull(
      (element) => element.field == field,
    );

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
            ? const Icon(Icons.arrow_drop_up)
            : const Icon(Icons.arrow_drop_down);
  }
}
