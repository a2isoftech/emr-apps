import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditResponsibilities extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditResponsibilities(
    BuildContext context, {
    required ManageResponsibilitiesController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.managers,
             items: controller.managers,
             itemTitleText: (item) => item.value,
             binding: controller.data.newManager,
             validator: Validators.required,
             enabled: ValueNotifier(!controller.data.isPrimaryManager.value),
           ),
           EmrPickerFormField(
             labelText: context.l10n.serviceType,
             items: controller.serviceTypes,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.serviceType,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: context.l10n.priorityLabel,
             binding: controller.data.priority,
             enabled: ValueNotifier(false),
           ),
         ],
       );
}
