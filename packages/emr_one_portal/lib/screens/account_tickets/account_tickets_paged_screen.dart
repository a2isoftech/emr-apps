import 'package:emr_account_registration/signup.dart' as signup;
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/screens/screens.dart';
import 'package:emr_one_portal/shared/shared.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountTicketsPagedScreen extends StatefulWidget {
  const AccountTicketsPagedScreen({
    required this.userInfoService,
    required this.fileDownloadService,
    super.key,
  });

  final FileDownloadService fileDownloadService;
  final signup.CustomerUserInfoService userInfoService;

  @override
  State<AccountTicketsPagedScreen> createState() =>
      _AccountTicketsPagedScreenState();
}

class _AccountTicketsPagedScreenState extends State<AccountTicketsPagedScreen> {
  late EmrGridController<TicketModel> _gridController;
  late EmrQueryLayoutController<TicketModel> queryLayoutController;

  @override
  void initState() {
    super.initState();
    queryLayoutController = Provider.of<EmrQueryLayoutController<TicketModel>>(
      context,
      listen: false,
    );
    _gridController = EmrGridController<TicketModel>(
      data: queryLayoutController.dataSource.data,
      showLoader: queryLayoutController.dataSource.loading,
    );

    final gridDataSource =
        queryLayoutController.dataSource as AccountTicketsDataSource;
    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
    gridDataSource.refresh();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlueHeader(
          headingPrimary: widget.userInfoService.userInfo.name,
          headingSecondary: context.l10n.showAccountNumber(
            '${widget.userInfoService.userInfo.partyAccountNumber}',
          ),
        ),
        BreadCrumb(
          paths: [context.l10n.home.toUpperCase()],
          currentPage: context.l10n.transactions.toUpperCase(),
        ),
        BodyShell(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.transactions,
                          style: theme.textTheme.headlineSmall,
                        ),
                        Text(
                          context.l10n.listOfAllYourRecentTransactions,
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: EmrQueryLayout<TicketModel>.grid(
                  gridController: _gridController,
                  queryLayoutController: queryLayoutController,
                  columns: [
                    ...TrasactionGridColumns.gridColumns.map(
                      (e) => columnBuilder(
                        flex: 1,
                        headerText: e,
                        cellText: (p0) => _getCellValue(p0, e),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  EmrGridColumn<TicketModel> columnBuilder({
    required String headerText,
    required String Function(
      TicketModel,
    ) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 175,
  }) {
    if (headerText == context.l10n.date) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'ticketDate',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (TicketModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.ticket) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'ticketNumber',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (TicketModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.yard) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'yardCode',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (TicketModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.amount) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'price',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (TicketModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.remittance) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'fileName',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (TicketModel rowItem) {
          if (rowItem.fileName?.isNotEmpty ?? true) {
            // If remittance is available, show link with underline
            return RichText(
              text: TextSpan(
                text: rowItem.fileName,
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    EmrModal.showMessageBar(
                      context,
                      context.l10n.msgFileDownloadStarted,
                      messageType: MessageBarTypes.information,
                    );
                    (queryLayoutController.dataSource
                            as AccountTicketsDataSource)
                        .downloadFile(
                      rowItem.ticketNumber,
                    );
                  },
              ),
            );
          } else {
            // If remittance is not available, show plain text
            return Text(
              context.l10n.notAvailable,
              style: const TextStyle(
                color: Colors.grey,
              ),
            );
          }
        },
      );
    }
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
      cellBuilder: (TicketModel rowItem) => Text(
        cellText.call(rowItem),
        overflow: TextOverflow.visible,
      ),
    );
  }

  String _getCellValue(
    TicketModel ticket,
    String type,
  ) {
    final activeLocale = Localizations.localeOf(context);

    switch (type) {
      case TrasactionGridColumns.date:
        return DateToStringHelpers.formatDateByLocale(
          ticket.date,
          activeLocale.toString(),
        );
      case TrasactionGridColumns.ticket:
        return ticket.ticketNumber;
      case TrasactionGridColumns.amount:
        return '${ticket.currency}'
            '${NumberFormattingService.formatToThousands(
          ticket.paidAmount,
          activeLocale.toString(),
        )}';
      case TrasactionGridColumns.yard:
        return ticket.yardName ?? '';
      case TrasactionGridColumns.remittace:
        return (ticket.fileName!.isNotEmpty == true
                ? ticket.fileName
                : context.l10n.notAvailable) ??
            '';
    }
    return '-';
  }
}

abstract class TrasactionGridColumns {
  // Constants for individual columns
  static const String date = 'Date';
  static const String ticket = 'Ticket';
  static const String yard = 'Yard';
  static const String amount = 'Amount';
  static const String remittace = 'Remittance';

  // List of all columns for the grid
  static const List<String> gridColumns = [
    date,
    ticket,
    yard,
    amount,
    remittace,
  ];
}
