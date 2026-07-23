import 'package:collection/collection.dart';
import 'package:emr_one_core/widgets/grid/emr_grid.dart';

typedef GroupIsExpanded<TRowData, TGrouping> = bool Function(
  EmrGroupedGrid<TRowData, TGrouping> groupedGrid,
  int groupIndex,
  TGrouping groupItem,
);

class EmrGroupedGridController<TRowData, TGrouping>
    extends EmrGridController<TRowData> {
  EmrGroupedGridController({
    required super.data,
    required this.grouping,
    GroupIsExpanded<TRowData, TGrouping>? groupIsExpanded,
  }) {
    this.groupIsExpanded = groupIsExpanded ?? _defaultGroupIsExpanded;

    data.addListener(_buildGroupedData);
  }
  final TGrouping Function(TRowData) grouping;

  void dispose() {
    data.removeListener(_buildGroupedData);
  }

  Map<TGrouping, List<TRowData>>? _groups;

  Map<TGrouping, List<TRowData>> getGroupedData() {
    if (_groups != null) {
      return _groups!;
    }

    _buildGroupedData();

    return _groups!;
  }

  List<TRowData> getGroupRowsData(TGrouping key) => getGroupedData()[key]!;

  void _buildGroupedData() {
    _groups = data.value.groupListsBy(grouping);
  }

  /// A Function which will return whether or not to show a grouped grid.
  late final GroupIsExpanded<TRowData, TGrouping> groupIsExpanded;

  bool _defaultGroupIsExpanded(
    EmrGroupedGrid<TRowData, TGrouping> groupedGrid,
    int groupIndex,
    TGrouping groupItem,
  ) =>
      true;
}
