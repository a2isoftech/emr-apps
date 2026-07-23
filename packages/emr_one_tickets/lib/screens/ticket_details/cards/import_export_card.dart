import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/widgets.dart';

class ImportExportCard extends EmrTabBarVerticalViewResponsiveColumnsCard {
  ImportExportCard(
    BuildContext context, {
    required super.title,
    required TicketDetailsFormData model,
    super.key,
  }) : super(
         children: [
           EmrTextFormField(
             labelText: context.l10n.containerNumber,
             enabled: model.canEdit,
             binding: model.containerNumber,
           ),
         ],
       );
}
