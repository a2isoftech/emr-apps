import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_securitymgmt/controllers/controllers.dart';
import 'package:emr_one_securitymgmt/data/graph_client.dart';
import 'package:emr_one_securitymgmt/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetResource {
  WidgetResource({required this.pageKey, required this.widget});

  String pageKey;
  Widget widget;
}

class SecurityMgmtRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    'Desks': (_, __) {
      final client = GraphClient();
      final controller = SmDeskController(client);
      return SmDeskScreen(controller: controller);
    },
  };

  static Map<String, WidgetResource> widgetMap = <String, WidgetResource>{};

  static List<EORoute> securitymgmtMenuItems = [
    EORoute(
      /// This is your module's top level route
      Icons.domain_outlined,
      (_) => kWorkplace,
      section: kWorkplaceSection,
      path: '/workplace',
      selectedIcon: Icons.domain,
      name: kWorkplace,
      widgetBuilder: (context, state) =>
          GenericRouteScreen.fromPathPrefix(state.path!),
      isAllowed: (context, route) {
        final userInfoService = Provider.of<UserInfoService>(context);
        final appConfig = Provider.of<AppConfig>(context);
        return appConfig.isWeb &&
            userInfoService.userInfo.hasPermission('viewRoomBookings');
      },
      children: [
        EORoute(
          Icons.desk_outlined,
          (_) => 'Desks',
          path: 'desks',
          name: 'Desks',
          selectedIcon: Icons.desk,
          widgetBuilder: widgetBuilders['Desks']!,
        ),
      ],
    ),
  ];

  static String kWorkplaceSection = 'My Workplace';
  static String kWorkplace = 'Workplace';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(securitymgmtMenuItems);
    return registry;
  }
}
