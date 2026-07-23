import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/data/shared_preferences_service.dart';
import 'package:emr_one_fire_register/screens/fire_register_home.dart';
import 'package:emr_one_fire_register/services/fire_register_service.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class FireRegisterRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    NamedRoutes.fireRegister: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final appConfig = Provider.of<AppConfig>(context);
      final sharedPrefs = SharedPreferencesService();
      final fireRegisterService = FireRegisterService(
        httpClient: httpClient,
        appConfig: appConfig,
      );
      final exportDataService = ExportDataService();
      final locale = Localizations.localeOf(context);

      return FireRegisterHome(
        exportDataService,
        fireRegisterService,
        sharedPrefs,
        locale,
      );
    },
  };

  static List<EORoute> fireRegisterMenuItems = [
    EORoute(
      FontAwesomeIcons.fire.data,
      (context) => context.l10n.fireRegister,
      section: kFireRegisterSection,
      path: '/fire-register',
      name: NamedRoutes.fireRegister,
      selectedIcon: FontAwesomeIcons.fire.data,
      widgetBuilder: widgetBuilders[NamedRoutes.fireRegister]!,
      isAllowed: (context, route) => Provider.of<UserInfoService>(context)
          .userInfo
          .hasPermission('viewFireRegister'),
    ),
  ];

  static String kFireRegisterSection = 'FireRegister';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(fireRegisterMenuItems);
    return registry;
  }
}
