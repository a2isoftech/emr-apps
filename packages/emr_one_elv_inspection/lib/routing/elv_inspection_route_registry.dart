import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/helpers/helpers.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/pages/home/home_screen.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/inspection_screen_wrapper.dart';
import 'package:emr_one_elv_inspection/pages/inspection_failed/inspection_failed_screen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection_raven_migration.dart'
    as inspection_raven_migration;
import 'package:emr_one_elv_inspection/pages/search/controller/search_controller.dart';
import 'package:emr_one_elv_inspection/pages/search/search_screen.dart';
import 'package:emr_one_elv_inspection/routing/named_routes.dart';
import 'package:emr_one_elv_inspection/services/cat_service.dart';
import 'package:emr_one_elv_inspection/services/inspection_services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

class ElvInspectionRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    NamedRoutesElv.elvInspectionHome: (context, state) {
      final userInfoService = Provider.of<UserInfoService>(context);
      if (userInfoService.userInfo.hasPermission(ElvConstants.viewElvRaven)) {
        return const ElvInspectionHomeScreen().withMultiProvider(providers);
      }
      return const InspectionSearchScreen().withMultiProvider(providers);
    },
    NamedRoutesElv.elvInspectionSearch: (context, state) =>
        const InspectionSearchScreen().withMultiProvider(providers),
    NamedRoutesElv.elvInspection: (context, state) {
      final identifier = state.params['identifier']!;
      final quoteId = state.params['quoteId']!;
      return InspectionScreenWrapper(
        quoteId: quoteId,
        identifier: identifier,
      ).withMultiProvider(providers);
    },
    NamedRoutesElv.elvInspectionFailed: (context, state) {
      var errMsg = context.l10n.errSomethingWentWrong;
      if (state.extra != null && state.extra is String) {
        errMsg = state.extra! as String;
      }
      return InspectionFailedScreen(
        errorMessage: errMsg,
      ).withMultiProvider(providers);
    },
    NamedRoutesElv.elvInspectionSearchRaven: (context, state) =>
        const inspection_raven_migration.InspectionSearchScreen()
            .withMultiProvider(ravenProviders),
    NamedRoutesElv.elvInspectionRaven: (context, state) {
      final vehicleKey = state.params['vehicleKey']!;
      final quoteNumber = state.params['quoteId']!;
      return inspection_raven_migration.InspectionScreenWrapper(
        quoteNumber: quoteNumber,
        vehicleKey: vehicleKey,
      ).withMultiProvider(ravenProviders);
    },
  };

  static List<EORoute> elvInspectionMenuItems = [
    EORoute(
      isAllowed: (context, route) {
        final userInfoService = Provider.of<UserInfoService>(context);
        return userInfoService.userInfo.hasPermission(
          ElvConstants.viewElvInspection,
        );
      },

      /// This is your module's top level route
      FontAwesomeIcons.magnifyingGlass.data,
      (context) => context.l10n.elvInspection,
      section: kElvInspectionSection,
      path: '/elv-inspection-home',
      selectedIcon: Icons.logo_dev,
      name: NamedRoutesElv.elvInspectionHome,
      widgetBuilder: widgetBuilders[NamedRoutesElv.elvInspectionHome]!,
      children: [
        EORoute(
          FontAwesomeIcons.envelopeOpenText.data,
          (context) => context.l10n.inspection,
          section: kElvInspectionSection,
          path: 'search',
          name: NamedRoutesElv.elvInspectionSearch,
          widgetBuilder: widgetBuilders[NamedRoutesElv.elvInspectionSearch]!,
        ),
        EORoute(
          FontAwesomeIcons.envelopeOpenText.data,
          (context) => context.l10n.inspection,
          section: kElvInspectionSection,
          path: 'inspect/:quoteId/:identifier',
          name: NamedRoutesElv.elvInspection,
          widgetBuilder: widgetBuilders[NamedRoutesElv.elvInspection]!,
        ),
        EORoute(
          FontAwesomeIcons.envelopeOpenText.data,
          (context) => context.l10n.inspection,
          section: kElvInspectionSection,
          path: 'inspect/failed',
          name: NamedRoutesElv.elvInspectionFailed,
          widgetBuilder: widgetBuilders[NamedRoutesElv.elvInspectionFailed]!,
        ),
        EORoute(
          FontAwesomeIcons.envelopeOpenText.data,
          (context) => context.l10n.inspection,
          section: kElvInspectionSection,
          path: 'search-raven',
          name: NamedRoutesElv.elvInspectionSearchRaven,
          widgetBuilder:
              widgetBuilders[NamedRoutesElv.elvInspectionSearchRaven]!,
        ),
        EORoute(
          FontAwesomeIcons.envelopeOpenText.data,
          (context) => context.l10n.inspection,
          section: kElvInspectionSection,
          path: 'inspect-raven/:quoteId/:vehicleKey',
          name: NamedRoutesElv.elvInspectionRaven,
          widgetBuilder: widgetBuilders[NamedRoutesElv.elvInspectionRaven]!,
        ),
      ],
    ),
  ];

  static List<SingleChildWidget> get ravenProviders {
    return [
      Provider<ResilientHttpClient>(
        create: (context) {
          final config = Provider.of<AppConfig>(context, listen: false);
          return ResilientHttpClient.withPolicy(
            SimplePolicy(config.coreApiUrl)
              ..timeout = const Duration(seconds: 30)
              ..getToken = FirebaseLogin.getToken
              ..shouldRetry = (retryContext) => Future.value(false),
          );
        },
      ),
      Provider<inspection_raven_migration.InspectionServiceRaven>(
        create: (context) {
          final config = Provider.of<AppConfig>(context, listen: false);
          return inspection_raven_migration.InspectionServiceRaven(
            mediaApiBaseUrl: config.mediaApi,
            resilientClient: Provider.of<ResilientHttpClient>(
              context,
              listen: false,
            ),
          );
        },
      ),
      ListenableProvider<inspection_raven_migration.InspectionSearchController>(
        create: (context) {
          return inspection_raven_migration.InspectionSearchController(
            service:
                Provider.of<inspection_raven_migration.InspectionServiceRaven>(
                  context,
                  listen: false,
                ),
          );
        },
      ),
      ListenableProvider<inspection_raven_migration.InspectionController>(
        create: (context) {
          final service =
              Provider.of<inspection_raven_migration.InspectionServiceRaven>(
                context,
                listen: false,
              );

          final settingsController =
              Provider.of<BaseSettingsController>(context, listen: false)
                  as SettingsController;

          final config = Provider.of<AppConfig>(context, listen: false);

          return inspection_raven_migration.InspectionController(
            mediaApiBaseUrl: config.mediaApi,
            service: service,
            yardCode: settingsController.defaultYard!.yardCode,
            activeTerritory: settingsController.territory.toElvTerritory(),
            elvConfigs: config.elvConfigs,
          );
        },
      ),
    ];
  }

  static List<SingleChildWidget> get providers {
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
      Provider<InspectionServices>(
        create: (context) {
          final resilientClient = Provider.of<ResilientHttpClient>(
            context,
            listen: false,
          );
          return InspectionServices(
            resilientClient: resilientClient,
            appConfig: Provider.of<AppConfig>(context, listen: false),
          );
        },
      ),
      ListenableProvider<InspectionSearchController>(
        create: (context) {
          final settingsController =
              Provider.of<BaseSettingsController>(context, listen: false)
                  as SettingsController;
          return InspectionSearchController(
            activeTerritory: settingsController.territory.toElvTerritory(),
            services: InspectionServices(
              appConfig: Provider.of<AppConfig>(context, listen: false),
              resilientClient: Provider.of<ResilientHttpClient>(
                context,
                listen: false,
              ),
            ),
          );
        },
      ),

      ListenableProvider<InspectionScreenController>(
        create: (context) {
          final config = Provider.of<AppConfig>(context, listen: false);
          final coreApiClient = Provider.of<CoreApiClient>(
            context,
            listen: false,
          );
          final services = InspectionServices(
            appConfig: config,
            resilientClient: Provider.of<ResilientHttpClient>(
              context,
              listen: false,
            ),
          );

          final settingsController =
              Provider.of<BaseSettingsController>(context, listen: false)
                  as SettingsController;

          return InspectionScreenController(
            services: services,
            activeTerritory: settingsController.territory.toElvTerritory(),
            catService: CatRepository(
              httpClient: coreApiClient,
              appConfig: Provider.of<AppConfig>(context, listen: false),
            ),
            elvConfigFlags: config.elvConfigs,
            yard: settingsController.defaultYard!,
          );
        },
      ),
    ];
  }

  static String kElvInspectionSection = 'ELV Inspection';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(elvInspectionMenuItems);
    return registry;
  }
}
