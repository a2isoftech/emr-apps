import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class PhoneVerificationInput extends StatelessWidget with FullExtent {
  PhoneVerificationInput({
    required this.controller,
    required this.signupModel,
    required this.onSuccessfullLogin,
    super.key,
  });

  final JourneyController controller;
  final SignupModel signupModel;
  final void Function() onSuccessfullLogin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var canSubmit =
        (controller.loginService.phoneVerificationCode ?? '').isNotEmpty &&
        controller.validationService.canSubmitFromVerification(
          signupModel,
          context,
        ) &&
        ValidationService.validateVerificationCode(
              controller.loginService.phoneVerificationCode,
              context,
            ) ==
            null;

    return Column(
      children: [
        Center(
          child: Text(
            context.l10n.msgPhoneCodeSent,
            style: theme.textTheme.labelLarge,
          ),
        ),
        Center(
          child: Text(
            context.l10n.lookOutForOurText,
            style: theme.textTheme.labelLarge,
          ),
        ),
        verticalSpacer(height: Insets.gutter * 2),
        TextFormField(
          keyboardType: TextInputType.number,
          maxLength: 6,
          decoration: InputDecorationService.getTextFormFieldInputDecoration(
            context.l10n.enterTheCode,
            context.l10n.enterTheCode,
            theme: theme,
          ),
          validator: (val) {
            return ValidationService.validateVerificationCode(val, context);
          },
          onChanged: controller.loginService.setPhoneVerificationCode,
        ),
        const SizedBox(height: Insets.gutter),
        Center(
          child: TextButton(
            child: Text(
              context.l10n.errDidnotGetTheCode,
              style: theme.textTheme.labelLarge,
            ),
            onPressed: () async {
              await controller.loginService.beginSignInWithPhoneNumber(
                signupModel,
                context,
              );
            },
          ),
        ),
        verticalSpacer(),
        if (controller.isProcessing) ...{
          processingIndicator(),
        } else ...{
          Center(
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                style: canSubmit
                    ? EmrButtonStyles.cta()
                    : AccountRegistrationButtonStyles.disabled(theme),
                onPressed: canSubmit
                    ? () async {
                        controller.startProcessing();
                        await controller.loginService
                            .completeSignInWithPhoneNumber(
                              signupModel,
                              context,
                              () {
                                onSuccessfullLogin();
                              },
                            );
                      }
                    : null,
                child: Center(child: Text(context.l10n.letsGo)),
              ),
            ),
          ),
        },
      ],
    );
  }
}
