import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/components/live_loads_view/live_loads_view.dart';
import 'package:emr_one_yard_management/components/route_to_market_view/route_to_market_view.dart';
import 'package:emr_one_yard_management/components/yard_view/yard_view.dart';
import 'package:emr_one_yard_management/screens/yard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YardManagementRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    NamedRoutes.yardInstructionsToMove: (context, state) => const YardView(),
    NamedRoutes.yardLiveLoads: (context, state) => const LiveLoadsView(),
    NamedRoutes.yardRouteToMarket: (context, state) =>
        const RouteToMarketView(),
  };

  static List<EORoute> yardManagementMenuItems = [
    EORoute(
      Icons.logo_dev_outlined,
      (_) => kYardManagementSection,
      section: kYardManagementSection,
      path: '/yard-management',
      selectedIcon: Icons.logo_dev,
      name: 'YardManagement',
      isAllowed: _isAllowed,
      widgetBuilder: (context, state) {
        return const YardScreen();
      },
      children: [
        EORoute(
          Icons.radar_outlined,
          (context) => context.l10n.yardInstructionsToMove,
          section: kYardManagementSection,
          path: 'instructions-to-move',
          selectedIcon: Icons.radar,
          name: NamedRoutes.yardInstructionsToMove,
          isAllowed: _isAllowed,
          widgetBuilder: widgetBuilders[NamedRoutes.yardInstructionsToMove]!,
        ),
        EORoute(
          Icons.radar_outlined,
          (context) => context.l10n.psnopMainMenuYardManagementLiveLoads,
          section: kYardManagementSection,
          path: 'live-loads',
          selectedIcon: Icons.radar,
          name: NamedRoutes.yardLiveLoads,
          isAllowed: _isAllowed,
          widgetBuilder: widgetBuilders[NamedRoutes.yardLiveLoads]!,
        ),
        EORoute(
          Icons.radar_outlined,
          (context) => context.l10n.psnopMainMenuYardManagementRouteToMarket,
          section: kYardManagementSection,
          path: 'route-to-market',
          selectedIcon: Icons.wb_cloudy_sharp,
          name: NamedRoutes.yardRouteToMarket,
          isAllowed: _isAllowed,
          widgetBuilder: widgetBuilders[NamedRoutes.yardRouteToMarket]!,
        ),
      ],
    ),
  ];

  static String kYardPermission = 'viewYardManagement';

  static bool _isAllowed(BuildContext context, EORoute route) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo.hasPermission(kYardPermission);
  }

  static String kYardManagementSection = 'YardManagement';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(yardManagementMenuItems);
    return registry;
  }
}
