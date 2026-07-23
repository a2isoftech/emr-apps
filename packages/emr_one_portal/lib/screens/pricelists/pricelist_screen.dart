import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/screens/pricelists/pricelist_model_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PriceListScreen extends StatefulWidget {
  const PriceListScreen({
    required this.tabname,
    super.key,
  });
  final String tabname;
  @override
  State<PriceListScreen> createState() => _PriceListScreenState();
}

class _PriceListScreenState extends State<PriceListScreen>
    with TickerProviderStateMixin {
  late EmrGridController<PriceListModel> _gridController;
  late EmrQueryLayoutController<PriceListModel> queryLayoutController;
  late MarketIndicationModel? _marketInfo;
  late TabController _tabController;

  final List<String> _tabNames = [
    'Ferrous',
    'Non-Ferrous',
  ];

  @override
  void initState() {
    super.initState();
    queryLayoutController =
        Provider.of<EmrQueryLayoutController<PriceListModel>>(
      context,
      listen: false,
    );
    _tabController = TabController(
      length: _tabNames.length,
      vsync: this,
    )..addListener(_handleTabChange);
    _gridController = EmrGridController<PriceListModel>(
      data: queryLayoutController.dataSource.data,
      showLoader: queryLayoutController.dataSource.loading,
    );
    _refreshGrid();
  }

  void _refreshGrid() {
    final filterController = queryLayoutController.filterController!
        as PricelistSearchFilterController;
    filterController.fetchFilterValues();

    final gridDataSource =
        queryLayoutController.dataSource as PricelistSearchDataSource;
    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
    gridDataSource.setProductType(widget.tabname);
    gridDataSource.getMarketIndicationPrices();
    _marketInfo = gridDataSource.marketInfo;

    gridDataSource.refresh();
  }

  void _handleTabChange() {
    setState(() {
      //To Update the UI
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.tabname == PortalStrings.nonFerrous && _marketInfo != null)
          MarketInfoWidget(marketInfo: _marketInfo!),
        Expanded(
          child: EmrQueryLayout<PriceListModel>.grid(
            gridController: _gridController,
            queryLayoutController: queryLayoutController,
            columns: [
              ...PriceListGridColumns.gridColumns.map(
                (e) => columnBuilder(
                  flex: 1,
                  headerText: e,
                  cellText: (row) => row.getCellValue(e, context),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  EmrGridColumn<PriceListModel> columnBuilder({
    required String headerText,
    required String Function(
      PriceListModel,
    ) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 190,
  }) {
    final fieldMapping = {
      context.l10n.grade: 'grade',
      context.l10n.description: 'description',
      context.l10n.price: 'price',
      context.l10n.unitOfMeasurement: 'unitOfMeasurement',
      context.l10n.deliveryMethod: 'deliveryMethod',
      context.l10n.updatedDate: 'updatedDate',
      context.l10n.notes: 'notes',
    };

    final fieldName = fieldMapping[headerText] ?? '';

    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => EmrSortableGridHeader(
        field: fieldName,
        dataSource: queryLayoutController.dataSource,
        child: Text(
          headerText,
        ),
      ),
      cellBuilder: (PriceListModel rowItem) => Text(
        cellText.call(rowItem),
        overflow: TextOverflow.visible,
      ),
    );
  }
}
