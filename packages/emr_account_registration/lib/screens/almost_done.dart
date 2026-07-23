import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlmostDone extends StatelessWidget with FullExtent {
  AlmostDone({
    required this.signupModel,
    required this.journeyController,
    super.key,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;
  final _formKey = GlobalKey<FormState>();

  @override
  bool get hideFrameworkElements => signupModel.hasPortalRunContext;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final containerWidth = MediaQuery.of(context).size.width;

    final isCountryNL = signupModel.getLocatedAtCountryCode().isCountryNL();
    return SignupLayout(
      runContext: signupModel.runContext,
      title: context.l10n.stage2Of2YourDocuments,
      titleStyle: theme.textTheme.labelLarge?.bold(),
      formKey: _formKey,
      onGoBack: null,
      widgets: [
        Center(
          child: Text(
            '${context.l10n.msgAccountIsBeingOpened}..',
            style: theme.textTheme.headlineLarge,
          ),
        ),
        verticalSpacer(height: Insets.gutter * 2),
        Center(
          child: Card(
            elevation: 5, // Add elevation for a shadow effect
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.5,
                color: theme.colorScheme.outline,
              ), // Change the color and width here
              borderRadius: BorderRadius.circular(
                15,
              ), // Adjust the radius as per your requirement
            ),
            child: Container(
              width: containerWidth,
              color: theme.colorScheme.surface,
              padding: const EdgeInsets.all(Insets.gutter),
              child: Wrap(
                spacing: Insets.gutter,
                direction: Axis.vertical,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Text(
                    '${signupModel.firstName}'
                    ' ${signupModel.lastName}',
                    style: theme.textTheme.titleLarge,
                  ),
                  if ((signupModel.emailAddress ?? '').isNotEmpty) ...{
                    Text(
                      signupModel.emailAddress!,
                      style: theme.textTheme.titleMedium,
                    ),
                  },
                  if ((signupModel.phoneNumber ?? '').isNotEmpty) ...{
                    Text(
                      ' ${signupModel.dialingCode ?? ''}'
                      '${signupModel.phoneNumber}',
                      style: theme.textTheme.titleMedium,
                    ),
                  },
                ],
              ),
            ),
          ),
        ),
        verticalSpacer(),
        Text(
          '${context.l10n.thankYou} ${signupModel.firstName}',
          style: theme.textTheme.labelLarge,
        ),
        verticalSpacer(),
        Text(
          isCountryNL
              ? context.l10n.needAddressDetailsNote
              : context.l10n.msgAddressProofSafeAndSecure,
          style: theme.textTheme.labelLarge,
        ),
        verticalSpacer(),
        Text(
          isCountryNL
              ? context.l10n.agreeTermsAndConditionNote
              : context.l10n.msgAddressProofSecure,
          style: theme.textTheme.labelLarge?.bold(),
        ),
        ...LocalizedWidgets.getAlmostDoneDealerAct(
          theme,
          signupModel.getLocatedAtCountryCode(),
          context,
        ),
        verticalSpacer(),
        if (!isCountryNL)
          RichText(
            text: TextSpan(
              text: context.l10n.msgAddressProofsOffline,
              style: theme.textTheme.labelLarge,
              children: <TextSpan>[
                LocalizedWidgets.getEmrLocalUrl(
                  theme,
                  signupModel.getLocatedAtCountryCode(),
                ),
              ],
            ),
          ),
        verticalSpacer(),
        Center(
          child: //Consumer Widget to listen for changes
          Consumer<ChangeNotifyingService>(
            builder: (context, dataBindingService, child) {
              final canCompleteFromAlmostDone = journeyController
                  .validationService
                  .canCompleteFromAlmostDone(
                    signupModel,
                    signupModel.getLocatedAtCountryCode(),
                  );
              return Wrap(
                spacing: Insets.gutter,
                direction: Axis.vertical,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  BlueButtonWithTick(
                    text: isCountryNL
                        ? context.l10n.enterAddress
                        : ((signupModel.proofOfIdUpdated)
                              ? context.l10n.updateProofOfIdentity
                              : context.l10n.uploadProofOfIdentity),
                    completed: isCountryNL
                        ? signupModel.addressEntered
                        : signupModel.proofOfIdUpdated,
                    onPressed: () async {
                      isCountryNL
                          ? await journeyController.uiActions
                                .onGoToAddressDocumentDetails(
                                  journeyController,
                                  signupModel,
                                  context: context,
                                )
                          : await journeyController.uiActions
                                .onGoToSelectIdentityProofType(
                                  journeyController,
                                  signupModel,
                                );
                    },
                  ),
                  Wrap(
                    spacing: Insets.gutter,
                    runSpacing: Insets.gutter,
                    direction: Axis.vertical,
                    children: [
                      ...LocalizedWidgets.getAlmostDoneDocumentButtons(
                        theme,
                        signupModel.getLocatedAtCountryCode(),
                        context,
                        signupModel,
                        journeyController,
                      ),
                      if (journeyController.isProcessing) ...{
                        processingIndicator(),
                      } else ...{
                        colouredButton(
                          text: context.l10n.allDone,
                          width: 300,
                          style: canCompleteFromAlmostDone
                              ? EmrButtonStyles.cta()
                              : AccountRegistrationButtonStyles.disabled(theme),
                          onPressed: canCompleteFromAlmostDone
                              ? () async {
                                  journeyController.startProcessing();
                                  if (signupModel.userFullySignedUp) {
                                    return await journeyController.uiActions
                                        .onSuccessfulProspectConversion(
                                          journeyController,
                                          signupModel,
                                        );
                                  }
                                  final response = await journeyController
                                      .uiActions
                                      .onCompletionFromAlmostDone(
                                        journeyController,
                                        signupModel,
                                      );

                                  journeyController.endProcessing();
                                  if (response == null || response.isEmpty) {
                                    LoggingService.logFailure(
                                      AccountRegistrationTelemetry
                                          .kConvertProspectToRetail,
                                      'Null returned from account service',
                                      partyAccountNo: signupModel.accountCode,
                                      userId: '',
                                    );
                                    if (context.mounted) {
                                      await EmrModal.showMessageBar(
                                        context,
                                        context
                                            .l10n
                                            // ignore: lines_longer_than_80_chars
                                            .errAccountCouldNotBeConverted,
                                      );
                                    }
                                  } else {
                                    await journeyController.uiActions
                                        .onSuccessfulProspectConversion(
                                          journeyController,
                                          signupModel,
                                        );
                                  }
                                }
                              : null,
                        ),
                      },
                    ],
                  ),
                  if (journeyController.isProcessing) ...{
                    processingIndicator(),
                  } else ...{
                    Center(
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () async {
                            journeyController.startProcessing();

                            await journeyController.uiActions
                                .onCancelFromAlmostDone(
                                  journeyController,
                                  signupModel,
                                  context: context.mounted ? context : null,
                                );

                            journeyController.endProcessing();
                          },
                          child: Text(
                            context.l10n.cancelAndReturnToHomePage,
                            style: theme.textTheme.labelLarge
                                ?.bold()
                                .underlined()
                                .copyWith(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  },
                ],
              );
            },
          ),
        ),
        Column(
          children: [
            verticalSpacer(),
            Center(
              child: PrivacyPolicy(
                textBefore: context.l10n.privacyPolicy1,
                countryId: signupModel.getLocatedAtCountryCode(),
                textAfter: context.l10n.privacyPolicy2,
              ),
            ),
          ],
        ),
      ],
      widgetsPlacement: CrossAxisAlignment.start,
    );
  }
}
