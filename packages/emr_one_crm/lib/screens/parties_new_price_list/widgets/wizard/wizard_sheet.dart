import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:flutter/material.dart';

Widget myWizardSheetBuilder(
  BuildContext context,
  PartiesPriceListWizardController controller,
  Widget child,
) {
  return Padding(
    padding: const EdgeInsets.only(top: Insets.gutter),
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
      ),
      child: child,
    ),
  );
}
