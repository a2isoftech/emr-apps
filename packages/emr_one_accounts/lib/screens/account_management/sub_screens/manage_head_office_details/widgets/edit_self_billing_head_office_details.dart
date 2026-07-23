import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditSelfBillingHeadOfficeDetails
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditSelfBillingHeadOfficeDetails(
    BuildContext context, {
    required ManageHeadOfficeDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrDateFormField(
             labelText: '${context.l10n.selfBilling} ${context.l10n.date}',
             binding: controller.data.selfBillingDate,
           ),
           EmrPickerFormField(
             labelText: context.l10n.frequency,
             items: controller.selfBillingfrequency,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.frequency,
           ),
           EmrTextFormField(
             labelText: context.l10n.doNotpayTicketsOlderThan,
             binding: controller.data.doNotPayTicketsOlderThan,
             validator: (value) => Validators.decimal(value, min: 0, max: 93),
           ),
           EmrTextFormField(
             labelText: context.l10n.payTicketsOlderThan,
             binding: controller.data.payTicketsOlderThan,
             validator: (value) => Validators.decimal(value, min: 0, max: 93),
           ),
           EmrPickerFormField(
             labelText: context.l10n.payCentre,
             items: controller.getDepots,
             itemTitleText: (item) => item,
             binding: controller.data.payCentre,
           ),
           Row(
             children: [
               Text(context.l10n.autoApprove),
               ValueListenableBuilder(
                 valueListenable: controller.data.autoApprove,
                 builder: (context, activeValue, child) {
                   return Switch(
                     value: activeValue ?? false,
                     onChanged: (value) {
                       controller.data.autoApprove.value = value;
                     },
                   );
                 },
               ),
             ],
           ),
         ],
       );
}
