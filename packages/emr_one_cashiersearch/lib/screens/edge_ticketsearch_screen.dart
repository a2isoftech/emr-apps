import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class EdgeTicketsScreen extends StatefulWidget {
  const EdgeTicketsScreen({
    required this.controller,
    required this.queryLayoutController,
    super.key,
  });

  final EdgeTicketScreenController controller;

  final EmrQueryLayoutController<Query$SearchEdgeTickets$searchTickets$nodes>
  queryLayoutController;

  @override
  State<EdgeTicketsScreen> createState() => _EdgeTicketsScreenState();
}

class _EdgeTicketsScreenState extends State<EdgeTicketsScreen> {
  late EmrGridController<Query$SearchEdgeTickets$searchTickets$nodes>
  _gridController;

  @override
  void initState() {
    super.initState();

    _gridController =
        EmrGridController<Query$SearchEdgeTickets$searchTickets$nodes>(
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
                ? () async {
                    await _onCreateGalleryMenuClicked();
                  }
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

  Future<void> _createGallery(String title) async {
    final id = await widget.controller.createTicketGallery(
      title,
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
            'edge-ticketGallery',
            params: {'id': id.replaceAll('EdgeTicketGalleries/', '')},
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final appConfig = context.read<AppConfig>();

    final userHasTicketsDetailsViewPermission = context.userHasPermission(
      PermissionConstants.ticketsDetailsView,
    );

    final previewEnabled =
        userHasTicketsDetailsViewPermission && appConfig.isWeb;

    return EmrQueryLayout<Query$SearchEdgeTickets$searchTickets$nodes>.grid(
      queryLayoutController: widget.queryLayoutController,
      gridController: _gridController,
      onRowTapped: userHasTicketsDetailsViewPermission
          ? (row) => context.go(
              context.namedLocation(
                NamedRoutes.ticketDetails,
                params: {
                  'yardCode': row.yardCode,
                  'ticketNumber': row.ticketNumber.toString(),
                },
              ),
            )
          : null,
      columns: [
        columnBuilderWidget(
          flex: 2,
          width: previewEnabled ? 95 : 64,
          headerText: '',
          cellWidget: (rowItem) => Row(
            children: [
              _getTicketCat(context, rowItem),
              const SizedBox(width: 2),
              _getTicketImagesCount(context, rowItem),
              Text('(${_getDistinctImageCount(rowItem)})'),
              if (previewEnabled)
                Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter / 2),
                  child: GestureDetector(
                    onTap: () async => Flyout.show<void>(
                      context: context,
                      padding: EdgeInsets.zero,
                      builder: (context) => Material(
                        child: TicketDetailsScreen(ticketId: rowItem.id),
                      ),
                    ),
                    child: const Tooltip(
                      message: 'Preview ticket',
                      child: Icon(Icons.remove_red_eye, size: 24),
                    ),
                  ),
                ),
            ],
          ),
        ),
        columnTooltipBuilder(
          headerText: 'Ticket No',
          cellText: (rowItem) => rowItem.ticketNumber.toString(),
          tooltipText: (rowItem) => rowItem.id,
          getSortIcon: () => _sortIcon('ticketNumber'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('ticketNumber'),
        ),
        columnBuilderWidget(
          flex: 2,
          width: 42,
          headerText: 'Type',
          cellWidget: (rowItem) =>
              Row(children: [_getTicketType(context, rowItem)]),
        ),
        columnBuilder(
          headerText: 'Created',
          cellText: (rowItem) =>
              rowItem.date.asyMMMd(Localizations.localeOf(context)),
          getSortIcon: () => _sortIcon('createdDateEpoch'),
          onSortTap: () => widget.queryLayoutController.dataSource.sortBy(
            'createdDateEpoch',
          ),
        ),
        columnBuilder(
          flex: 2,
          width: 110,
          headerText: 'Account No',
          cellText: (rowItem) => rowItem.account.accountNumber,
          getSortIcon: () => _sortIcon('partyAccountNo'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('partyAccountNo'),
        ),
        columnTooltipBuilder(
          headerText: 'Account Name',
          flex: 2,
          width: 300,
          cellText: (rowItem) => rowItem.account.name,
          tooltipText: (rowItem) => rowItem.account.name,
          getSortIcon: () => _sortIcon('partyName'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('partyName'),
        ),
        columnTooltipBuilder(
          headerText: 'Contract No',
          flex: 5,
          width: 150,
          cellText: (rowItem) => rowItem.contract?.customerReference ?? '',
          tooltipText: (rowItem) => rowItem.contract?.customerReference ?? '',
          getSortIcon: () => _sortIcon('contractCustomerReferenceNumber'),
          onSortTap: () => widget.queryLayoutController.dataSource.sortBy(
            'contractCustomerReferenceNumber',
          ),
        ),
        columnBuilder(
          flex: 2,
          width: 250,
          headerText: 'Order Book',
          cellText: (rowItem) =>
              rowItem.contract?.contractOrderBookTypeName ?? '',
          getSortIcon: () => _sortIcon('contractOrderBookTypeName'),
          onSortTap: () => widget.queryLayoutController.dataSource.sortBy(
            'contractOrderBookTypeName',
          ),
        ),
        columnBuilderWidget(
          flex: 3,
          headerText: 'No of lines',
          cellWidget: (rowItem) => Tooltip(
            message: rowItem.lines
                .map((e) => e.product?.code)
                .toList()
                .join(', '),
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
        ),
        columnBuilder(
          headerText: '# Vehicle',
          flex: 5,
          cellText: (rowItem) => rowItem.transportDetails.vehicleReg ?? '',
          getSortIcon: () => _sortIcon('vehicleNo'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('vehicleNo'),
        ),
      ],
    );
  }

  EmrGridColumn<Query$SearchEdgeTickets$searchTickets$nodes> columnBuilder({
    required String headerText,
    required String Function(Query$SearchEdgeTickets$searchTickets$nodes)
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
      cellBuilder: (Query$SearchEdgeTickets$searchTickets$nodes rowItem) =>
          Text(cellText.call(rowItem), overflow: TextOverflow.ellipsis),
    );
  }

  EmrGridColumn<Query$SearchEdgeTickets$searchTickets$nodes>
  columnTooltipBuilder({
    required String headerText,
    required String Function(Query$SearchEdgeTickets$searchTickets$nodes)
    cellText,
    required String Function(Query$SearchEdgeTickets$searchTickets$nodes)
    tooltipText,
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
      cellBuilder: (Query$SearchEdgeTickets$searchTickets$nodes rowItem) =>
          Tooltip(
            message: tooltipText.call(rowItem),
            child: Text(
              cellText.call(rowItem),
              overflow: TextOverflow.ellipsis,
            ),
          ),
    );
  }

  EmrGridColumn<Query$SearchEdgeTickets$searchTickets$nodes>
  columnBuilderWidget({
    required String headerText,
    required Widget Function(Query$SearchEdgeTickets$searchTickets$nodes)
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
    Query$SearchEdgeTickets$searchTickets$nodes rowItem,
  ) {
    final tte = Theme.of(context).extension<TicketThemeExtension>()!;

    final icon = switch (rowItem.ticketType) {
      Enum$TicketType.INWARDS => Icon(
        Icons.arrow_back,
        size: 16,
        color: tte.inwardColour,
      ),
      Enum$TicketType.OUTWARDS => Icon(
        Icons.arrow_forward,
        size: 16,
        color: tte.outwardColour,
      ),
      _ => const Placeholder(),
    };

    return Tooltip(message: rowItem.ticketType.name, child: icon);
  }

  Widget _getTicketCat(
    BuildContext context,
    Query$SearchEdgeTickets$searchTickets$nodes rowItem,
  ) {
    final (icon, colour) = switch (rowItem.ticketCategory) {
      Enum$TicketCategory.NORMAL => (
        Icons.confirmation_num_outlined,
        Colors.green,
      ),
      Enum$TicketCategory.INTER_DEPOT => (Icons.move_down, Colors.amber),
      Enum$TicketCategory.MERCHANT_TRUCK_TRADE => (Icons.abc, Colors.green),
      Enum$TicketCategory.TRUE_TRUCK_TRADE => (
        Icons.local_shipping,
        Colors.lightBlue,
      ),
      Enum$TicketCategory.INTER_YARD_TRANSFER => (
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
    Query$SearchEdgeTickets$searchTickets$nodes rowItem,
  ) {
    final imagesCount = _getDistinctImageCount(rowItem);
    final hasImages = imagesCount > 0;

    return SizedBox(
      width: 16,
      height: 16,
      child: Row(
        children: [
          Tooltip(
            message: hasImages ? 'Has $imagesCount Images' : 'No Images',
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

  int _getDistinctImageCount(
    Query$SearchEdgeTickets$searchTickets$nodes rowItem,
  ) {
    final imageUrls = <String>[
      ...rowItem.mediaAssets.map((x) => x.url),
      ...rowItem.inspectionMedia.map((x) => x.url),
      ...rowItem.lines.expand((line) => line.mediaAssets.map((x) => x.url)),
      ...rowItem.lines.expand(
        (line) => line.deductions.expand(
          (deduction) => deduction.mediaAssets.map((x) => x.url),
        ),
      ),
      ...rowItem.lines.expand(
        (line) =>
            line.inspectionDetails?.inspectionMedia.map((x) => x.url) ?? [],
      ),
    ];

    return imageUrls.toSet().length;
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

  Future<void> _onCreateGalleryMenuClicked() async {
    final grouped = <String, List<int>>{};

    for (final item in _gridController.selectedRows.value) {
      grouped.putIfAbsent(item.yardCode, () => []).add(item.ticketNumber);
    }

    final result = grouped.entries
        .map((entry) => '${entry.key}-${entry.value.join(',')}')
        .join('|');
    await _createGallery(result);
  }
}
