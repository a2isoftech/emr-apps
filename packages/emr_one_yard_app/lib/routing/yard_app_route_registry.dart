import 'package:emr_core_api/graphql/queries/yard_app/tickets/get_ticket_details.graphql.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/loader_wrapper.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/controllers.dart';
import 'package:emr_one_yard_app/models/ticket/load_out_ticket.dart';
import 'package:emr_one_yard_app/screens/screens.dart';
import 'package:emr_one_yard_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class YardAppRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    YardAppNamedRoutes.yardApp: (context, state) =>
        GenericRouteScreen((routes) {
          return routes
              .where((element) => element.path == YardAppPaths.yardAppRootPath)
              .toList();
        }),
    YardAppNamedRoutes.yardAppTicketList: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final userInfoService = Provider.of<UserInfoService>(context);

      final ticketService = YardTicketService(
        httpClient: httpClient,
        apiUrl: config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
        mediaApiUrl:
            config.runAtEdge ? config.edgeMediaApiUrl : config.mediaApi,
      );

      final ticketController = TicketController(
        ticketService: ticketService,
        userInfoService: userInfoService,
      );

      return TicketListScreen(ticketController: ticketController);
    },
    YardAppNamedRoutes.yardAppTicketDetails: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final userInfoService = Provider.of<UserInfoService>(context);

      final ticketService = YardTicketService(
        httpClient: httpClient,
        apiUrl: config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
        mediaApiUrl:
            config.runAtEdge ? config.edgeMediaApiUrl : config.mediaApi,
      );

      final detailsController = TicketDetailsController(
        mediaController: MediaController(
          yardCode: userInfoService.userInfo.defaultYard,
          mediaApiUrl:
              config.runAtEdge ? config.edgeMediaApiUrl : config.mediaApi,
          imageCompressQuality: config.yrdAppImgCompressQuality,
        ),
        ticketService: ticketService,
        userInfoService: userInfoService,
      );

      return TicketDetailScreen(
        enableLoadOutButton: context.userHasPermission(
          YardAppPermissions.viewLoadOuts,
        ),
        detailsController: detailsController,
        ticketId: state.params['id'] ?? '',
      );
    },
    YardAppNamedRoutes.yardAppdiscrepantDetails: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final ticket = state.extra! as Query$GetTicketDetails$ticket;

      final ticketService = YardTicketService(
        httpClient: httpClient,
        apiUrl: config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
        mediaApiUrl:
            config.runAtEdge ? config.edgeMediaApiUrl : config.mediaApi,
      );

      final userInfoService = Provider.of<UserInfoService>(context);
      final detailsController = TicketDetailsController(
        mediaController: MediaController(
          yardCode: userInfoService.userInfo.defaultYard,
          mediaApiUrl:
              config.runAtEdge ? config.edgeMediaApiUrl : config.mediaApi,
          imageCompressQuality: config.yrdAppImgCompressQuality,
        ),
        ticketService: ticketService,
        userInfoService: userInfoService,
      );

      final controller = DiscrepantDetailsController(
        userName: userInfoService.userInfo.name,
        service: ticketService,
        ticket: ticket,
        lineNumber: int.tryParse(state.queryParams['line']!) ?? 0,
        defaultYard: userInfoService.userInfo.defaultYard,
        ticketDetailsController: detailsController,
      );

      return LoaderWrapper(
        showLoader: controller.showLoader,
        child: TicketDiscrepantDetailsScreen(controller: controller),
      );
    },
    YardAppNamedRoutes.yardAppLoadOutList: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      return LoadOutTabsScreen(
        loadOutController: LoadOutSearchController(
          userInfoService: Provider.of<UserInfoService>(context),
          loadOutService: LoadOutService(
            httpClient: httpClient,
            apiUrl:
                config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
          ),
        ),
      );
    },
    YardAppNamedRoutes.yardAppLoadOutDetails: (context, state) {
      final loadOutId = state.queryParams['id'];
      final ticket = state.extra as LoadOutTicket?;

      final httpClient = Provider.of<BaseClient>(context, listen: false);
      final config = Provider.of<AppConfig>(context, listen: false);
      final userInforService =
          Provider.of<UserInfoService>(context, listen: false);

      final controller = LoadOutController(
        mediaController: MediaController(
          yardCode: userInforService.userInfo.defaultYard,
          mediaApiUrl:
              config.runAtEdge ? config.edgeMediaApiUrl : config.mediaApi,
          imageCompressQuality: config.yrdAppImgCompressQuality,
        ),
        ticketService: YardTicketService(
          httpClient: httpClient,
          apiUrl: config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
          mediaApiUrl:
              config.runAtEdge ? config.edgeMediaApiUrl : config.mediaApi,
        ),
        userInfoService: userInforService,
        loadOutService: LoadOutService(
          httpClient: httpClient,
          apiUrl: config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
        ),
      );

      return LoadOutDetailsScreen(
        controller: controller,
        loadOutId: loadOutId,
        ticket: ticket,
      );
    },
    YardAppNamedRoutes.yardAppLocationList: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      return LocationList(
        locationController: LocationController(
          mediaUrl: config.mediaApi,
          userInfoService: Provider.of<UserInfoService>(context),
          locationService: LocationService(
            httpClient: httpClient,
            apiUrl:
                config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
          ),
        ),
      );
    },
    YardAppNamedRoutes.yardAppLocationDetails: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final userInfoService = Provider.of<UserInfoService>(context);
      return LocationDetails(
        locationId: state.params['id'] ?? '',
        detailsController: LocationDetailsController(
          mediaController: MediaController(
            yardCode: userInfoService.userInfo.defaultYard,
            imageCompressQuality: config.yrdAppImgCompressQuality,
            mediaApiUrl:
                config.runAtEdge ? config.edgeMediaApiUrl : config.mediaApi,
          ),
          userInfoService: userInfoService,
          locationService: LocationService(
            httpClient: httpClient,
            apiUrl:
                config.runAtEdge ? config.edgeCoreApiUrl : config.coreApiUrl,
          ),
        ),
      );
    },
  };

  static List<EORoute> yardAppMenuItems = [
    EORoute(
      Icons.forklift,
      (context) => context.l10n.siteOps,
      section: YardAppConstants.yardAppSection,
      path: YardAppPaths.yardAppRootPath,
      name: YardAppNamedRoutes.yardApp,
      isAllowed: (context, route) =>
          context.userHasPermission(YardAppPermissions.viewYardApp),
      widgetBuilder: widgetBuilders[YardAppNamedRoutes.yardApp]!,
      children: [
        EORoute(
          Icons.notes,
          (context) => context.l10n.inspection,
          section: YardAppConstants.yardAppSection,
          path: YardAppPaths.ticketListPath,
          selectedIcon: Icons.notes,
          name: YardAppNamedRoutes.yardAppTicketList,
          isAllowed: (context, route) =>
              context.userHasPermission(YardAppPermissions.viewTickets),
          widgetBuilder: widgetBuilders[YardAppNamedRoutes.yardAppTicketList]!,
        ),
        EORoute(
          Icons.confirmation_num,
          (context) => context.l10n.ticketDetails,
          path: YardAppPaths.ticketDetailsPath,
          name: YardAppNamedRoutes.yardAppTicketDetails,
          section: YardAppConstants.yardAppSection,
          isManuallyNavigable: false,
          widgetBuilder:
              widgetBuilders[YardAppNamedRoutes.yardAppTicketDetails]!,
          children: [
            EORoute(
              Icons.assignment_outlined,
              (context) => context.l10n.discrepancy,
              section: YardAppConstants.yardAppSection,
              path: YardAppPaths.discrepantDetailsPath,
              selectedIcon: Icons.assignment_outlined,
              name: YardAppNamedRoutes.yardAppdiscrepantDetails,
              isAllowed: (context, route) =>
                  context.userHasPermission(YardAppPermissions.viewTickets),
              widgetBuilder:
                  widgetBuilders[YardAppNamedRoutes.yardAppdiscrepantDetails]!,
            ),
          ],
        ),
        EORoute(
          Icons.assignment_outlined,
          (context) => context.l10n.loadOut,
          section: YardAppConstants.yardAppSection,
          path: YardAppPaths.loadOutListPath,
          selectedIcon: Icons.assignment_outlined,
          name: YardAppNamedRoutes.yardAppLoadOutList,
          isAllowed: (context, route) =>
              context.userHasPermission(YardAppPermissions.viewLoadOuts),
          widgetBuilder: widgetBuilders[YardAppNamedRoutes.yardAppLoadOutList]!,
        ),
        EORoute(
          Icons.assignment_outlined,
          (context) => context.l10n.loadoutDetails,
          section: YardAppConstants.yardAppSection,
          path: YardAppPaths.loadOutDetailsPath,
          selectedIcon: Icons.assignment_outlined,
          name: YardAppNamedRoutes.yardAppLoadOutDetails,
          isAllowed: (context, route) =>
              context.userHasPermission(YardAppPermissions.viewLoadOuts),
          isManuallyNavigable: false,
          widgetBuilder:
              widgetBuilders[YardAppNamedRoutes.yardAppLoadOutDetails]!,
        ),
        EORoute(
          Icons.landslide,
          (context) => context.l10n.locations,
          section: YardAppConstants.yardAppSection,
          path: YardAppPaths.locationListPath,
          selectedIcon: Icons.landslide_outlined,
          name: YardAppNamedRoutes.yardAppLocationList,
          widgetBuilder:
              widgetBuilders[YardAppNamedRoutes.yardAppLocationList]!,
        ),
        EORoute(
          Icons.landslide,
          (context) => context.l10n.locationDetails,
          isManuallyNavigable: false,
          section: YardAppConstants.yardAppSection,
          path: YardAppPaths.locationDetailsPath,
          selectedIcon: Icons.landslide_outlined,
          name: YardAppNamedRoutes.yardAppLocationDetails,
          widgetBuilder:
              widgetBuilders[YardAppNamedRoutes.yardAppLocationDetails]!,
        ),
      ],
    ),
  ];

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(yardAppMenuItems);
    return registry;
  }
}
