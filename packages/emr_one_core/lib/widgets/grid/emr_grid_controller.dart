import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';

enum RowSelectionMode { none, single, multiple }

class EmrGridController<TRowData> {
  EmrGridController({
    required this.data,
    ValueNotifier<bool>? showLoader,
    this.rowSelectionMode = RowSelectionMode.none,
    List<TRowData> selectedRows = const [],
    this.onSelectedRowsChanged,
    this.dataSource,
  }) {
    this.selectedRows = ValueNotifier<List<TRowData>>(selectedRows);
    this.showLoader = showLoader ?? ValueNotifier<bool>(false);
  }

  final ValueNotifier<List<TRowData>> data;

  final EmrQueryDataSource<TRowData>? dataSource;

  // Row selection mode on the grid
  final RowSelectionMode rowSelectionMode;

  // List of selected rows
  late final ValueNotifier<List<TRowData>> selectedRows;

  // Callback on selected rows are modified
  final void Function(List<TRowData> selectedRows)? onSelectedRowsChanged;

  late ValueNotifier<bool> showLoader;

  /// The below selection methods have been added to the [EmrGridController]
  /// in order to support mixed mode functionality where the controller
  /// can delegate selection to a data source or manage it internally.
  /// If [dataSource] is provided, these methods will call the data source's
  /// selection methods. If not, they will manage selection internally.

  void addToSelection(TRowData item) {
    if (dataSource != null) {
      dataSource!.addToSelection(item);
      return;
    }

    if (rowSelectionMode == RowSelectionMode.none) return;
    if (selectedRows.value.contains(item)) return;
    if (rowSelectionMode == RowSelectionMode.single) {
      // If single selection mode, clear the selection
      // before adding the new item
      selectedRows.value = [item];
      onSelectedRowsChanged?.call(selectedRows.value);
    } else {
      selectedRows.value = [...selectedRows.value, item];
      onSelectedRowsChanged?.call(selectedRows.value);
    }
  }

  void removeFromSelection(TRowData item) {
    if (dataSource != null) {
      dataSource!.removeFromSelection(item);
      return;
    }

    if (rowSelectionMode == RowSelectionMode.none) return;
    if (!selectedRows.value.contains(item)) return;
    selectedRows.value = selectedRows.value.where((e) => e != item).toList();
    onSelectedRowsChanged?.call(selectedRows.value);
  }

  void selectAll() {
    if (dataSource != null) {
      dataSource!.selectAll();
      return;
    }

    if (rowSelectionMode == RowSelectionMode.none) return;
    selectedRows.value = List.from(data.value);
    onSelectedRowsChanged?.call(selectedRows.value);
  }

  void clearSelection() {
    if (dataSource != null) {
      dataSource!.clearSelection();
      return;
    }

    if (rowSelectionMode == RowSelectionMode.none) return;
    selectedRows.value = [];
    onSelectedRowsChanged?.call(selectedRows.value);
  }
}
