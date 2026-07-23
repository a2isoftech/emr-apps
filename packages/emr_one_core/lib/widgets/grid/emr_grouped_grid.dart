import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/widgets/grid/emr_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

export 'emr_grid_column.dart';

class EmrGroupedGrid<TRowData, TGrouping> extends EmrGrid<TRowData> {
  /// A grid with grouped rows. This works in the same way as [EmrGrid] but also
  /// has a `groupedHeaderBuilder` property to define how the rows should be
  /// grouped, and what the group header row Widget should be.
  const EmrGroupedGrid({
    required EmrGroupedGridController<TRowData, TGrouping> super.controller,
    required super.columns,
    required this.groupedHeaderBuilder,
    super.key,
    super.horizontalPadding = Insets.gutter,
    super.verticalPadding = Insets.gutter / 2,
    super.rowHeight = _defaultRowHeight,
  });

  static double _defaultRowHeight(rowIndex) => 60;

  /// A Function which will return a Widget to show in the grouped header rows.
  final Widget Function(
    EmrGroupedGrid<TRowData, TGrouping> groupedGrid,
    EmrGroupedGridController<TRowData, TGrouping> groupedGridController,
    int groupIndex,
    TGrouping groupItem,
  ) groupedHeaderBuilder;

  @override
  State<EmrGrid<dynamic>> createState() =>
      _EmrGroupedGridState<TRowData, TGrouping>();
}

class _EmrGroupedGridState<TRowData, TGrouping> extends EmrGridState<TRowData> {
  EmrGroupedGridController<TRowData, TGrouping> get groupedGridController =>
      widget.controller as EmrGroupedGridController<TRowData, TGrouping>;

  @override
  Widget body() {
    final groupedData = groupedGridController.getGroupedData();

    final widgets = <Widget>[];
    var groupIndex = 0;
    for (final key in groupedData.keys) {
      widgets.add(_group(groupIndex, key, groupedData[key]!));

      groupIndex++;
    }

    return Expanded(
      child: CustomScrollView(slivers: widgets),
    );
  }

  Widget _group(int groupIndex, TGrouping key, List<TRowData> rows) {
    final theme = Theme.of(context);
    final dividerColour = theme.brightness == Brightness.dark
        ? Colors.grey.shade800
        : Colors.grey.shade300;

    final grid = widget as EmrGroupedGrid<TRowData, TGrouping>;

    final isExpanded = groupedGridController.groupIsExpanded(
      grid,
      groupIndex,
      key,
    );

    return SliverStickyHeader.builder(
      builder: (context, state) => grid.groupedHeaderBuilder(
        grid,
        groupedGridController,
        groupIndex,
        key,
      ),
      sliver: isExpanded ? _list(dividerColour, key) : null,
    );
  }

  Widget _list(Color dividerColour, TGrouping key) {
    return SliverFixedExtentList(
      delegate: SliverChildBuilderDelegate(
        (context, rowIndex) {
          return DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: dividerColour),
              ),
            ),
            child: super.row(
              groupedGridController.getGroupRowsData(key)[rowIndex],
            ),
          );
        },
        childCount: groupedGridController.getGroupRowsData(key).length,
      ),
      itemExtent: widget.rowHeight(0),
    );
  }
}
