import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_arisingpointselectmobile.dart';
import 'package:flutter/material.dart';

class ArisingPointMultiSelect extends StatefulWidget {
  const ArisingPointMultiSelect({
    required this.arisingPoints,
    required this.widget,
    required this.index,
    this.singleSelection = false,
    this.showAnyOption = true,
    super.key,
  });

  final List<ArisingPoint> arisingPoints;
  final CWArisingPointSelectMobile widget;
  final int index;
  final bool singleSelection;
  final bool showAnyOption;

  @override
  State<ArisingPointMultiSelect> createState() =>
      _ArisingPointMultiSelectState();
}

class _ArisingPointMultiSelectState extends State<ArisingPointMultiSelect> {
  @override
  Widget build(BuildContext context) {
    final item = widget.arisingPoints[widget.index];

    if (item.shortName == 'ANY' && widget.showAnyOption) {
      final anySelected = widget.widget.controller.isAnyArisingSelected();
      return Visibility(
        visible: anySelected,
        child: CheckboxListTile(
          title: Text(item.shortName),
          subtitle: Text(item.aliasCode),
          onChanged: (value) {
            if (widget.widget.controller.model!.pricingList.isNotEmpty) {
              widget.widget.controller.model!.regenerateGrades = true;
            }
            setState(() {
              if (anySelected) {
                widget.widget.controller.deselectAnyArising();
              } else {
                widget.widget.controller.model!.selectedArisingPoints = [
                  ArisingPoint.any(),
                ];
              }
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          value: anySelected,
        ),
      );
    }

    return RadioGroup<ArisingPoint>(
      groupValue:
          widget.widget.controller.model!.selectedArisingPoints.isNotEmpty
              ? widget.widget.controller.model!.selectedArisingPoints.first
              : null,
      onChanged: (ArisingPoint? selectedItem) {
        if (widget.widget.controller.model!.pricingList.isNotEmpty) {
          widget.widget.controller.model!.regenerateGrades = true;
        }

        Navigator.pop(context, selectedItem);
      },
      child: RadioListTile<ArisingPoint>(
        value: item,
        title: Text(item.shortName),
        subtitle: Text(item.aliasCode),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
