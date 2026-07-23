import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/widgets.dart';

class HistoryCard extends EmrTabBarVerticalViewResponsiveColumnsCard {
  HistoryCard(
    BuildContext context, {
    required super.title,
    required TicketDetailsFormData model,
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
           if (model.deletionDetails.value != null)
             EmrTextFormField(
               labelText: 'Deleted At',
               enabled: ValueNotifier(false),
               binding: ValueNotifier(
                 model.deletionDetails.value!.at.asyMMdtime(
                   Localizations.localeOf(context),
                 ),
               ),
             ),
           if (model.deletionDetails.value != null)
             EmrTextFormField(
               labelText: 'Deleted By',
               enabled: ValueNotifier(false),
               binding: ValueNotifier(model.deletionDetails.value!.userName),
             ),
         ],
       );
}
