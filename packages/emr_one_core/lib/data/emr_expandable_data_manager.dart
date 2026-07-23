import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';

/// Usually used with [EmrGrid] to allow rows to be expanded/collapsed.
/// This class handles the toggling of the visibility of the rows.
class EmrExpandableDataManager<T extends EmrExpandableData<T>> {
  EmrExpandableDataManager({ValueListenable<List<T>>? data}) {
    setData(data?.value ?? []);
  }

  ValueNotifier<List<T>> data = ValueNotifier([]);

  void setData(List<T> data) {
    // Flatten the nested data into a List<T> complete with grouping strings.
    final flatData = _flattenDeep(data, '');

    this.data.value = flatData;
  }

  /// Toggle the visibility of row(s).
  void toggle(T row) {
    // Do nothing if the row passed in is one that can't be expanded/collapsed.
    if (row.expanded == null) {
      return;
    }

    final grouping = row.grouping;
    row.expanded = !row.expanded!;

    final tempData = data.value;

    _setGroupVisibility(tempData, grouping, row.expanded!);

    // Clone the data into the ValueNotifier so listeners detect the change.
    data.value = [...tempData];
  }

  void _setGroupVisibility(
    List<T> tempData,
    String grouping,
    bool expanded,
  ) {
    final re = RegExp('^$grouping-[0-9]+\$');

    for (var i = 0; i < tempData.length; i++) {
      final otherRow = tempData[i];

      if (re.hasMatch(otherRow.grouping)) {
        otherRow.visible = expanded;

        if (otherRow.expanded != null) {
          _setGroupVisibility(
            tempData,
            otherRow.grouping,
            expanded && otherRow.expanded!,
          );
        }
      }
    }
  }

  List<T> _flattenDeep(
    List<T> list,
    String groupPrefix, {
    bool? expanded,
  }) {
    final d = <T>[];

    for (var i = 0; i < list.length; i++) {
      final element = list[i];

      element.grouping = '$groupPrefix$i';

      // If the row has children, it should be collapsed by default, unless
      // it's been set already.
      element.expanded ??= element.children.isNotEmpty ? false : null;

      // Top level rows are always visible.
      if (!element.grouping.contains('-')) {
        element.visible = true;
      }

      // When the parent is expanded, the child rows should be visible.
      if (expanded ?? false) {
        element.visible = true;
      }

      d.add(element);

      d.addAll(
        _flattenDeep(
          element.children,
          '$groupPrefix$i-',
          expanded: element.expanded,
        ),
      );
    }

    return d;
  }
}
