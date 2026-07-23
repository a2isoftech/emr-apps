import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/widgets.dart';

class HaulageCard extends EmrTabBarVerticalViewResponsiveColumnsCard {
  HaulageCard(
    BuildContext context, {
    required super.title,
    required TicketDetailsFormData model,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.account,
             enabled: model.canEdit,
             binding: model.haulier,
             items: context.coreApi.accountService.pickerHauliers,
             itemTitleText: (item) => '${item.value} (${item.key})',
           ),
           EmrTextFormField(
             labelText: context.l10n.jobNumber,
             enabled: model.canEdit,
             binding: model.transportDetailsJobNumber,
           ),
         ],
       );
}
