import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IdentityProofPage extends StatefulWidget with FullExtent {
  IdentityProofPage({
    required this.signupModel,
    super.key,
    required this.journeyController,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;

  @override
  bool get hideFrameworkElements => signupModel.hasPortalRunContext;

  @override
  State<IdentityProofPage> createState() => _IdentityProofPageState();
}

class _IdentityProofPageState extends State<IdentityProofPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final countryCode = widget.signupModel.getLocatedAtCountryCode();
    return SignupLayout(
      runContext: widget.signupModel.runContext,
      title: context.l10n.proofOfIdentity,
      subTitle: context.l10n.msgWhyWeNeedProofOfIdentity,
      icon: Icons.badge_outlined,
      formKey: _formKey,
      onGoBack: () async {
        await widget.journeyController.uiActions
            .onBackFromSelectIdentityProofType(
              widget.journeyController,
              widget.signupModel,
              context: context,
            );
      },
      widgets: [
        Text(context.l10n.whyDoWeNeedThis, style: theme.textTheme.labelLarge),
        verticalSpacer(),
        RichText(
          text: TextSpan(
            text: countryCode.isCountryUS()
                ? context.l10n.msgWhyDoWeNeedProofOfIdentityForUS
                : context.l10n.msgWhyDoWeNeedProofOfIdentityForUK,
            style: theme.textTheme.labelLarge,
            children: countryCode.isCountryUS()
                ? <TextSpan>[
                    TextSpan(
                      text: ' ${AccountRegistrationSettings.usInfoEmail}',
                      style: (theme.textTheme.labelLarge?.bold())!
                          .underlined()
                          .copyWith(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          final email = Uri.parse(
                            'mailto:${AccountRegistrationSettings.usInfoEmail}',
                          );
                          if (await canLaunchUrl(email)) {
                            await launchUrl(email);
                          }
                        },
                    ),
                  ]
                : [],
          ),
        ),
        verticalSpacer(),
        Text(
          context.l10n.msgSkipStepByUploadingRecommendedId,
          style: theme.textTheme.labelLarge,
        ),
        ...widget.journeyController.accountService.accountServiceInterface
            .getIDDocumentSubTypes(countryCode)
            .map(
              (e) => DocumentSubTypeButton(
                journeyController: widget.journeyController,
                signupModel: widget.signupModel,
                caption: e.name,
                identityDocumentType: e.value,
                countryCode: countryCode,
                recommended: e.recommended,
                documentType: Enum$IdentificationType.PHOTO_ID,
              ),
            ),
        verticalSpacer(),
      ],
    );
  }
}
