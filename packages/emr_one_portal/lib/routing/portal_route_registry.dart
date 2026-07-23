import 'package:emr_account_registration/signup.dart' as signup;
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/screens/home/supplier_portal_controller.dart';
import 'package:emr_one_portal/shared/services/supplier_portal_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

class PortalRouteRegistry {
  static signup.CustomerUserInfoService _getUserInfoService(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<UserInfoService>(context, listen: listen)
        as signup.CustomerUserInfoService;
  }

  static signup.AccountService getAccountService(BuildContext context) {
    final httpClient = Provider.of<BaseClient>(
      context,
      listen: false,
    );
    final appConfig = Provider.of<AppConfig>(
      context,
      listen: false,
    );
    final userInfoSvc = Provider.of<UserInfoService>(
      context,
      listen: false,
    ) as signup.CustomerUserInfoService;

    return signup.AccountService(
      runContext: signup.RunContext.portal,
      client: httpClient,
      userInfoService: userInfoSvc,
      appConfig: appConfig,
    );
  }

  static final _scanTicketControllerProviders = [
    ChangeNotifierProvider<ScanTicketController>(
      create: (context) {
        final appConfig = Provider.of<AppConfig>(
          context,
          listen: false,
        );
        final userInfoSvc = _getUserInfoService(
          context,
          listen: false,
        );
        final httpClient = Provider.of<BaseClient>(
          context,
          listen: false,
        );
        final ticketService = TicketService(
          httpClient: httpClient,
          appConfig: appConfig,
          userInfoSvc: userInfoSvc,
        );
        final accountService = AccountServicePortal(
          client: httpClient,
          userInfoService: userInfoSvc,
          appConfig: appConfig,
        );
        return ScanTicketController(
          ticketService: ticketService,
          customerUserInfoService: userInfoSvc,
          accountService: accountService,
          context: context,
        );
      },
    ),
  ];

  static List<EORoute> portalMenuItems = [
    EORoute(
      Icons.logo_dev_outlined,
      (_) => 'HOME',
      path: '/welcome',
      selectedIcon: Icons.logo_dev,
      name: NamedRoutes.customerPortalWelcome,
      providers: [
        Provider<HomePageController>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final accountService = AccountServicePortal(
              client: httpClient,
              userInfoService: userInfoSvc,
              appConfig: appConfig,
            );
            return HomePageController(
              accountService: accountService,
              customerUserInfoService: userInfoSvc,
            );
          },
        ),
        ChangeNotifierProvider<SupplierPortalController>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final supplierPortalService = SupplierPortalService(
              httpClient: httpClient,
              userInfoService: userInfoSvc,
              appConfig: appConfig,
            );
            return SupplierPortalController(
              supplierPortalService: supplierPortalService,
            );
          },
        ),
      ],
      widgetBuilder: (context, state) {
        return const PortalHomeScreen();
      },
      isManuallyNavigable: false,
      isAllowed: (context, __) => isPageAllowed(context, 'home'),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.receipt_long_outlined,
      (_) => 'Transactions',
      path: '/transactions',
      selectedIcon: Icons.receipt_long,
      name: PortalNamedRoutes.customerPortalTickets,
      providers: [
        Provider<AccountTicketsDataSource>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final fileDownloadService = FileDownloadService();
            return AccountTicketsDataSource(
              userInfoSvc: userInfoSvc,
              appConfig: appConfig,
              httpClient: httpClient,
              fileDownloadService: fileDownloadService,
            );
          },
        ),
        Provider<EmrQueryLayoutController<TicketModel>>(
          create: (context) {
            final dataSource =
                Provider.of<AccountTicketsDataSource>(context, listen: false);
            return EmrQueryLayoutController<TicketModel>(
              dataSource: dataSource,
            );
          },
        ),
      ],
      widgetBuilder: (context, state) {
        final userInfoSvc = _getUserInfoService(context);
        final fileDownloadService = FileDownloadService();
        return AccountTicketsPagedScreen(
          userInfoService: userInfoSvc,
          fileDownloadService: fileDownloadService,
        );
      },
      isAllowed: (context, __) => isPageAllowed(context, 'transactions'),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.receipt_long_outlined,
      (_) => 'Price Lists',
      path: '/pricelists',
      selectedIcon: Icons.receipt_long,
      providers: [
        Provider<PricelistSearchDataSource>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final accountService = AccountServicePortal(
              client: httpClient,
              userInfoService: userInfoSvc,
              appConfig: appConfig,
            );
            final portalService = PortalService(
              httpClient: httpClient,
              userInfoSvc: userInfoSvc,
              appConfig: appConfig,
            );
            final pricelistService = PricelistService(
              httpClient: httpClient,
              userInfoSvc: userInfoSvc,
              accountService: accountService,
              portalService: portalService,
              appConfig: appConfig,
            );
            return PricelistSearchDataSource(
              userInfoSvc: userInfoSvc,
              appConfig: appConfig,
              httpClient: httpClient,
              pricelistService: pricelistService,
            );
          },
        ),
        Provider<PricelistSearchFilterController>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final accountService = AccountServicePortal(
              client: httpClient,
              userInfoService: userInfoSvc,
              appConfig: appConfig,
            );
            final portalService = PortalService(
              httpClient: httpClient,
              userInfoSvc: userInfoSvc,
              appConfig: appConfig,
            );
            final pricelistService = PricelistService(
              httpClient: httpClient,
              userInfoSvc: userInfoSvc,
              accountService: accountService,
              portalService: portalService,
              appConfig: appConfig,
            );
            final dataSearchController = PricelistSearchDataController(
              pricelistService: pricelistService,
              accountService: accountService,
            );

            return PricelistSearchFilterController(
              dataController: dataSearchController,
            );
          },
        ),
        Provider<EmrQueryLayoutController<PriceListModel>>(
          create: (context) {
            final dataSource =
                Provider.of<PricelistSearchDataSource>(context, listen: false);
            final filterController =
                Provider.of<PricelistSearchFilterController>(
              context,
              listen: false,
            );
            return EmrQueryLayoutController<PriceListModel>(
              dataSource: dataSource,
              filterController: filterController,
            );
          },
        ),
      ],
      name: PortalNamedRoutes.customerPortalPriceLists,
      widgetBuilder: (context, state) {
        return const PricelistTabbedScreen();
      },
      isAllowed: (context, __) => isPageAllowed(context, 'pricelists'),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.account_circle_outlined,
      (context) => context.l10n.accountDetails,
      path: '/accountDetails',
      selectedIcon: Icons.account_circle,
      name: NamedRoutes.customerPortalAccountDetails,
      providers: [
        ChangeNotifierProvider<AccountDetailsController>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final accountService = AccountServicePortal(
              client: httpClient,
              userInfoService: userInfoSvc,
              appConfig: appConfig,
            );
            final accountChangeRequestService = AccountChangeRequestService(
              httpClient: httpClient,
              userInfoService: userInfoSvc,
              appConfig: appConfig,
            );
            return AccountDetailsController(
              accountService: accountService,
              accountChangeRequestService: accountChangeRequestService,
              userInfoService: userInfoSvc,
            );
          },
        ),
      ],
      widgetBuilder: (context, state) {
        return AccountDetailsScreen();
      },
      isAllowed: (context, __) => isPageAllowed(context, 'accountDetails'),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.contact_support_outlined,
      (_) => 'UPDATE CONTACT PREFERENCES',
      path: '/contact-prefs',
      selectedIcon: Icons.contact_support,
      name: NamedRoutes.preferences,
      providers: [
        ChangeNotifierProvider<ContactPreferencesController>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final portalService = PortalService(
              httpClient: httpClient,
              userInfoSvc: userInfoSvc,
              appConfig: appConfig,
            );

            final accountService = AccountServicePortal(
              client: httpClient,
              userInfoService: userInfoSvc,
              appConfig: appConfig,
            );

            return ContactPreferencesController(
              accountServicePortal: accountService,
              accountService: getAccountService(context),
              portalUserInfoService: userInfoSvc,
              portalService: portalService,
            );
          },
        ),
      ],
      widgetBuilder: (context, state) {
        final userInfoSvc = _getUserInfoService(context);
        return ContactPreferncesScreen(
          userInfoService: userInfoSvc,
        );
      },
      isManuallyNavigable: false,
      eoPageBuilder: _defaultPageBuilder,
      isAllowed: (context, __) =>
          isPageAllowed(context, NamedRoutes.preferences),
    ),
    EORoute(
      Icons.contact_support_outlined,
      (_) => 'SCAN TICKET',
      path: '/scan-ticket',
      selectedIcon: Icons.contact_support,
      name: PortalNamedRoutes.customerPortalScanTicket,
      providers: _scanTicketControllerProviders,
      widgetBuilder: (context, state) {
        return const ScanTicketScreen();
      },
      allowAnonymous: true,
      isManuallyNavigable: false,
      isAllowed: (context, __) =>
          isPageAllowed(context, PortalNamedRoutes.customerPortalScanTicket),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.contact_support_outlined,
      (_) => 'SCAN TICKET LINKED',
      path: '/ticket/display/:ticketNo/:depot/:direction',
      selectedIcon: Icons.contact_support,
      name: PortalNamedRoutes.customerPortalScanTicketLink,
      providers: _scanTicketControllerProviders,
      widgetBuilder: (context, state) {
        final ticketNo = state.params['ticketNo'];
        final depot = state.params['depot'];
        return ScanTicketScreen(
          ticketNo: ticketNo,
          depot: depot,
        );
      },
      allowAnonymous: true,
      isManuallyNavigable: false,
      isAllowed: (context, __) => isPageAllowed(
        context,
        PortalNamedRoutes.customerPortalScanTicketLink,
      ),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.description_outlined,
      (_) => 'Invoice Entry',
      path: '/invoiceentry',
      selectedIcon: Icons.description,
      name: 'InvoiceEntry',
      providers: [
        ChangeNotifierProvider<InvoiceEntryController>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(
              context,
              listen: false,
            );
            final appConfig = Provider.of<AppConfig>(
              context,
              listen: false,
            );
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final ticketService = TicketService(
              httpClient: httpClient,
              appConfig: appConfig,
              userInfoSvc: userInfoSvc,
            );
            return InvoiceEntryController(
              mediaService: signup.MediaService(
                client: httpClient,
              ),
              ticketService: ticketService,
            );
          },
        ),
      ],
      widgetBuilder: (context, state) {
        return InvoiceEntryScreen(
          userInfoService: _getUserInfoService(
            context,
            listen: false,
          ),
        );
      },
      isAllowed: (context, __) => isPageAllowed(context, 'invoiceentry'),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.receipt_long_outlined,
      (_) => 'Credit Note Entry',
      path: '/creditnoteentry',
      selectedIcon: Icons.description,
      name: 'CreditNoteEntry',
      providers: [
        ChangeNotifierProvider<CreditNoteEntryController>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(
              context,
              listen: false,
            );
            final appConfig = Provider.of<AppConfig>(
              context,
              listen: false,
            );
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final creditNoteService = CreditNoteService(
              httpClient: httpClient,
              appConfig: appConfig,
              userInfoSvc: userInfoSvc,
            );
            final accountService = AccountServicePortal(
              client: httpClient,
              userInfoService: userInfoSvc,
              appConfig: appConfig,
            );
            return CreditNoteEntryController(
              creditNoteService: creditNoteService,
              mediaService: signup.MediaService(
                client: httpClient,
              ),
              accountService: accountService,
            );
          },
        ),
      ],
      widgetBuilder: (context, state) {
        return CreditNoteEntryScreen(
          userInfoService: _getUserInfoService(
            context,
            listen: false,
          ),
        );
      },
      isAllowed: (context, __) => isPageAllowed(context, 'creditnoteentry'),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.receipt_long_outlined,
      (_) => 'Statement',
      path: '/statement',
      selectedIcon: Icons.receipt_long,
      providers: [
        Provider<StatementDataSource>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final fileDownloadService = FileDownloadService();
            return StatementDataSource(
              userInfoSvc: userInfoSvc,
              appConfig: appConfig,
              httpClient: httpClient,
              fileDownloadService: fileDownloadService,
            );
          },
        ),
        Provider<StatementSearchFilterController>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final portalService = PortalService(
              httpClient: httpClient,
              userInfoSvc: userInfoSvc,
              appConfig: appConfig,
            );
            final dataSearchController =
                StatementSearchDataController(portalService: portalService);

            return StatementSearchFilterController(
              dataController: dataSearchController,
            );
          },
        ),
        Provider<EmrQueryLayoutController<StatementModel>>(
          create: (context) {
            final dataSource =
                Provider.of<StatementDataSource>(context, listen: false);
            final filterController =
                Provider.of<StatementSearchFilterController>(
              context,
              listen: false,
            );
            return EmrQueryLayoutController<StatementModel>(
              dataSource: dataSource,
              filterController: filterController,
            );
          },
        ),
      ],
      name: 'Statement',
      widgetBuilder: (context, state) {
        return StatementPagedScreen(
          userInfoSvc: _getUserInfoService(
            context,
            listen: false,
          ),
        );
      },
      isAllowed: (context, __) => isPageAllowed(context, 'statement'),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.send_outlined,
      (_) => 'Remittances',
      path: '/remittances',
      selectedIcon: Icons.send,
      providers: [
        Provider<RemittanceSearchDataSource>(
          create: (context) {
            final httpClient = Provider.of<BaseClient>(context, listen: false);
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final userInfoSvc = _getUserInfoService(
              context,
              listen: false,
            );
            final fileDownloadService = FileDownloadService();
            return RemittanceSearchDataSource(
              userInfoSvc: userInfoSvc,
              appConfig: appConfig,
              httpClient: httpClient,
              fileDownloadService: fileDownloadService,
            );
          },
        ),
        Provider<EmrQueryLayoutController<SupplierRemittanceModel>>(
          create: (context) {
            final dataSource =
                Provider.of<RemittanceSearchDataSource>(context, listen: false);
            return EmrQueryLayoutController<SupplierRemittanceModel>(
              dataSource: dataSource,
            );
          },
        ),
      ],
      name: PortalNamedRoutes.customerPortalRemittances,
      widgetBuilder: (context, state) {
        return const RemittancesScreen();
      },
      isAllowed: (context, __) => isPageAllowed(context, 'remittances'),
      eoPageBuilder: _defaultPageBuilder,
    ),
    EORoute(
      Icons.contact_support_outlined,
      (context) => context.l10n.contactUs,
      path: '/contactus',
      selectedIcon: Icons.contact_support,
      name: NamedRoutes.customerPortalContactUs,
      widgetBuilder: (context, state) {
        final httpClient = Provider.of<BaseClient>(context);
        final userInfoSvc = _getUserInfoService(context);
        final appConfig = Provider.of<AppConfig>(context);

        final accountService = AccountServicePortal(
          client: httpClient,
          userInfoService: userInfoSvc,
          appConfig: appConfig,
        );

        return ContactUsScreen(
          accountService: accountService,
          userInfoService: userInfoSvc,
        );
      },
      isAllowed: (context, __) => isPageAllowed(context, 'contactus'),
      eoPageBuilder: _defaultPageBuilder,
    ),
  ];

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(portalMenuItems);
    return registry;
  }

  static bool isPageAllowed(BuildContext context, String pageName) {
    final userInfoSvc = _getUserInfoService(context, listen: false);    

    if (userInfoSvc.userInfo.qrLogin) {    
      return false;
    }

    String? accountType;
    if (userInfoSvc.userInfo.isBusiness) {
      accountType = 'business';
    } else if (userInfoSvc.userInfo.isSupplier) {
      accountType = 'supplier';
    } else if (userInfoSvc.userInfo.isRetail) {
      accountType = 'retail';
    }

    if (accountType == null) return false;

    return PortalRemoteConfigService.permissions[accountType]
            ?.contains(pageName) ??
        false;
  }

  static Page<void> _defaultPageBuilder(
    BuildContext context,
    GoRouterState state,
    WrappedGoRouterWidgetBuilder wb,
    List<SingleChildWidget> providers,
  ) {
    // We can't listen for changes on AppConfig here as it could cause app
    // modules to to rebuild and might lead to data loss.
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return CustomTransitionPage<void>(
      key: state.pageKey,
      name: state.name,
      arguments: state.pathParameters,
      transitionDuration: Duration.zero,
      child: PortalSharedScaffold(
        body: wb(
          context,
          EoRouterState.fromGoRouterState(state),
        ),
        bannerMessage: appConfig.bannerMessage,
      ).withMultiProvider(providers),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }
}
