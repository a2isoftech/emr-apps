import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DocumentOCRFailed extends StatelessWidget with FullExtent {
  DocumentOCRFailed({
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
      title: context.l10n.stage1Of2AboutYou,
      titleStyle: theme.textTheme.labelLarge?.bold(),
      formKey: _formKey,
      onGoBack: () async {
        await journeyController.uiActions.onBackFromSelectIdentityProofType(
          journeyController,
          signupModel,
          context: context,
        );
      },
      widgets: [
        Text(
          context.l10n.documentNotOCRed,
          style: theme.textTheme.headlineLarge,
        ),
      ],
    );
  }
}
