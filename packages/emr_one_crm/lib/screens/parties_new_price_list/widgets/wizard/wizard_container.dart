import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:flutter/material.dart';

Widget myWizardContainerBuilder(
  BuildContext context,
  PartiesPriceListWizardController controller,
  Widget child,
) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  return DecoratedBox(
    decoration: BoxDecoration(
      color: isDark
          ? Theme.of(context).colorScheme.surfaceContainerHighest
          : Theme.of(context).colorScheme.surface,
    ),
    child: child,
  );
}
