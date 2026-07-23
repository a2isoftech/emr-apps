import 'package:emr_one_crm/screens/contract_wizard/components/cw_depotselectmobile.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class DepotMultiSelectCheckBoxList extends StatefulWidget {
  const DepotMultiSelectCheckBoxList({
    required this.depots,
    required this.widget,
    required this.index,
    this.singleSelection = false,
    this.showAnyOption = true,
    super.key,
  });

  final List<Depot> depots;
  final CWDepotSelectMobile widget;
  final int index;
  final bool singleSelection;
  final bool showAnyOption;

  @override
  State<DepotMultiSelectCheckBoxList> createState() =>
      _DepotMultiSelectCheckBoxListState();
}

class _DepotMultiSelectCheckBoxListState
    extends State<DepotMultiSelectCheckBoxList> {
  @override
  Widget build(BuildContext context) {
    final depot = widget.depots[widget.index];

    if (depot.name == 'ANY' && widget.showAnyOption) {
      final anySelected = widget.widget.controller.isAnyDepotSelected();
      return Visibility(
        visible: anySelected,
        child: CheckboxListTile(
          title: Text(depot.code),
          subtitle: Text(depot.name),
          onChanged: (value) {
            setState(() {
              if (widget.widget.controller.model!.pricingList.isNotEmpty) {
                widget.widget.controller.model!.regenerateGrades = true;
              }
              if (anySelected) {
                widget.widget.controller.deselectAnyDepot();
              } else {
                widget.widget.controller.model!.selectedDepots = [Depot.any()];
              }
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          value: anySelected,
        ),
      );
    }

    final isSelected = widget.widget.controller.isDepotSelected(depot);

    return RadioGroup<Depot>(
      groupValue: widget.widget.controller.model!.selectedDepots.isNotEmpty
          ? widget.widget.controller.model!.selectedDepots.first
          : null,
      onChanged: (value) {
        setState(() {
          if (widget.widget.controller.model!.pricingList.isNotEmpty) {
            widget.widget.controller.model!.regenerateGrades = true;
          }

          if (widget.singleSelection) {
            widget.widget.controller.setSelectedDepot(depot);
          } else {
            if (isSelected) {
              widget.widget.controller.removeDepot(depot);
            } else {
              widget.widget.controller.addDepot(depot);
            }
          }
        });
        if (widget.singleSelection) {
          Navigator.pop(context, depot);
        }
      },
      child: RadioListTile<Depot>(
        title: Text(depot.code),
        subtitle: Text(depot.name),
        value: depot,
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
