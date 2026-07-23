import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class AccountSignaturePad extends StatelessWidget {
  const AccountSignaturePad({
    required this.signupModel,
    required this.journeyController,
    required this.emrInkPadController,
    required this.changeNotifyingService,
    super.key,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;
  final EmrInkPadController emrInkPadController;
  final ChangeNotifyingService changeNotifyingService;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    final signaturePadWidth = MediaQuery.of(context).size.width;
    final (isPhone, _) = context.getScreenFacts();
    return Column(
      children: [
        Visibility(
          visible: signupModel.isSignatureRequired,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                context.l10n.needSignatureNote,
                style: isPhone
                    ? theme.textTheme.titleLarge!.bold()
                    : theme.textTheme.headlineLarge,
              ),
              HelpPopup(
                clickable: const Icon(Icons.info, size: 30),
                popup: Text(
                  context.l10n.whyWeNeedSignature,
                  style: theme.textTheme.labelMedium?.bold(),
                ),
              ),
            ],
          ),
        ),
        verticalSpacer(),
        verticalSpacer(),
        if (journeyController.paymentDetailsService.signature == null &&
            signupModel.isSignatureRequired) ...{
          SizedBox(
            width: signaturePadWidth,
            height: 200,
            child: EmrInkPad(
              backgroundColour: const Color(0xFFD6D6D6),
              controller: emrInkPadController,
            ),
          ),
          verticalSpacer(),
        },
        if (journeyController.paymentDetailsService.signature != null &&
            signupModel.isSignatureRequired) ...{
          SizedBox(
            child: Image.memory(
              journeyController.paymentDetailsService.signature!,
            ),
          ),
          verticalSpacer(),
        },
        Visibility(
          visible: signupModel.isSignatureRequired,
          child: Wrap(
            spacing: Insets.gutter,
            runSpacing: Insets.gutter,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              colouredButton(
                text: context.l10n.saveSignature,
                textColor: brandColours.onBrandColour,
                width: 150,
                color: journeyController.paymentDetailsService.signature == null
                    ? brandColours.brandColour!
                    : theme.disabledColor,
                onPressed:
                    journeyController.paymentDetailsService.signature == null
                    ? () async {
                        await _setSignature(journeyController);
                      }
                    : null,
              ),
              colouredButton(
                text: context.l10n.clearSignature,
                textColor: brandColours.onBrandColour,
                width: 150,
                color: journeyController.paymentDetailsService.signature != null
                    ? brandColours.brandColour!
                    : theme.disabledColor,
                onPressed:
                    journeyController.paymentDetailsService.signature != null
                    ? () {
                        emrInkPadController.resetImage();
                        journeyController.paymentDetailsService
                            .clearSignature();
                        changeNotifyingService.notifyListenersInternal();
                      }
                    : null,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _setSignature(JourneyController controller) async {
    final img = await emrInkPadController.getImage();
    if (img != null) {
      controller.paymentDetailsService.setSignature(img);
      changeNotifyingService.notifyListenersInternal();
    }
  }
}
