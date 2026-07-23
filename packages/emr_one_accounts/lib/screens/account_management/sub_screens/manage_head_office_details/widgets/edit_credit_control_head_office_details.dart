import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditCreditControlHeadOfficeDetails
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditCreditControlHeadOfficeDetails(
    BuildContext context, {
    required ManageHeadOfficeDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.insurerPolicy,
             items: controller.insurerPolicy,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.insurerPolicyName,
           ),
           EmrTextFormField(
             labelText: context.l10n.creditLimit,
             binding: controller.data.creditLimit,
             validator: Validators.decimal,
           ),
           EmrTextFormField(
             labelText: context.l10n.overrideLimit,
             binding: controller.data.overrideLimit,
             validator: Validators.decimal,
           ),
           EmrTextFormField(
             labelText: context.l10n.decisionLimit,
             binding: controller.data.decisionLimit,
             validator: Validators.decimal,
           ),
           EmrDateFormField(
             labelText: context.l10n.creditReportDate,
             binding: controller.data.creditReportDate,
           ),
           EmrTextFormField(
             labelText: context.l10n.creditReportValue,
             binding: controller.data.creditReportValue,
             validator: Validators.decimal,
           ),
           EmrDateFormField(
             labelText: context.l10n.creditLimitReviewDate,
             binding: controller.data.creditLimitReviewDate,
           ),
           EmrPickerFormField(
             labelText: context.l10n.currency,
             items: StandingDataService.currencyCodes,
             itemTitleText: (item) => item,
             binding: controller.data.currencyId,
           ),
           Row(
             children: [
               Text(context.l10n.contraAgreed),
               ValueListenableBuilder(
                 valueListenable: controller.data.contraAgreed,
                 builder: (context, activeValue, child) {
                   return Switch(
                     value: activeValue ?? false,
                     onChanged: (value) {
                       controller.data.contraAgreed.value = value;
                     },
                   );
                 },
               ),
             ],
           ),
         ],
       );
}
