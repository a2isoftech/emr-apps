import 'dart:async';

import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:emr_sharedtypes/uom/uom_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:signals/signals_flutter.dart';

class CreateStockTakeController {
  CreateStockTakeController({
    required this.stocktakeService,
    required this.userInfo,
    required this.uomService,
    required this.basicDetailsController,
  });

  final StocktakeService stocktakeService;
  final UomService uomService;
  final UserInfo userInfo;
  final BasicDetailsController basicDetailsController;
  late final EmrQueryLayoutController<StocktakeLocation>
  locationsLayoutController;

  late final LocationDataSource locationDataSource;

  final ValueNotifier<String> locationSearchValue = ValueNotifier('');
  final searchUserController = TextEditingController();

  final showLoader = signal(false);

  void init(StockTake stocktake, {required bool isCreateRequest}) {
    final locationFilterController = LocationFilterController(
      service: stocktakeService,
      productFamily: stocktake.productFamily,
      isApplyProductFamilyFilter: isCreateRequest
    );
    locationDataSource = LocationDataSource(
      service: stocktakeService,
      yardCode: stocktake.yardCode,
      filterController: locationFilterController,
    );
    locationsLayoutController = EmrQueryLayoutController(
      dataSource: locationDataSource,
      filterController: locationFilterController,
      supportedViewModes: kIsWeb
          ? {EmrQueryLayoutViewMode.card, EmrQueryLayoutViewMode.grid}
          : {EmrQueryLayoutViewMode.card},
      viewMode: EmrQueryLayoutViewMode.card,
    );

    locationDataSource.allSelectedLocations.value = [...stocktake.locations];
    locationDataSource.selection.value = [...stocktake.locations];
  }

  Future<StockTakeApiResponse<String>> submit(
    BuildContext context,
    String currencyCode, {
    bool isClone = false,
  }) async {
    if (!_validateStockTake()) {
      return StockTakeApiResponse.failed(
        message: context.l10n.validationFailed,
      );
    }

    final stockTake = Input$CreateStocktakeInput(
      stocktakeId: basicDetailsController.stockTakeId,
      name: basicDetailsController.nameInputValue.value,
      yardCode: basicDetailsController.selectedYard.value!.key,
      conductedBy: basicDetailsController.selectedUser.value!.key,
      locationIds: locationDataSource.allSelectedLocations.value
          .map((s) => s.id)
          .toList(),
      productFamily: basicDetailsController.selectedProductFamily.value!.key,
      isRoutineCheck: !basicDetailsController.routineCheck.value,
      territoryCode: basicDetailsController.territoryCode,
      currencyCode: currencyCode,
      defaultUom: basicDetailsController.selectedUom,
    );
    if (isClone) {
      final response = await stocktakeService.cloneAndCreate(stockTake);
      return response;
    } else {
      final response = await stocktakeService.updateStockTake(stockTake);
      return response;
    }
  }

  bool _validateStockTake() {
    if (basicDetailsController.nameInputValue.value.isEmpty) return false;
    if (basicDetailsController.selectedYard.value?.key == null) return false;
    if (basicDetailsController.selectedUser.value?.key == null) return false;
    if (locationDataSource.allSelectedLocations.value.isEmpty) return true;
    return true;
  }

  void dispose() {
    locationSearchValue.dispose();
    searchUserController.dispose();
  }
}
