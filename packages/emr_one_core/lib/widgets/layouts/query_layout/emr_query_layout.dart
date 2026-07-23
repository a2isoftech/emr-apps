import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/controllers/omni_search_controller.dart';
import 'package:emr_one_core/src/widgets/query_layout/emr_query_layout_body.dart';
import 'package:emr_one_core/widgets/grid/emr_card_view.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_actions_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_facets_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_filter_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_menu_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_search_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/query_layout_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

typedef PanelBuilder = Widget Function<T>(BuildContext, EmrQueryLayout<T>);

/// This primary Widget is used to show a screen which conforms to a query
/// screen layout. The screen is divided into defined areas:
///
/// - Search: `EmrQueryLayoutDefaultSearchPanel` which is a text field followed
///           by a search button.
///
/// - Actions: `EmrQueryLayoutDefaultActionsPanel` which is located to the right
///            of the search panel, and can be any Widget as required. In
///            practice this is likely to be a `Row` containing buttons.
///
/// - Menu: `EmrQueryLayoutDefaultMenuPanel` which is located to the right of
///         the actions panel and will usually show a list of `MenuItemButton`.
///
/// - Filter: Underneath the panels above, an `EmrQueryLayoutDefaultFilterPanel`
///           will display an `EmrFilter` if a filter controller is provided.
///
/// - Facets: To the right of the screen, `EmrQueryLayoutDefaultFacetsPanel`
///           will show facets if the data source supports them. When showing
///           facets a filter controller must be provided, as clicking a facet
///           will add a filter. (For this to work, the key for the filter and
///           the key for the facet must match.)
///
/// The [child] will fill the remaining space underneath the search and filter
/// panels.
///
/// Most screens using this layout will use the `EmrQueryLayout.grid` factory
/// which at a minimum requires a `EmrQueryLayoutController<T>` and a list of
/// `EmrGridColumn` to display a grid of data.
///
/// `EmrQueryLayoutController<T>` is used to bind the data source (which will
/// usually be a class you extend from `EmrQueryGraphQLDataSource<T>`), and
/// optionally a class extended from `EmrFilterController`.
///
/// When the data source supports paging, an `EmrPageControl` will be displayed
/// underneath the child/grid. For a GraphQL data source, you will need to
/// implement "before", "after", "first" and "last".
///
/// When the data source supports facets, an `EmrQueryLayoutDefaultFacetsPanel`
/// will be displayed to the right. This default implementation requires a
/// filter controller, as clicking a facet will add a filter.  The data source
/// will need to use the currently applied filters and pass these to the API it
/// calls.
///
/// An example implementation can be seen on the tickets screen which makes use
/// of most of these features.
/// (emr_one_tickets/lib/screens/tickets_screen.dart)
class EmrQueryLayout<T> extends StatefulWidget {
  const EmrQueryLayout({
    required this.controller,
    required this.child,
    this.facetsPanelBuilder,
    super.key,
  });

  factory EmrQueryLayout.grid({
    required EmrQueryLayoutController<T> queryLayoutController,
    required List<EmrGridColumn<T>> columns,
    Key? key,
    EmrGridController<T>? gridController,
    void Function(T)? onRowTapped,
    int pinnedRowCount = 1,
    int pinnedColumnCount = 0,
    double Function(int) rowHeight = _defaultRowHeight,
    double verticalPadding = 2,
    bool alternateBackgroundColour = true,
    EmrGridRowStyle Function(int index, T row, EmrGridRowState state)?
        getRowStyle,
    EmrGridColSpan? Function(
      EmrGrid<T> grid,
      TableVicinity vicinity,
      T rowData,
    )? mergeColumns,
  }) =>
      EmrQueryLayout<T>(
        controller: queryLayoutController,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kIsWeb ? Insets.gutter : 0,
          ),
          child: Builder(
            builder: (context) {
              return EmrGrid<T>(
                key: key,
                controller: gridController ??
                    EmrGridController<T>(
                      data: queryLayoutController.dataSource.data,
                      showLoader: queryLayoutController.dataSource.loading,
                    ),
                pinnedRowCount: pinnedRowCount,
                pinnedColumnCount: pinnedColumnCount,
                columns: columns,
                onRowTapped: onRowTapped,
                rowHeight: rowHeight,
                alternateBackgroundRowColour: alternateBackgroundColour,
                verticalPadding: verticalPadding,
                noRecordsMessage: Text(context.l10n.noRecordsMessage),
                getRowStyle: getRowStyle,
                verticalScrollController:
                    queryLayoutController.scrollController,
                mergeColumns: mergeColumns,
              );
            },
          ),
        ),
      );

  factory EmrQueryLayout.card({
    required EmrQueryLayoutController<T> queryLayoutController,
    required Widget Function(EmrGridController<T>, T, int) buildCard,
    Widget Function(EmrQueryLayoutController<T> controller)? facetsPanelBuilder,
    Key? key,
    EmrGridController<T>? gridController,
    void Function(T)? onRowTapped,
  }) =>
      EmrQueryLayout<T>(
        controller: queryLayoutController,
        facetsPanelBuilder: facetsPanelBuilder,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
          child: Builder(
            builder: (context) {
              return EmrCardView<T>(
                key: key,
                buildItem: buildCard,
                scrollController: queryLayoutController.scrollController,
                controller: gridController ??
                    EmrGridController<T>(
                      data: queryLayoutController.dataSource.data,
                      showLoader: queryLayoutController.dataSource.loading,
                    ),
                onItemTapped: onRowTapped,
                alternateBackgroundRowColour: true,
                verticalPadding: 2,
                noRecordsMessage: Text(context.l10n.noRecordsMessage),
              );
            },
          ),
        ),
      );

  static double _defaultRowHeight(rowIndex) => 40;

  final EmrQueryLayoutController<T> controller;

  final Widget Function(EmrQueryLayoutController<T> controller)?
      facetsPanelBuilder;

  final Widget child;

  @override
  State<EmrQueryLayout<T>> createState() => _EmrQueryLayoutState<T>();
}

class _EmrQueryLayoutState<T> extends State<EmrQueryLayout<T>> {
  final TextEditingController _searchController = TextEditingController();
  late EmrOmniSearchController? _scaffoldSearchController;

  @override
  void initState() {
    super.initState();

    _scaffoldSearchController = context.read<EmrOmniSearchController?>();
    _scaffoldSearchController?.addListener(_doOmniSearch);

    _searchController.text = widget.controller.dataSource.queryScope.query;

    if (widget.controller.dataSource.autoPopulate) {
      _searchChanged(_scaffoldSearchController?.text ?? _searchController.text);
    }

    widget.controller.dataSource.data.addListener(_onDataChanged);
  }

  @override
  void dispose() {
    _scaffoldSearchController?.removeListener(_doOmniSearch);

    widget.controller.dataSource.data.removeListener(_onDataChanged);

    _searchController.dispose();

    super.dispose();
  }

  void _onDataChanged() {
    if (widget.controller.scrollController.hasClients) {
      // Scroll to the top when the data changes.
      widget.controller.scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 250),
        curve: Curves.linear,
      );
    }
  }

  void _doOmniSearch() =>
      _searchChanged(_scaffoldSearchController?.text.trim() ?? '');

  void _searchChanged(String searchText) {
    widget.controller.dataSource.queryScope.query = searchText;
    widget.controller.dataSource.queryScope.filters =
        widget.controller.filterController?.filtersAsMap ?? {};

    if (widget.controller.dataSource.supportsPaging) {
      widget.controller.dataSource.moveToStart();
    } else {
      widget.controller.dataSource.refresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchPanel =
        _scaffoldSearchController == null ? searchPanelBuilder() : null;
    final filterPanel = widget.controller.filterController != null
        ? filterPanelBuilder(widget.controller)
        : null;
    final actionsPanel = actionsPanelBuilder(widget.controller);
    final menuChildren = widget.controller.menuChildrenBuilder(context);

    final leadingHeight =
        // Create space to accomodate filters/actions/menu
        max(
              (filterPanel == null && menuChildren.isEmpty
                  ? 0
                  : QueryLayoutConstants.controlsPanelHeight),
              (actionsPanel != null
                  ? (kIsWeb
                      ? QueryLayoutConstants.actionPanelHeightWeb
                      : QueryLayoutConstants.actionPanelHeight)
                  : 0),
            ) +
            // Add on padding at the bottom
            Insets.gutter +
            (searchPanel != null
                ? (kIsWeb
                    ? QueryLayoutConstants.searchPanelHeightWeb
                    : QueryLayoutConstants.searchPanelHeight)
                : 0);

    final trailingHeight = widget.controller.dataSource.supportsPaging
        ? (kIsWeb
            ? QueryLayoutConstants.pagingPanelHeightWeb
            : QueryLayoutConstants.pagingPanelHeight)
        : 0.0;

    return EmrQueryLayoutBody<T>(
      controller: widget.controller,
      scrollController: widget.controller.scrollController,
      searchPanel: searchPanel,
      filterPanel: filterPanel,
      actionsPanel: actionsPanel,
      menuItems: menuChildren,
      leadingHeight: leadingHeight,
      trailingHeight: trailingHeight,
      facetsPanel: facetsPanelBuilder(widget.controller),
      child: widget.child,
    );
  }

  Widget? searchPanelBuilder() => EmrQueryLayoutDefaultSearchPanel(
        searchController: _searchController,
        searchChanged: () => _searchChanged(_searchController.text),
      );

  Widget? actionsPanelBuilder(EmrQueryLayoutController<T> controller) {
    if (controller.actionsBuilder?.call(context) == null) {
      return null;
    }

    return EmrQueryLayoutDefaultActionsPanel(
      controller: controller,
    );
  }

  Widget menuPanelBuilder(EmrQueryLayoutController<T> controller) =>
      EmrQueryLayoutDefaultMenuPanel(controller: controller);

  Widget? filterPanelBuilder(EmrQueryLayoutController<T> controller) =>
      EmrQueryLayoutDefaultFilterPanel<T>(controller: controller);

  Widget? facetsPanelBuilder(EmrQueryLayoutController<T> controller) {
    if (!(kIsWeb && widget.controller.dataSource.supportsFacets)) {
      return null;
    }

    return switch (widget.facetsPanelBuilder) {
      null => EmrQueryLayoutDefaultFacetsPanel<T>(controller: controller),
      _ => widget.facetsPanelBuilder!(controller)
    };
  }
}
