import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

EmrGridColumn<T> buildColumn<T>({
  required String headerText,
  required Widget Function(T) cellBuilder,
  required BuildContext context,
  EmrQueryDataSource<dynamic>? dataSource,
  String? sortBy,
  double width = 100,
  int flex = 4,
  ThemeData? theme,
}) {
  final header = Text(
    headerText,
    style: theme?.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
  );

  return EmrGridColumn<T>(
    width: width,
    flex: flex,
    headerBuilder: () => sortBy == null || dataSource == null
        ? header
        : EmrSortableGridHeader(
            field: sortBy,
            dataSource: dataSource,
            child: header,
          ),
    cellBuilder: cellBuilder,
  );
}

EmrGridColumn<T> buildTextColumn<T>({
  required String headerText,
  required String Function(T) cellText,
  required BuildContext context,
  EmrQueryDataSource<dynamic>? dataSource,
  String? sortBy,
  double width = 100,
  int flex = 4,
  ThemeData? theme,
}) {
  return buildColumn<T>(
    headerText: headerText,
    cellBuilder: (item) => getColumnText(cellText(item), theme),
    context: context,
    dataSource: dataSource,
    sortBy: sortBy,
    width: width,
    flex: flex,
    theme: theme,
  );
}

Text getColumnText(String text, ThemeData? theme) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: theme?.textTheme.bodyMedium,
  );
}
