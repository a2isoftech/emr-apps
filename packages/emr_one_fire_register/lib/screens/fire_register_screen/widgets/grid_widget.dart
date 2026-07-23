import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/constants/punch_type_constants.dart';
import 'package:emr_one_fire_register/models/models.dart';
import 'package:emr_one_fire_register/screens/fire_register_controller.dart';
import 'package:emr_one_fire_register/screens/fire_register_screen/widgets/get_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({
    required this.addNoteController,
    required this.controller,
    super.key,
  });

  final FireRegisterController controller;
  final TextEditingController addNoteController;
  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);

    return EmrGrid<PunchEvent>(
      alternateBackgroundRowColour: true,
      onRowLongPress: (row) {
        widget.addNoteController.text = row.note ?? '';
        _addNoteDialog(
          context,
          row,
        );
      },
      onRowTapped: (row) {
        if (!widget.controller.isFRCLoggedPunches.value) {
          setState(() {
            if (!widget.controller.selectedRows.contains(
              row,
            )) {
              widget.controller.selectedRows.add(
                row,
              );
            } else {
              widget.controller.selectedRows.remove(
                row,
              );
            }
          });
        }
      },
      controller: widget.controller.gridController,
      columns: [
        EmrGridColumn(
          flex: 5,
          width: Insets.gutter * 2,
          headerBuilder: Container.new,
          cellBuilder: (rowItem) => Checkbox(
            value: widget.controller.selectedRows.any(
              (element) => element.id == rowItem.id,
            ),
            onChanged: (bool? value) => setState(() {
              if (value ?? false) {
                widget.controller.selectedRows.add(
                  rowItem,
                );
              } else if (value == false) {
                widget.controller.selectedRows.remove(
                  rowItem,
                );
              }
            }),
          ),
        ),
        EmrGridColumn(
          flex: 5,
          width: Insets.gutter * 2,
          headerBuilder: () => Text(
            context.l10n.note,
            style: headerTextStyle,
            textAlign: TextAlign.center,
          ),
          cellBuilder: (rowItem) => IconButton.filled(
            tooltip: (rowItem.note == null || rowItem.note!.isEmpty)
                ? context.l10n.addNote
                : context.l10n.editNote,
            onPressed: () {
              widget.addNoteController.text = rowItem.note ?? '';
              _addNoteDialog(
                context,
                rowItem,
              );
            },
            icon: Icon(
              (rowItem.note == null || rowItem.note!.isEmpty)
                  ? Icons.add
                  : Icons.note,
            ),
          ),
        ),
        EmrGridColumn(
          flex: 16,
          headerBuilder: () {
            return InkWell(
              onTapDown: (details) {
                widget.controller.sortGrid();
              },
              child: Row(
                children: [
                  Text(
                    context.l10n.name,
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
          cellBuilder: (PunchEvent rowItem) => GetNameWidget(
            rowItem: rowItem,
          ),
        ),
        EmrGridColumn(
          flex: 15,
          headerBuilder: () => Text(
            context.l10n.punch,
            style: headerTextStyle,
            textAlign: TextAlign.center,
          ),
          cellBuilder: (PunchEvent rowItem) => Text(
            '${widget.controller.punchType(
              rowItem.punchType,
            )}'
            ' / '
            '${DateFormat.Hm().format(
              rowItem.punchTime,
            )}',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Future<void> _addNoteDialog(BuildContext context, PunchEvent row) {
    return showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: Text(
            context.l10n.addNote,
          ),
          content: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  maxLines: 2,
                  maxLength: 100,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: widget.addNoteController,
                  decoration: InputDecoration(
                    label: Text(
                      context.l10n.addNote,
                    ),
                  ),
                ),
                if (row.subjectType == SubjectType.visitor.index)
                  visitorInfo(
                    row,
                  ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    widget.addNoteController.clear();
                  },
                  child: Text(
                    context.l10n.cancel,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {});
                    row.note = widget.addNoteController.text;
                    widget.controller.updateGridData(
                      row,
                    );
                    widget.addNoteController.clear();
                  },
                  child: Text(
                    context.l10n.add,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget visitorInfo(PunchEvent row) {
    final visitorInfo = <Widget>[];

    if (row.visitorPhoneNo != null && row.visitorPhoneNo!.isNotEmpty) {
      final phoneWidget = Padding(
        padding: const EdgeInsets.only(
          left: Insets.gutter / 2,
        ),
        child: TextField(
          readOnly: true,
          enableInteractiveSelection: false,
          controller: TextEditingController(
            text: row.visitorPhoneNo ?? '',
          ),
          decoration: InputDecoration(
            label: Text(
              context.l10n.visitorPhoneNo,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      );
      visitorInfo.add(
        phoneWidget,
      );
    }
    if (row.visitorCmpName != null && row.visitorCmpName!.isNotEmpty) {
      final cmpNameWidget = Padding(
        padding: const EdgeInsets.only(
          left: Insets.gutter / 2,
        ),
        child: TextField(
          readOnly: true,
          enableInteractiveSelection: false,
          controller: TextEditingController(
            text: row.visitorCmpName ?? '',
          ),
          decoration: InputDecoration(
            label: Text(
              context.l10n.visitorCompanyName,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      );
      visitorInfo.add(
        cmpNameWidget,
      );
    }
    if (row.visitorVehicleReg != null && row.visitorVehicleReg!.isNotEmpty) {
      final regWidget = Padding(
        padding: const EdgeInsets.only(
          left: Insets.gutter / 2,
        ),
        child: TextField(
          readOnly: true,
          enableInteractiveSelection: false,
          controller: TextEditingController(
            text: row.visitorVehicleReg ?? '',
          ),
          decoration: InputDecoration(
            label: Text(
              context.l10n.visitorVehicleReg,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      );
      visitorInfo.add(
        regWidget,
      );
    }

    if (visitorInfo.isNotEmpty) {
      final Widget title = Text(
        context.l10n.additionalVisitorInfo,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      );
      visitorInfo.insert(
        0,
        title,
      );
    } else {
      visitorInfo.add(
        const SizedBox(
          height: 10,
        ),
      );
    }

    return Column(
      children: visitorInfo,
    );
  }
}
