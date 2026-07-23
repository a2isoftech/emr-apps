import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/extensions/extensions.dart';
import 'package:emr_core_api/services/azure_form_recogniser_service.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class SignupRoutes {
  static ChangeNotifyingService changeNotifyingService =
      ChangeNotifyingService();

  static AccountService getAccountService(BuildContext context) {
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
    ) as CustomerUserInfoService;

    return AccountService(
      runContext: runContext,
      client: httpClient,
      userInfoService: userInfoSvc,
      appConfig: appConfig,
    );
  }

  static JourneyController getJourneyController(
    BuildContext context, {
    RunContext? rc,
  }) {
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
    ) as CustomerUserInfoService;
    final accountService = AccountService(
      runContext: rc ?? runContext,
      client: httpClient,
      userInfoService: userInfoSvc,
      appConfig: appConfig,
    );

    final azureFormRecogniserService = AzureFormRecogniserService(
      appConfig: appConfig,
    );

    final standingDataService = PortalStandingDataService(
      httpClient: httpClient,
      userInfoSvc: userInfoSvc,
      appConfig: appConfig,
      standingDataService: StandingDataService(
        coreApiService: context.coreApi,
      ),
    );

    return JourneyController(
      azureFormRecogniserService: azureFormRecogniserService,
      accountService: accountService,
      mediaService: MediaService(client: httpClient),
      standingDataService: standingDataService,
      changeNotifyingService: changeNotifyingService,
      runContext: rc ?? runContext,
    );
  }

  static final signupProviders = [
    ChangeNotifierProvider<ChangeNotifyingService>.value(
      value: changeNotifyingService,
    ),
    ChangeNotifierProvider<JourneyController>(
      create: getJourneyController,
    ),
    ChangeNotifierProvider<QrCodeLoginController>(
      create: (context) {
        return QrCodeLoginController();
      },
    ),
  ];

  static const RunContext runContext = RunContext.portal;
  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(
      [
        EORoute(
          Icons.house,
          (context) => context.l10n.routeDisplayNameLogIn,
          path: '/login',
          name: NamedRoutes.login,
          providers: signupProviders,
          widgetBuilder: (context, state) {
            final appConfig = Provider.of<AppConfig>(context, listen: false);
            final localtionService = LocationService();

            return LoginScreen(
              emailVerificationCallbackUrl:
                  appConfig.emailVerificationCallbackUrl,
              customerUserInfoService:
                  Provider.of<UserInfoService>(context, listen: false)
                      as CustomerUserInfoService,
              locationService: localtionService,
            );
          },
          isManuallyNavigable: false,
        ),
        EORoute(
          Icons.house,
          (context) => 'qr-login',
          path: '/qrlogin',
          name: 'qr-login',
          providers: signupProviders,
          widgetBuilder: (context, state) {
            final appConfig = Provider.of<AppConfig>(context, listen: false);

            return QrLoginPage(
              appConfig: appConfig,
              journeyController: getJourneyController(
                context,
                rc: RunContext.portalQrLogin,
              ),
            );
          },
          isManuallyNavigable: false,
          allowAnonymous: true,
        ),
        EORoute(
          Icons.house,
          (context) => context.l10n.routeDisplayNameLogIn,
          path: '/triage',
          name: AccountRegistrationNamedRoutes.customerPortalTriage,
          providers: signupProviders,
          widgetBuilder: (context, state) {
            return Triage();
          },
          allowAnonymous: true,
          isManuallyNavigable: false,
        ),
        EORoute(
          allowAnonymous: true,
          Icons.email,
          (context) => 'Register',
          path: '/register',
          name: AccountRegistrationNamedRoutes.customerPortalRegister,
          providers: signupProviders,
          widgetBuilder: (context, state) {
            final appConfig = Provider.of<AppConfig>(context, listen: false);

            return Start(
              journeyController: getJourneyController(context),
              runContext: runContext,
              emailVerificationCallbackUrl:
                  appConfig.emailVerificationCallbackUrl,
            );
          },
          isManuallyNavigable: false,
        ),
        EORoute(
          Icons.email,
          (context) => 'CONTACT_INFO',
          path: '/contact-info',
          name: NamedRoutes.customerPortalContactInfo,
          providers: signupProviders,
          widgetBuilder: (context, state) {
            final appConfig = Provider.of<AppConfig>(context, listen: false);

            return Start(
              journeyController: getJourneyController(context),
              runContext: runContext,
              emailVerificationCallbackUrl:
                  appConfig.emailVerificationCallbackUrl,
            );
          },
          isManuallyNavigable: false,
        ),
        EORoute(
          Icons.app_registration,
          (context) => 'ALMOST_DONE',
          path: '/almost-done',
          name: AccountRegistrationNamedRoutes.customerPortalAlmostDone,
          providers: signupProviders,
          widgetBuilder: (context, state) {
            final appConfig = Provider.of<AppConfig>(context, listen: false);

            return AccountLoader(
              accountService: getAccountService(context),
              step: SignupStep.almostDone,
              emailVerificationCallbackUrl:
                  appConfig.emailVerificationCallbackUrl,
            );
          },
          isManuallyNavigable: false,
        ),
        EORoute(
          Icons.app_registration,
          (context) => 'PAYMENT_DETAILS',
          path: '/payment-details',
          name: AccountRegistrationNamedRoutes.customerPortalPaymentDetails,
          providers: signupProviders,
          widgetBuilder: (context, state) {
            final appConfig = Provider.of<AppConfig>(context, listen: false);

            return AccountLoader(
              accountService: getAccountService(context),
              step: SignupStep.paymentDetails,
              emailVerificationCallbackUrl:
                  appConfig.emailVerificationCallbackUrl,
            );
          },
          isManuallyNavigable: false,
        ),
        EORoute(
          Icons.app_registration,
          (context) => 'IDENTITY_PROOF',
          path: '/identity-proof',
          name: AccountRegistrationNamedRoutes.customerPortalIdentityProof,
          providers: signupProviders,
          widgetBuilder: (context, state) {
            final appConfig = Provider.of<AppConfig>(context, listen: false);

            return AccountLoader(
              accountService: getAccountService(context),
              step: SignupStep.selectIdentityProofType,
              emailVerificationCallbackUrl:
                  appConfig.emailVerificationCallbackUrl,
            );
          },
          isManuallyNavigable: false,
        ),
        EORoute(
          Icons.app_registration,
          (context) => 'ADDRESS_PROOF',
          path: '/address-proof',
          name: AccountRegistrationNamedRoutes.customerPortalAddressProof,
          providers: signupProviders,
          widgetBuilder: (context, state) {
            final appConfig = Provider.of<AppConfig>(context, listen: false);

            return AccountLoader(
              accountService: getAccountService(context),
              step: SignupStep.selectAddressProofType,
              emailVerificationCallbackUrl:
                  appConfig.emailVerificationCallbackUrl,
            );
          },
          isManuallyNavigable: false,
        ),
        EORoute(
          Icons.home_outlined,
          (context) => context.l10n.routeDisplayNameHome,
          path: '/',
          selectedIcon: Icons.home,
          name: NamedRoutes.home,
          // widgetBuilder is required, but in the case of '/' we have a
          // redirect, so the widget is never actually shown.
          widgetBuilder: (context, state) => const SizedBox(),
          redirect: (context, state) => CoreRoutes.homePagePath!,
          isAllowed: (context, __) => isPageAllowed(context, 'home from here'),
        ),
        EORoute.redirectRoute('/link', CoreRoutes.homePagePath!),
        EORoute(
          Icons.email,
          (context) => '',
          path: '/emailLink',
          name: NamedRoutes.emailLink,
          providers: signupProviders,
          widgetBuilder: (context, state) {
            return ConfirmEmailPage();
          },
          isManuallyNavigable: false,
          allowAnonymous: true,
        ),
      ],
    );

    return registry;
  }

  static CustomerUserInfoService _getUserInfoService(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<UserInfoService>(context, listen: listen)
        as CustomerUserInfoService;
  }

  static bool isPageAllowed(BuildContext context, String pageName) {
    final userInfoSvc = _getUserInfoService(context, listen: false);
    if (userInfoSvc.userInfo.qrLogin) {
      return false;
    }

    return true;
  }
}
