import 'package:collection/collection.dart';
import 'package:emr_one_core/data/data.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/widgets/grid/emr_grid_controller.dart';
import 'package:flutter/foundation.dart';

/// This important class provides the glue between data being queried and the
/// UI showing the results.
/// The <T> argument represents the item type being queried.
/// Several abstract methods facilitate data loading and responding to new data.
abstract class EmrQueryDataSource<T> {
  /// A configuration value to indicate whether the data source should be loaded
  /// when the screen is first shown, or whether the user must perform an
  /// action such as clicking a search button first.
  bool get autoPopulate => false;

  /// Whether the data source supports paging.
  bool get supportsPaging => true;

  /// Whether the data source supports facets.
  bool get supportsFacets => false;

  /// The data source's current data.
  ValueNotifier<List<T>> data = ValueNotifier([]);

  /// The data source's current loading state.
  ValueNotifier<bool> loading = ValueNotifier(false);

  /// The data source's current facets.
  ValueNotifier<Map<String, EmrFacetResult>> facets = ValueNotifier({});

  /// The number of records matching the query.
  int recordCount = 0;

  /// The data source's current query scope.
  EmrQueryScope queryScope = EmrQueryScope(
    query: '',
    filters: {},
    sortOrder: [],
  );

  /// The data source's current page number.
  int pageNumber = 1;

  /// The data source's current page size.
  int pageSize = 50;

  /// The page sizes that the datasource supports.
  List<int> pageSizes = [50, 100, 200, 300, 400, 500];

  /// A function which can be called when the data source is refreshed.
  Future<void> Function() onRefresh = Future.value;

  /// Refresh the data soure. This function should always be implemented.
  Future<void> refresh() => throw UnimplementedError();

  /// Move to the first page. Required if [supportsPaging] is true.
  Future<void> moveToStart() => throw UnimplementedError();

  /// Move to the previous page. Required if [supportsPaging] is true.
  Future<void> moveToPrevious() => throw UnimplementedError();

  /// Move to the next page. Required if [supportsPaging] is true.
  Future<void> moveToNext() => throw UnimplementedError();

  /// Move to the last page. Required if [supportsPaging] is true.
  Future<void> moveToEnd() => throw UnimplementedError();

  /// Change the page size. Required if [supportsPaging] is true.
  Future<void> pageSizeChange(int newPageSize) => throw UnimplementedError();

  /// Cycle the sort order of a field from ASC, to DESC, to not sorted.
  Future<void> sortBy(String field) async {
    var value = queryScope.sortOrder
        .firstWhereOrNull((element) => element.field == field);

    if (value == null) {
      value = EmrQueryScopeSortOrder(
        field: field,
        direction: EmrQueryScopeSortOrderDirection.asc,
      );
      queryScope.sortOrder.add(value);
      return refresh();
    }

    if (value.direction == EmrQueryScopeSortOrderDirection.asc) {
      value.direction = EmrQueryScopeSortOrderDirection.desc;
      return refresh();
    }

    queryScope.sortOrder.remove(value);
    return refresh();
  }

  /// Remove an item from the data source.
  void removeItem(T item) {
    data.value = data.value.where((e) => e != item).toList();
  }

  /// The below properties all relate to selection which has been added
  /// to the data source. The purpose of adding these here is to allow
  /// the data source to manage selection state, rather than the
  /// controller or the view. This way when a data source is used in
  /// a card view and a grid view the selection state is consistent
  /// across both views and the logic is encapsulated in the data source.
  ///
  /// These properties and methods are only relevant if framework widget
  /// consuming the data source is in a special mode where it delegates
  /// selection to the data source instead of the controller.

  // Row selection mode
  RowSelectionMode selectionMode = RowSelectionMode.none;

  // List of selected rows
  final ValueNotifier<List<T>> selection = ValueNotifier([]);

  void addToSelection(T item) {
    if (selectionMode == RowSelectionMode.none) return;
    if (selection.value.contains(item)) return;
    if (selectionMode == RowSelectionMode.single) {
      // If single selection mode, clear the selection
      // before adding the new item
      selection.value = [item];
    } else {
      selection.value = [...selection.value, item];
    }
  }

  void removeFromSelection(T item) {
    if (selectionMode == RowSelectionMode.none) return;
    if (!selection.value.contains(item)) return;
    selection.value = selection.value.where((e) => e != item).toList();
  }

  void selectAll() {
    if (selectionMode == RowSelectionMode.none) return;
    selection.value = List.from(data.value);
  }

  void clearSelection() {
    if (selectionMode == RowSelectionMode.none) return;
    selection.value = [];
  }
}
