import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_prefs/screens/prefs_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PrefsRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    NamedRoutes.settings: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      return PrefsScreen(
        appConfig: appConfig,
      );
    },
  };

  static List<EORoute> prefsMenuItems = [
    EORoute(
      Icons.settings,
      (context) => context.l10n.settings,
      section: kPrefsSection,
      path: '/settings',
      selectedIcon: Icons.logo_dev,
      isManuallyNavigable: false,
      name: NamedRoutes.settings,
      widgetBuilder: widgetBuilders[NamedRoutes.settings]!,
    ),
  ];

  static String kPrefsSection = 'Prefs';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(prefsMenuItems);
    return registry;
  }
}
