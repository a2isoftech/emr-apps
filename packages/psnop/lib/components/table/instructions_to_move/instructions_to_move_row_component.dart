import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:psnop/components/table/cell_widget.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_summary.dart';

class InstructionsToMoveRowComponent extends StatelessWidget {
  const InstructionsToMoveRowComponent({
    required this.row,
    required this.headers,
    required this.isEven,
    super.key,
  });

  final InstructionsToMoveSummary row;
  final Iterable<MainHeaderModel> headers;
  final bool isEven;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).toLanguageTag();
    final shortDateFormatter = DateFormat.yMd(locale);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth / headers.length;
        final cellTextStyle = TextStyle(
          color: pastDue(row.dueBy)
              ? Theme.of(context).disabledColor
              : isEven
                  ? Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .onPsnopTableInstructionToMoveEvenColour
                  : Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .onPsnopTableInstructionToMoveOddColour,
        );

        final remainingTonnesToMove =
            row.remainingTonnesToMove.toStringAsFixed(2);
        final tonnesToMove = row.tonnesToMove.toStringAsFixed(2);

        final remainingLoadsToMove =
            row.remainingLoadsToMove.toStringAsFixed(2);
        final loadsToMove = row.loadsToMove.toStringAsFixed(2);

        return Container(
          height: TableConstraints.rowHeight,
          color: pastDue(row.dueBy)
              ? Theme.of(context).disabledColor
              : isEven
                  ? Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .psnopTableInstructionToMoveEvenColour
                  : Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .psnopTableInstructionToMoveOddColour,
          child: Row(
            children: [
              CellWidget(
                column: 1,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: row.destination,
                style: cellTextStyle,
                width: width,
              ),
              CellWidget(
                column: 2,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: shortDateFormatter.format(row.dueFrom),
                style: cellTextStyle,
                width: width,
              ),
              CellWidget(
                column: 3,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: shortDateFormatter.format(row.dueBy),
                style: cellTextStyle,
                width: width,
              ),
              CellWidget(
                column: 4,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: row.transportMode,
                style: cellTextStyle,
                width: width,
              ),
              CellWidget(
                column: 5,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: row.hold != null
                    ? row.hold!
                        ? context.l10n.psnopYes
                        : context.l10n.psnopNo
                    : context.l10n.psnopNo,
                style: cellTextStyle,
                width: width,
              ),
              CellWidget(
                column: 6,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: row.priority.toString(),
                style: cellTextStyle,
                width: width,
              ),
              CellWidget(
                column: 7,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: row.contractRefTag ?? context.l10n.psnopNone,
                style: cellTextStyle,
                width: width,
              ),
              CellWidget(
                column: 8,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: '$remainingTonnesToMove ($tonnesToMove)',
                style: cellTextStyle,
                width: width,
              ),
              CellWidget(
                column: 9,
                containerIfZero: true,
                context: context,
                headers: headers,
                message: '$remainingLoadsToMove ($loadsToMove)',
                style: cellTextStyle,
                width: width,
              ),
            ],
          ),
        );
      },
    );
  }

  bool pastDue(DateTime date) {
    if (date.isBefore(DateTime.now()) ||
        date.isAtSameMomentAs(DateTime.now())) {
      return true;
    } else {
      return false;
    }
  }
}
