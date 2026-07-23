import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AddressProofPage extends StatelessWidget with FullExtent {
  AddressProofPage({
    required this.signupModel,
    required this.journeyController,
    super.key,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;
  final _formKey = GlobalKey<FormState>();

  @override
  bool get hideFrameworkElements => signupModel.hasPortalRunContext;

  @override
  Widget build(BuildContext context) {
    final countryCode = signupModel.getLocatedAtCountryCode();

    return SignupLayout(
      runContext: signupModel.runContext,
      title: context.l10n.proofOfAddress,
      subTitle: context.l10n.msgWhyWeNeedProofOfAddress,
      icon: Icons.home_outlined,
      formKey: _formKey,
      onGoBack: () async {
        await journeyController.uiActions.onBackFromSelectAddressProofType(
          journeyController,
          signupModel,
          context: context,
        );
      },
      widgets: [
        ...journeyController.accountService.accountServiceInterface
            .getAddressDocumentSubTypes(countryCode)
            .map(
              (e) => DocumentSubTypeButton(
                journeyController: journeyController,
                signupModel: signupModel,
                caption: e.name,
                identityDocumentType: e.value,
                countryCode: countryCode,
                recommended: e.recommended,
                documentType: Enum$IdentificationType.ADDRESS_ID,
              ),
            ),
      ],
    );
  }
}
