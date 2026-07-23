import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/mixins/full_extent.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget with FullExtent {
  final RunContext runContext;
  final String emailVerificationCallbackUrl;
  final JourneyController journeyController;

  @override
  bool get hideFrameworkElements => runContext.isPortal;

  const Start({
    super.key,
    required this.runContext,
    required this.emailVerificationCallbackUrl,
    required this.journeyController,
  });

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return FutureBuilder(
      future: JourneyController.initialize(
        Localizations.localeOf(context),
        runContext,
        context,
        useStaticModelForJourney:
            AccountRegistrationRemoteConfigService.useStaticModelForJourney,
      ),
      builder: (BuildContext ctx, AsyncSnapshot<SignupModel> snapshot) {
        if (ConnectionState.done == snapshot.connectionState &&
            snapshot.data != null) {
          return Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            onChanged: () => {},
            child: SignupStepWidget(
              journeyController: journeyController,
              signupModel: snapshot.data!,
              emailVerificationCallbackUrl: emailVerificationCallbackUrl,
            ),
          );
        } else {
          return processingIndicator();
        }
      },
    );
  }
}
