import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/controller/create_stock_take_controller.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/location_widgets/select_location_card.dart';
import 'package:emr_one_stock_take/widgets/column_builder.dart';
import 'package:flutter/material.dart';

class YardLocationsWeb extends StatefulWidget {
  const YardLocationsWeb({
    required this.emrQueryLayoutController,
    required this.createStockTakeController,
    super.key,
  });

  final EmrQueryLayoutController<StocktakeLocation> emrQueryLayoutController;
  final CreateStockTakeController createStockTakeController;

  @override
  State<YardLocationsWeb> createState() => _YardLocationsWebState();
}

class _YardLocationsWebState extends State<YardLocationsWeb> {
  @override
  void initState() {
    super.initState();
    widget.emrQueryLayoutController.dataSource.refresh();
    widget.createStockTakeController.locationDataSource.selection
        .addListener(() {
      widget.createStockTakeController.locationDataSource.allSelectedLocations
              .value =
          widget.createStockTakeController.locationDataSource.selection.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return EmrQueryLayoutHybrid(
      controller: widget.emrQueryLayoutController,
      columns: columns(theme),
      buildCardTitle: (location) {
        return '${location.code} - ${location.description}';
      },
      buildCardSubtitle: (location) => '${location.productCode} - '
          '${location.productDesc ?? '-'}',
      buildCardBody: (item, index) {
        return SelectLocationCard(location: item);
      },
      clearSelectionOnRefresh: false,
    );
  }

  List<EmrGridColumn<StocktakeLocation>> columns(ThemeData theme) {
    return [
      buildTextColumn(
        context: context,
        headerText: context.l10n.location,
        cellText: (rowItem) => '${rowItem.code} - ${rowItem.description}',
        theme: theme,
        dataSource: widget.emrQueryLayoutController.dataSource,
      ),
      buildTextColumn(
        headerText: context.l10n.product,
        cellText: (rowItem) => '${rowItem.productCode} - '
            '${rowItem.productDesc ?? ''}',
        context: context,
        theme: theme,
        dataSource: widget.emrQueryLayoutController.dataSource,
      ),
      buildTextColumn(
        headerText: context.l10n.productClass,
        cellText: (rowItem) => rowItem.productClass,
        context: context,
        theme: theme,
        dataSource: widget.emrQueryLayoutController.dataSource,
      ),
      buildTextColumn(
        headerText: context.l10n.productLine,
        cellText: (rowItem) => rowItem.productLine,
        context: context,
        theme: theme,
        dataSource: widget.emrQueryLayoutController.dataSource,
      ),
    ];
  }
}
