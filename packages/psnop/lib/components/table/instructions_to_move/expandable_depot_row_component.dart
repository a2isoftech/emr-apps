import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/table/cell_widget.dart';
import 'package:psnop/components/table/instructions_to_move/instructions_to_move_row_component.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_depot_grouped_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_depot_total_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_summary.dart';

class ExpandableDepotRowComponent extends StatefulWidget {
  const ExpandableDepotRowComponent({
    required this.expandDepot,
    required this.instructionsToMoveSummary,
    required this.headers,
    super.key,
  });

  final bool expandDepot;
  final InstructionsToMoveDepotGroupedModel instructionsToMoveSummary;
  final Iterable<MainHeaderModel> headers;

  @override
  State<ExpandableDepotRowComponent> createState() =>
      _ExpandableDepotRowComponentState();
}

class _ExpandableDepotRowComponentState
    extends State<ExpandableDepotRowComponent> {
  @override
  Widget build(BuildContext context) {
    final expanded = ValueNotifier<bool>(
      widget.instructionsToMoveSummary.expanded,
    );
    final appConfig = Provider.of<AppConfig>(context);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: [
            _getDepotTotal(
              appConfig: appConfig,
              constraints: constraints,
              expandDepot: widget.expandDepot,
              notifier: expanded,
              total: widget.instructionsToMoveSummary.total,
            ),
            _getRowsSection(
              rows: widget.instructionsToMoveSummary.summaries,
              notifier: expanded,
            ),
          ],
        );
      },
    );
  }

  Container _getDepotTotal({
    required AppConfig appConfig,
    required BoxConstraints constraints,
    required bool expandDepot,
    required ValueNotifier<bool> notifier,
    required InstructionsToMoveDepotTotalModel total,
  }) {
    final width = constraints.maxWidth / widget.headers.length;
    final cellTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context)
          .extension<EOBrandTheme>()!
          .onPsnopTableDepotTotalColour,
    );
    if (expandDepot) notifier.value = true;

    final remainingTonnesToMove =
        total.remainingTonnesToMove.toStringAsFixed(2);
    final tonnesToMove = total.tonnesToMove.toStringAsFixed(2);

    final remainingLoadsToMove = total.remainingLoadsToMove.toStringAsFixed(2);
    final loadsToMove = total.loadsToMove.toStringAsFixed(2);

    return Container(
      height: TableConstraints.rowHeight,
      color: Theme.of(context)
          .extension<EOBrandTheme>()!
          .psnopTableDepotTotalColour,
      child: Row(
        children: [
          if (expandDepot)
            CellWidget(
              column: 1,
              context: context,
              flex: 7,
              headers: widget.headers,
              message: total.depot,
              style: cellTextStyle,
              width: width * 2,
            )
          else
            Expanded(
              flex: 7,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.instructionsToMoveSummary.expanded =
                        !widget.instructionsToMoveSummary.expanded;
                  });
                },
                child: ValueListenableBuilder(
                  builder: (
                    BuildContext context,
                    bool value,
                    Widget? child,
                  ) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          color: cellTextStyle.color,
                          size: 14,
                          value ? Icons.remove_outlined : Icons.add_outlined,
                        ),
                        CellWidget(
                          column: 1,
                          context: context,
                          headers: widget.headers,
                          message: total.depot,
                          style: cellTextStyle,
                          width: width,
                        ),
                      ],
                    );
                  },
                  valueListenable: notifier,
                ),
              ),
            ),
          CellWidget(
            column: 1,
            context: context,
            headers: widget.headers,
            message: '$remainingTonnesToMove ($tonnesToMove)',
            style: cellTextStyle,
            width: width,
          ),
          CellWidget(
            column: 1,
            context: context,
            headers: widget.headers,
            message: '$remainingLoadsToMove ($loadsToMove)',
            style: cellTextStyle,
            width: width,
          ),
        ],
      ),
    );
  }

  Visibility _getRowsSection({
    required ValueNotifier<bool> notifier,
    required List<InstructionsToMoveSummary> rows,
  }) {
    final widgets = <Widget>[];

    for (var i = 0; i < rows.length; i++) {
      widgets.add(
        InstructionsToMoveRowComponent(
          row: rows[i],
          headers: widget.headers,
          isEven: i.isEven,
        ),
      );
    }

    return Visibility(
      visible: notifier.value,
      child: Column(
        children: widgets,
      ),
    );
  }
}
