import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RemittancesScreen extends StatefulWidget {
  const RemittancesScreen({
    super.key,
  });

  @override
  State<RemittancesScreen> createState() => RemittancesScreenState();
}

class RemittancesScreenState extends State<RemittancesScreen> {
  late EmrGridController<SupplierRemittanceModel> _gridController;
  late EmrQueryLayoutController<SupplierRemittanceModel> queryLayoutController;

  @override
  void initState() {
    super.initState();
    queryLayoutController =
        Provider.of<EmrQueryLayoutController<SupplierRemittanceModel>>(
      context,
      listen: false,
    );
    _gridController = EmrGridController<SupplierRemittanceModel>(
      data: queryLayoutController.dataSource.data,
      showLoader: queryLayoutController.dataSource.loading,
    );
    final gridDataSource =
        queryLayoutController.dataSource as RemittanceSearchDataSource;
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
        BreadCrumb(
          paths: [context.l10n.home.toUpperCase()],
          currentPage: context.l10n.remittance.toUpperCase(),
        ),
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${context.l10n.remittance} ',
                style: theme.textTheme.headlineSmall,
              ),
              Text(
                context.l10n.listofAllYourRecentRemittances,
                style: theme.textTheme.labelSmall,
              ),
            ],
          ),
        ),
        Expanded(
          child: EmrQueryLayout<SupplierRemittanceModel>.grid(
            gridController: _gridController,
            queryLayoutController: queryLayoutController,
            columns: [
              ...RemittanceGridColumns.gridColumns.map(
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
    );
  }

  String _getCellValue(
    SupplierRemittanceModel remittance,
    String type,
  ) {
    final activeLocale = Localizations.localeOf(context);
    switch (type) {
      case RemittanceGridColumns.remittance:
        return remittance.fileName;

      case RemittanceGridColumns.paymentDate:
        return DateToStringHelpers.formatDateByLocale(
          remittance.paidDate,
          activeLocale.toString(),
        );
    }
    return '-';
  }

  EmrGridColumn<SupplierRemittanceModel> columnBuilder({
    required String headerText,
    required String Function(
      SupplierRemittanceModel,
    ) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 175,
  }) {
    final theme = Theme.of(context);
    if (headerText == context.l10n.remittance) {
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
        cellBuilder: (SupplierRemittanceModel rowItem) => RichText(
          text: TextSpan(
            text: rowItem.fileName,
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
                (queryLayoutController.dataSource as RemittanceSearchDataSource)
                    .downloadFile(rowItem.paidDate);
              },
          ),
        ),
      );
    } else if (headerText == context.l10n.paymentDate) {
      return EmrGridColumn(
        flex: flex,
        width: width,
        headerBuilder: () => EmrSortableGridHeader(
          field: 'remittanceCreatedDate',
          dataSource: queryLayoutController.dataSource,
          child: Text(
            headerText,
          ),
        ),
        cellBuilder: (SupplierRemittanceModel rowItem) => Text(
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
      cellBuilder: (SupplierRemittanceModel rowItem) => Text(
        cellText.call(rowItem),
        overflow: TextOverflow.visible,
      ),
    );
  }
}

abstract class RemittanceGridColumns {
  // Constants for individual columns
  static const String remittance = 'Remittance';
  static const String paymentDate = 'Payment Date';

  // List of all columns for the grid
  static const List<String> gridColumns = [remittance, paymentDate];
}
