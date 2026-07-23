import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:flutter/material.dart';

class ElvBulkPriceAdjustmentWidget extends StatelessWidget {
  const ElvBulkPriceAdjustmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          EmrTextFormField(
            binding: ValueNotifier(''),
            labelText: context.l10n.carBody,
            hintText: context.l10n.carBody,
          ),
          EmrTextFormField(
            binding: ValueNotifier(''),
            labelText: context.l10n.reason,
            hintText: context.l10n.reason,
          ),
          EmrTextFormField(
            binding: ValueNotifier(''),
            labelText: context.l10n.cat,
            hintText: context.l10n.cat,
          ),
          //TODO: Value will change
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: context.l10n.total),
                const TextSpan(text: ' : '),
                TextSpan(text: '${Format.moneyFromDouble(40)} '),
              ],
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
