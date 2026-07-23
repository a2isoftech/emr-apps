import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_dismantling/controllers/controllers.dart';
import 'package:emr_one_elv_dismantling/models/models.dart';
import 'package:emr_one_elv_dismantling/screens/screens.dart';
import 'package:emr_one_elv_dismantling/services/dismantling_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ElvDismantlingRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    DismantleConstants.kElvDismantleSearchRouteName: (context, state) =>
        const DismantlingSearchScreen().withMultiProvider([
          ChangeNotifierProvider<DismantlingSearchController>(
            create: (context) {
              final coreApiClient =
                  Provider.of<CoreApiClient>(context, listen: false);
              final appConfig = Provider.of<AppConfig>(context, listen: false);

              final dismantlingService = DismantlingService(
                resilientHttpClient: coreApiClient,
                appConfig: appConfig,
              );

              final settingsController =
                  Provider.of<BaseSettingsController>(context, listen: false)
                      as SettingsController;

              return DismantlingSearchController(
                dismantlingService: dismantlingService,
                settingsController: settingsController,
              );
            },
          ),
        ]),
    DismantleConstants.kElvDismantleRouteName: (context, state) =>
        DismantleScreen(
          vehicle: state.extra! as DismantlingVehicle,
        ).withMultiProvider([
          ChangeNotifierProvider<DismantleController>(
            create: (context) {
              final coreApiClient =
                  Provider.of<CoreApiClient>(context, listen: false);

              final appConfig = Provider.of<AppConfig>(context, listen: false);

              final dismantlingService = DismantlingService(
                resilientHttpClient: coreApiClient,
                appConfig: appConfig,
              );

              final settingsController =
                  Provider.of<BaseSettingsController>(context, listen: false)
                      as SettingsController;

              return DismantleController(
                dismantlingService: dismantlingService,
                settingsController: settingsController,
              );
            },
          ),
        ]),
  };

  static List<EORoute> elvDismantlingMenuItems = [
    EORoute(
      FontAwesomeIcons.carBurst.data,
      (context) => context.l10n.elvDismantle,
      section: DismantleConstants.kElvDismantlingSection,
      path: '/${DismantleConstants.kDismantleSearchScreenPath}',
      name: DismantleConstants.kElvDismantleSearchRouteName,
      isAllowed: (context, route) {
        final userInfoService = Provider.of<UserInfoService>(context);
        return userInfoService.userInfo.hasPermission(
          ElvConstants.viewElvDismantle,
        );
      },
      widgetBuilder:
          widgetBuilders[DismantleConstants.kElvDismantleSearchRouteName]!,
      children: [
        EORoute(
          FontAwesomeIcons.carBurst.data,
          (context) => context.l10n.dismantle,
          path: DismantleConstants.kDismantleScreenPath,
          name: DismantleConstants.kElvDismantleRouteName,
          widgetBuilder:
              widgetBuilders[DismantleConstants.kElvDismantleRouteName]!,
        ),
      ],
    ),
  ];

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(elvDismantlingMenuItems);
    return registry;
  }
}
