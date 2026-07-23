import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

enum EmrQueryLayoutViewMode {
  grid,
  card,
}

/// This is the main controller used to drive the screen and bind all the data
/// and events together. It exists as a base class which can be derived from to
/// override behaviour.
/// The base class may be used if no custom behaviour is required.
class EmrQueryLayoutController<T> {
  EmrQueryLayoutController({
    required this.dataSource,
    this.filterController,
    this.actionsBuilder,
    this.menuChildrenBuilder = _defaultMenuChildrenBuilder,
    EmrQueryLayoutViewMode viewMode = EmrQueryLayoutViewMode.grid,
    this.supportedViewModes = const {
      EmrQueryLayoutViewMode.grid,
      EmrQueryLayoutViewMode.card,
    },
  }) : assert(
            supportedViewModes.contains(viewMode),
            'The view mode $viewMode is not supported by this controller. '
            'Supported view modes are: $supportedViewModes') {
    pageControlEvents = EmrPageControlEvents()
      ..pageSize = dataSource.pageSize
      ..pageSizes = dataSource.pageSizes
      ..recordCount = dataSource.recordCount
      ..onPageSizeChange = dataSource.pageSizeChange;

    filterController?.filters.addListener(_onFilterChanged);
    dataSource.data.addListener(_onDataChanged);
    this.viewMode = ValueNotifier<EmrQueryLayoutViewMode>(viewMode);
  }

  void dispose() {
    dataSource.data.removeListener(_onDataChanged);
    filterController?.filters.removeListener(_onFilterChanged);

    scrollController.dispose();
  }

  final EmrQueryDataSource<T> dataSource;

  final EmrFilterController? filterController;

  late final EmrPageControlEvents pageControlEvents;

  Widget? Function(BuildContext context)? actionsBuilder;

  List<Widget> Function(BuildContext context) menuChildrenBuilder;

  final ScrollController scrollController = ScrollController();

  late final ValueNotifier<EmrQueryLayoutViewMode> viewMode;

  final Set<EmrQueryLayoutViewMode> supportedViewModes;

  /// This method is called when the filter controller changes.
  /// It updates the queryScope filters and then refreshes the data source.
  void _onFilterChanged() {
    dataSource.queryScope.filters = filterController!.filtersAsMap;

    if (dataSource.supportsPaging) {
      dataSource.moveToStart();
    } else {
      dataSource.refresh();
    }
  }

  /// This method is called when the data source changes, so we can update
  /// the page control events.
  void _onDataChanged() {
    if (!dataSource.supportsPaging) {
      return;
    }

    pageControlEvents.loading.value = true;
    pageControlEvents.currentPageNumber = dataSource.pageNumber;
    pageControlEvents.pageSize = dataSource.pageSize;
    pageControlEvents.recordCount = dataSource.recordCount;

    if (dataSource is EmrQueryGraphQLDataSource) {
      final pageInfo = (dataSource as EmrQueryGraphQLDataSource).pageInfo;

      pageControlEvents.onPressedStart =
          pageInfo.hasPreviousPage ? dataSource.moveToStart : null;

      pageControlEvents.onPressedPrevious =
          pageInfo.hasPreviousPage ? dataSource.moveToPrevious : null;

      pageControlEvents.onPressedNext =
          pageInfo.hasNextPage ? dataSource.moveToNext : null;

      pageControlEvents.onPressedEnd =
          pageInfo.hasNextPage ? dataSource.moveToEnd : null;
    } else if (dataSource is EmrQueryDataSourcePager) {
      final pageInfo = (dataSource as EmrQueryDataSourcePager).pageInfo;

      pageControlEvents.onPressedStart =
          pageInfo.hasPreviousPage ? dataSource.moveToStart : null;

      pageControlEvents.onPressedPrevious =
          pageInfo.hasPreviousPage ? dataSource.moveToPrevious : null;

      pageControlEvents.onPressedNext =
          pageInfo.hasNextPage ? dataSource.moveToNext : null;

      pageControlEvents.onPressedEnd =
          pageInfo.hasNextPage ? dataSource.moveToEnd : null;
    }

    pageControlEvents.loading.value = false;
  }

  static List<Widget> _defaultMenuChildrenBuilder(BuildContext context) =>
      const <Widget>[];
}
