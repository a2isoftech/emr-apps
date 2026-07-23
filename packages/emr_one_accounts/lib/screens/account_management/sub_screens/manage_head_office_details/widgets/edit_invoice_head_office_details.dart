import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EditInvoiceHeadOfficeDetails
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditInvoiceHeadOfficeDetails(
    BuildContext context, {
    required ManageHeadOfficeDetailsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           toggleItem(
             label: context.l10n.bulkPod,
             notifier: controller.data.bulkPod,
             onChanged: ({required bool value}) {
               controller.data.bulkPod.value = value;
             },
           ),
           toggleItem(
             label: context.l10n.multiLoad,
             notifier: controller.data.multiLoad,
             onChanged: ({required bool value}) {
               controller.data.multiLoad.value = value;
             },
           ),
           toggleItem(
             label: context.l10n.multiDepot,
             notifier: controller.data.multiDepot,
             onChanged: ({required bool value}) {
               controller.data.multiDepot.value = value;
             },
           ),
           toggleItem(
             label: context.l10n.multiGrade,
             notifier: controller.data.multiGrade,
             onChanged: ({required bool value}) {
               controller.data.multiGrade.value = value;
             },
           ),
           toggleItem(
             label: context.l10n.multiTicketDate,
             notifier: controller.data.multiTicketDate,
             onChanged: ({required bool value}) {
               controller.data.multiTicketDate.value = value;
             },
           ),
           toggleItem(
             label: context.l10n.multiLocation,
             notifier: controller.data.multiLocation,
             onChanged: ({required bool value}) {
               controller.data.multiLocation.value = value;
             },
           ),
           toggleItem(
             label: context.l10n.useDeliveryAddress,
             notifier: controller.data.useDeliveryAddress,
             onChanged: ({required bool value}) {
               controller.data.useDeliveryAddress.value = value;
             },
           ),
           toggleItem(
             label: context.l10n.suppressInvoice,
             notifier: controller.data.suppressInvoice,
             onChanged: ({required bool value}) {
               controller.data.suppressInvoice.value = value;
             },
           ),
           toggleItem(
             label: context.l10n.suppressStatement,
             notifier: controller.data.suppressStatement,
             onChanged: ({required bool value}) {
               controller.data.suppressStatement.value = value;
             },
           ),
         ],
       );
}

Widget toggleItem({
  required String label,
  required ValueListenable<bool?> notifier,
  required void Function({required bool value}) onChanged,
}) {
  return Row(
    children: [
      Text(label),
      ValueListenableBuilder<bool?>(
        valueListenable: notifier,
        builder: (context, activeValue, _) {
          return Switch(
            value: activeValue ?? false,
            onChanged: (value) => onChanged(value: value),
          );
        },
      ),
    ],
  );
}
