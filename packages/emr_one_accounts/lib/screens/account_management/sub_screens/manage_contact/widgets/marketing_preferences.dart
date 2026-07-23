import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class MarketingPreferences extends EmrTabBarVerticalViewResponsiveColumnsCard {
  MarketingPreferences(
    BuildContext context, {
    required super.title,
    required ManageContactController controller,
    super.key,
  }) : super(
         children: [
           preferenceSwitch(
             context.l10n.agreeToSms,
             controller.data.smsEnabled,
           ),
           preferenceSwitch(
             context.l10n.agreeToPhone,
             controller.data.phoneEnabled,
           ),
           preferenceSwitch(
             context.l10n.agreeToEmail,
             controller.data.emailEnabled,
           ),
           preferenceSwitch(
             context.l10n.agreeToPost,
             controller.data.postEnabled,
           ),
           preferenceSwitch(
             context.l10n.agreeToFax,
             controller.data.faxEnabled,
           ),
           preferenceSwitch(
             context.l10n.agreeToBulkEmail,
             controller.data.bulkEmailEnabled,
           ),
         ],
       );
}

Widget preferenceSwitch(
  String label,
  ValueNotifier<bool> binding
) {
  return Row(
    children: [EmrSwitchFormField(labelText: label, binding: binding)],
  );
}
