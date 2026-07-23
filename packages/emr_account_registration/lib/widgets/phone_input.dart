import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class PhoneInput extends StatelessWidget with FullExtent {
  PhoneInput({required this.controller, super.key});

  final JourneyController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final (isPhone, _) = context.getScreenFacts();
    final isInPortraitMode = context.isInPortraitMode();
    final countries = CountryData.getCounties(
      context,
    ).insertSelect(context.l10n.selectCountry);
    try {
      controller.dataBinding.signupModel.phoneNumberCountryCode =
          controller.dataBinding.signupModel.phoneNumberCountryCode ??
          controller.dataBinding.signupModel.locatedAtCountryCode;
    } catch (err) {
      LoggingService.logToConsole(err.toString());
      controller.dataBinding.signupModel.phoneNumberCountryCode = 'UK';
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: isPhone ? 2 : 3,
          child: InputDecorator(
            decoration: InputDecorationService.getDropDownInputDecoration(
              context.l10n.prefix,
              theme: theme,
              contentPadding: isInPortraitMode
                  ? const EdgeInsets.only(
                      top: Insets.gutter / 2,
                      bottom: Insets.gutter / 2,
                      left: Insets.gutter / 2,
                    )
                  : const EdgeInsets.all(Insets.gutter / 2),
            ),
            child: Align(
              //These changes are only for demonstration purposes.
              child: Semantics(
                label: context.l10n.msgChooseCountryFromDropDown,
                focused: true,
                child: CountryPicker(
                  countries: countries,
                  onChanged: controller.dataBinding.setPhoneNumberCountry,
                  disable: false,
                  initialValue:
                      controller
                              .dataBinding
                              .signupModel
                              .phoneNumberCountryCode ==
                          ''
                      ? controller.dataBinding.signupModel.locatedAtCountryCode
                      : controller
                            .dataBinding
                            .signupModel
                            .phoneNumberCountryCode,
                  isIsPortraitMode: context.isInPortraitMode(),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: Insets.gutter / 2),

        Expanded(
          flex: isPhone ? 3 : 4,
          child: TextFormField(
            decoration: InputDecorationService.getTextFormFieldInputDecoration(
              context.l10n.enterPhoneNumber(
                LocalizationService.getPhoneNumberString(
                  controller.dataBinding.signupModel.phoneNumberCountryCode!,
                  context,
                ).toLowerCase(),
              ),
              LocalizationService.getPhoneNumberString(
                controller.dataBinding.signupModel.phoneNumberCountryCode!,
                context,
              ),
              theme: theme,
            ),
            validator: (val) {
              return ValidationService.validateMobileNumber(
                val,
                controller.dataBinding.signupModel.phoneNumberCountryCode!,
                context,
              );
            },
            initialValue:
                controller.dataBinding.signupModel.phoneNumberOriginal,
            onChanged: controller.dataBinding.setPhoneNumber,
          ),
        ),
      ],
    );
  }
}
