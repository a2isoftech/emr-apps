import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditGeneralHeadOfficeDetails
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditGeneralHeadOfficeDetails(
    BuildContext context, {
    required ManageHeadOfficeDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrTextFormField(
             labelText: context.l10n.companyRegNo,
             binding: controller.data.companyRegistrationNumber,
           ),
           EmrTextFormField(
             labelText: context.l10n.vatReg,
             binding: controller.data.vatNumber,
           ),
           EmrTextFormField(
             labelText: context.l10n.eoriNumber,
             binding: controller.data.eoriNumber,
           ),
           EmrTextFormField(
             labelText: context.l10n.website,
             binding: controller.data.website,
           ),
           Row(
             children: [
               Text(context.l10n.isTradingCompany),
               ValueListenableBuilder(
                 valueListenable: controller.data.isTradingCompany,
                 builder: (context, activeValue, child) {
                   return Switch(
                     value: activeValue ?? false,
                     onChanged: (value) {
                       controller.data.isTradingCompany.value = value;
                     },
                   );
                 },
               ),
             ],
           ),
         ],
       );
}
