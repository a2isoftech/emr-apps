import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/widgets.dart';

class TicketLineHistoryCard extends EmrTabBarVerticalViewResponsiveColumnsCard {
  TicketLineHistoryCard(
    BuildContext context, {
    required super.title,
    required TicketLineFormData model,
    super.key,
  }) : super(
         children: [
           EmrTextFormField(
             labelText: context.l10n.createdAt,
             enabled: ValueNotifier(false),
             binding: ValueNotifier(
               model.created.value!.at.asyMMdtime(
                 Localizations.localeOf(context),
               ),
             ),
           ),
           EmrTextFormField(
             labelText: context.l10n.createdBy,
             enabled: ValueNotifier(false),
             binding: ValueNotifier(model.created.value!.userName),
           ),
           EmrTextFormField(
             labelText: 'Modified At',
             enabled: ValueNotifier(false),
             binding: ValueNotifier(
               model.modified.value!.at.asyMMdtime(
                 Localizations.localeOf(context),
               ),
             ),
           ),
           EmrTextFormField(
             labelText: context.l10n.modifiedBy,
             enabled: ValueNotifier(false),
             binding: ValueNotifier(model.modified.value!.userName),
           ),
         ],
       );
}
