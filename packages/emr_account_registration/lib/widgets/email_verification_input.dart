import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EmailVerificationInput extends StatelessWidget with FullExtent {
  EmailVerificationInput({
    required this.controller,
    required this.signupModel,
    required this.callbackUrl,
    required this.onSuccessfullLogin,
    required this.locatedAtCountry,
    this.firstName,
    this.lastName,
    super.key,
  });

  final JourneyController controller;
  final SignupModel signupModel;
  final String callbackUrl;
  final CountryData? locatedAtCountry;
  final void Function() onSuccessfullLogin;
  final String? firstName;
  final String? lastName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final languageCode = Localizations.localeOf(context).languageCode;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        verticalSpacer(height: Insets.gutter * 2),
        Center(
          child: Text(
            context.l10n.msgMessageSent,
            style: theme.textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpacer(),
        SizedBox(
          width: screenWidth,
          child: Text(
            context.l10n.verificationEmailSubjectHintNote(
              signupModel.emailAddress ?? '',
            ),
            style: theme.textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpacer(),
        Center(
          child: Text(
            context.l10n.msgSignIn,
            style: theme.textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpacer(),
        Center(
          child: Text(
            context.l10n.msgVerifyEmail,
            style: theme.textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpacer(),
        if (controller.isProcessing)
          processingIndicator()
        else
          Center(
            child: TextButton(
              style: EmrButtonStyles.cta(),
              onPressed: () async {
                controller.startProcessing();
                await controller.loginService.beginSignInWithEmailLink(
                  signupModel,
                  context,
                  callbackUrl,
                  firstName: firstName,
                  lastName: lastName,
                  languageCode: languageCode,
                );
                controller.endProcessing();
              },
              child: Text(context.l10n.msgDidnotGetTheLink),
            ),
          ),
      ],
    );
  }
}
