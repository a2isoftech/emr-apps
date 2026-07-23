import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

class ContactInfo extends StatelessWidget with FullExtent {
  ContactInfo({
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
    bool? isValidForm;
    return SignupLayout(
      runContext: signupModel.runContext,
      title: context.l10n.stage1Of2AboutYou,
      titleStyle: theme.textTheme.labelLarge?.bold(),
      formKey: _formKey,
      onGoBack: () async {
        await journeyController.uiActions.onBackFromContactInfo(
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
        verticalSpacer(height: Insets.gutter * 2),

        //Consumer Widget to listen for changes
        Consumer<ChangeNotifyingService>(
          builder: (context, dataBindingService, child) {
            isValidForm = journeyController.validationService
                .canSubmitFromRegister(
                  signupModel,
                  context,
                  returnTrueIfEitherEmailOrMobileAvailable: false,
                );

            journeyController.refresh(signupModel);

            return Column(
              children: [
                UserFullnameInput(controller: journeyController),
                verticalSpacer(),
                HelpPopup(
                  clickable: Text(
                    context.l10n.whyDoWeWantBoth,
                    style: theme.textTheme.labelLarge?.underlined(),
                  ),
                  title: context.l10n.whyDoWeWantBothFormsOfContact,
                  popup: HtmlWidget(context.l10n.whyDoWeWantBothNote),
                ),
                verticalSpacer(),
                TextFormField(
                  decoration:
                      InputDecorationService.getTextFormFieldInputDecoration(
                        context.l10n.enterEmail,
                        context.l10n.email,
                        theme: theme,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                  initialValue:
                      journeyController.dataBinding.signupModel.emailAddress,
                  onChanged: journeyController.dataBinding.setEmailAddress,
                  validator: (val) {
                    return ValidationService.validateEmail(val, context);
                  },
                  enabled: !journeyController.validationService.disabled,
                ),
                verticalSpacer(),
                PhoneInput(controller: journeyController),
                verticalSpacer(),
                colouredButton(
                  text: context.l10n.letsGo,
                  style: isValidForm ?? false
                      ? EmrButtonStyles.cta()
                      : AccountRegistrationButtonStyles.disabled(theme),
                  onPressed: isValidForm ?? false
                      ? () {
                          journeyController.uiActions.onNextFromContactInfo(
                            journeyController,
                            signupModel,
                            context: context,
                          );
                        }
                      : null,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
