import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';

class DeductionsCard extends EmrTabBarVerticalViewCard {
  DeductionsCard(
    BuildContext context, {
    required super.title,
    required ValueNotifier<List<DeductionFormData>> deductions,
    bool showWeights = false,
    super.key,
  }) : super(
         maxHeight: max(deductions.value.length + 1, 2) * 40,
         padding: EdgeInsets.zero,
         child: ClipRRect(
           borderRadius: const BorderRadius.all(
             // We need to clip the grid so we don't overlap the card border.
             Radius.circular(EmrCard.cardRadius - 0.5),
           ),
           child: EmrGrid<DeductionFormData>(
             controller: EmrGridController(data: deductions),
             alternateBackgroundRowColour: true,
             pinnedRowCount: 1,
             rowHeight: (rowIndex) => 40,
             columns: [
               EmrGridColumn(
                 headerBuilder: () =>
                     EmrGridHeader(text: context.l10n.description),
                 cellBuilder: (row) =>
                     Text(context.l10n.byKey(row.displayNameKey)),
               ),
               EmrGridColumn(
                 alignment: .centerRight,
                 headerBuilder: () => EmrGridHeader(text: context.l10n.value),
                 cellBuilder: (row) => Text(
                   row.value.value == null
                       ? '---'
                       : row.value.value.toStringForLocale(
                           context,
                           minimumFractionDigits: 2,
                           maximumFractionDigits: 2,
                         ),
                 ),
               ),
               if (showWeights)
                 EmrGridColumn(
                   alignment: .centerRight,
                   headerBuilder: () =>
                       EmrGridHeader(text: context.l10n.weight),
                   cellBuilder: (row) =>
                       Text(row.weight.value?.toWeightString() ?? ''),
                 ),
             ],
           ),
         ),
       );
}
