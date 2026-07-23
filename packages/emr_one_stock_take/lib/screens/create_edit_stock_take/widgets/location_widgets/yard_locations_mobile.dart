import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:flutter/material.dart';

class YardLocationsMobile extends StatefulWidget {
  const YardLocationsMobile({
    required this.stockTake,
    required this.controller,
    super.key,
  });

  final StockTake stockTake;
  final CreateStockTakeController controller;

  @override
  State<YardLocationsMobile> createState() => _YardLocationsMobileState();
}

class _YardLocationsMobileState extends State<YardLocationsMobile> {
  @override
  void initState() {
    super.initState();

    widget.controller.locationsLayoutController.dataSource.refresh();
    widget.controller.locationDataSource.selection.addListener(() {
      widget.controller.locationDataSource.allSelectedLocations.value =
          widget.controller.locationDataSource.selection.value;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        _buildAppBar(context),
        _buildHeader(),
        Expanded(
          child: _buildLocationList(theme),
        ),
        _buildBottomButton(theme),
      ],
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(context.l10n.addNewLocations),
    );
  }

  Widget _buildHeader() {
    return HeaderDetails(
      name: widget.stockTake.name,
      yard: widget.stockTake.yardCode,
      conductedBy: widget.stockTake.conductor!,
      productFamily: widget.stockTake.productFamily,
    );
  }

  Widget _buildBottomButton(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter,
      ),
      child: Row(
        children: [
          Expanded(
            child: FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(context.l10n.addToStockTake),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationList(ThemeData theme) {
    return EmrQueryLayoutHybrid(
      controller: widget.controller.locationsLayoutController,
      buildCardTitle: (location) =>
          '${location.code} - ${location.description}',
      buildCardSubtitle: (location) => '${location.productCode} - '
          '${location.productDesc ?? '-'}',
      buildCardBody: (item, index) {
        return SelectLocationCard(location: item);
      },
      clearSelectionOnRefresh: false,
      cardWidth: MediaQuery.of(context).size.width * 0.9,
    );
  }
}
