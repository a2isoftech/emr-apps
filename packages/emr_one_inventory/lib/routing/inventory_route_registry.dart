import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/queries/inventory/production/search_boms.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/components/mobile_inventory/loader_wrapper.dart';
import 'package:emr_one_inventory/constants/inventory_named_routes.dart';
import 'package:emr_one_inventory/controllers/elv_inventory_search_controller.dart';
import 'package:emr_one_inventory/controllers/filters/bom_search_filter_controller.dart';
import 'package:emr_one_inventory/controllers/filters/elv_inventory_search_filter_controller.dart';
import 'package:emr_one_inventory/controllers/filters/inventory_search_filter_controller.dart';
import 'package:emr_one_inventory/controllers/production/bom_search_controller.dart';
import 'package:emr_one_inventory/controllers/production/create_edit_bom_controller.dart';
import 'package:emr_one_inventory/data_sources/bom_search_data_source.dart';
import 'package:emr_one_inventory/data_sources/elv_inventory_search_data_source.dart';
import 'package:emr_one_inventory/data_sources/inventory_search_data_source.dart';
import 'package:emr_one_inventory/models/elv_inventory_item.dart';
import 'package:emr_one_inventory/screens/elv/elv_inventory_search.dart';
import 'package:emr_one_inventory/screens/inventory_search.dart';
import 'package:emr_one_inventory/screens/production/bill_of_materials/bom_search.dart';
import 'package:emr_one_inventory/screens/production/bill_of_materials/create_edit_bom_screen.dart';
import 'package:emr_one_inventory/services/elv_inventory_search_service.dart';
import 'package:emr_one_inventory/services/inventory_search_service.dart';
import 'package:emr_one_inventory/services/production/bom_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

EmrQueryLayoutController<Query$SearchInventory$searchInventory$nodes>?
_inventorySearchQueryLayoutController;

EmrQueryLayoutController<ElvInventoryItem>?
_elvInventorySearchQueryLayoutController;

EmrQueryLayoutController<Query$SearchBoms$searchBoms$nodes>?
_bomSearchQueryLayoutController;

class InventoryRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    NamedRoutes.inventorySearch: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final userInfoService = Provider.of<UserInfoService>(context);
      final inventorySearchService = InventorySearchService(
        httpClient: httpClient,
      );

      //Create a new instance of the layout controller
      //if it doesn't exist.
      if (_inventorySearchQueryLayoutController == null) {
        final inventorySearchDataSource = InventorySearchDataSource(
          inventorySearchService: inventorySearchService,
        );

        final inventorySearchFilterController = InventorySearchFilterController(
          userInfoService: userInfoService,
          inventorySearchService: inventorySearchService,
        );

        _inventorySearchQueryLayoutController =
            EmrQueryLayoutController<
              Query$SearchInventory$searchInventory$nodes
            >(
              dataSource: inventorySearchDataSource,
              filterController: inventorySearchFilterController,
            );
      }
      return InventorySearch(
        queryLayoutController: _inventorySearchQueryLayoutController!,
        inventorySearchService: inventorySearchService,
      );
    },
    InventoryNamedRoutes.elvInventorySearch: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final userInfoService = Provider.of<UserInfoService>(context);
      final elvInventorySearchService = ElvInventorySearchService(
        httpClient: httpClient,
      );

      //Create a new instance of the layout controller
      //if it doesn't exist.
      if (_elvInventorySearchQueryLayoutController == null) {
        final elvInventorySearchDataSource = ElvInventorySearchDataSource(
          elvInventorySearchService: elvInventorySearchService,
        );

        final elvInventorySearchFilterController =
            ElvInventorySearchFilterController(
              userInfoService: userInfoService,
              elvInventorySearchService: elvInventorySearchService,
            );

        _elvInventorySearchQueryLayoutController =
            EmrQueryLayoutController<ElvInventoryItem>(
              dataSource: elvInventorySearchDataSource,
              filterController: elvInventorySearchFilterController,
            );
      }
      final controller = ElvInventorySearchController();
      return LoaderWrapper(
        showLoader: controller.showLoader,
        child: ElvInventorySearch(
          queryLayoutController: _elvInventorySearchQueryLayoutController!,
          userInfoService: userInfoService,
          elvInventorySearchController: controller,
          elvInventorySearchService: elvInventorySearchService,
        ),
      );
    },
    InventoryNamedRoutes.bomSearch: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final bomService = BomService(
        referenceDataService: context.coreApi.referenceData,
        httpClient: httpClient,
      );

      if (_bomSearchQueryLayoutController == null) {
        final bomSearchDataSource = BomSearchDataSource(bomService: bomService);

        final bomSearchFilterController = BomSearchFilterController(
          bomService: bomService,
        );

        _bomSearchQueryLayoutController =
            EmrQueryLayoutController<Query$SearchBoms$searchBoms$nodes>(
              dataSource: bomSearchDataSource,
              filterController: bomSearchFilterController,
            );
      }
      final controller = BomSearchController(bomService: bomService);
      return LoaderWrapper(
        showLoader: controller.showLoader,
        child: BomSearch(
          queryLayoutController: _bomSearchQueryLayoutController!,
          bomSearchController: controller,
        ),
      );
    },
    InventoryNamedRoutes.createBom: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final bomSearchService = BomService(
        referenceDataService: context.coreApi.referenceData,
        httpClient: httpClient,
      );
      final controller = CreateEditBomController(bomservice: bomSearchService);

      return LoaderWrapper(
        showLoader: controller.showLoader,
        child: CreateEditBomScreen(controller: controller),
      );
    },
    InventoryNamedRoutes.editBom: (context, state) {
      final id = state.params['id'];

      final httpClient = Provider.of<BaseClient>(context);
      final bomSearchService = BomService(
        referenceDataService: context.coreApi.referenceData,
        httpClient: httpClient,
      );

      final controller = CreateEditBomController(bomservice: bomSearchService);

      return LoaderWrapper(
        showLoader: controller.showLoader,
        child: CreateEditBomScreen(controller: controller, bomId: id),
      );
    },
  };
}
