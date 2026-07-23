import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EmailOrPhoneInput extends StatelessWidget with FullExtent {
  EmailOrPhoneInput({
    required this.journeyController,
    required this.signupModel,
    required this.emailVerificationCallbackUrl,
    required this.locatedAtCountryCode,
    required this.canSubmit,
    required this.actionButtons,
    this.firstName,
    this.lastName,
    super.key,
  });

  final JourneyController journeyController;
  final SignupModel signupModel;
  final String emailVerificationCallbackUrl;

  final String locatedAtCountryCode;
  final String? firstName;
  final String? lastName;
  final bool canSubmit;
  final List<Widget> actionButtons;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isInPortraitMode = context.isInPortraitMode();
    final locatedAtCountry = CountryData.getCountryData(locatedAtCountryCode);
    return Column(
      children: [
        verticalSpacer(),
        PhoneInput(controller: journeyController),
        Row(
          children: <Widget>[
            loginDivider(isLeft: true, theme: theme),
            Text(context.l10n.orText, style: theme.textTheme.labelLarge),
            loginDivider(isLeft: true, theme: theme),
          ],
        ),
        verticalSpacer(),
        TextFormField(
          decoration: InputDecorationService.getTextFormFieldInputDecoration(
            context.l10n.enterEmailAddress,
            context.l10n.emailAddress,
            theme: theme,
          ),
          validator: (val) {
            return ValidationService.validateEmail(val, context);
          },
          initialValue: journeyController.dataBinding.signupModel.emailAddress,
          onChanged: journeyController.dataBinding.setEmailAddress,
        ),
        if (journeyController.isProcessing) ...{
          processingIndicator(),
        } else
          ...actionButtons,
        Center(
          child: RichText(
            text: TextSpan(
              text: (locatedAtCountry == null)
                  ? '${context.l10n.selectYourCountry} '
                  // ignore: lines_longer_than_80_chars
                  : '${context.l10n.registerCountryChangeNote(locatedAtCountry.fullName)} ',
              style: isInPortraitMode
                  ? theme.textTheme.labelSmall
                  : theme.textTheme.labelLarge?.bold(),
              children: <TextSpan>[
                TextSpan(
                  text: (locatedAtCountry == null)
                      ? context.l10n.clickingHere
                      : context.l10n.clickHere,
                  style:
                      (isInPortraitMode
                              ? theme.textTheme.labelSmall
                              : theme.textTheme.labelLarge?.bold())!
                          .underlined()
                          .copyWith(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await journeyController.uiActions.onGoToCountrySelection(
                        journeyController,
                        signupModel,
                        context: context,
                      );
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
