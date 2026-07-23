import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/widgets.dart';

class CommentsCard extends EmrTabBarVerticalViewCard {
  CommentsCard(
    BuildContext context, {
    required super.title,
    required TicketDetailsFormData model,
    super.key,
  }) : super(
         maxHeight: max(model.comments.value.length + 1, 2) * 40,
         padding: EdgeInsets.zero,
         child: ClipRRect(
           borderRadius: const BorderRadius.all(
             // We need to clip the grid so we don't overlap the card border.
             Radius.circular(EmrCard.cardRadius - 0.5),
           ),
           child: EmrGrid<TicketDetailsCommentRow>(
             controller: EmrGridController(data: model.comments),
             alternateBackgroundRowColour: true,
             pinnedColumnCount: 1,
             rowHeight: (rowIndex) => 40,
             noRecordsMessage: Text(context.l10n.noComments),
             columns: [
               EmrGridColumn(
                 width: 115,
                 headerBuilder: () => EmrGridHeader(text: context.l10n.type),
                 cellBuilder: (row) =>
                     Text(context.l10n.byKey(row.key) + row.suffix),
               ),
               EmrGridColumn(
                 width: 145,
                 headerBuilder: () => EmrGridHeader(
                   text: '${context.l10n.date} / ${context.l10n.time}',
                 ),
                 cellBuilder: (row) =>
                     (row.comment.created.at.millisecondsSinceEpoch > 0)
                     ? Text(
                         row.comment.created.at.asyMMdtime(
                           Localizations.localeOf(context),
                         ),
                       )
                     : const SizedBox.shrink(),
               ),
               EmrGridColumn(
                 width: 145,
                 headerBuilder: () => EmrGridHeader(text: context.l10n.user),
                 cellBuilder: (row) =>
                     Text(row.comment.created.userName, softWrap: true),
               ),
               EmrGridColumn(
                 width: 1000,
                 headerBuilder: () => EmrGridHeader(text: context.l10n.text),
                 cellBuilder: (row) =>
                     Text(row.comment.content, softWrap: true),
               ),
             ],
           ),
         ),
       );
}
