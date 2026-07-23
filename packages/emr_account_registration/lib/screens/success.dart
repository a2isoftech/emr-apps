import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget with FullExtent {
  SuccessPage({
    required this.signupModel,
    super.key,
    required this.journeyController,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;

  final _formKey = GlobalKey<FormState>();

  @override
  bool get hideFrameworkElements => signupModel.hasPortalRunContext;

  Future<bool> _fetchData() async {
    await JourneyController.resetModel();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final containerWidth = MediaQuery.of(context).size.width;
    final subtext = context.l10n.msgAccountSetup;

    return FutureBuilder(
      future: _fetchData(),

      builder: (BuildContext ctx, AsyncSnapshot<bool> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          final widgets = [
            SizedBox(width: containerWidth),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: EmrFlutterFirebaseAuthEmrColours.primaryGreen,
              ),
              child: Icon(
                Icons.check,
                size: 160,
                color: theme.colorScheme.surface,
              ),
            ),
            verticalSpacer(height: Insets.gutter * 2),
            Text(subtext, style: theme.textTheme.titleMedium),
            verticalSpacer(height: Insets.gutter * 2),
            colouredButton(
              text: signupModel.hasPortalRunContext
                  ? context.l10n.goToPortal
                  : context.l10n.registerNew,
              style: EmrButtonStyles.cta(),
              onPressed: () async {
                await journeyController.uiActions.onStartAgain(
                  journeyController,
                  signupModel,
                  context: context,
                );
              },
            ),
          ];

          return SignupLayout(
            runContext: signupModel.runContext,
            title: context.l10n.youAreAllSet,
            formKey: _formKey,
            onGoBack: null,
            widgets: widgets,
          );
        } else {
          return processingIndicator();
        }
      },
    );
  }
}
