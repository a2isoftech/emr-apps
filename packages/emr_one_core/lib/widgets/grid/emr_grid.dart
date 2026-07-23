import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/src/widgets/query_layout/query_layout_loading.dart';
import 'package:emr_one_core/widgets/grid/emr_grid.dart';
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

export 'emr_grid_col_span.dart';
export 'emr_grid_column.dart';
export 'emr_grid_controller.dart';
export 'emr_grid_header.dart';
export 'emr_grid_rowstate.dart';
export 'emr_grid_rowstyle.dart';
export 'emr_grouped_grid.dart';
export 'emr_grouped_grid_controller.dart';
export 'emr_sortable_grid_header.dart';

class EmrGrid<TRowData> extends StatefulWidget {
  /// A grid which shows a header row and then all data rows underneath.
  /// An alternative is [EmrGroupedGrid] which shows an additional 'fixed' row
  /// above a subset of rows, but works is mostly the same way.
  ///
  /// The widget itself requires an [EmrGridController] for the `controller`,
  /// which contains a ValueListenable list of data. Whenever the data changes,
  /// the grid is updated.
  ///
  /// The only other property which needs to be set is `columns`.
  ///
  /// ```dart
  /// Widget _grid(BuildContext context) {
  ///   return EmrGrid(
  ///     controller: controller.gridController,
  ///     columns: [
  ///       EmrGridColumn(
  ///         flex: 4,
  ///         headerBuilder: () => Text(context.l10n.partyAccountNo),
  ///         cellBuilder: (Party rowItem) => Text(rowItem.partyAccountNo),
  ///       ),
  ///       EmrGridColumn(
  ///         flex: 6,
  ///         headerBuilder: () => Text(context.l10n.partyName),
  ///         cellBuilder: (Party rowItem) => Text(rowItem.name),
  ///       )
  ///     ],
  ///   );
  /// }
  /// ```
  const EmrGrid({
    required this.controller,
    required this.columns,
    super.key,
    this.horizontalPadding = Insets.gutter / 2,
    this.verticalPadding = Insets.gutter / 2,
    this.rowHeight = _defaultRowHeight,
    this.onRowTapped,
    this.onRowLongPress,
    this.verticalScrollController,
    this.noRecordsMessage,
    this.pinnedRowCount = 0,
    this.pinnedColumnCount = 0,
    this.alternateBackgroundRowColour = false,
    this.buildCustomLoadingWidget,
    this.defaultLoadingIndicatorSize = const Size(160, 120),
    this.getRowStyle,
    this.mergeColumns,
    this.trailingRowHeight,
  });

  static double _defaultRowHeight(rowIndex) => 60;

  static const double kCheckboxColumnWidth = 32;

  /// A controller that will be responsible for getting and grouping the data.
  final EmrGridController<TRowData> controller;

  /// A list of EmrGridColumn objects to define the structure of the grid.
  final List<EmrGridColumn<TRowData>> columns;

  // The height of each row.
  final double Function(int rowIndex) rowHeight;

  /// The horizontal padding for headers, grouped headers and cells.
  final double horizontalPadding;

  /// The vertical padding for headers, grouped headers and cells.
  final double verticalPadding;

  final double? trailingRowHeight;

  final void Function(TRowData row)? onRowTapped;

  final void Function(TRowData row)? onRowLongPress;

  final EmrGridColSpan? Function(
    EmrGrid<TRowData> grid,
    TableVicinity vicinity,
    TRowData rowData,
  )?
  mergeColumns;

  /// A callback that can be used to optionally style rows.
  final EmrGridRowStyle Function(
    int index,
    TRowData row,
    EmrGridRowState rowState,
  )?
  getRowStyle;

  // An optional ScrollController for the grid.
  final ScrollController? verticalScrollController;

  //To show a custom message when no data available in grid
  final Text? noRecordsMessage;

  // How many rows to pin to the top of the grid.
  final int pinnedRowCount;

  // How many columns to pin to the left of the grid.
  final int pinnedColumnCount;

  // Whether to alternate the background colour of rows.
  final bool alternateBackgroundRowColour;

  // A custom widget to show when the grid is loading.
  final Widget Function()? buildCustomLoadingWidget;

  // The default size of the loading indicator.
  final Size defaultLoadingIndicatorSize;

  @override
  State<EmrGrid<dynamic>> createState() => EmrGridState<TRowData>();
}

class EmrGridState<TRowData> extends State<EmrGrid<TRowData>> {
  final ScrollController _horizontalController = ScrollController();
  late final ScrollController _verticalController =
      widget.verticalScrollController ?? ScrollController();
  double _scaleFactor = 1;
  late final List<EmrGridColumn<TRowData>> _columns;
  final _defaultRowStyle = EmrGridRowStyle.none();
  late EmrGridRowStyle _altRowStyle;
  late EmrGridRowStyle _selectedRowStyle;
  late EmrGridRowStyle _headerRowStyle;

  @override
  void initState() {
    super.initState();
    _columns = [
      if (_selectionMode == RowSelectionMode.multiple) _getCheckboxColumn(),
      ...widget.columns,
    ];
  }

  @override
  void dispose() {
    _horizontalController.dispose();

    // Only dispose the vertical scroll controller if it was created here.
    if (widget.verticalScrollController == null) {
      _verticalController.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => switch (runtimeType) {
    EmrGroupedGrid() => _buildGroupedGrid(),
    _ => _buildStandardGrid(),
  };

  /// For standard grids, use the new 2d scrollables method.
  Widget _buildStandardGrid() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final totalWidth = _columns.fold<double>(
          0,
          (previousValue, element) => previousValue + element.width,
        );

        final layoutWidth = constraints.maxWidth;

        // calculate a scale factor so if total column width less than
        // layout columns can occupy the full width
        _scaleFactor = switch (_selectionMode == RowSelectionMode.multiple) {
          false => totalWidth < layoutWidth ? layoutWidth / totalWidth : 1.0,
          true =>
            totalWidth < layoutWidth
                ? (layoutWidth - EmrGrid.kCheckboxColumnWidth) /
                      (totalWidth - EmrGrid.kCheckboxColumnWidth)
                : 1.0,
        };

        _altRowStyle = EmrGridRowStyle(
          backgroundColour: Theme.of(
            context,
          ).colorScheme.surfaceContainerHighest,
        );
        _selectedRowStyle = EmrGridRowStyle(
          backgroundColour: Theme.of(
            context,
          ).colorScheme.tertiary.withAlpha(80),
        );
        _headerRowStyle = EmrGridRowStyle(
          backgroundColour: Theme.of(
            context,
          ).colorScheme.surfaceContainerHighest,
        );

        return _internalBuildGrid();
      },
    );
  }

  /// For backwards compatibility when grouped use the old method.
  Widget _buildGroupedGrid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [_headerRow(), _dataRows()],
    );
  }

  /// Given a vicinity, build a cell.
  TableViewCell _buildCell(BuildContext context, TableVicinity vicinity) {
    final column = _columns[vicinity.column];

    final isHeaderRow = vicinity.row == 0;

    final isFooterRow = vicinity.row == widget.controller.data.value.length + 1;

    final rowData = isHeaderRow || isFooterRow
        ? null
        : widget.controller.data.value[vicinity.row - 1];

    // Determine if we're merging columns in the row.
    // When cells are merged, we should always return the start/span for the
    // first one from this call.
    final columnMerge = rowData == null
        ? null
        : widget.mergeColumns?.call(widget, vicinity, rowData as TRowData);

    return TableViewCell(
      columnMergeStart: columnMerge?.start,
      columnMergeSpan: columnMerge?.span,
      child: Padding(
        padding: _cellPadding(
          isFirstItem: vicinity.column == 0,
          isLastItem: vicinity.column == _columns.length - 1,
        ),
        child: Align(
          alignment: _columns[vicinity.column].alignment,
          child: rowData == null
              ? isHeaderRow
                    ? column.headerBuilder()
                    : column.footerBuilder?.call(context) ??
                          const SizedBox.shrink()
              : _columns[columnMerge?.start ?? vicinity.column].cellBuilder(
                  rowData as TRowData,
                ),
        ),
      ),
    );
  }

  EdgeInsetsGeometry _cellPadding({
    required bool isFirstItem,
    required bool isLastItem,
  }) {
    return EdgeInsets.only(
      left: isFirstItem
          ? widget.horizontalPadding
          : widget.horizontalPadding / 2,
      right: isLastItem
          ? widget.horizontalPadding
          : widget.horizontalPadding / 2,
      top: widget.verticalPadding,
      bottom: widget.verticalPadding,
    );
  }

  /// For each column, build a TableSpan.
  TableSpan _buildColumnSpan(int index) =>
      switch (_selectionMode == RowSelectionMode.multiple && index == 0) {
        true => TableSpan(extent: FixedTableSpanExtent(_columns[index].width)),
        false => TableSpan(
          extent: FixedTableSpanExtent(_columns[index].width * _scaleFactor),
        ),
      };

  /// For the header row and each data row, build a TableSpan.
  TableSpan _buildRowSpan(int index) {
    final rowStyle = _calculateRowStyle(index);

    final hasFooterBuilders = _columns.any((col) => col.footerBuilder != null);

    final hasFooter = hasFooterBuilders || widget.trailingRowHeight != null;

    if (hasFooter && index == widget.controller.data.value.length + 1) {
      return TableSpan(
        extent: FixedTableSpanExtent(
          // Use the height of the header when no trailingRowHeight is provided.
          widget.trailingRowHeight ?? widget.rowHeight(-1),
        ),
        backgroundDecoration: TableSpanDecoration(
          // Only show the footer background colour if we have footer builders,
          // otherwise we're just adding extra spacing, in which case we'd want
          // the background colour of the screen to show.
          color: hasFooterBuilders ? rowStyle.backgroundColour : null,
        ),
      );
    }

    return TableSpan(
      backgroundDecoration:
          widget.alternateBackgroundRowColour || widget.getRowStyle != null
          ? TableSpanDecoration(
              color: rowStyle.backgroundColour,
              border: TableSpanBorder(
                trailing: BorderSide(
                  color:
                      rowStyle.borderColour ??
                      Theme.of(context).colorScheme.surfaceContainerHighest,
                ),
              ),
            )
          : null,
      extent: FixedTableSpanExtent(widget.rowHeight(index - 1)),
      cursor:
          (index > 0) &&
              (widget.onRowTapped != null ||
                  widget.onRowLongPress != null ||
                  _selectionMode == RowSelectionMode.single)
          ? SystemMouseCursors.click
          : MouseCursor.defer,
      recognizerFactories: (index > 0)
          ? <Type, GestureRecognizerFactory>{
              TapGestureRecognizer:
                  GestureRecognizerFactoryWithHandlers<TapGestureRecognizer>(
                    TapGestureRecognizer.new,
                    (TapGestureRecognizer t) => t.onTap = () {
                      widget.onRowTapped?.call(
                        widget.controller.data.value[index - 1],
                      );
                      _addToSelection(widget.controller.data.value[index - 1]);
                    },
                  ),
              LongPressGestureRecognizer:
                  GestureRecognizerFactoryWithHandlers<
                    LongPressGestureRecognizer
                  >(
                    LongPressGestureRecognizer.new,
                    (LongPressGestureRecognizer t) => t.onLongPress = () =>
                        widget.onRowLongPress?.call(
                          widget.controller.data.value[index - 1],
                        ),
                  ),
            }
          : {},
    );
  }

  EmrGridRowStyle _calculateRowStyle(int index) {
    final isSelected =
        index != 0 &&
        // When we have a footer, we can have more rows than in the data.
        index <= widget.controller.data.value.length &&
        _selection.value.contains(widget.controller.data.value[index - 1]);

    return switch (widget.getRowStyle) {
      null =>
        index == 0
            ? _headerRowStyle
            : isSelected
            ? _selectedRowStyle
            : _calculateAlternatingRowStyle(index),
      _ =>
        index == 0
            ? _headerRowStyle
            : widget.getRowStyle!.call(
                index - 1,
                widget.controller.data.value[index - 1],
                EmrGridRowState(selected: isSelected),
              ),
    };
  }

  EmrGridRowStyle _calculateAlternatingRowStyle(int index) =>
      widget.alternateBackgroundRowColour
      ? index.isEven
            ? _altRowStyle
            : _defaultRowStyle
      : _defaultRowStyle;

  /// Build the grid inside a stack so we can overlay a loading indicator.
  Widget _internalBuildGrid() {
    // Determine whether we're using a touchscreen device (iOS / Android) so we
    // can hide the scrollbars by default. When we're on a desktop platform, we
    // always show the scrollbars so there's a visual indicator that the content
    // can be scrolled, and where to click to do so.
    var alwaysShowScrollbar = true;

    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      alwaysShowScrollbar = false;
    }

    return Stack(
      children: [
        Positioned.fill(
          child: ValueListenableBuilder(
            valueListenable: _selection,
            builder: (context, value, child) => ValueListenableBuilder(
              valueListenable: widget.controller.data,
              builder: (context, value, child) => Scrollbar(
                thumbVisibility: alwaysShowScrollbar,
                controller: _horizontalController,
                child: Scrollbar(
                  thumbVisibility: alwaysShowScrollbar,
                  controller: _verticalController,
                  child: TableView.builder(
                    pinnedRowCount: widget.pinnedRowCount,
                    pinnedColumnCount:
                        widget.pinnedColumnCount +
                        ((_selectionMode == RowSelectionMode.multiple) ? 1 : 0),
                    horizontalDetails: ScrollableDetails.horizontal(
                      controller: _horizontalController,
                    ),
                    verticalDetails: ScrollableDetails.vertical(
                      controller: _verticalController,
                    ),
                    cellBuilder: _buildCell,
                    columnCount: _columns.length,
                    columnBuilder: _buildColumnSpan,
                    rowCount:
                        // Header
                        1 +
                        // Data
                        widget.controller.data.value.length +
                        // Footer
                        ((_columns.any((col) => col.footerBuilder != null) ||
                                widget.trailingRowHeight != null)
                            ? 1
                            : 0),
                    rowBuilder: _buildRowSpan,
                  ),
                ),
              ),
            ),
          ),
        ),
        // Pad the top to take into account the header row.
        Padding(
          padding: EdgeInsets.only(top: widget.rowHeight(0)),
          child: Center(
            child: ValueListenableBuilder(
              valueListenable: widget.controller.showLoader,
              builder: (context, value, child) {
                if (value) {
                  return widget.buildCustomLoadingWidget?.call() ??
                      const EmrQueryLayoutLoadingIndicator();
                } else if (widget.controller.data.value.isEmpty &&
                    widget.noRecordsMessage != null) {
                  return widget.noRecordsMessage!;
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  /// The old method for building the grid's rows.
  Widget _dataRows() {
    return ValueListenableBuilder(
      valueListenable: widget.controller.showLoader,
      builder: (context, value, child) {
        if (value) {
          return const Expanded(
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (widget.controller.data.value.isEmpty &&
            widget.noRecordsMessage != null) {
          return Expanded(child: Center(child: widget.noRecordsMessage));
        } else {
          return ValueListenableBuilder(
            valueListenable: widget.controller.data,
            builder: (BuildContext context, value, Widget? child) => body(),
          );
        }
      },
    );
  }

  /// The old method for building the grid's header row.
  Widget _headerRow() => Row(
    children: [
      for (final column in _columns)
        Expanded(
          flex: column.flex,
          child: Padding(
            padding: _cellPadding(
              isFirstItem: column == _columns.first,
              isLastItem: column == _columns.last,
            ),
            child: column.headerBuilder(),
          ),
        ),
    ],
  );

  /// The old method for building the grid's body.
  @protected
  Widget body() {
    final theme = Theme.of(context);
    final dividerColour = theme.brightness == Brightness.dark
        ? Colors.grey.shade800
        : Colors.grey.shade300;

    return Expanded(
      child: CustomScrollView(
        controller: widget.verticalScrollController,
        slivers: [
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate((context, rowIndex) {
              // Only wrap the row with a GestureDetector when a handler
              // has been specified.
              if (widget.onRowTapped == null &&
                  widget.onRowLongPress == null &&
                  _selectionMode != RowSelectionMode.none) {
                return _rowWrapper(dividerColour, rowIndex);
              }

              return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onLongPress: () => widget.onRowLongPress?.call(
                    widget.controller.data.value[rowIndex],
                  ),
                  onTap: () {
                    widget.onRowTapped?.call(
                      widget.controller.data.value[rowIndex],
                    );

                    _addToSelection(widget.controller.data.value[rowIndex]);
                  },
                  child: _rowWrapper(
                    dividerColour,
                    rowIndex,
                    isSelected: _selection.value.contains(
                      widget.controller.data.value[rowIndex],
                    ),
                  ),
                ),
              );
            }, childCount: widget.controller.data.value.length),
            itemExtent: widget.rowHeight(0),
          ),
        ],
      ),
    );
  }

  EmrGridColumn<TRowData> _getCheckboxColumn() => EmrGridColumn<TRowData>(
    width: EmrGrid.kCheckboxColumnWidth,
    headerBuilder: () => Checkbox(
      tristate: true,
      value: _selection.value.isEmpty
          ? false
          : _selection.value.length == widget.controller.data.value.length
          ? true
          : null,
      onChanged: (value) {
        if (value ?? false) {
          _selectAll();
        } else {
          _clearSelection();
        }
      },
    ),
    cellBuilder: (rowItem) => Checkbox(
      value: _selection.value.contains(rowItem),
      onChanged: (value) {
        if (value ?? false) {
          _addToSelection(rowItem);
        } else {
          _removeFromSelection(rowItem);
        }
      },
    ),
  );

  /// The old method for wrapping a row with a GestureDetector.
  Widget _rowWrapper(
    Color dividerColour,
    int rowIndex, {
    bool? isSelected = false,
  }) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: (isSelected ?? false) ? Colors.grey[300] : null,
        border: Border(bottom: BorderSide(color: dividerColour)),
      ),
      child: row(widget.controller.data.value[rowIndex]),
    );
  }

  /// The old method for building a row.
  @protected
  Widget row(TRowData row) {
    return Row(
      children: [
        for (final column in _columns)
          Expanded(
            flex: column.flex,
            child: Padding(
              padding: _cellPadding(
                isFirstItem: column == _columns.first,
                isLastItem: column == _columns.last,
              ),
              child: column.cellBuilder(row),
            ),
          ),
      ],
    );
  }

  /// These are provided just to make the code above cleaner.
  /// They provide getters and methods which interact with the local
  /// or data source if supplied, but for the methods they now all
  /// defer to the controller because the controller now internally
  /// handles the data source if it is provided.
  ///
  /// _selectionMode & _selection are different because the current
  /// [EmrGridController] already has properties for these and changing
  /// them would be messy because they are final/late-final, it's easier
  /// to select the appropriate value here instead.

  RowSelectionMode get _selectionMode =>
      switch (widget.controller.dataSource != null) {
        true => widget.controller.dataSource!.selectionMode,
        false => widget.controller.rowSelectionMode,
      };

  ValueNotifier<List<TRowData>> get _selection =>
      switch (widget.controller.dataSource != null) {
        true => widget.controller.dataSource!.selection,
        false => widget.controller.selectedRows,
      };

  void _removeFromSelection(TRowData row) =>
      widget.controller.removeFromSelection(row);

  void _addToSelection(TRowData row) => widget.controller.addToSelection(row);

  void _clearSelection() => widget.controller.clearSelection();

  void _selectAll() => widget.controller.selectAll();
}
