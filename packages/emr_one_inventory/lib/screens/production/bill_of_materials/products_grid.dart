import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/utilities/emr_dialog.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_controller.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_hybrid.dart';
import 'package:emr_one_inventory/components/shared/label_value.dart';
import 'package:emr_one_inventory/controllers/filters/products_search_filter_controller.dart';
import 'package:emr_one_inventory/data_sources/products_data_source.dart';
import 'package:emr_one_inventory/models/production/product.dart';
import 'package:emr_one_inventory/services/production/bom_service.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatefulWidget {
  const ProductsGrid({
    required this.bomService,
    required this.selectedProducts,
    this.onSelectionChanged,
    super.key,
  });

  final BomService bomService;
  final List<Product> selectedProducts;
  final void Function(List<Product> selectedProducts)? onSelectionChanged;

  @override
  State<ProductsGrid> createState() => _ProductsGridState();

  static Future<void> showAsDialog(
    BuildContext context, {
    required BomService bomService,
    required List<Product> selectedProducts,
    void Function(List<Product> selectedProducts)? onAccept,
    String? title,
    String? acceptLabel,
    double? height,
    double? width,
  }) {
    var productsSelected = [...selectedProducts];
    return EmrDialog.modal<void>(
      context,
      titleText: title ?? context.l10n.selectProducts,
      onAccept: () async {
        onAccept?.call(productsSelected);
        Navigator.pop(context);
      },
      acceptLabel: acceptLabel ?? context.l10n.addProducts,
      builder: (context) {
        return SizedBox(
          height: height ?? 500,
          width: width ?? MediaQuery.of(context).size.width * 0.7,
          child: ProductsGrid(
            bomService: bomService,
            selectedProducts: selectedProducts,
            onSelectionChanged: (products) => productsSelected = products,
          ),
        );
      },
    );
  }
}

class _ProductsGridState extends State<ProductsGrid> {
  late ProductsDataSource _dataSource;
  late EmrQueryLayoutController<Product> _layoutController;

  @override
  void initState() {
    _dataSource = ProductsDataSource(
      selectedProducts: widget.selectedProducts,
      bomService: widget.bomService,
    );
    _layoutController = EmrQueryLayoutController<Product>(
      dataSource: _dataSource,
      filterController: ProductsSearchFilterController(
        bomService: widget.bomService,
      ),
      supportedViewModes: {EmrQueryLayoutViewMode.card},
      viewMode: EmrQueryLayoutViewMode.card,
    );

    _dataSource.selection.addListener(_onSelectionChanged);
    _layoutController.dataSource.refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayoutHybrid(
      controller: _layoutController,
      buildCardTitle: (product) => product.code,
      buildCardPadding: () => const EdgeInsets.all(Insets.gutter / 2),
      buildCardSubtitle: (product) => product.description ?? '',
      buildCardBody: (product, index) => Column(
        children: [
          LabelValue(
            label: context.l10n.productClass,
            value: product.productClass,
          ),
          LabelValue(
            label: context.l10n.productLine,
            value: product.productLine,
          ),
        ],
      ),
      cardWidth: 250,
      clearSelectionOnRefresh: false,
    );
  }

  void _onSelectionChanged() {
    _dataSource.selectedProducts.clear();
    _dataSource.selectedProducts.addAll(_dataSource.selection.value);
    widget.onSelectionChanged?.call(_dataSource.selection.value);
  }

  @override
  void dispose() {
    _dataSource.selection.removeListener(_onSelectionChanged);
    _layoutController.dispose();
    super.dispose();
  }
}
