import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_quotes/common/extensions/decimal_formatter.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:flutter/material.dart';

class PriceAdjustmentDialogBody extends StatefulWidget {
  const PriceAdjustmentDialogBody({
    required this.cancel,
    required this.onApply,
    required this.hidePriceAdjustment,
    this.vehicle,
    this.isBulkAdjustment = false,
    this.reasonAlwaysRequired = false,
    super.key,
  });

  final VoidCallback cancel;
  final void Function(List<PriceAdjustmentComponent> primaryAdjustment) onApply;
  final VehicleConfiguration? vehicle;
  final bool isBulkAdjustment;
  final bool reasonAlwaysRequired;
  final bool hidePriceAdjustment;

  @override
  State<PriceAdjustmentDialogBody> createState() =>
      _PriceAdjustmentDialogBodyState();
}

class _PriceAdjustmentDialogBodyState extends State<PriceAdjustmentDialogBody> {
  List<PriceAdjustmentComponent> adjustment = [];
  bool validationError = false;
  double total = 0;
  final maximumAmount = 90.0;
  final maximumAmountWithoutReason = 40.0;
  late final TextEditingController catValueController;
  late final TextEditingController carBodyValueController;
  late final TextEditingController reasonController;
  final dialogWidth = 600.0;

  @override
  void initState() {
    super.initState();
    carBodyValueController = TextEditingController();
    catValueController = TextEditingController();
    reasonController = TextEditingController();
    if (widget.vehicle?.priceAdjustment != null &&
        widget.vehicle!.priceAdjustment!.isNotEmpty) {
      adjustment.addAll(widget.vehicle!.priceAdjustment!);
      if (adjustment.any(
        (element) => element.componentName == ElvConstants.carbodyAdjustment,
      )) {
        final bodyAdjustment = adjustment.firstWhere(
          (element) => element.componentName == ElvConstants.carbodyAdjustment,
        );
        carBodyValueController.text = bodyAdjustment.value.toString();
      }
      if (adjustment.any(
        (element) => element.componentName == ElvConstants.catAdjustment,
      )) {
        final catAdjustment = adjustment.firstWhere(
          (element) => element.componentName == ElvConstants.catAdjustment,
        );
        catValueController.text = catAdjustment.value.toString();
        reasonController.text = catAdjustment.reason ?? '';
      }
      total = _getTotal();
    }
  }

  @override
  void dispose() {
    carBodyValueController.dispose();
    catValueController.dispose();
    reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dialogWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: Text(context.l10n.carBody),
                    ),
                    autofocus: true,
                    controller: carBodyValueController,
                    inputFormatters: [DecimalInputFormatter()],
                    onChanged: (v) {
                      if (adjustment.any(
                        (element) =>
                            element.componentName ==
                            ElvConstants.carbodyAdjustment,
                      )) {
                        adjustment.removeWhere(
                          (element) =>
                              element.componentName ==
                              ElvConstants.carbodyAdjustment,
                        );
                      }

                      adjustment.add(
                        PriceAdjustmentComponent(
                          componentName: ElvConstants.carbodyAdjustment,
                          value: double.tryParse(v) ?? 0,
                        ),
                      );
                      setState(() {
                        total = _getTotal();
                      });
                    },
                  ),
                ),
              ),
              if ((widget.vehicle?.hasOriginalCat ?? false) &&
                  !widget.isBulkAdjustment &&
                  !widget.hidePriceAdjustment)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter / 2),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        label: Text(context.l10n.cat),
                      ),
                      controller: catValueController,
                      inputFormatters: [DecimalInputFormatter()],
                      onChanged: (v) {
                        adjustment.removeWhere(
                          (element) =>
                              element.componentName ==
                              ElvConstants.catAdjustment,
                        );
                        adjustment.add(
                          PriceAdjustmentComponent(
                            componentName: ElvConstants.catAdjustment,
                            value: double.tryParse(v) ?? 0,
                          ),
                        );
                        setState(() {
                          total = _getTotal();
                        });
                      },
                    ),
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: TextFormField(
                    enabled: _ajustmentRequiresAReason(),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: Text(context.l10n.reason),
                    ),
                    controller: reasonController,
                    onChanged: (v) {
                      for (final a in adjustment) {
                        a.reason = v;
                        setState(() {});
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
            child:
                (_ajustmentRequiresAReason() && reasonController.text.isEmpty)
                ? Text(
                    context.l10n.reasonRequired,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  )
                : null,
          ),
          if (total > maximumAmount)
            Padding(
              padding: const EdgeInsets.all(Insets.gutter / 2),
              child: Text(
                context.l10n.totalValueCantBeAbove(Format.money(maximumAmount)),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${context.l10n.total}: ${Format.money(total)}',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: total > maximumAmount
                      ? Theme.of(context).colorScheme.error
                      : null,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.gutter),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: context.pop,
                  child: Text(context.l10n.cancel),
                ),
                TextButton(
                  onPressed:
                      total <= maximumAmount &&
                          (!_ajustmentRequiresAReason() ||
                              (_ajustmentRequiresAReason() &&
                                  reasonController.text.isNotEmpty))
                      ? () {
                          widget.vehicle?.priceAdjustment = adjustment;
                          widget.onApply(adjustment);
                        }
                      : null,
                  child: Text(context.l10n.save),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double _getTotal() {
    final cat = adjustment
        .firstWhere(
          (element) => element.componentName == ElvConstants.catAdjustment,
          orElse: () => PriceAdjustmentComponent(componentName: '', value: 0),
        )
        .value;
    final carBody = adjustment
        .firstWhere(
          (element) => element.componentName == ElvConstants.carbodyAdjustment,
          orElse: () => PriceAdjustmentComponent(componentName: '', value: 0),
        )
        .value;

    return cat + carBody;
  }

  bool _ajustmentRequiresAReason() {
    return widget.reasonAlwaysRequired ||
        _getTotal() > maximumAmountWithoutReason;
  }
}
