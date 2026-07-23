import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class YardMultiSelect extends StatefulWidget {
  const YardMultiSelect({
    required this.controller,
    required this.index,
    required this.yards,
    super.key,
  });

  final PartiesPriceListWizardController controller;
  final int index;
  final List<Yard> yards;
  @override
  State<YardMultiSelect> createState() => _YardMultiSelectState();
}

class _YardMultiSelectState extends State<YardMultiSelect> {
  @override
  Widget build(BuildContext context) {
    final yard = widget.yards[widget.index];
    return Column(
      children: [
        CheckboxListTile(
          title: Text(yard.yardCode),
          subtitle: Text(yard.name),
          onChanged: (value) {
            setState(() {
              if (widget.controller.isYardsSelected(yard.yardCode)) {
                widget.controller.setYardSelected(
                  yard.yardCode,
                  selected: false,
                );
              } else {
                widget.controller.setYardSelected(yard.yardCode);
              }
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          value: widget.controller.isYardsSelected(yard.yardCode),
        ),
      ],
    );
  }
}
