import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdvanceFlexiPayRow extends StatelessWidget {
  const AdvanceFlexiPayRow({required this.model, super.key});
  final AdvanceFlexiPay model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: Text(model.advanceNumber)),
        Expanded(
          flex: 2,
          child: Text(
            model.remainingBalance.toStringAsFixed(2),
          ),
        ),
        Expanded(
          flex: 2,
          child: EmrTextFormField(
            enabled: ValueNotifier(model.flexiPay),
            binding: model.usedAmount,
            inputFormatters: [
              LengthLimitingTextInputFormatter(
                model.remainingBalance.toStringAsFixed(2).length,
              ),
            ],
            validator: (value) => Validators.join([
              Validators.required(value),
              CashierValidators.validateGreaterThanZero(value, context),
              CashierValidators.validateLessOrMax(
                context,
                value,
                model.remainingBalance,
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
