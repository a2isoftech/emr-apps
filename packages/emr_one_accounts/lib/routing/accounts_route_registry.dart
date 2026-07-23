import 'package:emr_account_registration/signup.dart' as signup;
import 'package:emr_core_api/emr_core_api.dart'
    hide AccountService, AzureFormRecogniserService;
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_team_access/manage_team_access.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AccountRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    AccountNamedRoutes.accounts: (context, state) =>
        GenericRouteScreen.fromPathPrefix(kAccountsPathPrefix),
    AccountNamedRoutes.accountManagement: (context, state) {
      return (const AccountsSearchScreen()).withMultiProvider(providers);
    },
    AccountNamedRoutes.detail: (context, state) {
      final code = state.params['accountId'];
      return AccountDetailsScreen(
        encodedAccountId: code,
      ).withMultiProvider(providers);
    },
    AccountNamedRoutes.scanQrCode: (context, state) {
      final appConfig = Provider.of<AppConfig>(context, listen: false);
      final httpClient = Provider.of<BaseClient>(context, listen: false);
      return signup.DocumentScanner(
        appConfig: appConfig,
        mediaService: signup.MediaService(client: httpClient),
        runContext: signup.RunContext.cashier,
      ).withMultiProvider(providers);
    },
    AccountNamedRoutes.replayRetailRegistration: (context, state) {
      final appConfig = Provider.of<AppConfig>(context, listen: false);

      return signup.ReStart(
        journeyController: signup.Accountloadingservice.getJourneyController(
          context,
          signup.RunContext.cashier,
        ),
        runContext: signup.RunContext.cashier,
        emailVerificationCallbackUrl: appConfig.emailVerificationCallbackUrl,
      ).withMultiProvider(providers);
    },
    AccountNamedRoutes.attachDocs: (context, state) {
      final appConfig = Provider.of<AppConfig>(context, listen: false);

      return signup.ReStart(
        journeyController: signup.Accountloadingservice.getJourneyController(
          context,
          signup.RunContext.cashier,
        ),
        runContext: signup.RunContext.cashier,
        emailVerificationCallbackUrl: appConfig.emailVerificationCallbackUrl,
        currentStep: signup.SignupStep.almostDone,
      ).withMultiProvider(providers);
    },
    AccountNamedRoutes.generateQrCode: (context, state) {
      return signup.QrCodeGenerator(
        journeyController: signup.Accountloadingservice.getJourneyController(
          context,
          signup.RunContext.cashier,
        ),
        runContext: signup.RunContext.cashier,
      ).withMultiProvider(providers);
    },
    signup.AccountRegistrationNamedRoutes.customerPortalResetRegister:
        (context, state) {
          return const signup.Reset().withMultiProvider(providers);
        },
    signup
        .AccountRegistrationNamedRoutes
        .customerPortalRegister: (context, state) {
      final appConfig = Provider.of<AppConfig>(context, listen: false);

      return signup.Start(
        journeyController: signup.Accountloadingservice.getJourneyController(
          context,
          signup.RunContext.emrApps,
        ),
        runContext: signup.RunContext.emrApps,
        emailVerificationCallbackUrl: appConfig.emailVerificationCallbackUrl,
      ).withMultiProvider(providers);
    },
  };

  static const String kAccountsPathPrefix = '/accounts';

  static const String kAccountsSection = 'Accounts Management';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes([
      EORoute(
        Icons.save_as,
        (context) => 'Accounts',
        section: kAccountsSection,
        path: kAccountsPathPrefix,
        name: AccountNamedRoutes.accounts,
        widgetBuilder: widgetBuilders[AccountNamedRoutes.accounts]!,
        isAllowed: _isAllowed,
        children: [
          EORoute(
            Icons.account_box,
            (context) => 'Account Management',
            path: 'account-management',
            name: AccountNamedRoutes.accountManagement,
            widgetBuilder:
                widgetBuilders[AccountNamedRoutes.accountManagement]!,
            isAllowed: _isAllowed,
            children: [
              EORoute(
                Icons.account_box,
                (context) => 'Details',
                path: ':accountId',
                name: AccountNamedRoutes.detail,
                widgetBuilder: widgetBuilders[AccountNamedRoutes.detail]!,
              ),
            ],
          ),
          EORoute(
            Icons.email,
            (context) => 'Reset',
            path: '/reset-registration',
            name: signup
                .AccountRegistrationNamedRoutes
                .customerPortalResetRegister,
            widgetBuilder:
                widgetBuilders[signup
                    .AccountRegistrationNamedRoutes
                    .customerPortalResetRegister]!,
            isManuallyNavigable: false,
          ),
          EORoute(
            Icons.email,
            (context) => 'Register',
            path: '/register-retail',
            name: signup.AccountRegistrationNamedRoutes.customerPortalRegister,
            widgetBuilder:
                widgetBuilders[signup
                    .AccountRegistrationNamedRoutes
                    .customerPortalRegister]!,
          ),
          EORoute(
            Icons.email,
            (context) => 'Replay Registration',
            path: '/replay-retail-registration',
            name: AccountNamedRoutes.replayRetailRegistration,
            widgetBuilder:
                widgetBuilders[AccountNamedRoutes.replayRetailRegistration]!,
          ),
          EORoute(
            Icons.email,
            (context) => 'Attach Documents',
            path: '/attach-docs',
            name: AccountNamedRoutes.attachDocs,
            widgetBuilder: widgetBuilders[AccountNamedRoutes.attachDocs]!,
          ),
          EORoute(
            Icons.email,
            (context) => 'Generate QR Code',
            path: '/generate-qr-code',
            name: AccountNamedRoutes.generateQrCode,
            widgetBuilder: widgetBuilders[AccountNamedRoutes.generateQrCode]!,
          ),
          EORoute(
            Icons.email,
            (context) => 'Scan QR Code',
            path: '/scan-qr-code',
            name: AccountNamedRoutes.scanQrCode,
            widgetBuilder: widgetBuilders[AccountNamedRoutes.scanQrCode]!,
          ),
        ],
      ),
    ]);
    return registry;
  }

  static List<SingleChildWidget> providers = [
    Provider<AccountsSearchDataSource>(
      create: (context) {
        final settingsService = SettingsService(
          Provider.of<UserInfoService>(context, listen: false),
          Provider.of<UserService>(context, listen: false),
          Provider.of<UomService>(context, listen: false),
          context.coreApi.referenceData,
        );
        return AccountsSearchDataSource(
          coreApiService: context.coreApi,
          settingsService: settingsService,
        );
      },
    ),
    Provider<AccountsSearchDataController>(
      create: (context) {
        return AccountsSearchDataController(coreApiService: context.coreApi);
      },
    ),
    Provider<AccountsSearchFilterController>(
      create: (context) {
        final controller = Provider.of<AccountsSearchDataController>(
          context,
          listen: false,
        );
        return AccountsSearchFilterController(dataController: controller);
      },
    ),
    Provider<EmrQueryLayoutController<Account>>(
      create: (context) {
        final dataSource = Provider.of<AccountsSearchDataSource>(
          context,
          listen: false,
        );
        final filterController = Provider.of<AccountsSearchFilterController>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<Account>(
          dataSource: dataSource,
          filterController: filterController,
        );
      },
    ),
    ChangeNotifierProvider<AccountDetailsController>(
      create: (context) {
        return AccountDetailsController(coreApiService: context.coreApi);
      },
    ),
    ChangeNotifierProvider<ManageLocationController>(
      create: (context) {
        return ManageLocationController(coreApiService: context.coreApi);
      },
    ),
    ChangeNotifierProvider<ManagePublicationsController>(
      create: (context) {
        return ManagePublicationsController(coreApiService: context.coreApi);
      },
    ),
    ChangeNotifierProvider<ManageResponsibilitiesController>(
      create: (context) {
        return ManageResponsibilitiesController(
          coreApiService: context.coreApi,
        );
      },
    ),
    ChangeNotifierProvider<ManageLoyaltyCardsController>(
      create: (context) {
        return ManageLoyaltyCardsController(coreApiService: context.coreApi);
      },
    ),
    ChangeNotifierProvider<ManagePrepaymentCardsController>(
      create: (context) {
        final settingsService = SettingsService(
          Provider.of<UserInfoService>(context, listen: false),
          Provider.of<UserService>(context, listen: false),
          Provider.of<UomService>(context, listen: false),
          context.coreApi.referenceData,
        );
        return ManagePrepaymentCardsController(
          coreApiService: context.coreApi,
          settingsService: settingsService,
        );
      },
    ),
    ChangeNotifierProvider<ManageProductEWCController>(
      create: (context) {
        return ManageProductEWCController(coreApiService: context.coreApi);
      },
    ),
    ChangeNotifierProvider<ManageContactController>(
      create: (context) {
        final httpClient = Provider.of<BaseClient>(context, listen: false);
        return ManageContactController(
          coreApiService: context.coreApi,
          mediaService: MediaService(client: httpClient),
        );
      },
    ),
    ChangeNotifierProvider<ManageDocumentsController>(
      create: (context) {
        final httpClient = Provider.of<BaseClient>(context, listen: false);
        return ManageDocumentsController(
          coreApiService: context.coreApi,
          mediaService: MediaService(client: httpClient),
        );
      },
    ),
    ChangeNotifierProvider<ManageMainDetailsController>(
      create: (context) {
        return ManageMainDetailsController(
          coreApiService: context.coreApi,
          mediaService: MediaService(
            client: Provider.of<BaseClient>(context, listen: false),
          ),
        );
      },
    ),
    ChangeNotifierProvider<ManageHeadOfficeDetailsController>(
      create: (context) {
        return ManageHeadOfficeDetailsController(
          coreApiService: context.coreApi,
        );
      },
    ),
    ChangeNotifierProvider<ManageLicenceExemptionController>(
      create: (context) {
        final httpClient = Provider.of<BaseClient>(context, listen: false);
        return ManageLicenceExemptionController(
          coreApiService: context.coreApi,
          mediaService: MediaService(client: httpClient),
          mediaApiBase: Provider.of<AppConfig>(context, listen: false).mediaApi,
        );
      },
    ),
    ChangeNotifierProvider<ManageBankAccountDetailsController>(
      create: (context) {
        final userInfoService = Provider.of<UserInfoService>(
          context,
          listen: false,
        );
        return ManageBankAccountDetailsController(
          coreApiService: context.coreApi,
          userInfoService: userInfoService,
        );
      },
    ),
    ChangeNotifierProvider<ManageTeamAccessController>(
      create: (context) {
        return ManageTeamAccessController(coreApiService: context.coreApi);
      },
    ),
    ...signup.Accountloadingservice.signupProviders(signup.RunContext.emrApps),
    ChangeNotifierProvider<signup.ChangeNotifyingForRestartService>.value(
      value: signup.ChangeNotifyingForRestartService(),
    ),
    ...signup.Accountloadingservice.signupProviders(signup.RunContext.cashier),
  ];

  static bool _isAllowed(BuildContext context, EORoute route) {
    //return true;
    final access = ScreenAccess();
    return access.canSearchRetailAccounts(context);
  }
}
