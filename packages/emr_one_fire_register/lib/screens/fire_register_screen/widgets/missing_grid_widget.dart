import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/constants/punch_type_constants.dart';
import 'package:emr_one_fire_register/models/missing_from_muster_point.dart';
import 'package:emr_one_fire_register/screens/fire_register_controller.dart';
import 'package:flutter/material.dart';

class MissingGridWidget extends StatefulWidget {
  const MissingGridWidget({
    required this.controller,
    super.key,
  });

  final FireRegisterController controller;
  @override
  State<MissingGridWidget> createState() => _MissingGridWidgetState();
}

class _MissingGridWidgetState extends State<MissingGridWidget> {
  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
    );

    return RefreshIndicator(
      onRefresh: widget.controller.refreshGrid,
      child: EmrGrid<MissingFromRollCall>(
        alternateBackgroundRowColour: true,
        onRowLongPress: (row) {
          if (row.subjectType == SubjectType.visitor.index) {
            _visitorInfoDialog(
              context,
              row,
            );
          }
        },
        onRowTapped: (row) async {
          setState(() {
            if (!widget.controller.selectedMissingFrcRows.contains(
              row,
            )) {
              widget.controller.selectedMissingFrcRows.add(
                row,
              );
            } else {
              widget.controller.selectedMissingFrcRows.remove(
                row,
              );
            }
          });
        },
        controller: widget.controller.missingFromMusterGridController,
        columns: [
          EmrGridColumn(
            flex: 5,
            width: Insets.gutter * 3,
            headerBuilder: () {
              return Wrap(
                children: [
                  Text(
                    context.l10n.markAsFound,
                    style: headerTextStyle,
                  ),
                ],
              );
            },
            cellBuilder: (rowItem) => Checkbox(
              value: widget.controller.selectedMissingFrcRows
                  .any((element) => element.id == rowItem.id),
              onChanged: (bool? value) => setState(() {
                if (value ?? false) {
                  widget.controller.selectedMissingFrcRows.add(
                    rowItem,
                  );
                } else if (value == false) {
                  widget.controller.selectedMissingFrcRows.remove(
                    rowItem,
                  );
                }
              }),
            ),
          ),
          EmrGridColumn(
            flex: 5,
            width: Insets.gutter * 3,
            headerBuilder: () => Wrap(
              children: [
                Text(
                  context.l10n.visitorInfo,
                  style: headerTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            cellBuilder: (rowItem) =>
                rowItem.subjectType == SubjectType.visitor.index
                    ? IconButton.filled(
                        tooltip: context.l10n.viewVisitorDetails,
                        onPressed: () {
                          _visitorInfoDialog(context, rowItem);
                        },
                        icon: const Icon(
                          Icons.note,
                        ),
                      )
                    : Container(),
          ),
          EmrGridColumn(
            flex: 16,
            headerBuilder: () {
              return InkWell(
                onTapDown: (details) {
                  widget.controller
                      .sortGrid(frcTab: widget.controller.frcTab.value);
                },
                child: Wrap(
                  children: [
                    Text(
                      context.l10n.peopleMissingFromRollCall,
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
            cellBuilder: (MissingFromRollCall rowItem) => Text(
              rowItem.subjectName,
              textAlign: TextAlign.center,
            ),
          ),
          EmrGridColumn(
            flex: 5,
            headerBuilder: () {
              return Wrap(
                children: [
                  Text(
                    context.l10n.type,
                    style: headerTextStyle,
                  ),
                ],
              );
            },
            cellBuilder: (MissingFromRollCall rowItem) => Text(
              rowItem.subjectType == SubjectType.employee.index
                  ? context.l10n.employee
                  : context.l10n.visitor,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _visitorInfoDialog(
    BuildContext context,
    MissingFromRollCall row,
  ) {
    return showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: Text(
            context.l10n.visitorInfo,
          ),
          content: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _visitorInfo(row),
              ],
            ),
          ),
          actions: [
            Align(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  context.l10n.ok,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _visitorInfo(MissingFromRollCall row) {
    final visitorInfo = <Widget>[];

    if (row.visitorHost != null && row.visitorHost!.isNotEmpty) {
      final hostWidget = Padding(
        padding: const EdgeInsets.only(
          left: Insets.gutter / 2,
        ),
        child: TextField(
          readOnly: true,
          enableInteractiveSelection: false,
          controller: TextEditingController(
            text: row.visitorHost,
          ),
          decoration: InputDecoration(
            label: Text(
              context.l10n.visitorHost,
            ),
          ),
        ),
      );
      visitorInfo.add(
        hostWidget,
      );
    }

    if (row.visitorPhoneNo != null && row.visitorPhoneNo!.isNotEmpty) {
      final phoneWidget = Padding(
        padding: const EdgeInsets.only(
          left: Insets.gutter / 2,
        ),
        child: TextField(
          readOnly: true,
          enableInteractiveSelection: false,
          controller: TextEditingController(
            text: row.visitorPhoneNo,
          ),
          decoration: InputDecoration(
            label: Text(
              context.l10n.visitorPhoneNo,
            ),
          ),
        ),
      );
      visitorInfo.add(
        phoneWidget,
      );
    }

    if (visitorInfo.isEmpty) {
      final noDataWidget = Padding(
        padding: const EdgeInsets.only(
          left: Insets.gutter / 2,
        ),
        child: Text(
          context.l10n.noVisitorInfo,
        ),
      );
      visitorInfo.add(
        noDataWidget,
      );
    }

    visitorInfo.add(
      const SizedBox(
        height: 10,
      ),
    );

    return Column(
      children: visitorInfo,
    );
  }
}
