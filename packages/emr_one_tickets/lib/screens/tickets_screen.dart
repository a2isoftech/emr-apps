import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/controllers/tickets_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TicketsScreen extends StatefulWidget with OmniSearch {
  const TicketsScreen({
    required this.controller,
    required this.queryLayoutController,
    super.key,
  });

  final TicketsScreenController controller;

  final EmrQueryLayoutController
    <Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>
  queryLayoutController;

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  late EmrGridController<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>
  _gridController;

  @override
  void initState() {
    super.initState();

    _gridController =
        EmrGridController<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>(
          data: widget.queryLayoutController.dataSource.data,
          rowSelectionMode: RowSelectionMode.multiple,
          showLoader: widget.queryLayoutController.dataSource.loading,
        );

    // Clear the grid selection when a search is performed.
    widget.queryLayoutController.dataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };

    widget.queryLayoutController.menuChildrenBuilder = (context) => [
      ValueListenableBuilder(
        valueListenable: _gridController.selectedRows,
        builder: (context, value, child) {
          return MenuItemButton(
            onPressed: _gridController.selectedRows.value.isNotEmpty
                ? _createGallery
                : null,
            child: Text(
              'Create Gallery - '
              '${value.length} '
              'ticket(s)',
            ),
          );
        },
      ),
    ];
  }

  Future<void> _createGallery() async {
    final id = await widget.controller.createTicketGallery(
      'title',
      _gridController.selectedRows.value
          .map((e) => e.id)
          .whereType<String>()
          .toList(),
    );

    if (mounted) {
      await EmrModal.showMessageBar(
        context,
        'Gallery created with id: $id',
      ).then((value) {
        if (mounted) {
          context.pushNamed(
            NamedRoutes.ticketGallery,
            params: {'id': id.replaceAll('TicketGalleries/', '')},
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout
      <Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>
    .grid(
      queryLayoutController: widget.queryLayoutController,
      gridController: _gridController,
      // onRowTapped: (row) => navigateToTicketDetails(row.id),
      columns: [
        columnBuilderWidget(
          flex: 2,
          width: 64,
          headerText: '',
          cellWidget: (rowItem) => Row(
            children: [
              _getTicketCat(context, rowItem),
              const SizedBox(width: 2),
              _getTicketImagesCount(context, rowItem),
            ],
          ),
        ),
        columnBuilder(
          headerText: 'Depot',
          cellText: (rowItem) => rowItem.depotNo,
          getSortIcon: () => _sortIcon('depotNo'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('depotNo'),
        ),
        columnBuilder(
          headerText: 'Ticket No',
          cellText: (rowItem) => rowItem.ticketNumber.toString(),
          getSortIcon: () => _sortIcon('ticketNumber'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('ticketNumber'),
        ),
        columnBuilderWidget(
          flex: 2,
          headerText: 'Type',
          cellWidget: (rowItem) =>
              Row(children: [_getTicketType(context, rowItem)]),
        ),
        columnBuilder(
          headerText: 'Created',
          cellText: (rowItem) =>
              rowItem.createdDate.asyMMMd(Localizations.localeOf(context)),
          getSortIcon: () => _sortIcon('createdDateEpoch'),
          onSortTap: () => widget.queryLayoutController.dataSource.sortBy(
            'createdDateEpoch',
          ),
        ),
        columnBuilder(
          headerText: 'Party',
          cellText: (rowItem) => rowItem.partyAccountNo ?? '',
          getSortIcon: () => _sortIcon('partyAccountNo'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('partyAccountNo'),
        ),
        columnBuilder(
          headerText: 'Party Name',
          flex: 5,
          width: 500,
          cellText: (rowItem) => rowItem.partyName ?? '',
          getSortIcon: () => _sortIcon('partyName'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('partyName'),
        ),
        columnBuilderWidget(
          flex: 3,
          headerText: 'No of lines',
          cellWidget: (rowItem) => Tooltip(
            message: rowItem.lines.map((e) => e.gradeCode).toList().join(', '),
            child: Text(rowItem.lines.length.toString()),
          ),
        ),
        columnBuilder(
          headerText: 'Value',
          cellText: (rowItem) {
            final format = NumberFormat.decimalPattern(
              Localizations.localeOf(context).toString(),
            );
            return format.format(rowItem.price);
          },
          getSortIcon: () => _sortIcon('price'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('price'),
        ),
        columnBuilder(
          headerText: '# Vehicle',
          flex: 5,
          cellText: (rowItem) => rowItem.vehicleNo ?? '',
          getSortIcon: () => _sortIcon('vehicleNo'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('vehicleNo'),
        ),
      ],
    );
  }

  EmrGridColumn<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>
  columnBuilder({
    required String headerText,
    required String Function(
      Query$SearchTrade2Tickets$searchTrade2Tickets$nodes,
    )
    cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor: onSortTap != null
            ? SystemMouseCursors.click
            : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(
            children: [
              Text(headerText),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder:
          (Query$SearchTrade2Tickets$searchTrade2Tickets$nodes rowItem) =>
              Text(cellText.call(rowItem), overflow: TextOverflow.ellipsis),
    );
  }

  EmrGridColumn<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>
  columnBuilderWidget({
    required String headerText,
    required Widget Function(
      Query$SearchTrade2Tickets$searchTrade2Tickets$nodes,
    )
    cellWidget,
    void Function()? onSortTap,
    Widget Function()? getSortMaker,
    int flex = 4,
    double width = 100,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor: onSortTap != null
            ? SystemMouseCursors.click
            : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(
            children: [
              Text(headerText),
              if (getSortMaker != null) getSortMaker.call(),
            ],
          ),
        ),
      ),
      cellBuilder: cellWidget,
    );
  }

  Widget _getTicketType(
    BuildContext context,
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes rowItem,
  ) {
    final icon = switch (rowItem.ticketType) {
      Enum$Trade2TicketType.INWARDS => Icon(
        Icons.arrow_back,
        size: 16,
        color: Theme.of(context).colorScheme.primary,
      ),
      Enum$Trade2TicketType.OUTWARDS => Icon(
        Icons.arrow_forward,
        size: 16,
        color: Theme.of(context).colorScheme.tertiary,
      ),
      _ => const Placeholder(),
    };

    return Tooltip(message: rowItem.ticketType.name, child: icon);
  }

  Widget _getTicketCat(
    BuildContext context,
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes rowItem,
  ) {
    final (icon, colour) = switch (rowItem.ticketCategory) {
      Enum$Trade2TicketCategory.NORMAL => (
        Icons.confirmation_num_outlined,
        Colors.green,
      ),
      Enum$Trade2TicketCategory.INTER_DEPOT => (Icons.move_down, Colors.amber),
      Enum$Trade2TicketCategory.MERCHANT_TRUCK_TRADE => (
        Icons.abc,
        Colors.green,
      ),
      Enum$Trade2TicketCategory.TRUE_TRUCK_TRADE => (
        Icons.local_shipping,
        Colors.lightBlue,
      ),
      Enum$Trade2TicketCategory.INTER_YARD_TRANSFER => (
        Icons.multiple_stop,
        Colors.green,
      ),
      _ => (Icons.device_unknown, Colors.red),
    };

    return Tooltip(
      message: rowItem.ticketCategory.name,
      child: Icon(icon, size: 16, color: colour),
    );
  }

  Widget _getTicketImagesCount(
    BuildContext context,
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes rowItem,
  ) {
    final hasImages = rowItem.mediaAssets.isNotEmpty;
    final distinctImageCount = rowItem.mediaAssets
        .map((image) => image.url)
        .toSet()
        .length;

    return SizedBox(
      width: 16,
      height: 16,
      child: Row(
        children: [
          Tooltip(
            message: hasImages ? 'Has $distinctImageCount Images' : 'No Images',
            child: Icon(
              hasImages
                  ? Icons.camera_alt_outlined
                  : Icons.no_photography_outlined,
              size: 16,
              color: hasImages ? Colors.green : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  void navigateToTicketDetails(String? id) {
    context.go(
      context.namedLocation(
        NamedRoutes.ticketDetails,
        params: {'id': id?.split('/').lastOrNull ?? ''},
      ),
    );
  }

  Widget _sortIcon(String field) {
    final value = widget.queryLayoutController.dataSource.queryScope.sortOrder
        .firstWhereOrNull((element) => element.field == field);

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
        ? const Icon(Icons.arrow_drop_up)
        : const Icon(Icons.arrow_drop_down);
  }
}
