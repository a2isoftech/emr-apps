import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

Widget customerSignupDropdowns(
  RunContext runContext,
  BuildContext context,
  JourneyController journeyController, {
  bool isDutchLocale = false,
}) {
  final localizedFrequencies = LocalizationService.getLocalizedFrequencies(
    runContext,
    context,
    isDutchLocale: isDutchLocale,
  );
  final localizedRoles = LocalizationService.getLocalizedRoles(
    runContext,
    context,
    isDutchLocale: isDutchLocale,
  );

  final theme = Theme.of(context);
  return InputDecorator(
    decoration: InputDecorationService.getDropDownInputDecoration(
      context.l10n.msgMarkettingPreferencesOptOut,
      theme: Theme.of(context),
    ),
    child: Column(
      children: [
        verticalSpacer(),

        SignupDropdownField(
          title: context.l10n.role,
          value:
              localizedRoles.entries.any(
                (r) =>
                    r.value == journeyController.dataBinding.signupModel.role,
              )
              ? journeyController.dataBinding.signupModel.role
              : '',
          isDisabled: journeyController.validationService.disabled,
          items: localizedRoles.entries
              .map(
                (e) => DropdownMenuItem(
                  value: e.value,
                  child: Text(
                    e.key,
                    style: TextStyle(
                      color: e.value == ''
                          ? theme.colorScheme.outlineVariant
                          : theme.colorScheme.outline,
                    ),
                  ),
                ),
              )
              .toList(),
          onChanged: (val) =>
              journeyController.dataBinding.setRole(val, notify: true),
          onSaved: (val) =>
              journeyController.dataBinding.setRole(val, notify: true),
          validator: (val) {
            return ValidationService.validateRole(val, context);
          },
        ),
        verticalSpacer(),
        SignupDropdownField(
          title: context.l10n.frequency,
          value: journeyController.dataBinding.signupModel.frequency,
          isDisabled: false,
          items: localizedFrequencies.entries
              .map(
                (e) => DropdownMenuItem(
                  value: e.value,
                  child: Text(
                    e.key,
                    style: TextStyle(
                      color: e.value == Enum$VisitFrequency.$unknown
                          ? theme.colorScheme.outlineVariant
                          : theme.colorScheme.outline,
                    ),
                  ),
                ),
              )
              .toList(),
          onChanged: journeyController.dataBinding.setFrequency,
          onSaved: journeyController.dataBinding.setFrequency,
          validator: (val) {
            return ValidationService.validateFrequency(val, context);
          },
        ),
        verticalSpacer(),
        SignupDropdownField(
          title: context.l10n.yourLocalYard,
          value:
              journeyController.standingDataService.yards.any(
                (y) =>
                    y.yardCode ==
                    journeyController.dataBinding.signupModel.yardCode,
              )
              ? journeyController.dataBinding.signupModel.yardCode
              : null,
          isDisabled: journeyController.validationService.disabled,
          items: journeyController.standingDataService.yards
              .map(
                (e) => DropdownMenuItem(
                  value: e.yardCode,
                  child: Text(
                    e.yardName,
                    style: TextStyle(
                      color: e.yardCode == ''
                          ? theme.colorScheme.outlineVariant
                          : theme.colorScheme.outline,
                    ),
                  ),
                ),
              )
              .toList(),
          onChanged: journeyController.dataBinding.setYard,
          onSaved: journeyController.dataBinding.setYard,
          validator: (val) {
            return ValidationService.validateYardCode(val, context);
          },
        ),
      ],
    ),
  );
}
