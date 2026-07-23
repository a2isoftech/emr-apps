import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DocumentSubTypeButton extends StatelessWidget {
  const DocumentSubTypeButton({
    required this.journeyController,
    required this.signupModel,
    required this.identityDocumentType,
    required this.countryCode,
    required this.caption,
    required this.recommended,
    required this.documentType,
    super.key,
  });

  final JourneyController journeyController;
  final SignupModel signupModel;
  final Enum$IdentificationSubType identityDocumentType;
  final String countryCode;
  final String caption;
  final bool recommended;
  final Enum$IdentificationType documentType;
  @override
  Widget build(BuildContext context) {
    final (isPhone, _) = context.getScreenFacts();
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: Insets.gutter),
      child: InkWell(
        onTap: () async {
          journeyController.navigationService.selectedProofPageCaption =
              caption;
          if (documentType == Enum$IdentificationType.PHOTO_ID) {
            signupModel.proofOfIdType = identityDocumentType;
            await journeyController.uiActions.onNextFromSelectIdProofType(
              journeyController,
              signupModel,
              context: context,
            );
          } else {
            signupModel.proofOfAddressType = identityDocumentType;

            await journeyController.uiActions.onNextFromSelectAddressProofType(
              journeyController,
              signupModel,
              context: context,
            );
          }
        },
        child: Container(
          decoration: ShapeDecoration(
            color: theme.colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
              side: const BorderSide(color: Colors.grey),
            ),
          ),
          child: Row(
            children: [
              _getLayoutBasedText(isPhone, caption, context),
              if (recommended)
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Text(' ${context.l10n.recommended} '),
                  ),
                ),
              const Spacer(flex: 50),
              const Padding(
                padding: EdgeInsets.all(Insets.gutter),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.arrow_forward)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getLayoutBasedText(
    bool isPhone,
    String buttontext,
    BuildContext context,
  ) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        left: Insets.gutter,
        bottom: Insets.gutter,
        top: Insets.gutter,
      ),
      child: Text(
        buttontext,
        style: isPhone
            ? theme.primaryTextTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              )
            : theme.primaryTextTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
      ),
    );
  }
}
