import 'package:emr_core_api/graphql/queries/stocktake/stocktake.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';

extension SearchStocktakeLocations
    on Query$SearchInventoryLocations$searchInventoryLocations$nodes {
  StocktakeLocation toStocktakeLocation() {
    return StocktakeLocation(
      rate: UomValue.fromJson(rate.toJson()),
      active: active,
      description: description,
      code: code,
      id: id,
      productId: '',
      productClass: product?.classification.$class ?? '',
      productCode: product?.code ?? '',
      productDesc: product?.description ?? '',
      productLine: product?.classification.line ?? '',
      locationType: inventoryLocationType,
      currentWeightLineId: 0,
    );
  }
}
