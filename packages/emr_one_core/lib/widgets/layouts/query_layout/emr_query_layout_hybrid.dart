import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/query_layout/emr_query_layout_hybrid_body.dart';
import 'package:emr_one_core/widgets/grid/emr_card_view.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_actions_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_facets_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_filter_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_hybrid_search_panel.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/extensions/actions_extensions.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/query_layout_constants.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/query_layout_fab.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

class EmrQueryLayoutHybrid<T> extends StatefulWidget {
  const EmrQueryLayoutHybrid({
    required this.controller,
    this.actions = const {},
    this.onItemTapped,
    super.key,
    this.buildCardBody = EmrQueryLayoutHybrid.defaultCardBodyBuilder,
    this.columns = const [],
    this.facetsPanelBuilder,
    this.pinnedRowCount = 1,
    this.pinnedColumnCount = 0,
    this.rowHeight = _defaultRowHeight,
    this.alternateBackgroundRowColour = true,
    this.getRowStyle,
    this.mergeColumns,
    this.cardWidth = 300,
    this.cardHeight,
    this.buildCardPadding,
    this.buildCardTitle,
    this.buildCardSubtitle,
    this.buildCardLeading,
    this.buildCardTrailing,
    this.onSelectionChanged,
    this.showSearch = true,
    this.dismissible = false,
    this.confirmDismiss,
    this.clearSelectionOnRefresh = true,
  }) : assert(
         cardWidth == null || cardWidth > 0,
         'Card width must be greater than zero.',
       ),
       assert(
         cardHeight == null || cardHeight > 0,
         'Card height must be greater than zero.',
       ),
       assert(
         !dismissible || confirmDismiss != null,
         'If dismissible is true, confirmDismiss must be provided.',
       );

  /// General properties
  final EmrQueryLayoutController<T> controller;
  final Map<Type, EmrAction<Intent>> actions;
  final List<EmrGridColumn<T>> columns;
  final Widget Function(EmrQueryLayoutController<T> controller)?
  facetsPanelBuilder;
  final bool showSearch;
  final bool dismissible;

  /// Only for use when in SelectionMode.none to allow
  /// for single selection of a row or card.
  final void Function(T)? onItemTapped;

  // Callback for when selection is modified
  final void Function(List<T> selection)? onSelectionChanged;

  /// Callback for when the user dismisses an item in Card view.
  final ConfirmDismissCallback? confirmDismiss;

  /// Grid properties and callbacks
  static double _defaultRowHeight(rowIndex) => 40;
  final int pinnedRowCount;
  final int pinnedColumnCount;
  final bool alternateBackgroundRowColour;
  final double Function(int rowIndex) rowHeight;
  final EmrGridRowStyle Function(int index, T row, EmrGridRowState rowState)?
  getRowStyle;
  final EmrGridColSpan? Function(
    EmrGrid<T> grid,
    TableVicinity vicinity,
    T rowData,
  )?
  mergeColumns;

  static Widget defaultCardBodyBuilder(_, __) => const SizedBox.shrink();

  /// Card properties and callbacks
  final double? cardWidth;
  final double? cardHeight;
  final Widget Function(T item, int index) buildCardBody;
  final EdgeInsets Function()? buildCardPadding;
  final String? Function(T item)? buildCardTitle;
  final String? Function(T item)? buildCardSubtitle;
  final Widget? Function(T item)? buildCardLeading;
  final Widget? Function(T item)? buildCardTrailing;
  final bool clearSelectionOnRefresh;

  @override
  State<EmrQueryLayoutHybrid<T>> createState() =>
      _EmrQueryLayoutHybridState<T>();
}

class _EmrQueryLayoutHybridState<T> extends State<EmrQueryLayoutHybrid<T>> {
  late final EmrGridController<T> _gridController;
  final TextEditingController _searchController = TextEditingController();
  final ValueNotifier<bool> _contextFabEnabled = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _gridController = EmrGridController<T>(
      data: widget.controller.dataSource.data,
      showLoader: widget.controller.dataSource.loading,
      rowSelectionMode: widget.controller.dataSource.selectionMode,
      dataSource: widget.controller.dataSource,
    );

    _searchController.text = widget.controller.dataSource.queryScope.query;

    if (widget.controller.dataSource.autoPopulate) {
      _searchChanged(_searchController.text);
    }

    if (widget.controller.dataSource.selectionMode != RowSelectionMode.none) {
      widget.controller.dataSource.selection.addListener(_onSelectionChanged);
      _onSelectionChanged();
    }

    widget.controller.dataSource.data.addListener(_onDataChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    if (widget.controller.dataSource.selectionMode != RowSelectionMode.none) {
      widget.controller.dataSource.selection.removeListener(
        _onSelectionChanged,
      );
    }
    widget.controller.dataSource.data.removeListener(_onDataChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchPanel = _searchPanelBuilder();
    final filterPanel = widget.controller.filterController != null
        ? _filterPanelBuilder(widget.controller)
        : null;
    final actionsPanel = _actionsPanelBuilder(widget.controller);

    final filterHeight = _isFilterRowVisible(filterPanel)
        ? EmrFilter.defaultHeight + Insets.gutter
        : 0.0;

    final searchRowHeight = (_isSearchRowVisible(searchPanel)
        ? (kIsWeb
              ? QueryLayoutConstants.searchPanelHeightWeb
              : QueryLayoutConstants.searchPanelHeight)
        : 0.0);

    final leadingHeight =
        searchRowHeight +
        filterHeight +
        (min(searchRowHeight, 1) + min(filterHeight, 1) * Insets.gutter);

    return Actions(
      actions: widget.actions,
      child: Builder(
        builder: (buildContext) {
          return ValueListenableBuilder(
            valueListenable: _contextFabEnabled,
            builder: (context, fabEnabled, child) {
              return Scaffold(
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.miniEndFloat,
                floatingActionButton: fabEnabled
                    ? QueryLayoutFab(
                        contextualActions: widget.actions.contextualActions,
                      )
                    : null,
                body: EmrQueryLayoutHybridBody<T>(
                  controller: widget.controller,
                  scrollController: widget.controller.scrollController,
                  searchPanel: widget.showSearch ? searchPanel : null,
                  filterPanel: filterPanel,
                  actionsPanel:
                      widget.actions.isNotEmpty ||
                          widget.controller.supportedViewModes.length > 1 ||
                          (widget.controller.dataSource.selectionMode ==
                                  RowSelectionMode.multiple &&
                              widget.controller.supportedViewModes.contains(
                                EmrQueryLayoutViewMode.card,
                              ))
                      ? actionsPanel
                      : null,
                  leadingHeight: leadingHeight,
                  showPagingControls:
                      widget.controller.dataSource.supportsPaging,
                  facetsPanel: _facetsPanelBuilder(widget.controller),
                  child: ValueListenableBuilder<EmrQueryLayoutViewMode>(
                    valueListenable: widget.controller.viewMode,
                    builder: (context, value, child) {
                      return switch (value) {
                        EmrQueryLayoutViewMode.grid => Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kIsWeb ? Insets.gutter : 0,
                          ),
                          child: EmrGrid<T>(
                            controller: _gridController,
                            onRowTapped:
                                _gridController.dataSource!.selectionMode ==
                                    .none
                                ? widget.onItemTapped
                                : null,
                            trailingRowHeight:
                                widget.controller.dataSource.supportsPaging
                                ? 56 + (Insets.gutter * 2)
                                : null,
                            pinnedRowCount: widget.pinnedRowCount,
                            pinnedColumnCount: widget.pinnedColumnCount,
                            columns: widget.columns,
                            rowHeight: widget.rowHeight,
                            alternateBackgroundRowColour:
                                widget.alternateBackgroundRowColour,
                            noRecordsMessage: Text(
                              context.l10n.noRecordsMessage,
                            ),
                            getRowStyle: widget.getRowStyle,
                            verticalScrollController:
                                widget.controller.scrollController,
                            mergeColumns: widget.mergeColumns,
                          ),
                        ),
                        EmrQueryLayoutViewMode.card => EmrCardView<T>(
                          isHybrid: true,
                          scrollPadding:
                              widget.controller.dataSource.supportsPaging
                              ? const EdgeInsets.only(
                                  bottom: 56 + Insets.gutter,
                                )
                              : null,
                          buildItem: (_, item, index) =>
                              widget.buildCardBody(item, index),
                          onItemTapped:
                              _gridController.dataSource!.selectionMode == .none
                              ? widget.onItemTapped
                              : null,
                          scrollController: widget.controller.scrollController,
                          controller: _gridController,
                          noRecordsMessage: Text(context.l10n.noRecordsMessage),
                          dataSource: widget.controller.dataSource,
                          getCardPadding: widget.buildCardPadding,
                          getCardTitle: widget.buildCardTitle,
                          getCardSubtitle: widget.buildCardSubtitle,
                          getCardLeading: widget.buildCardLeading,
                          getCardTrailing: widget.buildCardTrailing,
                          cardWidth: widget.cardWidth,
                          cardHeight: widget.cardHeight,
                          dismissible: widget.dismissible,
                          confirmDismiss: widget.confirmDismiss,
                        ),
                      };
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  bool _isFilterRowVisible(Widget? filterPanel) {
    return filterPanel != null ||
        ((widget.controller.supportedViewModes.length > 1 ||
                (widget.controller.viewMode.value ==
                        EmrQueryLayoutViewMode.card &&
                    widget.controller.dataSource.selectionMode ==
                        RowSelectionMode.multiple) ||
                widget.actions.isNotEmpty) &&
            !widget.showSearch);
  }

  bool _isSearchRowVisible(Widget? searchPanel) {
    return widget.showSearch;
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

  void _searchChanged(String searchText) {
    if (widget.clearSelectionOnRefresh) {
      widget.controller.dataSource.clearSelection();
    }
    widget.controller.dataSource.queryScope.query = searchText;
    widget.controller.dataSource.queryScope.filters =
        widget.controller.filterController?.filtersAsMap ?? {};

    if (widget.controller.dataSource.supportsPaging) {
      widget.controller.dataSource.moveToStart();
    } else {
      widget.controller.dataSource.refresh();
    }
  }

  Widget? _searchPanelBuilder() => EmrQueryLayoutHybridSearchPanel(
    searchController: _searchController,
    searchChanged: () => _searchChanged(_searchController.text),
    showSearch: widget.showSearch,
  );

  Widget? _actionsPanelBuilder(EmrQueryLayoutController<T> controller) =>
      EmrQueryLayoutDefaultActionsPanel(
        controller: controller,
        actions: widget.actions,
        isHybrid: true,
      );

  Widget? _filterPanelBuilder(EmrQueryLayoutController<T> controller) =>
      EmrQueryLayoutDefaultFilterPanel<T>(controller: controller);

  Widget? _facetsPanelBuilder(EmrQueryLayoutController<T> controller) =>
      switch (controller.dataSource.supportsFacets) {
        true => EmrQueryLayoutDefaultFacetsPanel<T>(controller: controller),
        false => null,
      };

  void _onSelectionChanged() {
    _contextFabEnabled.value =
        widget.actions.contextualActions.isNotEmpty &&
        (widget.controller.dataSource.selection.value.isNotEmpty);
  }
}
