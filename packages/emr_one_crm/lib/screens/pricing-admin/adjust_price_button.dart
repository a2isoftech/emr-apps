import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';
import 'package:emr_one_crm/screens/pricing-admin/adjust_price.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_screen_controller.dart';
import 'package:flutter/material.dart';

class AdjustPriceButton extends StatefulWidget {
  const AdjustPriceButton({
    required this.gridController,
    required this.controller,
    required this.textColor,
    super.key,
  });
  final EmrGridController<GuidePriceListLine> gridController;
  final GplScreenController controller;
  final Color textColor;

  @override
  State<AdjustPriceButton> createState() => _AdjustPriceButtonState();
}

class _AdjustPriceButtonState extends State<AdjustPriceButton> {
  late final VoidCallback _listener;

  @override
  void initState() {
    super.initState();
    _listener = () {
      setState(() {});
    };
    widget.gridController.selectedRows.addListener(_listener);
  }

  @override
  void dispose() {
    widget.gridController.selectedRows.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasSelection = widget.gridController.selectedRows.value.isNotEmpty;

    return Tooltip(
      message: hasSelection
          ? ''
          : 'Please select at least one row to adjust the price.',
      child: IconButton(
        icon: const Icon(Icons.build_outlined),
        color: widget.textColor,
        onPressed: () {
          if (hasSelection) {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AdjustPrice(
                  gridController: widget.gridController,
                  controller: widget.controller,
                  title: context.l10n.adjustPrice,
                  tagDetail: null,
                  priceListId: '',
                  productCode: '',
                );
              },
            );
          }
        },
      ),
    );
  }
}
