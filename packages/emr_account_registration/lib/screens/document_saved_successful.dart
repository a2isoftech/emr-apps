import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DocumentSavedSuccessful extends StatelessWidget with FullExtent {
  DocumentSavedSuccessful({
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
    final containerWidth = MediaQuery.of(context).size.width;
    final subtext = signupModel.getLocatedAtCountryCode().isCountryNL()
        ? context.l10n.msgAddressUploaded
        : context.l10n.msgDocumentUploaded;

    final widgets = [
      SizedBox(width: containerWidth),
      Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: EmrFlutterFirebaseAuthEmrColours.primaryGreen,
        ),
        child: Icon(Icons.check, size: 160, color: theme.colorScheme.surface),
      ),
      verticalSpacer(height: Insets.gutter * 2),
      Text(subtext, style: theme.textTheme.titleMedium),
      verticalSpacer(height: Insets.gutter * 2),
      colouredButton(
        text: context.l10n.done,
        style: EmrButtonStyles.cta(),
        onPressed: () async {
          await journeyController.uiActions.onNextFromSuccessfulDocumentUpload(
            journeyController,
            signupModel,
            context: context,
          );
        },
      ),
    ];

    return SignupLayout(
      runContext: signupModel.runContext,
      title: context.l10n.success,
      titleStyle: theme.textTheme.labelLarge?.bold(),
      formKey: _formKey,
      onGoBack: null,
      widgets: widgets,
    );
  }
}
