import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_core_api/services/azure_form_recogniser_service.dart';
import 'package:emr_core_api/services/core_api_service.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class Accountloadingservice {
  static Widget load(
    String accountCode,
    BuildContext context, {
    RunContext runContext = RunContext.emrApps,
    SignupStep signupStep = SignupStep.selectIdentityProofType,
  }) {
    var accountService = getAccountService(context, runContext);
    final formKey = GlobalKey<FormState>();
    CountryData.populateCountries();

    return FutureBuilder(
      future: _load(accountCode, context.coreApi, runContext, accountService),
      builder: (BuildContext ctx, AsyncSnapshot<SignupModel?> snapshot) {
        if (ConnectionState.done == snapshot.connectionState &&
            snapshot.data != null) {
          final signupModel = snapshot.data!.clone(signupStep, runContext);
          return Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            onChanged: () => {},
            child: Consumer<JourneyController>(
              builder: (context, journeyController, child) {
                // everytime there is a change in model and listeners
                //are notified then we'll
                // update the data binding service and other dependencies

                journeyController.refresh(signupModel);

                return SignupStepWidget(
                  journeyController: journeyController,
                  signupModel: signupModel,
                  emailVerificationCallbackUrl: '',
                );
              },
            ),
          );
        } else {
          return processingIndicator();
        }
      },
    );
  }

  static Future<SignupModel?> _load(
    String accountCode,
    CoreApiService coreApi,
    RunContext runContext,
    AccountService accountService,
  ) async {
    if (!runContext.isPortal) {
      JourneyController.titles = await coreApi.referenceData.getTitles();
      JourneyController.roles = await coreApi.referenceData.getSignupRoles();
      JourneyController.industryGroups = await coreApi.referenceData
          .getMapOfStringAndString('SignupIndustryGroups');
      JourneyController.visitFrequencies = await coreApi.referenceData
          .getVisitFrequencies();
    }
    return accountService.getSignupModel(accountCode, runContext);
  }

  static ChangeNotifyingService changeNotifyingService =
      ChangeNotifyingService();

  static JourneyController getJourneyController(
    BuildContext context,
    RunContext runContext,
  ) {
    final httpClient = Provider.of<BaseClient>(context, listen: false);
    final appConfig = Provider.of<AppConfig>(context, listen: false);
    final userInfoSvc = CustomerUserInfoService();
    userInfoSvc.getUserInfo();
    final accountService = AccountService(
      runContext: runContext,
      client: httpClient,
      userInfoService: userInfoSvc,
      appConfig: appConfig,
    );

    final azureFormRecogniserService = AzureFormRecogniserService(
      appConfig: appConfig,
    );

    final standingDataService = StandingDataService(
      coreApiService: context.coreApi,
    );

    return JourneyController(
      azureFormRecogniserService: azureFormRecogniserService,
      accountService: accountService,
      mediaService: MediaService(client: httpClient),
      standingDataService: standingDataService,
      changeNotifyingService: changeNotifyingService,
      runContext: runContext,
    );
  }

  static List<ChangeNotifierProvider<ChangeNotifier>> signupProviders(
    RunContext runContext,
  ) => [
    ChangeNotifierProvider<ChangeNotifyingService>.value(
      value: changeNotifyingService,
    ),
    ChangeNotifierProvider<JourneyController>(
      create: (context) => getJourneyController(context, runContext),
    ),
  ];

  static AccountService getAccountService(
    BuildContext context,
    RunContext runContext,
  ) {
    final httpClient = Provider.of<BaseClient>(context, listen: false);
    final appConfig = Provider.of<AppConfig>(context, listen: false);
    final userInfoSvc = CustomerUserInfoService();

    return AccountService(
      runContext: runContext,
      client: httpClient,
      userInfoService: userInfoSvc,
      appConfig: appConfig,
    );
  }
}
