import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/admin_menu/controllers/menu_controller.dart';
import 'package:emr_one_eam/admin_menu/services/menu_service.dart';
import 'package:emr_one_eam/admin_menu/views/menu.dart';
import 'package:emr_one_eam/approval/controller/approval_controller.dart';
import 'package:emr_one_eam/approval/services/approval_service.dart';
import 'package:emr_one_eam/approval/views/approval.dart';
import 'package:emr_one_eam/asset_create/asset_create.dart';
import 'package:emr_one_eam/asset_history/controllers/asset_history_controller.dart';
import 'package:emr_one_eam/asset_history/services/asset_history_service.dart';
import 'package:emr_one_eam/asset_template/controllers/asset_template_controller.dart';
import 'package:emr_one_eam/asset_template/controllers/asset_template_filter_controller.dart';
import 'package:emr_one_eam/asset_template/services/asset_template_service.dart';
import 'package:emr_one_eam/asset_template/views/asset_template_data_source.dart';
import 'package:emr_one_eam/common/common.dart';
import 'package:emr_one_eam/constants/paths.dart';
import 'package:emr_one_eam/eam_asset_search/controllers/eam_asset_search_data_controller.dart';
import 'package:emr_one_eam/eam_asset_search/controllers/eam_asset_search_filter_controller.dart';
import 'package:emr_one_eam/eam_asset_search/service/eam_asset_search_service.dart';
import 'package:emr_one_eam/eam_asset_search/views/eam_asset_search_data_source.dart';
import 'package:emr_one_eam/eam_asset_search/views/eam_asset_search_view.dart';
import 'package:emr_one_eam/eam_resilient_http_client.dart';
import 'package:emr_one_eam/graphql/queries/asset_template.graphql.dart';
import 'package:emr_one_eam/graphql/queries/lists_search.graphql.dart';
import 'package:emr_one_eam/graphql/queries/search_assets.graphql.dart';
import 'package:emr_one_eam/help/controllers/help_file_controller.dart';
import 'package:emr_one_eam/help/services/help_file_service.dart';
import 'package:emr_one_eam/import/controllers/import_controller.dart';
import 'package:emr_one_eam/import/services/import_service.dart';
import 'package:emr_one_eam/lists/controllers/list_search_filter_controller.dart';
import 'package:emr_one_eam/lists/controllers/lists_controller.dart';
import 'package:emr_one_eam/lists/list_search/list_search.dart';
import 'package:emr_one_eam/lists/list_search/views/list_search_data_source.dart';
import 'package:emr_one_eam/models/persist_fullscreen_model.dart';
import 'package:emr_one_eam/screen_access.dart';
import 'package:emr_one_eam/screens/asset_screen/asset_screen.dart';
import 'package:emr_one_eam/screens/asset_screen/asset_screen_base.dart';
import 'package:emr_one_eam/screens/asset_screen/asset_screen_controller.dart';
import 'package:emr_one_eam/transfer_and_dispose/controller/transfer_and_dispose_controller.dart';
import 'package:emr_one_eam/transfer_and_dispose/services/transfer_and_dispose_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class WidgetResource {
  WidgetResource({required this.pageKeyHashCode, required this.widget});

  int pageKeyHashCode;
  Widget widget;
}

class EAMRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {};

  static Map<String, WidgetResource> widgetMap = <String, WidgetResource>{};

  static Widget getWidget(
    String name,
    int pageKeyHashCode,
    Widget Function() defaultWidget,
  ) {
    final widgetresource = widgetMap[name];
    if (widgetresource == null ||
        widgetresource.pageKeyHashCode != pageKeyHashCode) {
      widgetMap[name] = WidgetResource(
        pageKeyHashCode: pageKeyHashCode,
        widget: defaultWidget(),
      );
    }
    return widgetMap[name]!.widget;
  }

  static List<EORoute> eamMenuItems = [
    EORoute(
      /// This is your module's top level route
      FontAwesomeIcons.file.data,
      (_) => EAMRoutingDisplayNames.eam,
      section: kMroSection,
      path: EAMRoutingPath.eam,
      selectedIcon: FontAwesomeIcons.file.data,
      name: EAMRoutingName.eam,
      providers: providers,
      isAllowed: _isAllowed,
      widgetBuilder: (context, state) {
        EamAppColors.initialize(context);
        return getWidget(
          EAMRoutingName.eam,
          state.pageKey.hashCode,
          () => !kIsWeb
              ? Container()
              : AssetScreenBase(
                  key: GlobalKey(),
                ),
        );
      },
      children: [
        EORoute(
          Icons.devices,
          (_) => EAMRoutingDisplayNames.assetScreen,
          section: kMroSection,
          path: EAMRoutingPath.assetScreen,
          selectedIcon: FontAwesomeIcons.file.data,
          name: EAMRoutingName.assetScreen,
          providers: providers,
          isAllowed: _isAllowed,
          widgetBuilder: (context, state) {
            final fullscreenModel = state.extra! as PersistFullscreenModel;
            return !kIsWeb
                ? Container()
                : AssetScreen(
                    controller: fullscreenModel.screenController,
                    assetCreateController:
                        fullscreenModel.assetCreateController,
                    adminMenuController: fullscreenModel.adminMenuController,
                    transferDisposeController:
                        fullscreenModel.transferController,
                    assetQueryLayoutController:
                        fullscreenModel.assetQueryLayoutController,
                    approvalController: fullscreenModel.approvalController,
                  );
          },
          children: [
            EORoute(
              Icons.search,
              (_) => EAMRoutingDisplayNames.search,
              section: kMroSection,
              path: EAMRoutingPath.search,
              selectedIcon: FontAwesomeIcons.file.data,
              name: EAMRoutingName.search,
              providers: providers,
              widgetBuilder: (context, state) {
                final assetSearchQueryController = Provider.of<
                    EmrQueryLayoutController<
                        Query$SearchAssets$searchAssets$nodes>>(context);
                final transferDisposeController =
                    Provider.of<ITransferDisposeController>(context);
                return !kIsWeb
                    ? Container()
                    : EamAssetSearchView(
                        queryLayoutController: assetSearchQueryController,
                        transferDisposeController: transferDisposeController,
                      );
              },
              isAllowed: _isAllowed,
            ),
            EORoute(
              Icons.create,
              (_) => EAMRoutingDisplayNames.create,
              section: kMroSection,
              path: EAMRoutingPath.create,
              selectedIcon: FontAwesomeIcons.file.data,
              name: EAMRoutingName.create,
              providers: providers,
              widgetBuilder: (context, state) {
                EamAppColors.initialize(context);
                return !kIsWeb ? Container() : AssetCreateView();
              },
              isAllowed: _isBusinessAdmin,
            ),
            EORoute(
              Icons.local_activity,
              (_) => EAMRoutingDisplayNames.approvals,
              path: EAMRoutingPath.approvals,
              name: EAMRoutingName.approvals,
              widgetBuilder: (context, state) {
                final fullscreenModel = state.extra! as PersistFullscreenModel;
                return !kIsWeb
                    ? Container()
                    : ApprovalBase(
                        controller: fullscreenModel.approvalController,
                        action: AssetActions.transfer,
                      );
              },
              isAllowed: _isFinanceAdmin,
            ),
            EORoute(
              Icons.admin_panel_settings,
              (_) => EAMRoutingDisplayNames.adminMenu,
              section: kMroSection,
              path: EAMRoutingPath.adminMenu,
              name: EAMRoutingName.adminMenu,
              providers: providers,
              widgetBuilder: (context, state) {
                EamAppColors.initialize(context);
                final fullscreenModel = state.extra! as PersistFullscreenModel;
                return getWidget(
                  EAMRoutingName.adminMenu,
                  state.pageKey.hashCode,
                  () => !kIsWeb
                      ? Container()
                      : AdminMenuView(
                          key: GlobalKey(),
                          controler: fullscreenModel.adminMenuController,
                          screenControler: fullscreenModel.screenController,
                        ),
                );
              },
              isAllowed: _isAdmin,
            ),
          ],
        ),
      ],
    ),
  ];

  static String kMroSection = 'Eam';

  static List<SingleChildWidget> providers = [];

  static List<SingleChildWidget> registerProviders() {
    return [
      Provider<ScreenAccess>(
        create: (context) {
          return ScreenAccess();
        },
      ),
      Provider<ResilientHttpClient>(
        create: (context) {
          final config = Provider.of<AppConfig>(context, listen: false);
          return EamResilientHttpClient().getClient(config);
        },
      ),
      Provider<IAssetHistoryService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return AssetHistoryService(httpClient: httpClient);
        },
      ),
      ListenableProvider<IAssetHistoryController>(
        create: (context) {
          final service =
              Provider.of<IAssetHistoryService>(context, listen: false);
          return AssetHistoryController(
            service: service,
          );
        },
      ),
      Provider<IAssetCreateService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return AssetCreateService(httpClient: httpClient);
        },
      ),
      ListenableProvider<IAssetCreateController>(
        create: (context) {
          final service =
              Provider.of<IAssetCreateService>(context, listen: false);
          return AssetCreateController(
            service: service,
          );
        },
      ),
      Provider<IListService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return ListService(httpClient: httpClient);
        },
      ),
      ListenableProvider<IListsController>(
        create: (context) {
          final service = Provider.of<IListService>(context, listen: false);
          return ListsController(service: service);
        },
      ),
      Provider<IAssetTemplateService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return AssetTemplateService(httpClient: httpClient);
        },
      ),
      ListenableProvider<IAssetTemplateController>(
        create: (context) {
          final service =
              Provider.of<IAssetTemplateService>(context, listen: false);
          final listService = Provider.of<IListService>(context, listen: false);
          return AssetTemplateController(
            service: service,
            listService: listService,
          );
        },
      ),
      Provider<IAdminMenuService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return AdminMenuService(httpClient: httpClient);
        },
      ),
      ListenableProvider<IAdminMenuController>(
        create: (context) {
          final service =
              Provider.of<IAdminMenuService>(context, listen: false);
          return AdminMenuController(service: service);
        },
      ),
      Provider<IHelpFileService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return HelpFileService(httpClient: httpClient);
        },
      ),
      ListenableProvider<IHelpFileController>(
        create: (context) {
          final service = Provider.of<IHelpFileService>(context, listen: false);
          return HelpFileController(service: service);
        },
      ),
      Provider<AssetScreenController>(
        create: (context) {
          return AssetScreenController();
        },
      ),
      Provider<PersistFullscreenModel>(
        create: (context) {
          return PersistFullscreenModel(
            screenController:
                Provider.of<AssetScreenController>(context, listen: false),
            adminMenuController:
                Provider.of<IAdminMenuController>(context, listen: false),
            assetCreateController:
                Provider.of<IAssetCreateController>(context, listen: false),
            transferController:
                Provider.of<ITransferDisposeController>(context, listen: false),
            assetQueryLayoutController: Provider.of<
                EmrQueryLayoutController<
                    Query$SearchAssets$searchAssets$nodes>>(
              context,
              listen: false,
            ),
            approvalController:
                Provider.of<IApprovalController>(context, listen: false),
          );
        },
      ),
      Provider<ITransferDisposeService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return TransferDisposeService(httpClient: httpClient);
        },
      ),
      ListenableProvider<ITransferDisposeController>(
        create: (context) {
          final service =
              Provider.of<ITransferDisposeService>(context, listen: false);
          final listService = Provider.of<IListService>(context, listen: false);
          return TransferDisposeController(
            service: service,
            listService: listService,
          );
        },
      ),
      Provider<IImportService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return ImportService(httpClient: httpClient);
        },
      ),
      Provider<EamAssetSearchService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return EamAssetSearchService(httpClient: httpClient);
        },
      ),
      Provider<EamAssetSearchDataSource>(
        create: (context) {
          final service =
              Provider.of<EamAssetSearchService>(context, listen: false);
          return EamAssetSearchDataSource(assetSearchService: service);
        },
      ),
      Provider<EamAssetSearchDataController>(
        create: (context) {
          final service =
              Provider.of<EamAssetSearchService>(context, listen: false);
          final templateService =
              Provider.of<IAssetTemplateService>(context, listen: false);
          final dataSource =
              Provider.of<EamAssetSearchDataSource>(context, listen: false);
          return EamAssetSearchDataController(
            service: service,
            templateService: templateService,
            searchDataSource: dataSource,
          );
        },
      ),
      Provider<ListSearchDataSource>(
        create: (context) {
          final listService = Provider.of<IListService>(context, listen: false);
          return ListSearchDataSource(listService: listService);
        },
      ),
      Provider<AssetTemplateDataSource>(
        create: (context) {
          final service =
              Provider.of<IAssetTemplateService>(context, listen: false);
          return AssetTemplateDataSource(templateService: service);
        },
      ),
      Provider<EamAssetSearchFilterController>(
        create: (context) {
          final controller =
              Provider.of<EamAssetSearchDataController>(context, listen: false);
          return EamAssetSearchFilterController(dataController: controller);
        },
      ),
      Provider<ListSearchFilterController>(
        create: (context) {
          final listService = Provider.of<IListService>(context, listen: false);
          return ListSearchFilterController(service: listService);
        },
      ),
      Provider<AssetTemplateFilterController>(
        create: (context) {
          final service =
              Provider.of<IAssetTemplateService>(context, listen: false);
          return AssetTemplateFilterController(service: service);
        },
      ),
      Provider<
          EmrQueryLayoutController<
              Query$GetPaginatedAssetTemplates$assetTemplates$nodes>>(
        create: (context) {
          final dataSource =
              Provider.of<AssetTemplateDataSource>(context, listen: false);
          final filterController = Provider.of<AssetTemplateFilterController>(
            context,
            listen: false,
          );
          return EmrQueryLayoutController<
              Query$GetPaginatedAssetTemplates$assetTemplates$nodes>(
            dataSource: dataSource,
            filterController: filterController,
          );
        },
      ),
      Provider<EmrQueryLayoutController<Query$SearchAssets$searchAssets$nodes>>(
        create: (context) {
          final dataSource =
              Provider.of<EamAssetSearchDataSource>(context, listen: false);
          final filterController = Provider.of<EamAssetSearchFilterController>(
            context,
            listen: false,
          );
          return EmrQueryLayoutController<
              Query$SearchAssets$searchAssets$nodes>(
            dataSource: dataSource,
            filterController: filterController,
          );
        },
      ),
      Provider<EmrQueryLayoutController<Query$getLists$lists$nodes>>(
        create: (context) {
          final dataSource =
              Provider.of<ListSearchDataSource>(context, listen: false);
          final filterController = Provider.of<ListSearchFilterController>(
            context,
            listen: false,
          );
          return EmrQueryLayoutController<Query$getLists$lists$nodes>(
            dataSource: dataSource,
            filterController: filterController,
          );
        },
      ),
      Provider<IApprovalService>(
        create: (context) {
          final httpClient =
              Provider.of<ResilientHttpClient>(context, listen: false);
          return ApprovalService(httpClient: httpClient);
        },
      ),
      ListenableProvider<IApprovalController>(
        create: (context) {
          final service = Provider.of<IApprovalService>(context, listen: false);
          final listService = Provider.of<IListService>(context, listen: false);
          return ApprovalController(
            service: service,
            listService: listService,
          );
        },
      ),
      ListenableProvider<IImportController>(
        create: (context) {
          final service = Provider.of<IImportService>(context, listen: false);
          return ImportController(service: service);
        },
      ),
      ListenableProvider<IBulkUpdateController>(
        create: (context) {
          final service = Provider.of<IImportService>(context, listen: false);
          return ImportController(service: service);
        },
      ),
      ListenableProvider<IImportAssetController>(
        create: (context) {
          final service = Provider.of<IImportService>(context, listen: false);
          return ImportController(service: service);
        },
      ),
    ];
  }

  static RouteRegistry register(RouteRegistry registry) {
    providers = registerProviders();
    registry.addRoutes(eamMenuItems);
    return registry;
  }

  static bool _isAllowed(BuildContext context, EORoute route) {
    final access = ScreenAccess();
    return access.isEAMStandardUser(context);
  }

  static bool _isAdmin(BuildContext context, EORoute route) {
    final access = ScreenAccess();
    return access.isEAMAdmin(context);
  }

  static bool _isBusinessAdmin(BuildContext context, EORoute route) {
    final access = ScreenAccess();
    return access.isEAMBusinessAdmin(context);
  }

  static bool _isFinanceAdmin(BuildContext context, EORoute route) {
    final access = ScreenAccess();
    return access.isEAMFinanceAdmin(context);
  }
}
