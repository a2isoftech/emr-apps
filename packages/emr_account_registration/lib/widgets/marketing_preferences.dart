import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

Widget marketingPreferences(
  BuildContext context,
  JourneyController journeyController, {
  bool isDutchLocale = false,
}) {
  return InputDecorator(
    decoration: InputDecorationService.getDropDownInputDecoration(
      context.l10n.msgMarkettingPreferencesOptOut,
      theme: Theme.of(context),
    ),
    child: Column(
      children: [
        MarketingPreferenceTile(
          title: context.l10n.markettingPreferenceEmailNote,
          value: journeyController.dataBinding.signupModel.canEmail ?? false,
          isDisabled: journeyController.validationService.disabled,
          onChanged: (checked) =>
              journeyController.dataBinding.setCanEmail(val: checked),
        ),
        MarketingPreferenceTile(
          title: context.l10n.markettingPreferenceTextNote,
          value: journeyController.dataBinding.signupModel.canSms ?? false,
          isDisabled: journeyController.validationService.disabled,
          onChanged: (checked) =>
              journeyController.dataBinding.setCanSms(val: checked),
        ),
        MarketingPreferenceTile(
          title: context.l10n.markettingPreferenceTelephoneNote,
          value: journeyController.dataBinding.signupModel.canPhone ?? false,
          isDisabled: journeyController.validationService.disabled,
          onChanged: (checked) =>
              journeyController.dataBinding.setCanPhone(val: checked),
        ),
        if (!isDutchLocale)
          MarketingPreferenceTile(
            title: context.l10n.wantToBeContactedByPost,
            value: journeyController.dataBinding.signupModel.canPost ?? false,
            isDisabled: journeyController.validationService.disabled,
            onChanged: (checked) =>
                journeyController.dataBinding.setCanPost(val: checked),
          ),
      ],
    ),
  );
}
