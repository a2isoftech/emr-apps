import 'dart:math';

import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LinesCard extends EmrTabBarVerticalViewCard {
  LinesCard(
    BuildContext context, {
    required super.title,
    required TicketDetailsFormData model,
    super.key,
  }) : super(
         actions: {
           if (model.canEdit.value)
             CardAddActionIntent: CardAddAction(
               context,
               createIntent: (context) => CardAddActionIntent(context: context),
               onAction: () async {
                 final settingsController =
                     context.read<BaseSettingsController>()
                         as SettingsController;

                 final territoryDefaultUom = context
                     .read<UomService>()
                     .getUoms(settingsController.territory)
                     .first;

                 await _lineDetailsScreen(
                   context,
                   TicketLineFormData.empty(
                     // Get the max line number from the existing lines and
                     // add 1 to ensure the new line has a unique line number.
                     lineNumber: model.lines.value.isEmpty
                         ? 1
                         : model.lines.value
                                   .map((line) => line.lineNumber)
                                   .reduce(max) +
                               1,
                     unit: territoryDefaultUom,
                   ),
                   model,
                 );
               },
             ),
         },
         padding: EdgeInsets.zero,
         child: ValueListenableBuilder(
           valueListenable: model.lines,
           builder: (context, value, child) {
             // Use a ConstrainedBox around the child rather than `height` on
             // the card so the card is able to grow as ticket lines are added.
             return ConstrainedBox(
               constraints: BoxConstraints(
                 minHeight: _calculateHeight(model),
                 maxHeight: _calculateHeight(model),
               ),
               child: ClipRRect(
                 borderRadius: const BorderRadius.all(
                   // Clip the grid so we don't overlap the card border.
                   Radius.circular(EmrCard.cardRadius - 0.5),
                 ),
                 child: EmrForm(
                   mode: EmrFormMode.grid,
                   builder: (_) => EmrGrid<TicketLineFormData>(
                     controller: EmrGridController(data: model.lines),
                     alternateBackgroundRowColour: true,
                     pinnedColumnCount: 1,
                     rowHeight: (rowIndex) =>
                         rowIndex == -1 ? _headerRowHeight : _rowHeight,
                     onRowTapped: (row) =>
                         _lineDetailsScreen(context, row.copyWith(), model),
                     columns: [
                       EmrGridColumn(
                         width: 40,
                         headerBuilder: () => const EmrGridHeader(text: 'No.'),
                         cellBuilder: (row) =>
                             Text('${row.lineNumber}', textAlign: .center),
                       ),
                       EmrGridColumn(
                         width: 200,
                         headerBuilder: () =>
                             const EmrGridHeader(text: 'Bought as product'),
                         cellBuilder: (row) =>
                             Text(row.product.value.toString()),
                       ),
                       EmrGridColumn(
                         width: 200,
                         headerBuilder: () =>
                             const EmrGridHeader(text: 'Stocked as product'),
                         cellBuilder: (row) =>
                             Text(row.stockAsProduct.value.toString()),
                       ),
                       EmrGridColumn(
                         width: 200,
                         headerBuilder: () =>
                             const EmrGridHeader(text: 'Location'),
                         cellBuilder: (row) =>
                             Text(row.location.value.toString()),
                       ),
                       EmrGridColumn(
                         alignment: .centerRight,
                         headerBuilder: () =>
                             EmrGridHeader(text: context.l10n.weight),
                         cellBuilder: (row) =>
                             Text(row.netWeight.value?.toWeightString() ?? ''),
                         footerBuilder: (context) =>
                             LinesWeightTotal(model: model),
                       ),
                       EmrGridColumn(
                         alignment: .centerRight,
                         headerBuilder: () =>
                             EmrGridHeader(text: context.l10n.rate),
                         cellBuilder: (row) =>
                             Text(row.rate.value.toRateString()),
                       ),
                       EmrGridColumn(
                         alignment: .centerRight,
                         headerBuilder: () => const EmrGridHeader(
                           text: 'Value before C & D',
                           textAlign: .right,
                         ),
                         cellBuilder: (row) => Text(
                           row.payableBeforeCostAndDeduction.value
                               .toStringForLocale(
                                 context,
                                 minimumFractionDigits: 2,
                               ),
                         ),
                       ),
                       EmrGridColumn(
                         alignment: .centerRight,
                         headerBuilder: () => EmrGridHeader(
                           text: context.l10n.payable,
                           textAlign: .right,
                         ),
                         cellBuilder: (row) => Text(
                           row.payableAfterCostAndDeduction.value
                               .toStringForLocale(
                                 context,
                                 minimumFractionDigits: 2,
                               ),
                         ),
                         footerBuilder: (context) =>
                             LinesPayableTotal(model: model),
                       ),
                     ],
                   ),
                 ),
               ),
             );
           },
         ),
       );

  static const double _headerRowHeight = 60;

  static const double _rowHeight = 64;

  static double _calculateHeight(TicketDetailsFormData model) {
    return _headerRowHeight +
        (max(model.lines.value.length, 1) * _rowHeight) +
        _headerRowHeight; // Footer
  }

  static Future<void> _lineDetailsScreen(
    BuildContext context,
    TicketLineFormData row,
    TicketDetailsFormData model,
  ) async {
    final result = await Flyout.show<TicketLineFormData>(
      context: context,
      padding: EdgeInsets.zero,
      builder: (context) => Material(
        child: TicketLineDetailsScreen(model: model, lineModel: row),
      ),
    );

    // If the save button was pressed, check if the result line number already
    // exists in the model so it can be updated, otherwise add it as a new line.
    if (result != null) {
      final existingLineIndex = model.lines.value.indexWhere(
        (line) => line.lineNumber == result.lineNumber,
      );

      if (existingLineIndex != -1) {
        // Build a new array with all the items up to the changed one,
        // then the result, then the rest of the array.
        model.lines.value = [
          ...model.lines.value.sublist(0, existingLineIndex),
          result,
          ...model.lines.value.sublist(existingLineIndex + 1),
        ];
      } else {
        model.lines.value = [...model.lines.value, result];
      }
    }
  }
}
