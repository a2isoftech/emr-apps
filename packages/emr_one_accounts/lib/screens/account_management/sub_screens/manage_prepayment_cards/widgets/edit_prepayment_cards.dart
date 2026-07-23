import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditPrepaymentCards extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditPrepaymentCards(
    BuildContext context, {
    required ManagePrepaymentCardsController controller,
    required super.title,
    required bool isReplaceAction,
    super.key,
  }) : super(
         children: [
           EmrTextFormField(
             labelText: context.l10n.code,
             binding: controller.data.code,
             validator: (value) {
               if (value == null || value.isEmpty) {
                 return context.l10n.requiredField;
               }

               final regExp = RegExp(r'^[Ss]\s?\d{5}$');

               if (!regExp.hasMatch(value)) {
                 return context.l10n.prepayCardFormatMsg;
               }

               return null;
             },
           ),
           EmrTextFormField(
             labelText: context.l10n.panDigits,
             binding: controller.data.panDigits,
             validator: (digitValue) {
               if (digitValue?.isEmpty ?? true) {
                 return context.l10n.enterLastFourDigits;
               }
               if (!RegExp(r'^[0-9]{4}?$').hasMatch(digitValue!)) {
                 return context.l10n.enterLastFourDigits;
               }

               return null;
             },
           ),
           EmrPickerFormField(
             labelText: context.l10n.issuerType,
             items: controller.issuerTypes,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.issuerType,
             validator: Validators.required,
           ),
           EmrDateFormField(
             labelText: context.l10n.issueDate,
             binding: controller.data.issueDate,
             validator: Validators.required,
           ),
           Visibility(
             visible: isReplaceAction,
             child: EmrPickerFormField(
               labelText: context.l10n.yardCode,
               items: controller.yardCodes,
               itemTitleText: (item) => item.name,
               itemSubtitleText: (item) => item.yardCode,
               binding: controller.data.yard,
               validator: Validators.required,
             ),
           ),
         ],
       );
}
