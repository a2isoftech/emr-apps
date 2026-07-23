import 'package:async/async.dart';
import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget with FullExtent {
  LoginScreen({
    required this.emailVerificationCallbackUrl,
    required this.customerUserInfoService,
    required this.locationService,
    super.key,
  });

  final String emailVerificationCallbackUrl;
  final CustomerUserInfoService customerUserInfoService;
  final LocationService locationService;
  final _formKey = GlobalKey<FormState>();
  final AsyncMemoizer<SignupModel> _memoizer = AsyncMemoizer();

  Future<SignupModel> _fetchData(BuildContext context) {
    return _memoizer.runOnce(() async {
      final model = await JourneyController.initialize(
        Localizations.localeOf(context),
        RunContext.portal,
        context,
        useStaticModelForJourney:
            AccountRegistrationRemoteConfigService.useStaticModelForJourney,
      );

      return model;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isInPortraitMode = context.isInPortraitMode();

    return FutureBuilder(
      future: _fetchData(context),
      builder: (BuildContext ctx, AsyncSnapshot<SignupModel> snapshot) {
        if (ConnectionState.done == snapshot.connectionState &&
            snapshot.hasData) {
          final signupModel = snapshot.data!;
          return Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            onChanged: () => {},
            child: Consumer<JourneyController>(
              builder: (context, journeyController, child) {
                journeyController.refresh(snapshot.data!);

                if (signupModel.currentStep == SignupStep.countrySelection) {
                  return CountrySelectionScreen(
                    signupModel: signupModel,
                    journeyController: journeyController,
                  );
                } else if (snapshot.data!.currentStep ==
                    SignupStep.verifyPhone) {
                  return VerifyPhone(
                    signupModel: snapshot.data!,
                    journeyController: journeyController,
                  );
                } else if (snapshot.data!.currentStep ==
                    SignupStep.verifyEmail) {
                  return VerifyEmail(
                    signupModel: snapshot.data!,
                    journeyController: journeyController,
                    emailVerificationCallbackUrl: emailVerificationCallbackUrl,
                  );
                }
                return Stack(
                  children: [
                    SignupLayout(
                      runContext: snapshot.data!.runContext,
                      title: context.l10n.existingAccountLogin,
                      titleStyle: theme.textTheme.headlineMedium,
                      formKey: _formKey,
                      onGoBack: null,
                      widgets: [
                        if (!journeyController.isProcessing) ...[
                          Text(
                            context.l10n.enterPhoneOrEmailMsg,
                            style: isInPortraitMode
                                ? theme.textTheme.labelSmall
                                : theme.textTheme.labelLarge,
                          ),

                          //Consumer Widget to listen for changes
                          Consumer<ChangeNotifyingService>(
                            builder: (context, dataBindingService, child) {
                              return EmailOrPhoneInput(
                                journeyController: journeyController,
                                signupModel: signupModel,
                                emailVerificationCallbackUrl:
                                    emailVerificationCallbackUrl,
                                locatedAtCountryCode: signupModel
                                        .locatedAtCountryCode ??
                                    AccountRegistrationStrings.defaultCountry,
                                canSubmit: journeyController.validationService
                                    .canSubmitFromRegister(
                                  signupModel,
                                  context,
                                ),
                                actionButtons: [
                                  loginOrStartRegistrationButton(
                                    journeyController,
                                    signupModel,
                                    context,
                                    isForLogin: true,
                                    emailVerificationCallbackUrl:
                                        emailVerificationCallbackUrl,
                                    canSubmit: journeyController
                                        .validationService
                                        .canSubmitFromLogin(
                                      signupModel,
                                      context,
                                    ),
                                  ),
                                  verticalSpacer(),
                                  Text(
                                    context.l10n.dontHaveAnAccount,
                                    style: theme.textTheme.headlineMedium,
                                  ),
                                  verticalSpacer(),
                                  colouredButton(
                                    text: context.l10n.registerHere,
                                    style: AccountRegistrationButtonStyles
                                        .secondaryCta(theme),
                                    onPressed: () async {
                                      if (await journeyController
                                          .validationService
                                          .checkCountrySelected(
                                        signupModel,
                                        context.l10n.errMsgSelectCountry,
                                      )) {
                                        if (context.mounted) {
                                          context.goToRegister();
                                        }
                                      }
                                    },
                                  ),
                                  verticalSpacer(),
                                ],
                              );
                            },
                          ),
                        ] else ...{
                          const WaitingIndicator(),
                        },
                      ],
                    ),
                  ],
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
}
