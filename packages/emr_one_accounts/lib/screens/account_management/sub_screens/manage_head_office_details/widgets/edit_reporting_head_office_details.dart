import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_head_office_details/controllers/manage_head_office_details_controller.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/form_fields/emr_date_form_field.dart';
import 'package:emr_one_core/widgets/form_fields/emr_picker_form_field.dart';
import 'package:emr_one_core/widgets/form_fields/emr_text_form_field.dart';
import 'package:emr_one_core/widgets/layouts/emr_tab_bar_vertical_view/emr_tab_bar_vertical_view_responsive_columns_card.dart';
import 'package:flutter/material.dart';

class EditReportingHeadOfficeDetails
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditReportingHeadOfficeDetails(
    BuildContext context, {
    required ManageHeadOfficeDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.taxIdType,
             items: controller.taxIdTypes,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.taxIdType,
           ),

           EmrPickerFormField(
             labelText: context.l10n.nameFor1099,
             items: controller.namesToUseOn1099,
             itemTitleText: (item) => item,
             binding: controller.data.nameFor1099,
           ),
           EmrDateFormField(
             labelText: context.l10n.reportingDate,
             binding: controller.data.reportingDate,
           ),
           EmrDateFormField(
             labelText: context.l10n.cashPaymentLimitExemptionDate,
             binding: controller.data.cashPaymentLimitExemptionDate,
           ),
           EmrTextFormField(
             labelText: context.l10n.doingBusinessAs,
             binding: controller.data.doingBusinessAs,
           ),
           Row(
             children: [
               Text(context.l10n.checkForW9),
               ValueListenableBuilder(
                 valueListenable: controller.data.checkForW9,
                 builder: (context, activeValue, child) {
                   return Switch(
                     value: activeValue ?? false,
                     onChanged: (value) {
                       controller.data.checkForW9.value = value;
                     },
                   );
                 },
               ),
             ],
           ),
           Row(
             children: [
               Text(context.l10n.w9Received),
               ValueListenableBuilder(
                 valueListenable: controller.data.w9Received,
                 builder: (context, activeValue, child) {
                   return Switch(
                     value: activeValue ?? false,
                     onChanged: (value) {
                       controller.data.w9Received.value = value;
                     },
                   );
                 },
               ),
             ],
           ),
           Row(
             children: [
               Text(context.l10n.foreignIndicator),
               ValueListenableBuilder(
                 valueListenable: controller.data.foreignEntityIndicator,
                 builder: (context, activeValue, child) {
                   return Switch(
                     value: activeValue ?? false,
                     onChanged: (value) {
                       controller.data.foreignEntityIndicator.value = value;
                     },
                   );
                 },
               ),
             ],
           ),
           Row(
             children: [
               Text(context.l10n.secondTin),
               ValueListenableBuilder(
                 valueListenable: controller.data.secondTin,
                 builder: (context, activeValue, child) {
                   return Switch(
                     value: activeValue ?? false,
                     onChanged: (value) {
                       controller.data.secondTin.value = value;
                     },
                   );
                 },
               ),
             ],
           ),
         ],
       );
}
