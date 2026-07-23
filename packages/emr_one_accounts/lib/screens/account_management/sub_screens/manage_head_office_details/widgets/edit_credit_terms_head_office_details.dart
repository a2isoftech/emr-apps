import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditCreditTermsHeadOfficeDetails
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditCreditTermsHeadOfficeDetails(
    BuildContext context, {
    required ManageHeadOfficeDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.customerPaymentTerms,
             items: controller.paymentTerms,
             itemTitleText: (item) => item,
             binding: controller.data.creditPaymentTermTypeName,
           ),
           EmrPickerFormField(
             labelText: context.l10n.dueDateFrom,
             items: controller.dueDateFrom,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.dueDateFrom,
           ),
           EmrPickerFormField(
             labelText: context.l10n.invoicePeriodicity,
             items: controller.invoicePeriodicity,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.invoicePeriodicity,
           ),
           EmrPickerFormField(
             labelText: context.l10n.invoicePeriodicityDays,
             items: controller.invoicePeriodicityDays,
             itemTitleText: (item) => item,
             binding: controller.data.invoicePeriodicityDays,
           ),
           EmrPickerFormField(
             labelText: context.l10n.vatClass,
             items: controller.vatClass,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.vatClass,
           ),
           EmrPickerFormField(
             labelText: context.l10n.limitDecisionType,
             items: controller.limitDecisionType,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.limitDecisionType,
           ),
           Row(
             children: [
               Text(context.l10n.onStop),
               ValueListenableBuilder(
                 valueListenable: controller.data.onStop,
                 builder: (context, activeValue, child) {
                   return Switch(
                     value: activeValue ?? false,
                     onChanged: (value) {
                       controller.data.onStop.value = value;
                     },
                   );
                 },
               ),
             ],
           ),
         ],
       );
}
