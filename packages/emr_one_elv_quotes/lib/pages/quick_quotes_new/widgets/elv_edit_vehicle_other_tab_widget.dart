import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:flutter/material.dart';

class ElvEditVehicleOtherTab extends StatelessWidget {
  const ElvEditVehicleOtherTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          spacing: Insets.gutter,
          children: [
            Expanded(
              child: EmrTextFormField(
                hintText: context.l10n.carBody,
                binding: ValueNotifier(''),
                labelText: context.l10n.carBody,
              ),
            ),
            Expanded(
              child: EmrTextFormField(
                hintText: context.l10n.reason,
                binding: ValueNotifier(''),
                labelText: context.l10n.reason,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: EmrTextFormField(
                hintText: context.l10n.cat,
                binding: ValueNotifier(''),
                labelText: context.l10n.cat,
              ),
            ),
            const Expanded(child: SizedBox.shrink()),
          ],
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: '${context.l10n.total}: '),
              TextSpan(text: Format.money(40)),
            ],
          ),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
