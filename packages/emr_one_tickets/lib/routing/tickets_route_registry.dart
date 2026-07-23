import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/controllers/beam_controller.dart';
import 'package:emr_one_tickets/controllers/tickets_screen_controller.dart';
import 'package:emr_one_tickets/screens/beams/beam_details.dart';
import 'package:emr_one_tickets/screens/payment_approval/payment_approval_screen.dart';
import 'package:emr_one_tickets/screens/screens.dart';
import 'package:emr_one_tickets/screens/tickets_data_source.dart';
import 'package:emr_one_tickets/screens/tickets_filter_controller.dart';
import 'package:emr_one_tickets/services/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

EmrQueryLayoutController<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>?
    _ticketsQueryLayoutController;

class TicketsRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    'Tickets': (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final ticketsService = TicketsService(
        httpClient: httpClient,
        contentUrl: config.endpoint('contentUrl'),
      );

      final ticketsScreenController = TicketsScreenController(
        ticketsService: ticketsService,
      );

      // Create a new instance of the layout controller if it doesn't exist.
      // This is so the ticket screen maintains the results when navigating
      // to ticket details and then back to the results.
      if (_ticketsQueryLayoutController == null) {
        final ticketsDataSource =
            TicketsDataSource(ticketsService: ticketsService);

        final userInfoService = context.read<UserInfoService>();

        final ticketsFilterController =
            TicketsFilterController(userInfoService: userInfoService);

        _ticketsQueryLayoutController = EmrQueryLayoutController<
            Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>(
          dataSource: ticketsDataSource,
          filterController: ticketsFilterController,
        );
      }

      return TicketsScreen(
        controller: ticketsScreenController,
        queryLayoutController: _ticketsQueryLayoutController!,
      );
    },
    NamedRoutes.ticketDetails: (context, state) => TicketDetailsScreen(
          ticketId: 'tickets/'
              '${state.params['yardCode']!}/'
              '${state.params['ticketNumber']!}',
        ),
    NamedRoutes.ticketGallery: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final ticketsService = TicketsService(
        httpClient: httpClient,
        contentUrl: config.endpoint('contentUrl'),
      );
      final galleryId = 'TicketGalleries/${state.params['id']!}';

      return TicketGalleryScreen(
        ticketsService: ticketsService,
        galleryId: galleryId,
      );
    },
    NamedRoutes.paymentApproval: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final ticketsService = TicketsService(
        httpClient: httpClient,
        contentUrl: config.endpoint('contentUrl'),
      );
      final referenceDataService = ReferenceDataService(
        httpClient: Provider.of<CoreApiClient>(context),
      );

      return PaymentApprovalScreen(
        ticketsService: ticketsService,
        referenceDataService: referenceDataService,
        approvalId:
            'PaymentApprovals/${state.params['yard']!}/${state.params['id']!}',
      );
    },
  };

  static List<EORoute> ticketsMenuItems = [
    EORoute(
      /// This is your module's top level route
      Icons.local_activity_outlined,
      (_) => kTicketsSection,
      section: kTicketsSection,
      path: '/tickets',
      selectedIcon: Icons.local_activity,
      name: 'Tickets',
      widgetBuilder: widgetBuilders['Tickets']!,
      isAllowed: (context, route) => Provider.of<UserInfoService>(context)
          .userInfo
          .hasPermission('viewTicketSearch'),
      children: [
        EORoute(
          Icons.foundation_outlined,
          (_) => kTicketsDetailsSection,
          section: kTicketsDetailsSection,
          path: ':id',
          name: NamedRoutes.ticketDetails,
          widgetBuilder: widgetBuilders[NamedRoutes.ticketDetails]!,
        ),
      ],
    ),
    EORoute(
      Icons.foundation_outlined,
      (_) => kBeamsSection,
      section: kBeamsSection,
      path: '/beams',
      selectedIcon: Icons.foundation,
      name: 'Beams',
      isAllowed: (_, __) => false,
      widgetBuilder: (context, state) => GenericRouteScreen((routes) {
        return routes.where((element) => element.path == '/beams').toList();
      }),
      children: [
        EORoute(
          Icons.foundation_outlined,
          (_) => 'Create Beam',
          section: kBeamsSection,
          path: 'createbeam',
          selectedIcon: Icons.foundation,
          name: 'Create Beam',
          isAllowed: (_, __) => false,
          widgetBuilder: (context, state) {
            final httpClient = Provider.of<BaseClient>(context);
            final config = Provider.of<AppConfig>(context, listen: false);
            final beamsService = BeamsService(
              httpClient: httpClient,
              apiUrl: config.coreApiUrl,
            );

            final beamController = BeamController(
              beamsService: beamsService,
            );

            return BeamDetails(
              beamController: beamController,
            );
          },
        ),
      ],
    ),
    EORoute(
      Icons.abc,
      (_) => 'Tickets Gallery',
      section: kTicketsSection,
      path: '/tickets/gallery/:id',
      selectedIcon: Icons.abc,
      name: NamedRoutes.ticketGallery,
      isAllowed: (_, __) => false,
      widgetBuilder: widgetBuilders[NamedRoutes.ticketGallery]!,
    ),
    EORoute(
      Icons.approval,
      (_) => 'Payment Approval',
      section: kTicketsSection,
      path: '/workflows/paymentapproval/PaymentApprovals/:yard/:id',
      selectedIcon: Icons.approval,
      name: NamedRoutes.paymentApproval,
      isAllowed: (_, __) => true,
      isManuallyNavigable: false,
      widgetBuilder: widgetBuilders[NamedRoutes.paymentApproval]!,
    ),
  ];

  static String kTicketsSection = 'Tickets';

  static String kTicketsDetailsSection = 'TicketDetails';

  static String kBeamsSection = 'Beams';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(ticketsMenuItems);
    return registry;
  }
}
