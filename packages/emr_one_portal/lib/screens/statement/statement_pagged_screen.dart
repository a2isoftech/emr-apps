import 'package:emr_account_registration/services/customer_user_info_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatementPagedScreen extends StatefulWidget {
  const StatementPagedScreen({
    required this.userInfoSvc,
    super.key,
  });
  final CustomerUserInfoService userInfoSvc;
  @override
  State<StatementPagedScreen> createState() => _StatementPagedScreenState();
}

class _StatementPagedScreenState extends State<StatementPagedScreen>
    with TickerProviderStateMixin {
  late EmrGridController<StatementModel> _gridController;
  late EmrQueryLayoutController<StatementModel> queryLayoutController;
  final GlobalKey<TooltipState> _tooltipKey = GlobalKey<TooltipState>();
  late TabController _tabController;

  final List<String> _tabNames = [
    'Outstanding',
    'Paid',
  ];

  @override
  void initState() {
    super.initState();
    queryLayoutController =
        Provider.of<EmrQueryLayoutController<StatementModel>>(
      context,
      listen: false,
    );
    _tabController = TabController(
      length: _tabNames.length,
      vsync: this,
    )..addListener(_handleTabChange);
    _gridController = EmrGridController<StatementModel>(
      data: queryLayoutController.dataSource.data,
      showLoader: queryLayoutController.dataSource.loading,
    );
    final filterController = queryLayoutController.filterController!
        as StatementSearchFilterController;
    filterController.fetchFilterValues();
    _refreshGrid();
  }

  void _refreshGrid() {
    final gridDataSource =
        queryLayoutController.dataSource as StatementDataSource;
    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
    gridDataSource.setStatementType(
      _tabNames[_tabController.index],
    );
    gridDataSource.refresh();
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  void _showTooltip() {
    _tooltipKey.currentState?.ensureTooltipVisible();
  }

  @override
  Widget build(BuildContext context) {
    return _buildStatementContext();
  }

  Widget _buildStatementContext() {
    final theme = Theme.of(context);
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ColoredBox(
          color: theme.colorScheme.secondary,
          child: Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    widget.userInfoSvc.userInfo.name,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: brandColours.onBrandColour),
                  ),
                ),
              ),
            ],
          ),
        ),
        ColoredBox(
          color: theme.colorScheme.secondary,
          child: TabBar(
            indicatorColor: Theme.of(context).colorScheme.primary,
            labelColor: brandColours.onBrandColour,
            unselectedLabelColor: brandColours.onBrandColour!.withAlpha(
              128,
            ),
            indicatorWeight: 3,
            controller: _tabController,
            tabs: _tabNames.map((tabName) => Tab(text: tabName)).toList(),
            onTap: (index) {
              _refreshGrid();
            },
          ),
        ),
        BreadCrumb(
          paths: [context.l10n.home.toUpperCase()],
          currentPage: context.l10n.statement.toUpperCase(),
        ),
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '${_tabNames[_tabController.index]} '
                    '${context.l10n.invoices}',
                    style: theme.textTheme.headlineSmall,
                  ),
                  const SizedBox(width: Insets.gutter),
                  if (_tabNames[_tabController.index] ==
                      context.l10n.outstanding)
                    InkWell(
                      onTap: _showTooltip,
                      child: Tooltip(
                        message: context.l10n.statementDelayMessage,
                        child: Text(
                          '?',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            color: theme.colorScheme.tertiary,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Text(
                context.l10n.listOfAllYourRecentTransactions,
                style: theme.textTheme.labelSmall,
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: _tabNames.map((tabName) {
              return EmrQueryLayout<StatementModel>.grid(
                gridController: _gridController,
                queryLayoutController: queryLayoutController,
                columns: [
                  ...StatementGridColumns.gridColumns.where((e) {
                    if (tabName == context.l10n.outstanding &&
                        e == context.l10n.paymentDate) {
                      return false;
                    } else if (tabName == context.l10n.paid &&
                        (e == context.l10n.invoiceDueDate || e == 'Status')) {
                      return false;
                    }
                    return true;
                  }).map(
                    (e) => columnBuilder(
                      flex: 1,
                      headerText: e,
                      cellText: (p0) => _getCellValue(p0, e),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  String _getCellValue(
    StatementModel statement,
    String type,
  ) {
    final activeLocale = Localizations.localeOf(context);

    switch (type) {
      case StatementGridColumns.invoiceDate:
        return DateToStringHelpers.formatDateByLocale(
          statement.date ?? DateTime.now(),
          activeLocale.toString(),
        );
      case StatementGridColumns.paymentDate:
        return DateToStringHelpers.formatDateByLocale(
          statement.paidDate ?? DateTime.now(),
          activeLocale.toString(),
        );
      case StatementGridColumns.invoiceNumber:
        return statement.invoiceNumber;
      case StatementGridColumns.amount:
        return '${statement.currency}'
            '${NumberFormattingService.formatToThousands(
          statement.amount,
          activeLocale.toString(),
        )}';
      case StatementGridColumns.purchaseOrderNumber:
        return statement.purchaseOrderNumber;
      case StatementGridColumns.invoiceDueDate:
        return DateToStringHelpers.formatDateByLocale(
          statement.dueDate ?? DateTime.now(),
          activeLocale.toString(),
        );
      case StatementGridColumns.status:
        return statement.status;
      case StatementGridColumns.companyName:
        return statement.companyName ?? '-';
    }
    return '-';
  }

  EmrGridColumn<StatementModel> columnBuilder({
    required String headerText,
    required String Function(
      StatementModel,
    ) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 175,
  }) {
    final theme = Theme.of(context);
    if (headerText == context.l10n.purchaseOrderNumber) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'purchaseOrderNumber',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (StatementModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.invoiceDueDate) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'supplierInvoiceDueDate',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (StatementModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.invoiceDate) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'supplierInvoiceDate',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (StatementModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.invoiceNumber) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'invoiceNo',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (StatementModel rowItem) {
          if (rowItem.invoicePdf?.isNotEmpty ?? true) {
            return RichText(
              text: TextSpan(
                text: rowItem.invoiceNumber,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: theme.colorScheme.tertiary,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    EmrModal.showMessageBar(
                      context,
                      context.l10n.msgFileDownloadStarted,
                      messageType: MessageBarTypes.information,
                    );
                    (queryLayoutController.dataSource as StatementDataSource)
                        .downloadFile(
                      rowItem.purchaseOrderNumber,
                      rowItem.invoiceNumber,
                    );
                  },
              ),
            );
          }
          return Text(
            rowItem.invoiceNumber,
          );
        },
      );
    } else if (headerText == context.l10n.amount) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'invoiceTotal',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (StatementModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.paymentDate) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'paidDate',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (StatementModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.status) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'status',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (StatementModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
      );
    } else if (headerText == context.l10n.companyName) {
      return EmrGridColumn(
        flex: flex,
        width: 225,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'companyName',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (StatementModel rowItem) => Text(
          cellText.call(rowItem),
          overflow: TextOverflow.visible,
        ),
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
      cellBuilder: (StatementModel rowItem) => Text(
        cellText.call(rowItem),
        overflow: TextOverflow.visible,
      ),
    );
  }

  void _handleTabChange() {
    setState(() {
      //To Update the UI
    });
  }
}

abstract class StatementGridColumns {
  // Constants for individual columns
  static const String companyName = 'Company Name';
  static const String invoiceDate = 'Invoice Date';
  static const String invoiceDueDate = 'Invoice Due Date';
  static const String invoiceNumber = 'Invoice Number';
  static const String status = 'Status';
  static const String amount = 'Amount';
  static const String purchaseOrderNumber = 'Purchase Order Number';
  static const String paymentDate = 'Payment Date';

  // List of all columns for the grid
  static const List<String> gridColumns = [
    companyName,
    invoiceDate,
    invoiceDueDate,
    paymentDate,
    invoiceNumber,
    status,
    amount,
    purchaseOrderNumber,
  ];
}
