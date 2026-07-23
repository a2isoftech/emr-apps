import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditAccountSettings extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditAccountSettings(
    BuildContext context, {
    required ManageMainDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.reportingFrequency,
             items: controller.reportingFrequencies,
             itemTitleText: (item) =>
                 item.reportingFrequencyDisplayString(context),
             binding: controller.data.reportingFrequency,
           ),
           EmrPickerFormField(
             labelText: context.l10n.visitFrequency,
             items: controller.visitingFrequencies,
             itemTitleText: (item) =>
                 item.key.visitFrequencyDisplayString(context),
             binding: controller.data.visitingFrequency,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.stateReportingEnabled,
             binding: controller.data.stateReportingEnabled,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.hasHazardousWasteConsignmentNote,
             binding: controller.data.hasHazardousWasteConsignmentNote,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.negativeInwardsEnabled,
             binding: controller.data.negativeInwardsEnabled,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.annualWtnSsaRequired,
             binding: controller.data.annualWtnSsaRequired,
           ),
           ValueListenableBuilder<bool>(
             valueListenable: controller.data.annualWtnSsaRequired,
             builder: (context, value, _) {
               if (!value) {
                 controller.data.wtnSsaExpiryDate.value = null;
               }

               return EmrDateFormField(
                 labelText: context.l10n.wtnSsaExpiryDate,
                 binding: controller.data.wtnSsaExpiryDate,
                 enabled: ValueNotifier(value),
               );
             },
           ),

           EmrSwitchFormField(
             labelText: context.l10n.transformationEnabled,
             binding: controller.data.transformationEnabled,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.marketingIndicatorEnabled,
             binding: controller.data.marketIndicatorEnabled,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.digitalWalletActivated,
             binding: controller.data.isDigitalWalletActivated,
           ),
           _ValidDateSlot(
             controller: controller,
             label: context.l10n.validFrom,
             binding: controller.data.validFrom,
             enabled: ValueNotifier(false),
           ),

           _ValidDateSlot(
             controller: controller,
             label: context.l10n.validTo,
             binding: controller.data.validTo,
           ),
         ],
       );
}

class _ValidDateSlot extends StatelessWidget {
  const _ValidDateSlot({
    required this.controller,
    required this.label,
    required this.binding,
    this.enabled,
  });

  final ManageMainDetailsController controller;
  final String label;
  final ValueNotifier<DateTime?> binding;
  final ValueNotifier<bool>? enabled;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller.data.validFrom,
      builder: (context, _) {
        if (controller.data.validFrom.value == null) {
          return const SizedBox.shrink();
        }

        return EmrDateFormField(
          labelText: label,
          binding: binding,
          enabled: enabled,
        );
      },
    );
  }
}
