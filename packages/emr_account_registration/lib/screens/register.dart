import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

class Register extends StatelessWidget with FullExtent {
  Register({
    required this.signupModel,
    required this.emailVerificationCallbackUrl,
    super.key,
    required this.journeyController,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;
  final String emailVerificationCallbackUrl;
  final _formKey = GlobalKey<FormState>();

  @override
  bool get hideFrameworkElements => signupModel.hasPortalRunContext;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    bool canSubmit = false;
    return Stack(
      children: [
        SignupLayout(
          runContext: signupModel.runContext,
          title: '',
          formKey: _formKey,
          onGoBack: () async {
            await journeyController.uiActions.onBackFromRegister(
              context: context,
            );
          },
          widgetsPlacement: CrossAxisAlignment.start,
          widgets: [
            Text(
              context.l10n.getStartedWithEMR,
              style: theme.textTheme.headlineMedium,
            ),
            verticalSpacer(),
            Text(
              context.l10n.msgSignUpIsFast,
              style: theme.textTheme.labelLarge,
            ),
            verticalSpacer(),
            ...LocalizedWidgets.getLoginPageBulletPoints(
              theme,
              signupModel.getLocatedAtCountryCode(),
              context,
              isInPortraitMode: context.isInPortraitMode(),
            ),
            verticalSpacer(),
            Text(
              context.l10n.itOnlyTakesFiveMinutesNote,
              style: theme.textTheme.labelLarge,
            ),
            verticalSpacer(),
            Center(
              child: HelpPopup(
                clickable: Text(
                  context.l10n.whatWillINeed,
                  style: theme.textTheme.labelLarge?.underlined(),
                ),
                title: context.l10n.whatWillINeed,
                popup: HtmlWidget(
                  '<ul>'
                  '<li>${context.l10n.msgEmailOrPhoneNumber}</li> '
                  // ignore: lines_longer_than_80_chars
                  '${!signupModel.isNL() ? '<li>${signupModel.isUK() ? context.l10n.validUKId : context.l10n.validId}</li> ' : ''}'
                  '${signupModel.isUK() ? '<li>'
                            '${context.l10n.msgProofOfAddress}'
                            '</li>' : ''}'
                  '</ul>'
                  '${context.l10n.notSureAboutUploadingDocuments}<br/> '
                  '${context.l10n.msgIdProofSecure} '
                  '${signupModel.isUK() ? '<br/><br/><b>${context.l10n.registerPopup1}</b> ' : ''}'
                  '${signupModel.isUK() ? '<p>${context.l10n.registerPopup2}</p> ' : ''}'
                  '${signupModel.isUK() ? '<p>${context.l10n.registerPopup3}</p>' : ''}',
                ),
              ),
            ),
            verticalSpacer(),

            //Consumer Widget to listen for changes
            Consumer<ChangeNotifyingService>(
              builder: (context, dataBindingService, child) {
                canSubmit = journeyController.validationService
                    .canSubmitFromRegister(signupModel, context);
                journeyController.refresh(signupModel);
                return Column(
                  children: [
                    UserFullnameInput(controller: journeyController),
                    EmailOrPhoneInput(
                      journeyController: journeyController,
                      signupModel: signupModel,
                      emailVerificationCallbackUrl:
                          emailVerificationCallbackUrl,
                      locatedAtCountryCode:
                          signupModel.locatedAtCountryCode ??
                          AccountRegistrationStrings.defaultCountry,
                      canSubmit: canSubmit,
                      actionButtons: [
                        loginOrStartRegistrationButton(
                          journeyController,
                          signupModel,
                          context,
                          isForLogin: false,
                          emailVerificationCallbackUrl:
                              emailVerificationCallbackUrl,
                          canSubmit: canSubmit,
                        ),
                        verticalSpacer(),
                        if (signupModel.hasPortalRunContext) ...{
                          colouredButton(
                            text: context.l10n.cancel,
                            style: AccountRegistrationButtonStyles.secondaryCta(
                              theme,
                            ),
                            onPressed: () async {
                              await journeyController.uiActions
                                  .onCancelFromRegister(
                                    journeyController,
                                    signupModel,
                                    context: context,
                                  );
                            },
                          ),
                          verticalSpacer(),
                        },
                      ],
                    ),
                  ],
                );
              },
            ),
            Column(
              children: [
                verticalSpacer(),
                Center(
                  child: PrivacyPolicy(
                    countryId: signupModel.getLocatedAtCountryCode(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
