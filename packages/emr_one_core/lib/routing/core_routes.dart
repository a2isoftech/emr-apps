import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/screens/login_screen.dart';
import 'package:emr_one_core/screens/widget_catalog/widget_catalog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class CoreRoutes {
  static String? homePagePath;

  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    'home': (context, state) => const HomeScreen(),
    'access-denied': (context, state) => const AccessDeniedScreen(),
    'generic-route-screen': (context, state) =>
        GenericRouteScreen.fromPathPrefix(state.fullpath!),
    '404': (context, state) => ErrorPage(
      context,
      errorCode: 404,
      errorMessage: context.l10n.pageNotFound,
    ).child,
  };

  /// Register routes from the core package.
  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes([
      EORoute(
        Icons.home_outlined,
        (context) => context.l10n.routeDisplayNameHome,
        path: '/',
        selectedIcon: Icons.home,
        name: NamedRoutes.home,
        // widgetBuilder is required, but in the case of '/' we have a
        // redirect, so the widget is never actually shown.
        widgetBuilder: (context, state) => const SizedBox(),
        redirect: (context, state) => homePagePath!,
      ),
      EORoute(
        FontAwesomeIcons.house.data,
        (context) => context.l10n.routeDisplayNameLogIn,
        path: '/login',
        name: NamedRoutes.login,
        widgetBuilder: (context, state) {
          final loginController = context.read<BaseLoginController>();

          final loginWidget = loginController.loginWidgetBuilder(context);

          if (loginWidget != null) {
            return loginWidget;
          }

          return const LoginScreen(loggedOutWidgetBuilder: LoginView.new);
        },
        isManuallyNavigable: false,
      ),
      EORoute(
        FontAwesomeIcons.house.data,
        (context) => context.l10n.routeDisplayNameNotifications,
        path: '/notifications',
        name: NamedRoutes.notifications,
        widgetBuilder: (context, state) {
          return const NotificationScreen();
        },
        isManuallyNavigable: false,
      ),
      EORoute(
        FontAwesomeIcons.house.data,
        (context) => '',
        path: '/dashboard',
        name: NamedRoutes.dashboard,
        widgetBuilder: widgetBuilders['home']!,
        isManuallyNavigable: false,
      ),
      // After signing in with username/password on the native app
      // (iOS specifically), the Firebase SDK launches the app using /link,
      // but the Firebase SDK has already handled that, so at this point we
      // want to redirect to the homepage.
      // On iOS this was presenting itself as a 404.
      // We redirect to '/' rather than `CoreRoutes.homePagePath` or a named
      // route so that this works with the old and new menus.
      EORoute.redirectRoute('/link', '/'),
      EORoute(
        FontAwesomeIcons.book.data,
        (context) => 'Widget Catalog',
        path: '/widget-catalog',
        name: NamedRoutes.widgetCatalog,
        widgetBuilder: (context, state) => const WidgetCatalog(),
        isManuallyNavigable: false,
      ),
      EORoute(
        FontAwesomeIcons.upload.data,
        (context) => context.l10n.uploads,
        path: '/uploads',
        name: NamedRoutes.uploads,
        widgetBuilder: (context, state) => const UploadsScreen(),
        isManuallyNavigable: false,
      ),
    ]);

    return registry;
  }
}
