import 'dart:math' as math;

import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AllowedGrid extends StatefulWidget {
  const AllowedGrid({
    required this.allowedEntries,
    required this.allowSelectAll,
    this.columnNames,
    super.key,
  });

  final ValueNotifier<List<AllowedModel>> allowedEntries;
  final List<String>? columnNames;
  final bool allowSelectAll;

  @override
  State<AllowedGrid> createState() => _AllowedGridState();
}

class _AllowedGridState extends State<AllowedGrid> {
  late EmrGridController<AllowedModel> gridController;

  ValueNotifier<bool> selectAll = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    gridController = EmrGridController<AllowedModel>(
      data: widget.allowedEntries,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<AllowedModel>>(
      valueListenable: widget.allowedEntries,
      builder: (context, entries, _) {
        return SizedBox(
          height: _getMaxHeight(widget.allowedEntries.value.length),
          width: double.infinity,
          child: EmrGrid<AllowedModel>(
            alternateBackgroundRowColour: true,
            pinnedRowCount: 1,
            rowHeight: (rowIndex) => _getRowHeight(),
            noRecordsMessage: Text(context.l10n.noRecordsMessage),
            controller: gridController,
            columns: [
              EmrGridColumn(
                headerBuilder: () => widget.allowSelectAll
                    ? ValueListenableBuilder<bool>(
                        valueListenable: selectAll,
                        builder: (context, isSelected, _) {
                          return Checkbox(
                            value: isSelected,
                            onChanged: (value) {
                              final newValue = value ?? false;
                              selectAll.value = newValue;

                              for (final v in gridController.data.value) {
                                v.selected.value = newValue;
                              }
                            },
                          );
                        },
                      )
                    : EmrGridHeader(text: context.l10n.select),
                cellBuilder: (item) => ValueListenableBuilder<bool>(
                  valueListenable: item.selected,
                  builder: (context, isSelected, _) {
                    return Checkbox(
                      value: isSelected,
                      onChanged: (value) {
                        item.selected.value = value ?? false;
                        _updateSelectAllState();
                      },
                    );
                  },
                ),
              ),
              ...widget.columnNames!.map((colName) {
                return EmrGridColumn(
                  headerBuilder: () => EmrGridHeader(text: colName),
                  cellBuilder: (item) {
                    return Text(item.values[colName.toLowerCase()] ?? 'test');
                  },
                );
              }),
            ],
          ),
        );
      },
    );
  }

  void _updateSelectAllState() {
    final allSelected = gridController.data.value.every(
      (e) => e.selected.value,
    );
    selectAll.value = allSelected;
  }

  double _getRowHeight() {
    return accountGridRowHeight;
  }

  double _getMaxHeight(int recordCount) {
    final visibleRows = math.min(recordCount + 1, 20);
    return (visibleRows * accountGridRowHeight) + (Insets.gutter * 2);
  }
}
