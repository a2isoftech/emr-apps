import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_core_api/services/account_service.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/models/models.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:emr_one_elv_quotes/controller/filters/quote_search_filter_controller.dart';
import 'package:emr_one_elv_quotes/data/quote_search_data_source.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:emr_one_elv_quotes/models/quote_search/quote_search_record.dart';
import 'package:emr_one_elv_quotes/pages/documents/controllers/documents_controller.dart';
import 'package:emr_one_elv_quotes/pages/documents/documents_screen.dart';
import 'package:emr_one_elv_quotes/pages/home/home_screen.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/quick_quotes_screen.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes_new/quick_quotes_new.dart';
import 'package:emr_one_elv_quotes/pages/quote_search/quote_search.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_screen.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/vin_scrap_quote_controller.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/vin_scrap_quote_screen.dart';
import 'package:emr_one_elv_quotes/routing/elv_named_routing.dart';
import 'package:emr_one_elv_quotes/services/quote_search_service.dart';
import 'package:emr_one_elv_quotes/services/services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

EmrQueryLayoutController<QuoteSearchRecord>? _quoteSearchLayoutController;
Signal<QuoteSearchViewMode>? _quoteSearchViewMode;

class ElvQuotesRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    NamedRoutes.elvQuotes: (context, state) {
      final settings =
          Provider.of<BaseSettingsController>(context) as SettingsController;
      Format.localize(settings.territory);

      final config = Provider.of<AppConfig>(context, listen: false);
      final userInfoService = Provider.of<UserInfoService>(context);

      //Navigate straight to VIN Scrap if that's the only permission they have
      if (userInfoService.userInfo.hasPermission(ElvConstants.viewVINScrap) &&
          !userInfoService.userInfo.hasPermission(ElvConstants.viewElvQuotes)) {
        context.go(
          context.namedLocation(ElvQuotesNamedRoutes.elvVinScrapQuote),
        );
        return const SizedBox();
      }
      return ElvQuotesHomeScreen(appConfig: config);
    },
    NamedRoutes.elvQuickQuote: (context, state) {
      final settings =
          Provider.of<BaseSettingsController>(context) as SettingsController;
      final batchQuoteId = state.params['batchQuoteId'] ?? '';
      Format.localize(settings.territory);
      return QuickQuotesScreen(batchQuoteId: batchQuoteId).withMultiProvider([
        ...baseProviders,
        ChangeNotifierProvider(
          create: (context) {
            final client = Provider.of<BaseClient>(context, listen: false);

            final appConfig = Provider.of<AppConfig>(context, listen: false);

            final resilientHttpClient = Provider.of<ResilientHttpClient>(
              context,
              listen: false,
            );

            final settingsController =
                Provider.of<BaseSettingsController>(context, listen: false)
                    as SettingsController;

            final activeTerritory = settingsController.territory
                .toElvTerritory();

            final userInfoService = Provider.of<UserInfoService>(
              context,
              listen: false,
            );

            final activeTerritoryCode = settingsController.territory;

            final quoteService = QuoteService(
              client: client,
              appConfig: appConfig,
              quoteServiceGraphQlClient: resilientHttpClient,
            );

            final addressService = AddressService(
              client: client,
              appConfig: appConfig,
              activeTerritory: activeTerritory,
            );

            final accountService = ELVAccountService(
              client: client,
              appConfig: appConfig,
              territory: activeTerritoryCode,
              userInfoService: userInfoService,
              accountService: context.coreApi.accountService,
            );

            final yardService = YardService(
              client: client,
              appConfig: appConfig,
            );

            final vehicleService = VehicleService(
              client: client,
              appConfig: appConfig,
              territoryCode: activeTerritoryCode,
            );

            final emailService = EmailService(
              client: client,
              appConfig: appConfig,
            );

            final catService = CatService(client: client, appConfig: appConfig);

            final collectionOperatorService = CollectionOperatorService(
              client: client,
              appConfig: appConfig,
            );

            final allowEditBankDetails = userInfoService.userInfo.hasPermission(
              ElvConstants.allowEditBankDetails,
            );

            return QuickQuoteController(
              quoteService: quoteService,
              addressService: addressService,
              accountService: accountService,
              yardService: yardService,
              vehicleService: vehicleService,
              emailService: emailService,
              catService: catService,
              activeTerritory: activeTerritory,
              collectionOperatorService: collectionOperatorService,
              elvConfigFlags: appConfig.elvConfigs,
              allowEditBankDetails: allowEditBankDetails,
            );
          },
        ),
      ]);
    },

    ElvNamedRouting.elvQuickQuoteNew: (context, state) {
      final settings =
          Provider.of<BaseSettingsController>(context) as SettingsController;
      final batchQuoteId = state.params['batchQuoteId'] ?? '';
      Format.localize(settings.territory);
      return QuickQuoteNewScreen(batchQuoteId: batchQuoteId).withMultiProvider([
        ...baseProviders,
        ChangeNotifierProvider(
          create: (context) {
            final client = Provider.of<BaseClient>(context, listen: false);

            final appConfig = Provider.of<AppConfig>(context, listen: false);

            final resilientHttpClient = Provider.of<ResilientHttpClient>(
              context,
              listen: false,
            );

            final settingsController =
                Provider.of<BaseSettingsController>(context, listen: false)
                    as SettingsController;

            final activeTerritory = settingsController.territory
                .toElvTerritory();

            final userInfoService = Provider.of<UserInfoService>(
              context,
              listen: false,
            );

            final activeTerritoryCode = settingsController.territory;

            final quoteService = QuoteService(
              client: client,
              appConfig: appConfig,
              quoteServiceGraphQlClient: resilientHttpClient,
            );

            final addressService = AddressService(
              client: client,
              appConfig: appConfig,
              activeTerritory: activeTerritory,
            );

            final accountService = ELVAccountService(
              client: client,
              appConfig: appConfig,
              territory: activeTerritoryCode,
              userInfoService: userInfoService,
              accountService: context.coreApi.accountService,
            );

            final yardService = YardService(
              client: client,
              appConfig: appConfig,
            );

            return QuickQuotesNewController(
              accountService: accountService,
              yardService: yardService,
              activeTerritory: activeTerritory,
              elvConfigFlags: appConfig.elvConfigs,
              addressService: addressService,
              quoteService: quoteService,
            );
          },
        ),
      ]);
    },
    NamedRoutes.elvQuotesSummary: (context, state) {
      final batchQuoteID = int.parse(state.params['batchQuoteId']!);
      return SummaryScreen(batchQuoteID: batchQuoteID).withMultiProvider([
        ...baseProviders,
        ChangeNotifierProvider<SummaryController>(
          create: (context) {
            final client = Provider.of<BaseClient>(context, listen: false);

            final appConfig = Provider.of<AppConfig>(context, listen: false);

            final resilientHttpClient = Provider.of<ResilientHttpClient>(
              context,
              listen: false,
            );

            final emailService = EmailService(
              client: client,
              appConfig: appConfig,
            );

            final quoteService = QuoteService(
              client: client,
              appConfig: appConfig,
              quoteServiceGraphQlClient: resilientHttpClient,
            );

            final userInfoService = Provider.of<UserInfoService>(
              context,
              listen: false,
            );

            final accountService = ELVAccountService(
              client: client,
              appConfig: appConfig,
              userInfoService: userInfoService,
              accountService: context.coreApi.accountService,
            );

            final yardService = YardService(
              client: client,
              appConfig: appConfig,
            );

            final settingsController =
                Provider.of<BaseSettingsController>(context, listen: false)
                    as SettingsController;

            final activeTerritory = settingsController.territory
                .toElvTerritory();

            final readOnly = userInfoService.userInfo.hasPermission(
              ElvConstants.elvReadOnly,
            );

            final vehicleService = VehicleService(
              client: client,
              appConfig: appConfig,
              territoryCode: activeTerritory.territoryCode(),
            );

            final addressService = AddressService(
              client: client,
              appConfig: appConfig,
              activeTerritory: activeTerritory,
            );

            final collectionOperatorService = CollectionOperatorService(
              client: client,
              appConfig: appConfig,
            );

            final allowInspectionReopen = userInfoService.userInfo
                .hasPermission(ElvConstants.allowInspectionReopen);

            final usaAllowChromeWheels = appConfig.elvConfigs.contains(
              ElvConstants.usaAllowChromeWheels,
            );

            final ukAllowChromeWheels = appConfig.elvConfigs.contains(
              ElvConstants.ukAllowChromeWheels,
            );

            final usaDisplayMultipleCats = appConfig.elvConfigs.contains(
              ElvConstants.usaDisplayMultipleCats,
            );

            final ukDisplayMultipleCats = appConfig.elvConfigs.contains(
              ElvConstants.ukDisplayMultipleCats,
            );

            final allowEditBankDetails = userInfoService.userInfo.hasPermission(
              ElvConstants.allowEditBankDetails,
            );

            return SummaryController(
              emailService: emailService,
              quoteService: quoteService,
              accountService: accountService,
              vehicleService: vehicleService,
              activeTerritory: activeTerritory,
              readOnly: readOnly,
              addressService: addressService,
              collectionOperatorService: collectionOperatorService,
              allowInspectionReopen: allowInspectionReopen,
              usaAllowChromeWheels: usaAllowChromeWheels,
              ukAllowChromeWheels: ukAllowChromeWheels,
              allowEditBankDetails: allowEditBankDetails,
              usaDisplayMultipleCats: usaDisplayMultipleCats,
              ukDisplayMultipleCats: ukDisplayMultipleCats,
              yardService: yardService,
            );
          },
        ),
      ]);
    },
    ElvQuotesNamedRoutes.elvVehicleDocuments: (context, state) {
      final batchQuoteId = int.parse(state.params['batchQuoteId']!);
      final quoteId = int.parse(state.params['quoteId']!);
      return DocumentsScreen(
        batchQuoteId: batchQuoteId,
        quoteId: quoteId,
      ).withMultiProvider([
        ...baseProviders,
        ChangeNotifierProvider<DocumentsController>(
          create: (context) {
            final client = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final resilientHttpClient = Provider.of<ResilientHttpClient>(
              context,
              listen: false,
            );

            final quoteService = QuoteService(
              client: client,
              appConfig: appConfig,
              quoteServiceGraphQlClient: resilientHttpClient,
            );

            final inspectionService = InspectionService(
              appConfig: appConfig,
              resilientClient: resilientHttpClient,
            );
            return DocumentsController(
              quoteService: quoteService,
              inspectionService: inspectionService,
            );
          },
        ),
      ]);
    },
    NamedRoutes.elvQuoteSearch: (context, state) {
      final coreApiClient = Provider.of<CoreApiClient>(context, listen: false);
      final quoteSearchService = QuoteSearchService(httpClient: coreApiClient);

      if (_quoteSearchLayoutController == null) {
        final quoteSearchDataSource = QuoteSearchDataSource(
          quoteSearchService: quoteSearchService,
        );

        final userInfoService = context.read<UserInfoService>();

        final quoteSearchFilterController = QuoteSearchFilterController(
          userInfoService: userInfoService,
          quoteSearchService: quoteSearchService,
        );

        _quoteSearchLayoutController =
            EmrQueryLayoutController<QuoteSearchRecord>(
              dataSource: quoteSearchDataSource,
              filterController: quoteSearchFilterController,
            );
      }

      _quoteSearchViewMode ??= signal<QuoteSearchViewMode>(
        QuoteSearchViewMode.grid,
      );

      return QuoteSearch(
        queryLayoutController: _quoteSearchLayoutController!,
        viewMode: _quoteSearchViewMode!,
      );
    },
    ElvQuotesNamedRoutes.elvVinScrapQuote: (context, state) =>
        const VINScrapQuoteScreen().withMultiProvider([
          ...baseProviders,
          ChangeNotifierProvider<VINScrapController>(
            create: (context) {
              final client = Provider.of<BaseClient>(context, listen: false);

              final appConfig = Provider.of<AppConfig>(context, listen: false);

              final resilientHttpClient = Provider.of<ResilientHttpClient>(
                context,
                listen: false,
              );

              final quoteService = QuoteService(
                client: client,
                appConfig: appConfig,
                quoteServiceGraphQlClient: resilientHttpClient,
              );

              final yardService = YardService(
                client: client,
                appConfig: appConfig,
              );

              final settingsController =
                  Provider.of<BaseSettingsController>(context, listen: false)
                      as SettingsController;

              final activeTerritory = settingsController.territory
                  .toElvTerritory();

              final vehicleService = VehicleService(
                client: client,
                appConfig: appConfig,
                territoryCode: activeTerritory.territoryCode(),
              );

              final coreApiClient = Provider.of<CoreApiClient>(
                context,
                listen: false,
              );

              final accountService = AccountService(httpClient: coreApiClient);

              return VINScrapController(
                appConfig: appConfig,
                quoteService: quoteService,
                yardService: yardService,
                vehicleService: vehicleService,
                activeTerritory: activeTerritory,
                accountService: accountService,
              );
            },
          ),
        ]),
  };

  static List<EORoute> elvQuotesMenuItems = [
    EORoute(
      FontAwesomeIcons.envelopeOpenText.data,
      (context) => context.l10n.elvQuotes,
      section: kElvQuotesSection,
      path: '/elv-quotes',
      name: NamedRoutes.elvQuotes,
      isAllowed: (context, route) {
        final userInfoService = Provider.of<UserInfoService>(context);
        return userInfoService.userInfo.hasPermission(
              ElvConstants.viewElvQuotes,
            ) ||
            userInfoService.userInfo.hasPermission(ElvConstants.viewVINScrap);
      },
      widgetBuilder: widgetBuilders[NamedRoutes.elvQuotes]!,
      children: [
        EORoute(
          FontAwesomeIcons.envelopeOpenText.data,
          (context) => context.l10n.quickQuote,
          section: kElvQuotesSection,
          path: 'quick-quote/:batchQuoteId',
          name: NamedRoutes.elvQuickQuote,
          widgetBuilder: widgetBuilders[NamedRoutes.elvQuickQuote]!,
        ),
        EORoute(
          FontAwesomeIcons.envelopeOpenText.data,
          (context) => context.l10n.quickQuote,
          section: kElvQuotesSection,
          path: 'quick-quote-new/:batchQuoteId',
          name: ElvNamedRouting.elvQuickQuoteNew,
          widgetBuilder: widgetBuilders[ElvNamedRouting.elvQuickQuoteNew]!,
        ),
        EORoute(
          FontAwesomeIcons.envelopeOpenText.data,
          (context) => context.l10n.quoteSearch,
          path: 'quote-search',
          name: NamedRoutes.elvQuoteSearch,
          selectedIcon: FontAwesomeIcons.envelopeOpenText.data,
          widgetBuilder: widgetBuilders[NamedRoutes.elvQuoteSearch]!,
          children: [
            EORoute(
              FontAwesomeIcons.clipboardList.data,
              (context) => context.l10n.summary,
              section: kElvQuotesSection,
              path: 'summary/:batchQuoteId',
              name: NamedRoutes.elvQuotesSummary,
              widgetBuilder: widgetBuilders[NamedRoutes.elvQuotesSummary]!,
              children: [
                EORoute(
                  FontAwesomeIcons.fileImage.data,
                  (context) => context.l10n.documents,
                  section: kElvQuotesSection,
                  path: 'documents/:quoteId',
                  name: ElvQuotesNamedRoutes.elvVehicleDocuments,
                  widgetBuilder:
                      widgetBuilders[ElvQuotesNamedRoutes.elvVehicleDocuments]!,
                ),
              ],
            ),
          ],
        ),
        EORoute(
          FontAwesomeIcons.weightScale.data,
          (context) => context.l10n.vinScrap,
          section: kElvQuotesSection,
          path: 'vin-scrap-quote',
          name: ElvQuotesNamedRoutes.elvVinScrapQuote,
          widgetBuilder: widgetBuilders[ElvQuotesNamedRoutes.elvVinScrapQuote]!,
        ),
      ],
    ),
  ];

  static List<SingleChildWidget> get baseProviders {
    return [
      Provider<ResilientHttpClient>(
        create: (context) {
          final config = Provider.of<AppConfig>(context, listen: false);
          return ResilientHttpClient.withPolicy(
            SimplePolicy(config.quoteServiceGraphqlApiUrl)
              ..timeout = const Duration(seconds: 30)
              ..getToken = FirebaseLogin.getToken
              ..shouldRetry = (retryContext) => Future.value(false),
          );
        },
      ),
    ];
  }

  static String kElvQuotesSection = 'ELV Quotes';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(elvQuotesMenuItems);
    return registry;
  }
}
