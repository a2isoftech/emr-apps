import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/models/models.dart';
import 'package:emr_one_fire_register/screens/fire_register_controller.dart';
import 'package:flutter/material.dart';

class FrcGridWidget extends StatefulWidget {
  const FrcGridWidget({
    required this.controller,
    super.key,
  });

  final FireRegisterController controller;
  @override
  State<FrcGridWidget> createState() => _FrcGridWidgetState();
}

class _FrcGridWidgetState extends State<FrcGridWidget> {
  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);

    return EmrGrid<FireRollCallLog>(
      alternateBackgroundRowColour: true,
      onRowTapped: (row) async {
        widget.controller.selectedRows.clear();
        await widget.controller.loadFrcLogPunchEvents(
          row,
        );
        widget.controller.isFRCLoggedPunches.value = true;
        widget.controller.frcTab.value = FrcTab.punches;
        widget.controller.busy.value = false;
      },
      controller: widget.controller.fireRollCallGridController,
      columns: [
        EmrGridColumn(
          flex: 16,
          headerBuilder: () {
            return InkWell(
              onTapDown: (details) {
                widget.controller.sortGrid(
                  frcTab: widget.controller.frcTab.value,
                );
              },
              child: Row(
                children: [
                  Text(
                    context.l10n.loggedBy,
                    style: headerTextStyle,
                  ),
                  if (widget.controller.sortGridAsc != null)
                    Icon(
                      widget.controller.sortGridAsc!
                          ? Icons.arrow_upward
                          : Icons.arrow_downward,
                      size: 15,
                    ),
                ],
              ),
            );
          },
          cellBuilder: (FireRollCallLog rowItem) => Text(
            rowItem.loggedBy,
            textAlign: TextAlign.center,
          ),
        ),
        EmrGridColumn(
          flex: 10,
          headerBuilder: () => Text(
            context.l10n.dateConfirmed,
            style: headerTextStyle,
            textAlign: TextAlign.center,
          ),
          cellBuilder: (FireRollCallLog rowItem) => Text(
            rowItem.loggedOn.toIso8601date,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
