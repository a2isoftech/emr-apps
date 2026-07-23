import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MarketingPrefs extends StatelessWidget with FullExtent {
  MarketingPrefs({
    required this.signupModel,
    super.key,
    required this.journeyController,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;
  final _formKey = GlobalKey<FormState>();

  @override
  bool get hideFrameworkElements => signupModel.hasPortalRunContext;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDutchLocale =
        signupModel.locatedAtCountryCode?.isCountryNL() ?? false;

    return FutureBuilder(
      future: journeyController.standingDataService.populateYard(
        signupModel.getLocatedAtCountryCode(),
        context.l10n.pleaseSelectAYard,
      ),
      builder: (BuildContext ctx, AsyncSnapshot<List<Yard>> snapshot) {
        if (ConnectionState.done == snapshot.connectionState &&
            snapshot.data != null) {
          return SignupLayout(
            runContext: signupModel.runContext,
            title: context.l10n.stage1Of2AboutYou,
            titleStyle: theme.textTheme.labelLarge?.bold(),
            formKey: _formKey,
            onGoBack: () async {
              await journeyController.uiActions.onBackFromMarketingPrefs(
                journeyController,
                signupModel,
                context: context,
              );
            },
            widgets: [
              Text(
                context.l10n.letsGetToKnowEachOther,
                style: theme.textTheme.headlineLarge,
              ),
              verticalSpacer(),

              //Consumer Widget to listen for changes
              Consumer<ChangeNotifyingService>(
                builder: (context, dataBindingService, child) {
                  journeyController.refresh(signupModel);
                  return Column(
                    children: [
                      SignupHelpPopup(
                        clickableTitle: context.l10n.whyDoWeWantToKnowThis,
                        title: context.l10n.whyDoWeWantToKnowThis,
                        popupWidget: Text(
                          context.l10n.whyDoWeWantToKnowThisNote,
                          style: theme.textTheme.labelMedium?.bold(),
                        ),
                      ),
                      verticalSpacer(),
                      customerSignupDropdowns(
                        signupModel.runContext,
                        context,
                        journeyController,
                        isDutchLocale: isDutchLocale,
                      ),
                      verticalSpacer(),
                      marketingPreferences(
                        context,
                        journeyController,
                        isDutchLocale: isDutchLocale,
                      ),
                      verticalSpacer(),
                      SignupHelpPopup(
                        clickableTitle:
                            context.l10n.whatIfIDontWantToBeContacted,
                        title: context.l10n.whatIfIDontWantToBeContacted,
                        popupWidget: Text(
                          context.l10n.whatIfIDontWantToBeContactedNote,
                          style: theme.textTheme.labelMedium?.bold(),
                        ),
                      ),
                      verticalSpacer(),
                      if (journeyController.isProcessing) ...{
                        processingIndicator(),
                      } else ...{
                        colouredButton(
                          text: context.l10n.letsGo,
                          style:
                              journeyController.validationService
                                  .canSubmitFromMarketingPrefs(
                                    signupModel,
                                    context,
                                  )
                              ? EmrButtonStyles.cta()
                              : AccountRegistrationButtonStyles.disabled(theme),
                          onPressed:
                              journeyController.validationService
                                  .canSubmitFromMarketingPrefs(
                                    signupModel,
                                    context,
                                  )
                              ? () async {
                                  journeyController.startProcessing();

                                  await journeyController.uiActions
                                      .onNextFromMarketingPrefs(
                                        journeyController,
                                        signupModel,
                                        () async {
                                          if (context.mounted) {
                                            await EmrModal.showMessageBar(
                                              context,
                                              context
                                                  .l10n
                                                  .errAccountCouldNotBeCreated,
                                              messageType:
                                                  MessageBarTypes.error,
                                            );
                                          }
                                        },
                                        context: context,
                                      );

                                  journeyController.endProcessing();
                                }
                              : null,
                        ),
                      },
                    ],
                  );
                },
              ),
            ],
          );
        } else {
          return processingIndicator();
        }
      },
    );
  }
}
