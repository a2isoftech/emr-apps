import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_prices_data_controller.dart';
import 'package:flutter/material.dart';

class YardPricesFilterButton extends StatefulWidget {
  const YardPricesFilterButton({
    required this.description,
    required this.filter,
    required this.controller,
    super.key,
  });

  final String description;
  final YardPricesFilterMode filter;
  final YardPricesDataController controller;

  @override
  State<YardPricesFilterButton> createState() => YardPricesFilterButtonState();
}

class YardPricesFilterButtonState extends State<YardPricesFilterButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.gutter / 3,
        right: Insets.gutter / 3,
      ),
      child: ActionChip(
        label: Text(
          widget.description,
          //style: EmrOneConstants.kOpenSans9TextStyle,
        ),
        onPressed: widget.controller.filterMode != widget.filter
            ? () => widget.controller.setFilter(widget.filter)
            : null,
      ),
    );
  }
}
