import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditPaymentTermsHeadOfficeDetails
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditPaymentTermsHeadOfficeDetails(
    BuildContext context, {
    required ManageHeadOfficeDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.traderPaymentTerms,
             items: controller.paymentTerms,
             itemTitleText: (item) => item,
             binding: controller.data.paymentTermTypeName,
           ),
           EmrPickerFormField(
             labelText: context.l10n.financialPaymentMethod,
             items: controller.financialPaymentMethodsGroups,
             itemTitleText: (item) => item,
             binding: controller.data.financialPaymentMethod,
           ),
           EmrPickerFormField(
             labelText: context.l10n.documentHoldStatusType,
             items: controller.documentHoldStatusType,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.documentHoldStatusType,
           ),
           EmrPickerFormField(
             labelText: context.l10n.discount,
             items: controller.discountTypes,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.discount,
           ),
           EmrPickerFormField(
             labelText: context.l10n.taxMethod,
             items: controller.taxMethods,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.taxMethod,
           ),
           EmrTextFormField(
             labelText: context.l10n.discountTerms,
             binding: controller.data.discountTerms,
           ),
           EmrTextFormField(
             labelText: context.l10n.discountPercentage,
             binding: controller.data.discountPercentage,
           ),
           Row(
             children: [
               Text(context.l10n.adjustTax),
               ValueListenableBuilder(
                 valueListenable: controller.data.adjustTax,
                 builder: (context, activeValue, child) {
                   return Switch(
                     value: activeValue ?? false,
                     onChanged: (value) {
                       controller.data.adjustTax.value = value;
                     },
                   );
                 },
               ),
             ],
           ),
         ],
       );
}
