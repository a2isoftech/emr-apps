import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerifyPhone extends StatelessWidget with FullExtent {
  VerifyPhone({
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

    return SignupLayout(
      runContext: signupModel.runContext,
      title: context.l10n.itsOnItsWay,
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
        //Consumer Widget to listen for changes
        Consumer<ChangeNotifyingService>(
          builder: (context, dataBindingService, child) {
            return PhoneVerificationInput(
              controller: journeyController,
              signupModel: signupModel,
              onSuccessfullLogin: () async {},
            );
          },
        ),
      ],
    );
  }
}
