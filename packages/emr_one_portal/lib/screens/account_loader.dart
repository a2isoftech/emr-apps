import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/mixins/full_extent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountLoader extends StatelessWidget with FullExtent {
  const AccountLoader({
    required this.accountService,
    required this.step,
    required this.emailVerificationCallbackUrl,
    super.key,
  });

  final AccountService accountService;
  final SignupStep step;
  final String emailVerificationCallbackUrl;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return FutureBuilder(
      future: accountService.getSignupModel(
        '',
        RunContext.portal,
      ),
      builder: (BuildContext ctx, AsyncSnapshot<SignupModel?> snapshot) {
        if (ConnectionState.done == snapshot.connectionState &&
            snapshot.data != null) {
          final signupModel = snapshot.data!.clone(
            step,
            RunContext.portal,
          );
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
                  emailVerificationCallbackUrl: emailVerificationCallbackUrl,
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
