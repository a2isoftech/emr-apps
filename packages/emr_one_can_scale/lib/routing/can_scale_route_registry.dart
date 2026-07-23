import 'package:emr_one_can_scale/screens/can_scale_screen.dart';
import 'package:emr_one_can_scale/screens/can_scale_screen_controller.dart';
import 'package:emr_one_can_scale/services/inventory_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class CanScaleRouteRegistry {
  static List<EORoute> canScaleMenuItems = [
    EORoute(
      FontAwesomeIcons.jar.data,
      (_) => kCanScaleSection,
      section: kCanScaleSection,
      path: '/can-scale',
      selectedIcon: Icons.logo_dev,
      name: 'CanScale',
      isAllowed: (context, route) {
        final userInfoService = Provider.of<UserInfoService>(context);
        return userInfoService.userInfo.hasPermission('canScale');
      },
      widgetBuilder: (context, state) {
        final client = Provider.of<BaseClient>(context);

        final inventoryService = InventoryService(
          httpClient: client,
          userInfoService: Provider.of<UserInfoService>(context),
        );
        final controller =
            CanScaleScreenController(inventoryService: inventoryService);

        return CanScaleScreen(controller: controller);
      },
    ),
  ];

  static String kCanScaleSection = 'Can Scale';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(canScaleMenuItems);
    return registry;
  }
}
