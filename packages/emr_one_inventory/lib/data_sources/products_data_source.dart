import 'package:emr_core_api/graphql/queries/inventory/production/production.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/controllers/filters/products_search_filter_controller.dart';
import 'package:emr_one_inventory/models/production/product.dart';
import 'package:emr_one_inventory/services/production/bom_service.dart';

class ProductsDataSource extends EmrQueryGraphQLDataSource<Product> {
  ProductsDataSource({
    required this.bomService,
    required this.selectedProducts,
  });

  final BomService bomService;
  final List<Product> selectedProducts;

  @override
  RowSelectionMode get selectionMode => RowSelectionMode.multiple;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();

    final searchInput = Variables$Query$SearchProducts(
      query: queryScope.query,
      productClasses:
          (queryScope.filters[ProductsSearchFilterController.kProductClass]
                  as List<String>?)
              ?.whereType<String>()
              .toList() ??
          [],
      productFamilies:
          (queryScope.filters[ProductsSearchFilterController.kProductFamily]
                  as List<String>?)
              ?.whereType<String>()
              .toList() ??
          [],
      productLines:
          (queryScope.filters[ProductsSearchFilterController.kProductLine]
                  as List<String>?)
              ?.whereType<String>()
              .toList() ??
          [],
      before: before,
      after: after,
      first: first,
      last: last,
    );

    final response = await bomService.searchProducts(searchInput);

    if (response != null) {
      recordCount = response.totalCount;
      pageInfo = EmrQueryGraphQLPageInfo(
        hasPreviousPage: response.pageInfo.hasPreviousPage,
        hasNextPage: response.pageInfo.hasNextPage,
        startCursor: response.pageInfo.startCursor,
        endCursor: response.pageInfo.endCursor,
      );
      data.value =
          response.nodes
              ?.map(
                (y) => Product(
                  id: y.id,
                  code: y.code,
                  description: y.description,
                  productClass: y.classification.$class,
                  productFamily: y.classification.family,
                  productLine: y.classification.line,
                ),
              )
              .toList() ??
          [];

      selection.value = [...selectedProducts];
    }

    loading.value = false;
  }
}
