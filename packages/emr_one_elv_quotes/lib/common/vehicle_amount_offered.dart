import 'dart:math';

import 'package:emr_one_elv_core/widgets/dialog/elv_dialog.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';

class VehicleAmountOffered extends StatelessWidget {
  const VehicleAmountOffered({
    required this.activeQuote,
    required this.controller,
    super.key,
  });

  final ActiveQuote activeQuote;
  final QuickQuoteController controller;

  @override
  Widget build(BuildContext context) {
    final newValueController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: InkWell(
        onTap: controller.baseState.batchQuote?.leadSourceId != null
            ? () => _showValueOfferedDialog(context, newValueController)
            : null,
        child: Container(
          width: 228,
          height: 44,
          decoration: BoxDecoration(
            color: ElvConstants.elvLightBlue,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${context.l10n.valueOffered}: ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  Format.money(activeQuote.total),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showValueOfferedDialog(
    BuildContext context,
    TextEditingController newValueController,
  ) {
    return ElvDialog.action(
      context,
      titleText: context.l10n.overrideValueOffered,
      content: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: SizedBox(
          width: 300,
          child: TextFormField(
            controller: newValueController,
            decoration: InputDecoration(
              label: Text(context.l10n.newValue),
            ),
            inputFormatters: [
              Localizations.localeOf(context).decimalInputFormatter(
                allowNegative: true,
              ),
            ],
          ),
        ),
      ),
      actions: [
        DialogAction(
          context.l10n.cancel,
          Navigator.of(context).pop,
        ),
        DialogAction(context.l10n.save, () {
          Navigator.of(context).pop();
          final newValue = double.tryParse(newValueController.text);
          if (newValue != null) {
            final mod = pow(10.0, 2);
            final adjustment = newValue - activeQuote.basePrice;
            controller.updateVehicle(
              vehicle: activeQuote,
              priceAdjustments: [
                PriceAdjustmentComponent(
                  componentName: ElvConstants.carbodyAdjustment,
                  value: (adjustment * mod).round().toDouble() / mod,
                ),
              ],
            );
          }
        }),
      ],
    );
  }
}
