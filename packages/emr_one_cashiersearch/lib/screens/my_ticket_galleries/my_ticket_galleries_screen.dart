import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/extensions/my_ticket_galleries_data_source.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class MyTicketGalleriesScreen extends StatefulWidget {
  const MyTicketGalleriesScreen({
    required this.queryLayoutController,
    super.key,
  });

  final EmrQueryLayoutController<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>
      queryLayoutController;

  @override
  State<MyTicketGalleriesScreen> createState() =>
      _MyTicketGalleriesScreenState();
}

class _MyTicketGalleriesScreenState extends State<MyTicketGalleriesScreen> {
  late EmrGridController<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>
      _gridController;

  @override
  void initState() {
    super.initState();

    _gridController = EmrGridController<
        Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>(
      data: widget.queryLayoutController.dataSource.data,
      //rowSelectionMode: RowSelectionMode.multiple,
      showLoader: widget.queryLayoutController.dataSource.loading,
    );
    final dataloader =
        widget.queryLayoutController.dataSource as MyTicketGalleriesDataSource;
    // Clear the grid selection when a search is performed.
    widget.queryLayoutController.dataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
    dataloader.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<
        Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>.grid(
      queryLayoutController: widget.queryLayoutController,
      gridController: _gridController,
      onRowTapped: (row) => navigateToTicketDetails(row.id),
      columns: [
        columnBuilder(
          headerText: 'Title',
          cellText: (rowItem) => rowItem.title,
          getSortIcon: () => _sortIcon('title'),
          onSortTap: () =>
              widget.queryLayoutController.dataSource.sortBy('title'),
        ),
        columnBuilder(
          headerText: 'Ticket numbers',
          cellText: (rowItem) =>
              rowItem.tickets.map((ticket) => ticket.ticketNumber).join(','),
        ),
        columnBuilder(
          headerText: 'Total Images',
          cellText: (rowItem) => _getTicketImagesCount(rowItem).toString(),
        ),
      ],
    );
  }

  EmrGridColumn<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>
      columnBuilder({
    required String headerText,
    required String Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes,
    ) cellText,
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
      cellBuilder: (
        Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes rowItem,
      ) =>
          Text(
        cellText.call(rowItem),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  EmrGridColumn<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>
      columnBuilderWidget({
    required String headerText,
    required Widget Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes,
    ) cellWidget,
    void Function()? onSortTap,
    Widget Function()? getSortMaker,
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
              if (getSortMaker != null) getSortMaker.call(),
            ],
          ),
        ),
      ),
      cellBuilder: cellWidget,
    );
  }

  int _getTicketImagesCount(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes rowItem,
  ) {
    return rowItem.tickets
        .map(
          (ticket) => [
            ...ticket.mediaAssets,
            ...ticket.inspectionMedia,
            ...ticket.lines.expand((line) => line.mediaAssets),
            ...ticket.lines.expand(
              (line) =>
                  line.deductions.expand((deduction) => deduction.mediaAssets),
            ),
            ...ticket.lines.expand(
              (line) => line.inspectionDetails?.inspectionMedia ?? [],
            ),
          ].length,
        )
        .sum;
  }

  void navigateToTicketDetails(String id) {
    context.pushNamed(
      'edge-ticketGallery',
      params: {
        'id': id.replaceAll('EdgeTicketGalleries/', ''),
      },
    );
  }

  Widget _sortIcon(String field) {
    final value = widget.queryLayoutController.dataSource.queryScope.sortOrder
        .firstWhereOrNull(
      (element) => element.field == field,
    );

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
            ? const Icon(Icons.arrow_drop_up)
            : const Icon(Icons.arrow_drop_down);
  }
}
