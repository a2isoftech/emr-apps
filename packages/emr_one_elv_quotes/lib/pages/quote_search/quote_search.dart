import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_elv_quotes/data/quote_search_data_source.dart';
import 'package:emr_one_elv_quotes/models/quote_search/quote_search_record.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quote_search/quote_card.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

enum QuoteSearchViewMode {
  grid,
  card,
}

class QuoteSearch extends StatefulWidget with OmniSearch {
  const QuoteSearch({
    required this.queryLayoutController,
    required this.viewMode,
    super.key,
  });

  final EmrQueryLayoutController<QuoteSearchRecord> queryLayoutController;
  final Signal<QuoteSearchViewMode> viewMode;

  @override
  State<QuoteSearch> createState() => _QuoteSearchState();
}

class _QuoteSearchState extends State<QuoteSearch> {
  late EmrGridController<QuoteSearchRecord> _gridController;
  late QuoteSearchDataSource _dataSource;

  @override
  void initState() {
    super.initState();

    _gridController = EmrGridController<QuoteSearchRecord>(
      data: widget.queryLayoutController.dataSource.data,
      showLoader: widget.queryLayoutController.dataSource.loading,
    );

    _dataSource =
        widget.queryLayoutController.dataSource as QuoteSearchDataSource;

    // Clear the grid selection when a search is performed.
    widget.queryLayoutController.dataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };

    widget.queryLayoutController.actionsBuilder = (context) => Row(
          children: [
            Tooltip(
              message: context.l10n.gridView,
              child: IconButton(
                icon: const Icon(Icons.view_list),
                onPressed: () {
                  widget.viewMode.value = QuoteSearchViewMode.grid;
                },
                color: widget.viewMode.value == QuoteSearchViewMode.grid
                    ? Theme.of(context).primaryColor
                    : null,
              ),
            ),
            Tooltip(
              message: context.l10n.cardView,
              child: IconButton(
                icon: const Icon(Icons.grid_view),
                onPressed: () =>
                    widget.viewMode.value = QuoteSearchViewMode.card,
                color: widget.viewMode.value == QuoteSearchViewMode.card
                    ? Theme.of(context).primaryColor
                    : null,
              ),
            ),
            Tooltip(
              message: context.l10n.forceRefresh,
              child: IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () =>
                    widget.queryLayoutController.dataSource.refresh(),
              ),
            ),
          ],
        );
    widget.queryLayoutController.menuChildrenBuilder = (context) => [
          Column(
            children: [
              MenuItemButton(
                onPressed: _dataSource.exportQuoteSearchData,
                child: Text(
                  context.l10n.exportToCSV,
                ),
              ),
            ],
          ),
        ];
  }

  @override
  Widget build(BuildContext context) {
    final settingsController = Provider.of<BaseSettingsController>(
      context,
    ) as SettingsController;
    final activeTerritory = settingsController.territory.toElvTerritory();
    _dataSource.territoryCode = settingsController.territory;

    return switch (widget.viewMode.watch(context)) {
      QuoteSearchViewMode.grid => _buildGridView(activeTerritory),
      QuoteSearchViewMode.card => _buildCardView(activeTerritory),
    };
  }

  EmrQueryLayout<QuoteSearchRecord> _buildGridView(
    ElvTerritory activeTerritory,
  ) {
    return EmrQueryLayout<QuoteSearchRecord>.grid(
      queryLayoutController: widget.queryLayoutController,
      gridController: _gridController,
      pinnedColumnCount: 1,
      onRowTapped: (rowItem) {
        rowItem.quoteStatus == QuoteStatusEnum.draft.toString().toUpperCase()
            ? context.pushNamed(
                NamedRoutes.elvQuickQuote,
                params: {
                  'batchQuoteId': rowItem.batchQuoteBundleId,
                },
              )
            : context.pushNamed(
                NamedRoutes.elvQuotesSummary,
                params: {
                  'batchQuoteId': rowItem.id.split('/').last,
                },
              );
      },
      columns: [
        _columnBuilder(
          headerText: context.l10n.quoteNumber,
          cellText: (rowItem) => rowItem.id.split('/').last,
          width: 120,
          getSortIcon: () => _sortIcon('id'),
          onSortTap: () => widget.queryLayoutController.dataSource.sortBy('id'),
        ),
        _columnBuilderWidget(
          headerText: context.l10n.accountCode,
          cellWidget: (rowItem) => Tooltip(
            message: rowItem.accountName,
            child: Text(rowItem.accountCode),
          ),
          getSortIcon: () => _sortIcon('accountCode'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('accountCode'),
        ),
        _columnBuilder(
          headerText: context.l10n.quoteValue,
          cellText: (rowItem) => rowItem.quoteValue.toStringAsFixed(2),
        ),
        _columnBuilder(
          headerText: context.l10n.postCode,
          cellText: (rowItem) => rowItem.postCode ?? '',
        ),
        _columnBuilderWidget(
          headerText: context.l10n.yardCode,
          cellWidget: (rowItem) => Tooltip(
            message: rowItem.yardName,
            child: Text(rowItem.yardCode),
          ),
          getSortIcon: () => _sortIcon('yardCode'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('yardCode'),
        ),
        _columnBuilderWidget(
          headerText: context.l10n.vehiclesQuoted,
          width: 160,
          cellWidget: (rowData) => _showQuotedVehiclesInfo(
            rowData,
            activeTerritory,
          ),
          getSortIcon: () => _sortIcon('vehiclesQuoted'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('vehiclesQuoted'),
        ),
        _columnBuilder(
          headerText: context.l10n.quotedStatus,
          cellText: (rowItem) => rowItem.quoteStatus,
          getSortIcon: () => _sortIcon('status'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('status'),
        ),
        _columnBuilderWidget(
          headerText: context.l10n.quoteSource,
          cellWidget: (rowItem) => Tooltip(
            message: rowItem.quoteSource,
            child: Text(rowItem.quoteSource),
          ),
          getSortIcon: () => _sortIcon('quoteSource'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('quoteSource'),
        ),
        _columnBuilderWidget(
          headerText: context.l10n.leadSource,
          cellWidget: (rowItem) => Tooltip(
            message: rowItem.leadSource ?? '',
            child: Text(rowItem.leadSource ?? ''),
          ),
          getSortIcon: () => _sortIcon('leadSource'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('leadSource'),
        ),
        _columnBuilder(
          headerText: context.l10n.priceType,
          cellText: (rowItem) => rowItem.priceType,
          getSortIcon: () => _sortIcon('acquisitionType'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('acquisitionType'),
        ),
        _columnBuilderWidget(
          headerText: context.l10n.collectionOperator,
          cellWidget: (rowItem) => Tooltip(
            message: rowItem.collectionOperatorAccountName ?? '',
            child: Text(rowItem.collectionOperatorAccountCode ?? ''),
          ),
        ),
        _columnBuilder(
          headerText: context.l10n.appointmentDate,
          cellText: (rowItem) => rowItem.collectionDate != null
              ? rowItem.collectionDate!
                  .asyMMdtime(Localizations.localeOf(context))
              : '',
        ),
        _columnBuilder(
          headerText: context.l10n.collectionStatus,
          cellText: (rowItem) =>
              rowItem.collectionStatus ?? context.l10n.pendingAllocation,
        ),
        _columnBuilder(
          headerText: context.l10n.createdDate,
          cellText: (rowItem) =>
              rowItem.createdDate.asyMMdtime(Localizations.localeOf(context)),
          getSortIcon: () => _sortIcon('createdDate'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('createdDate'),
        ),
      ],
    );
  }

  Widget _showQuotedVehiclesInfo(
    QuoteSearchRecord rowItem,
    ElvTerritory activeTerritory,
  ) {
    final data = activeTerritory == ElvTerritory.uk
        ? rowItem.vrnList.join(', ')
        : rowItem.vinList.join(', ');
    return rowItem.vehiclesQuoted == 1
        ? Text(data)
        : Tooltip(
            message: data,
            child: Text(rowItem.vehiclesQuoted.toString()),
          );
  }

  EmrQueryLayout<QuoteSearchRecord> _buildCardView(
    ElvTerritory activeTerritory,
  ) {
    return EmrQueryLayout<QuoteSearchRecord>.card(
      queryLayoutController: widget.queryLayoutController,
      gridController: _gridController,
      buildCard: (_, quoteSearchRecord, index) {
        return QuoteCard(
          quoteSearchRecord: quoteSearchRecord,
          activeTerritory: activeTerritory,
        );
      },
    );
  }

  EmrGridColumn<QuoteSearchRecord> _columnBuilder({
    required String headerText,
    required String Function(
      QuoteSearchRecord,
    ) cellText,
    void Function()? onSortTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 150,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => GestureDetector(
        onTap: onSortTap,
        child: Row(
          children: [
            Text(
              headerText,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            if (getSortIcon != null) getSortIcon.call(),
          ],
        ),
      ),
      cellBuilder: (QuoteSearchRecord rowItem) => GestureDetector(
        child: Text(
          cellText.call(rowItem),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  EmrGridColumn<QuoteSearchRecord> _columnBuilderWidget({
    required String headerText,
    required Widget Function(
      QuoteSearchRecord,
    ) cellWidget,
    void Function()? onSortTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 150,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => GestureDetector(
        onTap: onSortTap,
        child: Row(
          children: [
            Text(
              headerText,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            if (getSortIcon != null) getSortIcon.call(),
          ],
        ),
      ),
      cellBuilder: (QuoteSearchRecord rowItem) => GestureDetector(
        child: cellWidget.call(rowItem),
      ),
    );
  }

  Widget _sortIcon(String field) {
    final value = _dataSource.queryScope.sortOrder.firstWhereOrNull(
      (element) => element.field == field,
    );

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
            ? const Icon(Icons.arrow_drop_up)
            : const Icon(Icons.arrow_drop_down);
  }
}
