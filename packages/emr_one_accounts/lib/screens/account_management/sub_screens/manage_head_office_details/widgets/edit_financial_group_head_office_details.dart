import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditFinancialGroupHeadOfficeDetails
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditFinancialGroupHeadOfficeDetails(
    BuildContext context, {
    required ManageHeadOfficeDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.financialCustomerGroup,
             items: controller.financialCustomerGroups,
             itemTitleText: (item) => item,
             binding: controller.data.financialCustomerGroup,
           ),
           EmrPickerFormField(
             labelText: context.l10n.financialSupplierGroup,
             items: controller.financialSupplierGroups,
             itemTitleText: (item) => item,
             binding: controller.data.financialSupplierGroup,
           ),
         ],
       );
}
