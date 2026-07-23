import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/data/lots_data.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:emr_one_yard_logistics/widgets/wrapper_error.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

enum LotsViewMode {
  grid,
  card,
}

class LotsView extends StatefulWidget with OmniSearch {
  const LotsView({
    required this.queryLayoutController,
    required this.ylService,
    super.key,
  });

  final EmrQueryLayoutController<Lot> queryLayoutController;
  final YardLogisticsService ylService;

  @override
  State<LotsView> createState() => _LotsViewState();
}

class _LotsViewState extends State<LotsView> {
  late EmrGridController<Lot> _gridController;
  late Signal<LotsViewMode> _viewMode;
  late LotsDataSource _dataSource;
  late List<LotCompositionAcronym> compositionAcronyms;

  @override
  void initState() {
    super.initState();

    _viewMode = signal<LotsViewMode>(LotsViewMode.card);

    _gridController = EmrGridController<Lot>(
      data: widget.queryLayoutController.dataSource.data,
      showLoader: widget.queryLayoutController.dataSource.loading,
    );

    _dataSource = widget.queryLayoutController.dataSource as LotsDataSource;

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
                  _viewMode.value = LotsViewMode.grid;
                },
                color: _viewMode.value == LotsViewMode.grid
                    ? Theme.of(context).primaryColor
                    : null,
              ),
            ),
            Tooltip(
              message: context.l10n.cardView,
              child: IconButton(
                icon: const Icon(Icons.grid_view),
                onPressed: () => _viewMode.value = LotsViewMode.card,
                color: _viewMode.value == LotsViewMode.card
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
                onPressed: _dataSource.exportLotsData,
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
    return FutureBuilder(
      future: widget.ylService.fetchLotCompositionAcronymsFromCache(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 64,
                  height: 64,
                  child: CircularProgressIndicator(),
                ),
                const SizedBox(height: Insets.gutter),
                Text(context.l10n.loading),
              ],
            ),
          );
        }

        if (snapshot.hasError) {
          return WrapperError(message: snapshot.error.toString());
        }

        if (snapshot.data == null || snapshot.data!.isEmpty) {
          return const WrapperError(
            message: 'No Lot Acronyms found',
          );
        }

        compositionAcronyms = snapshot.data!;

        return switch (_viewMode.watch(context)) {
          LotsViewMode.grid => _buildGridView(),
          LotsViewMode.card => _buildCardView(),
        };
      },
    );
  }

  EmrQueryLayout<Lot> _buildGridView() {
    return EmrQueryLayout<Lot>.grid(
      queryLayoutController: widget.queryLayoutController,
      gridController: _gridController,
      columns: [
        _columnBuilder(
          headerText: 'Id',
          cellText: (rowItem) => rowItem.id.split('/').last,
          getSortIcon: () => _sortIcon('id'),
          onSortTap: () => widget.queryLayoutController.dataSource.sortBy('id'),
        ),
        _columnBuilder(
          headerText: 'Yard',
          cellText: (rowItem) => rowItem.yardId,
          getSortIcon: () => _sortIcon('yardId'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('yardId'),
        ),
        _columnBuilder(
          headerText: 'Type',
          cellText: _getLotTypeText,
          getSortIcon: () => _sortIcon('type'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('type'),
        ),
        _columnBuilder(
          headerText: 'State',
          cellText: _getLotStateText,
          getSortIcon: () => _sortIcon('state'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('state'),
        ),
        _columnBuilder(
          headerText: 'Ticket',
          cellText: (rowItem) => rowItem.ticketInfo.ticketNumber.toString(),
          getSortIcon: () => _sortIcon('ticketNumber'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('ticketNumber'),
        ),
        _columnBuilder(
          headerText: 'Party Acc.',
          cellText: (rowItem) => rowItem.ticketInfo.partyAccountNo,
          getSortIcon: () => _sortIcon('partyAccountNo'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('partyAccountNo'),
        ),
        _columnBuilder(
          headerText: 'Location',
          cellText: (rowItem) =>
              rowItem.sourceInventoryLocationInfo?.productId.split('/').last ??
              '',
          getSortIcon: () => _sortIcon('sourceGradeId'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('sourceGradeId'),
        ),
        _columnBuilder(
          headerText: 'Gross Wt.',
          cellText: (rowItem) =>
              rowItem.grossWeightUom
                  ?.convertWeight(widget.ylService.uomForView)
                  .toWeightString() ??
              '',
          getSortIcon: () => _sortIcon('grossWt'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('grossWt'),
        ),
        _columnBuilder(
          headerText: 'Tare Wt.',
          cellText: (rowItem) => rowItem.tareWeightUom
              .convertWeight(widget.ylService.uomForView)
              .toWeightString(),
          getSortIcon: () => _sortIcon('tareWt'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('tareWt'),
        ),
        _columnBuilder(
          headerText: 'Net Wt.',
          cellText: (rowItem) => rowItem.netWeightUom
              .convertWeight(widget.ylService.uomForView)
              .toWeightString(),
          getSortIcon: () => _sortIcon('netWt'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('netWt'),
        ),
      ],
    );
  }

  EmrQueryLayout<Lot> _buildCardView() {
    return EmrQueryLayout<Lot>.card(
      queryLayoutController: widget.queryLayoutController,
      facetsPanelBuilder: (controller) =>
          LotsViewFacetPanel(controller: controller),
      gridController: _gridController,
      buildCard: (_, lot, index) {
        return LotCard(
          lot: lot,
          uomForView: widget.ylService.uomForView,
          compositionAcronyms: compositionAcronyms,
        );
      },
    );
  }

  String _getLotStateText(Lot rowItem) => switch (rowItem.state) {
        LotState.newLot => context.l10n.new_,
        LotState.createdInTrade => 'In T2',
        _ => context.l10n.inactive,
      };

  String _getLotTypeText(Lot rowItem) => switch (rowItem.type) {
        LotType.sticks => 'Stick/Cable',
        LotType.joints => 'Joints',
        LotType.unknown => 'Unknown',
      };

  EmrGridColumn<Lot> _columnBuilder({
    required String headerText,
    required String Function(Lot) cellText,
    void Function()? onSortTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor:
            onSortTap != null ? SystemMouseCursors.click : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(
            children: [
              Text(
                headerText,
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder: (Lot rowItem) => Text(
        cellText.call(rowItem),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _sortIcon(String field) => const SizedBox.shrink();
}
