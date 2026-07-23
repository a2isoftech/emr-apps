import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/constants.dart';
import 'package:emr_one_stock_take/models/stock_take_model.dart';
import 'package:emr_one_stock_take/screens/media/media_gallery.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/screens/start_stock_take/add_weight_screen.dart';
import 'package:emr_one_stock_take/services/shared_preferences_service.dart';
import 'package:emr_one_stock_take/services/stock_take_shared_service.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

EmrQueryLayoutController<Fragment$StocktakeSearchFields>?
_stocktakeQueryLayoutController;

class StockTakeRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    StockTakeNamedRoutes.stockTakeHome: (context, state) {
      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);

      final stocktakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge && !kIsWeb
            ? config.edgeCoreApiUrl
            : config.coreApiUrl,
      );
      final userInfoService = Provider.of<UserInfoService>(
        context,
        listen: false,
      );

      if (_stocktakeQueryLayoutController == null) {
        final userInfoService = context.read<UserInfoService>();

        final defaultYard = userInfoService.userInfo.defaultYard;
        final filterController = StockTakeFilterController(
          userInfoService: userInfoService,
          stocktakeService: stocktakeService,
          defaultYard: defaultYard,
        );

        final dataSource = StockTakeDataSource(
          service: stocktakeService,
          referenceDataService: context.coreApi.referenceData,
          filterController: filterController,
        );

        _stocktakeQueryLayoutController =
            EmrQueryLayoutController<Fragment$StocktakeSearchFields>(
              dataSource: dataSource,
              filterController: filterController,
              supportedViewModes: kIsWeb
                  ? {EmrQueryLayoutViewMode.card, EmrQueryLayoutViewMode.grid}
                  : {EmrQueryLayoutViewMode.card},
              viewMode: EmrQueryLayoutViewMode.card,
            );
      }
      final controller = StockTakeHomeController(
        appConfig: config,
        userInfoService: userInfoService,
        stocktakeService: stocktakeService,
        userAccessService: context.coreApi.userAccess,
      );
      return StockTakeHomeScreen(
        controller: controller,
        queryLayoutController: _stocktakeQueryLayoutController!,
      ).withMultiProvider(providers);
    },
    StockTakeNamedRoutes.createStockTake: (context, state) {
      final stockTakeID = state.params['id'] ?? '';
      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);
      final stocktakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge && !kIsWeb
            ? config.edgeCoreApiUrl
            : config.coreApiUrl,
      );
      final userInfoService = Provider.of<UserInfoService>(
        context,
        listen: false,
      );

      final controller = CreateStockTakeController(
        uomService: Provider.of<UomService>(context, listen: false),
        stocktakeService: stocktakeService,
        userInfo: userInfoService.userInfo,
        basicDetailsController: BasicDetailsController(
          stocktakeService: stocktakeService,
          userAccessService: context.coreApi.userAccess,
          settingsController:
              Provider.of<BaseSettingsController>(context, listen: false)
                  as SettingsController,
        ),
      );

      return CreateEditStockTakeScreen(
        stockTakeID: stockTakeID,
        controller: controller,
      );
    },
    StockTakeNamedRoutes.editStockTake: (context, state) {
      final stockTakeID = state.params['id'] ?? '';
      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);
      final stocktakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge && !kIsWeb
            ? config.edgeCoreApiUrl
            : config.coreApiUrl,
      );
      final userInfoService = Provider.of<UserInfoService>(
        context,
        listen: false,
      );

      final controller = CreateStockTakeController(
        uomService: Provider.of<UomService>(context, listen: false),
        stocktakeService: stocktakeService,
        userInfo: userInfoService.userInfo,
        basicDetailsController: BasicDetailsController(
          stocktakeService: stocktakeService,
          userAccessService: context.coreApi.userAccess,
          settingsController:
              Provider.of<BaseSettingsController>(context, listen: false)
                  as SettingsController,
        ),
      );

      return CreateEditStockTakeScreen(
        stockTakeID: stockTakeID,
        controller: controller,
        isEdit: true,
      );
    },
    StockTakeNamedRoutes.cloneAndCreate: (context, state) {
      final stockTakeID = state.params['id'] ?? '';
      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);
      final stocktakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge && !kIsWeb
            ? config.edgeCoreApiUrl
            : config.coreApiUrl,
      );
      final userInfoService = Provider.of<UserInfoService>(
        context,
        listen: false,
      );

      final controller = CreateStockTakeController(
        uomService: Provider.of<UomService>(context, listen: false),
        stocktakeService: stocktakeService,
        userInfo: userInfoService.userInfo,
        basicDetailsController: BasicDetailsController(
          isClone: true,
          stocktakeService: stocktakeService,
          userAccessService: context.coreApi.userAccess,
          settingsController:
              Provider.of<BaseSettingsController>(context, listen: false)
                  as SettingsController,
        ),
      );

      return CreateEditStockTakeScreen(
        cloneCreate: true,
        stockTakeID: stockTakeID,
        controller: controller,
      );
    },
    StockTakeNamedRoutes.stockTakeView: (context, state) {
      final stockTakeId = state.params['id'] ?? '';
      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);
      final stocktakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge && !kIsWeb
            ? config.edgeCoreApiUrl
            : config.coreApiUrl,
      );
      final userInfoService = Provider.of<UserInfoService>(
        context,
        listen: false,
      );

      return ViewStockTakeScreen(
        id: stockTakeId,
        controller: ViewStockTakeController(
          service: stocktakeService,
          userInfoService: userInfoService,
        ),
      ).withMultiProvider(providers);
    },
    StockTakeNamedRoutes.locationWeights: (context, state) {
      final stockTakeId = state.params['id'] ?? '';
      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);

      final stocktakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge && !kIsWeb
            ? config.edgeCoreApiUrl
            : config.coreApiUrl,
      );

      final locationWeightController = LocationWeightController(
        stocktakeService: stocktakeService,
        apimBaseUrl: config.vpnApimBaseUrl,
        sharedPreferenceService: SharedPreferencesService(),
      );

      return StartStockTakeScreen(
        controller: locationWeightController,
        id: stockTakeId,
        userAccessService: context.coreApi.userAccess,
      ).withMultiProvider([
        Provider<SharedPreferencesService>(
          create: (context) {
            return SharedPreferencesService();
          },
        ),
      ]);
    },
    StockTakeNamedRoutes.stockTakeAddWeight: (context, state) {
      final stockTakeId = state.params['id'] ?? '';
      final locationId = state.params['locationid'] ?? '';
      final stockTake = state.extra != null ? state.extra! as StockTake : null;

      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);

      final stocktakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge && !kIsWeb
            ? config.edgeCoreApiUrl
            : config.coreApiUrl,
      );

      final controller = LocationWeightController(
        stocktakeService: stocktakeService,
        apimBaseUrl: config.vpnApimBaseUrl,
        sharedPreferenceService: SharedPreferencesService(),
      );

      return AddWeightScreen(
        controller: controller,
        locationId: locationId,
        stockTake: stockTake,
        stockTakeId: stockTakeId,
      );
    },
    StockTakeNamedRoutes.stockTakeReview: (context, state) {
      final stockTakeID = state.params['id'] ?? '';
      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);
      final stocktakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge && !kIsWeb
            ? config.edgeCoreApiUrl
            : config.coreApiUrl,
      );
      final userInfoService = Provider.of<UserInfoService>(
        context,
        listen: false,
      );

      return ReviewStocktakeScreen(
        id: stockTakeID,
        controller: ReviewStocktakeController(
          service: stocktakeService,
          userInfoService: userInfoService,
        ),
      ).withMultiProvider(providers);
    },
    StockTakeNamedRoutes.stockTakeLocationGallery: (context, state) {
      final locationId = state.params['locationid'] ?? '';
      final stockTake = state.extra! as StockTake;

      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);
      final stockTakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
      );

      final mediaApiUrl = config.runAtEdge
          ? config.edgeMediaApiUrl
          : config.mediaApi;

      final controller = GalleryController(
        stocktakeService: stockTakeService,
        mediaApiUrl: mediaApiUrl,
      );

      return LocationImages(
        locationId: locationId,
        stockTake: stockTake,
        galleryController: controller,
      );
    },
    StockTakeNamedRoutes.stockTakeImageGallery: (context, state) {
      final stockTakeId = state.params['id'] ?? '';

      final client = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);
      final stockTakeService = StocktakeService(
        client: client,
        apiUrl: config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
      );

      final mediaApiUrl = config.runAtEdge
          ? config.edgeMediaApiUrl
          : config.mediaApi;

      final controller = GalleryController(
        stocktakeService: stockTakeService,
        mediaApiUrl: mediaApiUrl,
      );
      return MediaGallery(
        galleryController: controller,
        stockTakeId: stockTakeId,
      );
    },
  };

  static List<EORoute> stockTakeMenuItems = [
    EORoute(
      Icons.pallet,
      (context) => context.l10n.stockTakes,
      section: kStockTakeSection,
      path: AppPaths.root,
      name: StockTakeNamedRoutes.stockTakeHome,
      isAllowed: (context, state) {
        return context.userHasPermission(StockTakePermissions.viewStocktake);
      },
      widgetBuilder: widgetBuilders[StockTakeNamedRoutes.stockTakeHome]!,
      children: [
        EORoute(
          FontAwesomeIcons.pallet.data,
          (context) => context.l10n.create,
          section: kStockTakeSection,
          path: AppPaths.createStockTake,
          name: StockTakeNamedRoutes.createStockTake,
          widgetBuilder: widgetBuilders[StockTakeNamedRoutes.createStockTake]!,
          isAllowed: (context, state) {
            return context.userHasPermission(
              StockTakePermissions.createStocktake,
            );
          },
        ),
        EORoute(
          FontAwesomeIcons.pallet.data,
          (context) => context.l10n.edit,
          section: kStockTakeSection,
          path: AppPaths.editStockTake,
          name: StockTakeNamedRoutes.editStockTake,
          widgetBuilder: widgetBuilders[StockTakeNamedRoutes.editStockTake]!,
          isAllowed: (context, state) {
            return context.userHasPermission(
              StockTakePermissions.createStocktake,
            );
          },
        ),
        EORoute(
          FontAwesomeIcons.pallet.data,
          (context) => context.l10n.cloneStocktake,
          section: kStockTakeSection,
          path: AppPaths.cloneAndCreate,
          name: StockTakeNamedRoutes.cloneAndCreate,
          widgetBuilder: widgetBuilders[StockTakeNamedRoutes.cloneAndCreate]!,
          isAllowed: (context, state) {
            return context.userHasPermission(
              StockTakePermissions.createStocktake,
            );
          },
        ),
        EORoute(
          FontAwesomeIcons.pallet.data,
          (context) => context.l10n.submissionTitle,
          path: AppPaths.locationWeights,
          name: StockTakeNamedRoutes.locationWeights,
          section: kStockTakeSection,
          widgetBuilder: widgetBuilders[StockTakeNamedRoutes.locationWeights]!,
          isAllowed: (context, state) {
            return context.userHasPermission(
              StockTakePermissions.performStocktake,
            );
          },
          children: [
            EORoute(
              FontAwesomeIcons.pallet.data,
              (context) => context.l10n.addWeight,
              path: AppPaths.stockTakeAddWeight,
              name: StockTakeNamedRoutes.stockTakeAddWeight,
              section: kStockTakeSection,
              widgetBuilder:
                  widgetBuilders[StockTakeNamedRoutes.stockTakeAddWeight]!,
              isAllowed: (context, state) {
                return context.userHasPermission(
                  StockTakePermissions.performStocktake,
                );
              },
              children: [
                EORoute(
                  FontAwesomeIcons.images.data,
                  (context) => context.l10n.gallery,
                  path: AppPaths.gallery,
                  name: StockTakeNamedRoutes.stockTakeLocationGallery,
                  widgetBuilder:
                      widgetBuilders[StockTakeNamedRoutes
                          .stockTakeLocationGallery]!,
                  isAllowed: (context, state) {
                    return context.userHasPermission(
                      StockTakePermissions.performStocktake,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        EORoute(
          FontAwesomeIcons.pallet.data,
          (context) => context.l10n.stockTakeDetails,
          path: AppPaths.viewStocktake,
          name: StockTakeNamedRoutes.stockTakeView,
          widgetBuilder: widgetBuilders[StockTakeNamedRoutes.stockTakeView]!,
          isAllowed: (context, state) {
            return context.userHasPermission(
              StockTakePermissions.viewStocktake,
            );
          },
        ),
        EORoute(
          FontAwesomeIcons.images.data,
          (context) => context.l10n.gallery,
          path: AppPaths.mediaGallery,
          name: StockTakeNamedRoutes.stockTakeImageGallery,
          widgetBuilder:
              widgetBuilders[StockTakeNamedRoutes.stockTakeImageGallery]!,
          isAllowed: (context, state) {
            return context.userHasPermission(
              StockTakePermissions.viewStocktake,
            );
          },
        ),
      ],
    ),
    EORoute(
      FontAwesomeIcons.pallet.data,
      (context) => context.l10n.stocktakeApproval,
      path: AppPaths.review,
      name: StockTakeNamedRoutes.stockTakeReview,
      isManuallyNavigable: false,
      widgetBuilder: widgetBuilders[StockTakeNamedRoutes.stockTakeReview]!,
    ),
  ];

  static String kStockTakeSection = 'Stock Takes';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(stockTakeMenuItems);
    return registry;
  }

  static List<SingleChildWidget> providers = [
    Provider<SharedPreferencesService>(
      create: (context) {
        return SharedPreferencesService();
      },
    ),
    Provider<StockTakeSharedService>(
      create: (context) {
        return StockTakeSharedService();
      },
    ),
  ];
}
