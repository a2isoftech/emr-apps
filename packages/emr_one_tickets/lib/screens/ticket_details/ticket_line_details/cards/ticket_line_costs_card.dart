import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/widgets.dart';

class TicketLineCostsCard extends EmrTabBarVerticalViewCard {
  TicketLineCostsCard(
    BuildContext context, {
    required super.title,
    required TicketLineFormData model,
    super.key,
  }) : super(
         maxHeight: max(model.costs.value.length + 1, 2) * 40,
         padding: EdgeInsets.zero,
         child: ClipRRect(
           borderRadius: const BorderRadius.all(
             // We need to clip the grid so we don't overlap the card border.
             Radius.circular(EmrCard.cardRadius - 0.5),
           ),
           child: EmrGrid<CostFormData>(
             controller: EmrGridController(data: model.costs),
             alternateBackgroundRowColour: true,
             pinnedColumnCount: 1,
             rowHeight: (rowIndex) => 40,
             columns: [
               EmrGridColumn(
                 width: 115,
                 headerBuilder: () => EmrGridHeader(text: context.l10n.type),
                 cellBuilder: (row) =>
                     Text(context.l10n.byKey(row.typeId.value)),
               ),
               EmrGridColumn(
                 width: 300,
                 headerBuilder: () => EmrGridHeader(text: context.l10n.account),
                 cellBuilder: (row) => Text(
                   '${row.costParty.value.value} (${row.costParty.value.key})',
                 ),
               ),
               EmrGridColumn(
                 width: 115,
                 alignment: .centerRight,
                 headerBuilder: () => EmrGridHeader(text: context.l10n.status),
                 cellBuilder: (row) =>
                     Text(row.costStatus.value.displayString(context)),
               ),
               EmrGridColumn(
                 width: 115,
                 alignment: .centerRight,
                 headerBuilder: () =>
                     EmrGridHeader(text: context.l10n.rate, textAlign: .right),
                 cellBuilder: (row) => Text(
                   row.rate.value == null ? '' : row.rate.value.toString(),
                 ),
               ),
               EmrGridColumn(
                 width: 115,
                 alignment: .centerRight,
                 headerBuilder: () =>
                     EmrGridHeader(text: context.l10n.value, textAlign: .right),
                 cellBuilder: (row) => Text(
                   row.value.value.toStringForLocale(
                     context,
                     minimumFractionDigits: 2,
                   ),
                 ),
               ),
             ],
           ),
         ),
       );
}
