import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:flutter/material.dart';

class ElvEditVehiclePartTab extends StatelessWidget {
  const ElvEditVehiclePartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: Insets.gutter / 2),
        Text(context.l10n.wheels),

        const SizedBox(height: Insets.gutter / 2),
        Row(
          spacing: Insets.gutter,
          children: [
            Expanded(
              child: Column(
                spacing: Insets.gutter / 2,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.l10n.alloyWheels,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElvMultiSelectorButton(
                    buttons: List.generate(6, (index) => index.toString()),
                    enabledFunction: (i) {
                      return true;
                    },
                    selected: const <int>{0},
                    onSelected: (Set<int?> newSelection) async {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                spacing: Insets.gutter / 2,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.l10n.steelWheels,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElvMultiSelectorButton(
                    buttons: List.generate(6, (index) => index.toString()),
                    enabledFunction: (i) {
                      return true;
                    },
                    selected: const <int>{0},
                    onSelected: (Set<int?> newSelection) async {},
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: Insets.gutter / 2),
        Row(
          spacing: Insets.gutter,
          children: [
            Expanded(
              child: Column(
                spacing: Insets.gutter / 2,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.l10n.chromeWheels,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElvMultiSelectorButton(
                    buttons: List.generate(6, (index) => index.toString()),
                    enabledFunction: (i) {
                      return true;
                    },
                    selected: const <int>{0},
                    onSelected: (Set<int?> newSelection) async {},
                  ),
                ],
              ),
            ),

            const Expanded(child: SizedBox.square()),
          ],
        ),
        const SizedBox(height: Insets.gutter / 2),
        const Divider(),
        const SizedBox(height: Insets.gutter / 2),
        EmrRadioListFormField(
          options: ValueNotifier({
            true: context.l10n.yes,
            false: context.l10n.no,
          }),
          binding: ValueNotifier(false),
          labelText: context.l10n.battery,
        ),
        const Divider(),
        Row(
          children: [
            Expanded(child: Text(context.l10n.catalyticConverter)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_circle_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_outline),
            ),
          ],
        ),
        Row(
          spacing: Insets.gutter / 2,
          children: [
            Expanded(
              child: EmrPickerFormField<String>(
                items: (search) => Future.value([]),
                itemTitleText: (value) => value,
                binding: ValueNotifier(''),
                labelText: context.l10n.location,
              ),
            ),
            Expanded(
              child: EmrTextFormField(
                hintText: context.l10n.value,
                binding: ValueNotifier(''),
                labelText: context.l10n.value,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
