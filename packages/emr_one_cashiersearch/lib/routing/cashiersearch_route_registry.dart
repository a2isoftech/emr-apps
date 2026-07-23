import 'package:emr_account_registration/signup.dart' as signup;
import 'package:emr_core_api/emr_core_api.dart' hide Ticket;
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart' as t;
import 'package:emr_one_cashiersearch/services/ticket_audit_service.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

EmrQueryLayoutController<Query$SearchEdgeTickets$searchTickets$nodes>?
_ticketsQueryLayoutController;
EmrQueryLayoutController<
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes
>?
_myTicketGalleryController;
AuditTicketScreenController? _auditTicketsController;
EmrQueryLayoutController<Ticket>? _retailTicketsController;

ITicketPaymentController? paymentControllerMain;

class CashiersearchRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    TicketConstants.kAdvances: (context, state) {
      const path =
          '${TicketConstants.accountsPayablePath}/'
          '${TicketConstants.kAdvancesPath}';
      if (state.fullpath != path) {
        return const SizedBox.shrink();
      }
      CashierSearchColors.initialize(context);
      return (kIsWeb ? AdvanceSearchWeb() : AdvancesSearchNative())
          .withMultiProvider(providers);
    },
    RoutingPathName.advancePaymentBasket: (context, state) =>
        (kIsWeb
                ? const AdvanceBasketDetailsWeb()
                : const AdvanceBasketDetailsNative())
            .withMultiProvider(providers),
    TicketConstants.kAdvanceFormPath: (context, state) => AdvanceForm(
      advancesId: state.params['id']!,
      tickets: state.extra as List<t.Ticket>?,
    ).withMultiProvider(providers),
    RoutingPathName.retailPayments: (context, state) {
      const path =
          '${TicketConstants.accountsPayablePath}/'
          '${TicketConstants.retailPaymentsPath}';
      if (state.fullpath != path) {
        return const SizedBox.shrink();
      }
      CashierSearchColors.initialize(context);
      if (_retailTicketsController == null) {
        final httpClient = _getHttpClient(context);
        final cashierService = CashierSearchService(httpClient: httpClient);

        final dataSource = CashierSearchScreenDataSource(
          ticketService: cashierService,
          userInfoService: Provider.of<UserInfoService>(context, listen: false),
        );
        final filterController = CashierSearchFiltersController(
          ticketService: cashierService,
          userInfoService: Provider.of<UserInfoService>(context, listen: false),
          searchSuggestionService: SearchSuggestionService(
            httpClient: httpClient,
          ),
        );

        _retailTicketsController = EmrQueryLayoutController<t.Ticket>(
          dataSource: dataSource,
          filterController: filterController,
        );
      }

      return (kIsWeb
              ? CashierSearchWeb(controller: _retailTicketsController!)
              : CashierSearchNative(controller: _retailTicketsController!))
          .withMultiProvider(providers);
    },
    RoutingPathName.paymentBasket: (context, state) =>
        (kIsWeb
                ? const TicketBasketDetailsWeb()
                : const TicketBasketDetailsNative())
            .withMultiProvider(providers),
    'Ticket_Gallery': (context, state) => const TicketGalleryScreen(images: []),
    RoutingPathName.ticketPayments: (context, state) =>
        (kIsWeb ? TicketPaymentsWeb() : TicketPaymentsNative())
            .withMultiProvider(providers),
    'upload-id-doc': (context, state) {
      final map = state.extra as Map<String, String>?;
      final accountCode = map?['accountCode']! ?? '';
      final navigation = map?['navigateTo'] ?? '';
      final contractId = map?['contractId'];
      final signUpStep = navigation.toEnum<signup.SignupStep>(
        signup.SignupStep.values,
        fallback: signup.SignupStep.contactInfo,
      );
      signup.CashierUiActions.isSignUpFlow =
          signUpStep == signup.SignupStep.contactInfo;
      signup.CashierUiActions.contractId = contractId;
      return signup.Accountloadingservice.load(
        accountCode,
        context,
        runContext: signup.RunContext.cashier,
        signupStep: signUpStep,
      ).withMultiProvider(providers);
    },
    'edge-ticketGallery': (context, state) {
      final httpClient = _getHttpClient(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final ticketsService = EdgeTicketsService(
        httpClient: httpClient,
        contentUrl: config.endpoint('contentUrl'),
      );
      final galleryId = 'EdgeTicketGalleries/${state.params['id']!}';

      return EdgeTicketGalleryScreen(
        ticketsService: ticketsService,
        galleryId: galleryId,
      );
    },
    'myTicketGalleries': (context, state) {
      final httpClient = _getHttpClient(context);
      final ticketGalleryService = TicketGalleryService(httpClient: httpClient);
      final extra = state.extra as Map?;
      final resetState = extra?['resetState'] == true;
      if (_myTicketGalleryController == null || resetState) {
        extra?.remove('resetState');
        final ticketGalleryDatasource = MyTicketGalleriesDataSource(
          ticketGalleryService: ticketGalleryService,
        );
        _myTicketGalleryController =
            EmrQueryLayoutController<
              Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes
            >(dataSource: ticketGalleryDatasource);
      }
      return MyTicketGalleriesScreen(
        queryLayoutController: _myTicketGalleryController!,
      );
    },
    'tickets': (context, state) {
      final httpClient = _getHttpClient(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final ticketsService = EdgeTicketsService(
        httpClient: httpClient,
        contentUrl: config.endpoint('contentUrl'),
      );
      // Create a new instance of the layout controller
      //if it doesn't exist.
      // This is so the ticket screen maintains the results
      // when navigating
      // to ticket details and then back to the results.
      if (_ticketsQueryLayoutController == null) {
        final ticketsDataSource = EdgeTicketsDataSource(
          ticketsService: ticketsService,
        );

        final userInfoService = context.read<UserInfoService>();

        final ticketsFilterController = EdgeTicketsFilterController(
          userInfoService: userInfoService,
          edgeTicketService: ticketsService,
        );

        _ticketsQueryLayoutController =
            EmrQueryLayoutController<
              Query$SearchEdgeTickets$searchTickets$nodes
            >(
              dataSource: ticketsDataSource,
              filterController: ticketsFilterController,
            );
      }

      final edgeScreenController = EdgeTicketScreenController(
        ticketsService: ticketsService,
      );

      return EdgeTicketsScreen(
        queryLayoutController: _ticketsQueryLayoutController!,
        controller: edgeScreenController,
      );
    },
    'edgeTicketCommercialSearch': (context, state) {
      final httpClient = _getHttpClient(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final ticketsService = EdgeTicketsService(
        httpClient: httpClient,
        contentUrl: config.endpoint('contentUrl'),
      );
      // Create a new instance of the layout controller
      //if it doesn't exist.
      // This is so the ticket screen maintains the results
      // when navigating
      // to ticket details and then back to the results.
      if (_ticketsQueryLayoutController == null) {
        final ticketsDataSource = EdgeTicketsDataSource(
          ticketsService: ticketsService,
        );

        final userInfoService = context.read<UserInfoService>();

        final ticketsFilterController = EdgeTicketsFilterController(
          userInfoService: userInfoService,
          edgeTicketService: ticketsService,
        );

        _ticketsQueryLayoutController =
            EmrQueryLayoutController<
              Query$SearchEdgeTickets$searchTickets$nodes
            >(
              dataSource: ticketsDataSource,
              filterController: ticketsFilterController,
            );
      }

      final edgeScreenController = EdgeTicketScreenController(
        ticketsService: ticketsService,
      );

      return EdgeTicketsScreen(
        queryLayoutController: _ticketsQueryLayoutController!,
        controller: edgeScreenController,
      ).withMultiProvider(providers);
    },
    TicketConstants.kAuditTickets: (context, state) {
      if (_auditTicketsController == null) {
        final httpClient = _getHttpClient(context);
        final auditService = TicketAuditService(httpClient: httpClient);
        final dataSource = AuditTicketDataSource(ticketService: auditService);
        final filterController = AuditTicketFilterController(
          userInfoService: Provider.of<UserInfoService>(context, listen: false),
        );
        _auditTicketsController = AuditTicketScreenController(
          dataSource: dataSource,
          ticketAuditService: auditService,
          filterController: filterController,
        );
      }

      return (kIsWeb
              ? AuditTicketWeb(controller: _auditTicketsController!)
              : AuditTicketNative(controller: _auditTicketsController!))
          .withMultiProvider(providers);
    },
    TicketConstants.kSyncTicketTasks: (context, state) => SyncTicketTasksSearch(
      userInfoService: Provider.of<UserInfoService>(context),
      preferences: SyncTicketTasksPreferences(),
    ).withMultiProvider(providers),
    TicketConstants.kLockedTickets: (context, state) {
      final httpClient = _getHttpClient(context);
      final config = Provider.of<AppConfig>(context, listen: false);
      final ticketsService = EdgeTicketsService(
        httpClient: httpClient,
        contentUrl: config.endpoint('contentUrl'),
      );
      final userInfoService = context.read<UserInfoService>();

      return LockedTicketsSearch(
        edgeTicketsService: ticketsService,
        userInfoService: userInfoService,
        preferences: LockedTicketsPreferences(),
      ).withMultiProvider(providers);
    },
    RoutingPathName.consignmentNote: (context, state) {
      return ConsignmentNoteCreateOrScan(
        ticketId:
            'tickets/${state.params['yard']!}/${state.params['ticketNo']!}',
      ).withMultiProvider(providers);
    },
    RoutingPathName.createConsignmentNote: (context, state) {
      return ConsignmentNoteCreateNew(
        ticketId:
            'tickets/${state.params['yard']!}/${state.params['ticketNo']!}',
      ).withMultiProvider(providers);
    },
    RoutingPathName.signature: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return SignatureScreen(
        appConfig: config,
        signatureUploadPath:
            '${state.params['ticketNo']!}/${state.params['signatureId']!}',
        yardCode: '${state.params['yardCode']}',
      ).withMultiProvider(providers);
    },
  };

  static List<EORoute> cashiersearchMenuItems = [
    EORoute(
      /// This is your module's top level route
      Icons.search_sharp,
      (context) => context.l10n.accountsPayable,
      path: TicketConstants.accountsPayablePath,
      isAllowed: (context, route) =>
          context.userHasPermission(PermissionConstants.viewAccountsPayable),
      selectedIcon: Icons.logo_dev,
      name: 'Accounts Payable',
      widgetBuilder: (context, state) =>
          GenericRouteScreen.fromPathPrefix(state.path!),
      children: [
        EORoute(
          Icons.payment_sharp,
          (context) => context.l10n.advanceMaintenance,
          path: TicketConstants.kAdvancesPath,
          isAllowed: (context, route) =>
              context.userHasPermission(PermissionConstants.viewAdvances),
          name: TicketConstants.kAdvances,
          widgetBuilder: widgetBuilders[TicketConstants.kAdvances]!,
          children: [
            EORoute(
              Icons.shopping_basket,
              (context) => context.l10n.paymentBasket,
              path: 'advancePaymentBasket',
              name: RoutingPathName.advancePaymentBasket,
              widgetBuilder:
                  widgetBuilders[RoutingPathName.advancePaymentBasket]!,
            ),
            EORoute(
              Icons.handshake,
              (context) => context.l10n.advance,
              path: ':id',
              name: TicketConstants.kAdvanceFormPath,
              widgetBuilder: widgetBuilders[TicketConstants.kAdvanceFormPath]!,
            ),
          ],
        ),
        EORoute(
          Icons.payments_outlined,
          (context) => context.l10n.retailPayments,
          path: '/retailPayments',
          section: TicketConstants.accountsPayablePath,
          name: RoutingPathName.retailPayments,
          isAllowed: (context, route) => context.userHasPermission(
            PermissionConstants.viewAccountsRetailPayment,
          ),
          widgetBuilder: widgetBuilders[RoutingPathName.retailPayments]!,
          children: [
            EORoute(
              Icons.shopping_basket,
              (context) => context.l10n.paymentBasket,
              path: 'paymentBasket',
              name: RoutingPathName.paymentBasket,
              widgetBuilder: widgetBuilders[RoutingPathName.paymentBasket]!,
            ),
            EORoute(
              Icons.shopping_basket,
              (context) => context.l10n.ticketGallery,
              path: 'ticketgallery',
              name: 'Ticket_Gallery',
              widgetBuilder: widgetBuilders['Ticket_Gallery']!,
            ),
            EORoute(
              Icons.search,
              (context) => context.l10n.ticketPayments,
              path: 'ticketpayments',
              name: RoutingPathName.ticketPayments,
              widgetBuilder: widgetBuilders[RoutingPathName.ticketPayments]!,
            ),
            EORoute(
              Icons.email,
              (context) => 'Upload ID Document',
              path: 'upload-id-doc',
              name: 'upload-id-doc',
              widgetBuilder: widgetBuilders['upload-id-doc']!,
            ),
          ],
        ),
        if (kIsWeb)
          EORoute(
            Icons.abc,
            (context) => context.l10n.ticketsGallery,
            section: TicketConstants.accountsPayablePath,
            path: TicketConstants.edgeTicketGalleryPath,
            selectedIcon: Icons.abc,
            name: 'edge-ticketGallery',
            isAllowed: (_, __) => false,
            widgetBuilder: widgetBuilders['edge-ticketGallery']!,
          ),
        if (kIsWeb)
          EORoute(
            Icons.abc,
            (context) => context.l10n.myTicketsGallery,
            section: TicketConstants.accountsPayablePath,
            path: TicketConstants.myTicketGalleriesPath,
            selectedIcon: Icons.abc,
            name: 'myTicketGalleries',
            isAllowed: (_, __) => false,
            widgetBuilder: widgetBuilders['myTicketGalleries']!,
          ),
        if (kIsWeb)
          EORoute(
            Icons.local_activity_outlined,
            (context) => context.l10n.tickets,
            section: TicketConstants.accountsPayablePath,
            path: TicketConstants.edgeTicketAccountsSearchPath,
            selectedIcon: Icons.radar,
            isAllowed: (context, route) => context.userHasPermission(
              PermissionConstants.viewAccountsTicketsSearch,
            ),
            name: 'tickets',
            widgetBuilder: widgetBuilders['tickets']!,
          ),
        EORoute(
          Icons.receipt_long,
          (context) => context.l10n.invoices,
          path: TicketConstants.invoicesPath,
          isAllowed: (context, route) =>
              context.userHasPermission(PermissionConstants.viewInvoices),
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.invoices,
          widgetBuilder: (context, state) => Container(),
          children: [
            EORoute(
              Icons.receipt_long,
              (context) => context.l10n.selfBill,
              path: TicketConstants.selfBillPath,
              isAllowed: (context, route) =>
                  context.userHasPermission(PermissionConstants.viewSelfBill),
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.selfBill,
              widgetBuilder: (context, state) => Container(),
            ),
            EORoute(
              Icons.receipt_long,
              (context) => context.l10n.registerInvoice,
              path: TicketConstants.invoicesPath,
              isAllowed: (context, route) => context.userHasPermission(
                PermissionConstants.registerInvoices,
              ),
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.registerInvoice,
              widgetBuilder: (context, state) => Container(),
            ),
          ],
        ),
      ],
    ),
    EORoute(
      Icons.search_sharp,
      (context) => context.l10n.commercialSalesAdmin,
      section: TicketConstants.commercialAdminSection,
      path: TicketConstants.commercialAdminPath,
      isAllowed: (context, route) => context.userHasPermission(
        PermissionConstants.viewCommercialSalesAdmin,
      ),
      selectedIcon: Icons.logo_dev,
      name: 'Commercial Sales Admin',
      widgetBuilder: (context, state) =>
          GenericRouteScreen.fromPathPrefix(state.path!),
      children: [
        if (kIsWeb)
          EORoute(
            Icons.local_activity_outlined,
            (context) => 'edgeTicketCommercialSearch',
            section: TicketConstants.commercialAdminSection,
            path: TicketConstants.edgeTicketCommercialSearchPath,
            selectedIcon: Icons.radar,
            isAllowed: (context, route) => context.userHasPermission(
              PermissionConstants.viewCommercialSATicketsSearch,
            ),
            name: 'edgeTicketCommercialSearch',
            widgetBuilder: widgetBuilders['edgeTicketCommercialSearch']!,
          ),
      ],
    ),
    EORoute(
      Icons.search_sharp,
      (context) => context.l10n.ticketSystemAdmin,
      section: TicketConstants.systemAdminSection,
      path: TicketConstants.systemAdminPath,
      isAllowed: (context, route) =>
          context.userHasPermission(PermissionConstants.viewSystemAdmin),
      selectedIcon: Icons.logo_dev,
      name: 'System Admin',
      widgetBuilder: (context, state) =>
          GenericRouteScreen.fromPathPrefix(state.path!),
      children: [
        EORoute(
          Icons.build,
          (context) => context.l10n.diagnostics,
          section: TicketConstants.systemAdminSection,
          path: TicketConstants.kDiagnosticsPath,
          selectedIcon: Icons.logo_dev,
          name: TicketConstants.kDiagnostics,
          widgetBuilder: (context, state) =>
              GenericRouteScreen.fromPathPrefix(state.fullpath!),
          children: [
            EORoute(
              Icons.sync,
              (context) => context.l10n.syncTicketTasks,
              path: TicketConstants.kSyncTicketTasks,
              name: TicketConstants.kSyncTicketTasks,
              widgetBuilder: widgetBuilders[TicketConstants.kSyncTicketTasks]!,
              isAllowed: (context, route) =>
                  context.userHasPermission(PermissionConstants.syncTicketTask),
            ),
            EORoute(
              Icons.lock,
              (context) => context.l10n.lockedTickets,
              path: TicketConstants.kLockedTickets,
              name: TicketConstants.kLockedTickets,
              widgetBuilder: widgetBuilders[TicketConstants.kLockedTickets]!,
              isAllowed: (context, route) =>
                  context.userHasPermission(PermissionConstants.lockedTicket),
            ),
            EORoute(
              Icons.lock,
              (context) => context.l10n.auditTickets,
              path: TicketConstants.kAuditTickets,
              name: TicketConstants.kAuditTickets,
              widgetBuilder: widgetBuilders[TicketConstants.kAuditTickets]!,
              isAllowed: (context, route) =>
                  context.userHasPermission(PermissionConstants.auditTicket),
            ),
          ],
        ),
      ],
    ),
    EORoute(
      Icons.abc,
      (context) => context.l10n.consignmentNote,
      path: TicketConstants.consignmentNotePath,
      name: RoutingPathName.consignmentNote,
      providers: providers,
      isManuallyNavigable: false,
      children: [
        EORoute(
          Icons.abc,
          (context) => context.l10n.createConsignmentNote,
          path: TicketConstants.createConsignmentNotePath,
          name: RoutingPathName.createConsignmentNote,
          providers: providers,
          isManuallyNavigable: false,
          widgetBuilder: widgetBuilders[RoutingPathName.createConsignmentNote]!,
        ),
      ],
      widgetBuilder: widgetBuilders[RoutingPathName.consignmentNote]!,
    ),
    EORoute(
      Icons.abc,
      (context) => context.l10n.signature,
      path: TicketConstants.consignmentSignaturePath,
      name: RoutingPathName.signature,
      providers: providers,
      isManuallyNavigable: false,
      widgetBuilder: widgetBuilders[RoutingPathName.signature]!,
    ),
  ];

  static List<SingleChildWidget> providers = [
    ...signup.Accountloadingservice.signupProviders(signup.RunContext.cashier),
    ChangeNotifierProvider<PaymentBasketController<t.Ticket>>.value(
      value: GlobalControllers.ticketBasketController,
    ),
    ChangeNotifierProvider<PaymentBasketController<Advance>>.value(
      value: GlobalControllers.advanceBasketController,
    ),
    Provider<OverlayContextMenuController>(
      create: (context) => OverlayContextMenuController(),
    ),
    Provider<SplitPaymentController>(
      create: (context) {
        return GlobalControllers.splitPaymentController;
      },
    ),
    Provider<AdvanceFlexiPayController>(
      create: (context) {
        return GlobalControllers.advanceFlexiPayController;
      },
    ),
    Provider<ITicketPaymentService>(
      create: (context) {
        final config = Provider.of<AppConfig>(context, listen: false);
        final httpClient = _getHttpClient(context);
        return TicketPaymentService(
          pdfPiPrintUrl: config.pdfPiPrintUrl,
          httpClient: httpClient,
        );
      },
    ),
    Provider<IRepriceTicketService>(
      create: (context) {
        final httpClient = _getHttpClient(context);
        return RepriceTicketService(httpClient: httpClient);
      },
    ),
    ListenableProvider<ITicketPaymentController>(
      create: (context) {
        if (paymentControllerMain == null) {
          final service = Provider.of<ITicketPaymentService>(
            context,
            listen: false,
          );
          final splitPaymentController = Provider.of<SplitPaymentController>(
            context,
            listen: false,
          );
          final advanceFlexiPayController =
              Provider.of<AdvanceFlexiPayController>(context, listen: false);
          paymentControllerMain = TicketPaymentController(
            service: service,
            splitPaymentController: splitPaymentController,
            advanceFlexiPayController: advanceFlexiPayController,
            includeEdgePaymentMethods: Provider.of<AppConfig>(context,
                listen: false)
                .includeEdgePaymentMethods,
          );
        }
        return paymentControllerMain!;
      },
    ),
    Provider<ICashierSearchService>(
      create: (context) {
        final httpClient = _getHttpClient(context);
        return CashierSearchService(httpClient: httpClient);
      },
    ),
    Provider<IAdvancesPaymentService>(
      create: (context) {
        final httpClient = _getHttpClient(context);
        return AdvancesPaymentService(httpClient: httpClient);
      },
    ),
    Provider<ISearchSuggestionService>(
      create: (context) {
        final httpClient = _getHttpClient(context);
        return SearchSuggestionService(httpClient: httpClient);
      },
    ),
    Provider<CashierSearchScreenDataSource>(
      create: (context) {
        final service = Provider.of<ICashierSearchService>(
          context,
          listen: false,
        );

        return CashierSearchScreenDataSource(
          ticketService: service,
          userInfoService: Provider.of<UserInfoService>(context, listen: false),
        );
      },
    ),
    Provider<AdvanceSearchDataSource>(
      create: (context) {
        final service = Provider.of<IAdvancesPaymentService>(
          context,
          listen: false,
        );

        return AdvanceSearchDataSource(
          advancesService: service,
          userInfoService: Provider.of<UserInfoService>(context, listen: false),
        );
      },
    ),
    Provider<PaymentRecordsDataSource>(
      create: (context) {
        final service = Provider.of<ITicketPaymentService>(
          context,
          listen: false,
        );

        return PaymentRecordsDataSource(paymentService: service);
      },
    ),
    Provider<AdvanceFiltersController>(
      create: (context) {
        final service = Provider.of<IAdvancesPaymentService>(
          context,
          listen: false,
        );
        final searchSuggestionService = Provider.of<ISearchSuggestionService>(
          context,
          listen: false,
        );
        final userInfoService = context.read<UserInfoService>();

        return AdvanceFiltersController(
          advancePaymentService: service,
          searchSuggestionService: searchSuggestionService,
          userInfoService: userInfoService,
        );
      },
    ),
    Provider<EmrQueryLayoutController<Advance>>(
      create: (context) {
        final dataSource = Provider.of<AdvanceSearchDataSource>(
          context,
          listen: false,
        );
        final filterController = Provider.of<AdvanceFiltersController>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<Advance>(
          dataSource: dataSource,
          filterController: filterController,
        );
      },
    ),
    Provider<EmrQueryLayoutController<PaymentRecord>>(
      create: (context) {
        final dataSource = Provider.of<PaymentRecordsDataSource>(
          context,
          listen: false,
        );

        return EmrQueryLayoutController<PaymentRecord>(dataSource: dataSource);
      },
    ),
    Provider<IConsignmentNoteService>(
      create: (context) {
        final httpClient = _getHttpClient(context);
        return ConsignmentNoteService(httpClient: httpClient);
      },
    ),
    Provider<ConsignmentNoteController>(
      create: (context) {
        final service = Provider.of<IConsignmentNoteService>(
          context,
          listen: false,
        );
        return ConsignmentNoteController(service: service);
      },
    ),
    Provider<MediaService>(
      create: (context) {
        final httpClient = _getHttpClient(context);
        return MediaService(client: httpClient);
      },
    ),
  ];

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(cashiersearchMenuItems);
    return registry;
  }

  static BaseClient _getHttpClient(BuildContext context) {
    return Provider.of<BaseClient>(context, listen: false);
  }
}
