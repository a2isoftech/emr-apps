import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_t2/constants.dart';
import 'package:emr_one_elv_t2/screens/t2_web.dart';
import 'package:emr_one_elv_t2/screens/t2_webview.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ElvT2RouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    ElvT2NamedRoutes.elvT2: (context, state) {
      final appConfig = Provider.of<AppConfig>(context, listen: false);
      if (!appConfig.isWeb) {
        return const T2WebView();
      } else {
        return const T2Web();
      }
    },
  };

  static List<EORoute> elvT2MenuItems = [
    EORoute(
      /// This is your module's top level route
      FontAwesomeIcons.globe.data,
      (_) => kElvT2Section,
      section: kElvT2Section,
      path: '/elv-t2',
      selectedIcon: FontAwesomeIcons.globe.data,
      name: ElvT2NamedRoutes.elvT2,
      isAllowed: (context, route) {
        final userInfoService = Provider.of<UserInfoService>(context);
        return userInfoService.userInfo.hasPermission(ElvConstants.viewElvT2);
      },
      widgetBuilder: widgetBuilders[ElvT2NamedRoutes.elvT2]!,
    ),
  ];

  static String kElvT2Section = 'ELV T2';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(elvT2MenuItems);
    return registry;
  }
}
