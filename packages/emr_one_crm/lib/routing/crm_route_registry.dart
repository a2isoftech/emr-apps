import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/routing/crm_named_routes.dart';
import 'package:emr_one_crm/screens/contracts/contracts_datasource.dart';
import 'package:emr_one_crm/screens/contracts/contracts_filter_controller.dart';
import 'package:emr_one_crm/screens/contracts/contracts_search_screen.dart';
import 'package:emr_one_crm/screens/screens.dart';
import 'package:emr_one_crm/services/haulage_price_matrix_service.dart';
import 'package:emr_one_crm/services/services.dart';
import 'package:emr_one_crm/temp/temp_providers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class CrmRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    NamedRoutes.trader: (context, state) {
      final client = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final userInfoService = Provider.of<UserInfoService>(
        context,
        listen: false,
      );
      final settingsController =
          Provider.of<BaseSettingsController>(context, listen: false)
              as SettingsController;
      return PartiesScreen(
        client: client,
        appConfig: config,
        userInfoService: userInfoService,
        settingsController: settingsController,
      );
    },
    NamedRoutes.traderParty: (context, state) {
      final client = Provider.of<BaseClient>(context);
      final settingsController =
          Provider.of<BaseSettingsController>(context, listen: false)
              as SettingsController;
      final party = state.params['partyAccountNo'];
      return PartyScreenWrapper(
        partyAccountNo: party!,
        client: client,
        settingsController: settingsController,
      ).withMultiProvider(providers);
    },
    NamedRoutes.partyDocumentUpload: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final party = state.params['partyAccountNo']!;
      final local = Localizations.localeOf(context);
      return PartyDocumentIdentificationUpload(
        config: config,
        partyAccountNo: party,
        locale: local,
      );
    },
    NamedRoutes.traderPartyEditDetails: (context, state) {
      return const PlaceHolderScreen().withMultiProvider(providers);
    },
    NamedRoutes.traderPartyNearby: (context, state) {
      return const PlaceHolderScreen();
    },
    NamedRoutes.traderPartyPrices: (context, state) {
      final tab = state.queryParams['tab'] ?? 'all';
      final party = state.params['partyAccountNo'];
      final client = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final contractsProvider = ContractsProvider(
        client,
        Uri.parse(config.tradeRUrl),
      );
      return PartyPricesScreen(
        partyAccountNo: party!,
        contractsProvider: contractsProvider,
        tab: tab,
      ).withMultiProvider(providers);
    },
    CrmNamedRoutes.priceDetails: (context, state) {
      final contract = state.extra! as Contract;
      final isGpl = contract.ref.contains('GPL');
      final contractId = int.parse(state.queryParams['contractID'] ?? '0');
      final client = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final contractsProvider = ContractsProvider(
        client,
        Uri.parse(config.tradeRUrl),
      );
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<GradesListProvider>.value(
            value: GradesListProvider(contract.lines, isGpl: isGpl),
          ),
        ],
        builder: (context, child) {
          return PriceDetailsScreen(
            contract: contract,
            contractId: contractId,
            contractsProvider: contractsProvider,
          );
        },
      );
    },
    NamedRoutes.priceListDetails: (context, state) {
      final party = state.params['partyAccountNo'];
      final contractId = state.queryParams['contractID'];
      final gradeType = state.queryParams['gradeType'];
      final client = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final contractsProvider = ContractsProvider(
        client,
        Uri.parse(config.tradeRUrl),
      );
      return PriceListDetailsScreen(
        client: client,
        partyAccountNo: party!,
        contractID: contractId!,
        gradeType: gradeType!,
        contractsProvider: contractsProvider,
      );
    },
    NamedRoutes.traderPartyPricesNewSpot: (context, state) =>
        _contractWizardWidgetBuilder(
          context,
          state,
          isSpot: true,
          isClone: _isClone(state),
        ).withMultiProvider(providers),
    NamedRoutes.traderPartyPricesEditSpot: (context, state) =>
        _contractWizardWidgetBuilder(
          context,
          state,
          isSpot: true,
          isEditing: true,
        ).withMultiProvider(providers),
    NamedRoutes.traderPartyPricesNewFixed: (context, state) =>
        _contractWizardWidgetBuilder(
          context,
          state,
          isClone: _isClone(state),
        ).withMultiProvider(providers),
    NamedRoutes.traderPartyPricesEditFixed: (context, state) =>
        _contractWizardWidgetBuilder(
          context,
          state,
          isEditing: true,
        ).withMultiProvider(providers),
    NamedRoutes.traderPartyPricesNewPricelist: (context, state) {
      final party = state.params['partyAccountNo'];
      final client = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      return PartyNewPriceListMobileScreen(
        client: client,
        partyAccountNo: party!,
        tradeRUrl: Uri.parse(config.tradeRUrl),
      ).withMultiProvider(providers);
    },
    NamedRoutes.pricing: (context, state) => GenericRouteScreen((routes) {
      return routes.where((element) => element.path == '/pricing').toList();
    }),
    NamedRoutes.pricingAdmin: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final settingsController =
          Provider.of<BaseSettingsController>(context, listen: false)
              as SettingsController;
      final userInfoService = Provider.of<UserInfoService>(context);
      final adminPricingDatasource = AdminPricingDatasource(
        coreapiService: context.coreApi,
        settingsController: settingsController,
        userInfoService: userInfoService,
      );
      final filterController = AdminPricingFilterController(
        httpClient,
        context.coreApi,
        adminPricingDatasource,
        settingsController,
      );

      final config = Provider.of<AppConfig>(context, listen: false);

      final haulagePriceMatrixService = HaulagePriceMatrixService(
        config: config,
        httpClient: httpClient,
      );

      filterController.parseFromRouterState(state, 'filters');

      return AdminPricingScreen(
        filterController: filterController,
        coreapiService: context.coreApi,
        datasource: adminPricingDatasource,
        haulagePriceMatrixService: haulagePriceMatrixService,
        userInfoService: userInfoService,
        settingsController: settingsController,
      );
    },
    NamedRoutes.pricingYard: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);

      return MultiProvider(
        providers: [
          ChangeNotifierProvider<YardPricesDataController>.value(
            value: YardPricesDataController(
              Provider.of<BaseClient>(context),
              Provider.of<UserInfoService>(context),
            ),
          ),
        ],
        builder: (context, child) {
          return YardPricesScreen(client: httpClient);
        },
      );
    },
    NamedRoutes.pricingUpload: (context, state) {
      final httpClient = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);
      final controller = PricingUploadController(httpClient, config);

      return PricingUploadScreen(controller: controller);
    },
    CrmNamedRoutes.contracts: (context, state) {
      final settingsController =
          Provider.of<BaseSettingsController>(context, listen: false)
              as SettingsController;
      final userInfoService = Provider.of<UserInfoService>(context);
      final contractsDataSource = ContractsDataSource(
        coreapiService: context.coreApi,
        settingsController: settingsController,
        userInfoService: userInfoService,
      );
      final httpClient = Provider.of<BaseClient>(context);
      final filterController = ContractsFilterController(
        httpClient,
        context.coreApi,
        contractsDataSource,
        settingsController,
      );
      return ContractSearchScreen(
        datasource: contractsDataSource,
        filterController: filterController,
      );
    },
  };

  static List<EORoute> crmMenuItems = [
    EORoute(
      /// This top-level route is the only one which appears in the EMROne
      /// Home Screen and App Menu bar, it is the entry point for TradeR based
      /// on the designs, which called for a "Parties List" landing page when
      /// launching the app. Because EMROne is meant to host other apps I
      /// decided to add a single top-level entry for "TradeR" which shows
      /// the parties list landing page as requested. In future we could
      /// have the app allow a default location to be set so that it can be
      /// made to always launch /trader for example.
      Icons.perm_contact_cal_outlined,
      (_) => kTradeRSection,
      section: kTradeRSection,
      path: '/trader',
      selectedIcon: Icons.perm_contact_cal,
      name: NamedRoutes.trader,
      isAllowed: (context, route) {
        final userInfoService = Provider.of<UserInfoService>(context);
        return userInfoService.userInfo.hasPermission('viewTradeR');
      },
      widgetBuilder: widgetBuilders[NamedRoutes.trader]!,
      children: [
        /// Sub-routes under /trader are defined here, heirarchically so that
        /// we have a proper navigation stack. This means that the Back button
        /// appears when expected, as per the designs.
        EORoute(
          FontAwesomeIcons.clipboardList.data,
          (context) => context.l10n.partyDetail,
          section: kTradeRSection,
          path: 'party/:partyAccountNo',
          name: NamedRoutes.traderParty,
          widgetBuilder: widgetBuilders[NamedRoutes.traderParty]!,
          children: [
            EORoute(
              FontAwesomeIcons.clipboardList.data,
              (context) => 'Upload Document',
              section: kTradeRSection,
              path: 'upload',
              name: NamedRoutes.partyDocumentUpload,
              widgetBuilder: widgetBuilders[NamedRoutes.partyDocumentUpload]!,
            ),
            EORoute(
              FontAwesomeIcons.clipboardList.data,
              (context) => 'Party Edit',
              section: kTradeRSection,
              path: 'edit',
              name: NamedRoutes.traderPartyEditDetails,
              widgetBuilder:
                  widgetBuilders[NamedRoutes.traderPartyEditDetails]!,
            ),
            EORoute(
              FontAwesomeIcons.clipboardList.data,
              (context) => 'Nearby',
              section: kTradeRSection,
              path: 'nearby',
              name: NamedRoutes.traderPartyNearby,
              widgetBuilder: widgetBuilders[NamedRoutes.traderPartyNearby]!,
            ),
            EORoute(
              FontAwesomeIcons.clipboardList.data,
              (context) => context.l10n.partyPrices,
              section: kTradeRSection,
              path: 'prices',
              name: NamedRoutes.traderPartyPrices,
              widgetBuilder: widgetBuilders[NamedRoutes.traderPartyPrices]!,
              children: [
                EORoute(
                  FontAwesomeIcons.clipboardList.data,
                  (context) => context.l10n.prices,
                  path: 'price-details',
                  name: CrmNamedRoutes.priceDetails,
                  widgetBuilder: widgetBuilders[CrmNamedRoutes.priceDetails]!,
                ),
                EORoute(
                  FontAwesomeIcons.clipboardList.data,
                  (context) => context.l10n.prices,
                  path: 'price-list-details',
                  name: NamedRoutes.priceListDetails,
                  widgetBuilder: widgetBuilders[NamedRoutes.priceListDetails]!,
                ),
                EORoute(
                  FontAwesomeIcons.clipboardList.data,
                  (context) => context.l10n.newSpotContract,
                  section: kTradeRSection,
                  path: 'new/spot',
                  name: NamedRoutes.traderPartyPricesNewSpot,
                  widgetBuilder:
                      widgetBuilders[NamedRoutes.traderPartyPricesNewSpot]!,
                ),
                EORoute(
                  FontAwesomeIcons.clipboardList.data,
                  (context) => context.l10n.editSpotContract,
                  section: kTradeRSection,
                  path: 'edit/spot',
                  name: NamedRoutes.traderPartyPricesEditSpot,
                  widgetBuilder:
                      widgetBuilders[NamedRoutes.traderPartyPricesEditSpot]!,
                ),
                EORoute(
                  FontAwesomeIcons.clipboardList.data,
                  (context) => context.l10n.newFixedContract,
                  section: kTradeRSection,
                  path: 'new/fixed',
                  name: NamedRoutes.traderPartyPricesNewFixed,
                  widgetBuilder:
                      widgetBuilders[NamedRoutes.traderPartyPricesNewFixed]!,
                ),
                EORoute(
                  FontAwesomeIcons.clipboardList.data,
                  (context) => context.l10n.editFixedContract,
                  section: kTradeRSection,
                  path: 'edit/fixed',
                  name: NamedRoutes.traderPartyPricesEditFixed,
                  widgetBuilder:
                      widgetBuilders[NamedRoutes.traderPartyPricesEditFixed]!,
                ),
                EORoute(
                  FontAwesomeIcons.clipboardList.data,
                  (context) => context.l10n.newPriceList,
                  section: kTradeRSection,
                  path: 'new/pricelist',
                  name: NamedRoutes.traderPartyPricesNewPricelist,
                  widgetBuilder:
                      widgetBuilders[NamedRoutes
                          .traderPartyPricesNewPricelist]!,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    EORoute(
      FontAwesomeIcons.moneyBill1.data,
      (context) => context.l10n.pricing,
      section: kTradeRSection,
      path: '/pricing',
      name: NamedRoutes.pricing,
      widgetBuilder: widgetBuilders[NamedRoutes.pricing]!,
      isAllowed: (context, route) {
        final userInfoService = Provider.of<UserInfoService>(context);
        return userInfoService.userInfo.hasPermission(viewPricing);
      },
      children: [
        EORoute(
          FontAwesomeIcons.moneyBill1.data,
          (context) => context.l10n.adminPricing,
          path: 'admin',
          name: NamedRoutes.pricingAdmin,
          widgetBuilder: widgetBuilders[NamedRoutes.pricingAdmin]!,
          isAllowed: (context, route) {
            final userInfoService = Provider.of<UserInfoService>(context);
            return userInfoService.userInfo.hasPermission(adminPricing);
          },
        ),
        EORoute(
          FontAwesomeIcons.moneyBill1.data,
          (context) => context.l10n.yardPricing,
          path: 'yard',
          name: NamedRoutes.pricingYard,
          widgetBuilder: widgetBuilders[NamedRoutes.pricingYard]!,
          isAllowed: (context, route) {
            final userInfoService = Provider.of<UserInfoService>(context);
            return userInfoService.userInfo.hasPermission(yardPricing);
          },
        ),
        EORoute(
          FontAwesomeIcons.upload.data,
          (context) => context.l10n.upload,
          path: 'upload',
          name: NamedRoutes.pricingUpload,
          widgetBuilder: widgetBuilders[NamedRoutes.pricingUpload]!,
          isAllowed: (context, route) => Provider.of<UserInfoService>(
            context,
          ).userInfo.hasPermission('pricingUpload'),
        ),
      ],
    ),
    EORoute(
      FontAwesomeIcons.fileContract.data,
      (context) => context.l10n.contracts,
      section: kTradeRSection,
      path: 'contracts',
      name: CrmNamedRoutes.contracts,
      widgetBuilder: widgetBuilders[CrmNamedRoutes.contracts]!,
    ),
  ];

  static bool _isClone(EoRouterState state) {
    return state.queryParams['isClone'].toString().toUpperCase() == 'TRUE';
  }

  static String kTradeRSection = 'TradeR';

  static const String viewPricing = 'viewPricing';
  static const String adminPricing = 'adminPriceVisibility';
  static const String yardPricing = 'yardPriceVisibility';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(crmMenuItems);
    return registry;
  }

  static ContractWizard _contractWizardWidgetBuilder(
    BuildContext context,
    EoRouterState state, {
    bool isSpot = false,
    bool isClone = false,
    bool isEditing = false,
  }) {
    final client = Provider.of<BaseClient>(context);

    final config = Provider.of<AppConfig>(context, listen: false);
    final settingsController =
        Provider.of<BaseSettingsController>(context, listen: false)
            as SettingsController;
    final contractsProvider = ContractsProvider(
      client,
      Uri.parse(config.tradeRUrl),
    );
    final partyAccountNo = state.params['partyAccountNo'];
    final contractId = int.tryParse(state.queryParams['contractId'].toString());

    return ContractWizard.create(
      settingsController: settingsController,
      context: context,
      partyAccountNo: partyAccountNo!,
      client: client,
      isSpot: isSpot,
      isClone: isClone,
      contractHeaderId: contractId,
      contractsProvider: contractsProvider,
      appConfig: config,
      isEditing: isEditing,
    );
  }
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<PartyController>(
    create: (context) {
      return PartyController(coreApiService: context.coreApi);
    },
  ),
  ChangeNotifierProvider<PricesDataController>.value(
    value: PricesDataController(),
  ),
  ProxyProvider<BaseClient, ContractService>(
    update: (context, httpClient, contractService) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return ContractService(httpClient, Uri.parse(config.tradeRUrl));
    },
  ),
  ProxyProvider<BaseClient, PriceListService>(
    update: (context, httpClient, priceListService) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return PriceListService(
        client: httpClient,
        tradeRUrl: Uri.parse(config.tradeRUrl),
      );
    },
  ),
];
