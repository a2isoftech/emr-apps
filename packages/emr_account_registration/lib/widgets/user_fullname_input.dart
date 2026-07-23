import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class UserFullnameInput extends StatelessWidget with FullExtent {
  UserFullnameInput({required this.controller, super.key});

  final JourneyController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        verticalSpacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 5,
              child: TextFormField(
                decoration:
                    InputDecorationService.getTextFormFieldInputDecoration(
                      context.l10n.msgEnterFirstName,
                      context.l10n.firstName,
                      theme: theme,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                onChanged: controller.dataBinding.setFirstName,
                initialValue: controller.dataBinding.signupModel.firstName,
                validator: (val) {
                  return ValidationService.validateFirstName(val, context);
                },
                enabled: !controller.dataBinding.disabled(),
              ),
            ),
            const SizedBox(width: Insets.gutter / 2),
            Expanded(
              flex: 5,
              child: TextFormField(
                decoration:
                    InputDecorationService.getTextFormFieldInputDecoration(
                      context.l10n.msgEnterLastName,
                      context.l10n.lastName,
                      theme: theme,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                onChanged: controller.dataBinding.setLastName,
                initialValue: controller.dataBinding.signupModel.lastName,
                validator: (val) {
                  return ValidationService.validateLastName(val, context);
                },
                enabled: !controller.dataBinding.disabled(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
