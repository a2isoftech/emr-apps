import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/data/steps_mobile.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pl_stepcore.dart';
import 'package:flutter/material.dart';

class PLConfirmation extends StatelessWidget {
  const PLConfirmation({required this.controller, super.key});

  final PartiesPriceListWizardController controller;

  static const double kIconSize = 96;

  @override
  Widget build(BuildContext context) {
    return PLStepCore(
      navEnabled: false,
      controller: controller,
      child: Column(
        children: [
          if (controller.isSuccessful && controller.isMaskLineCreated)
            ..._getCompletedOkWidgets(context),
          if (!controller.isSuccessful || !controller.isMaskLineCreated)
            ..._getCompletedWithErrorWidgets(context),
        ],
      ),
    );
  }

  List<Widget> _getCompletedOkWidgets(BuildContext context) {
    return [
      const SizedBox(height: kIconSize),
      const SizedBox(
        width: kIconSize,
        height: kIconSize,
        child: Icon(
          Icons.check_circle,
          size: kIconSize,
        ),
      ),
      Text('${context.l10n.great}!'),
      const SizedBox(height: kIconSize),
      const SizedBox(
        height: Insets.gutter,
      ),
      Text(
        '${context.l10n.priceListConfirmed}!',
        style: EmrOneConstants.kSmallHeadingTextStyle,
      ),
      Text(context.l10n.yourPriceListSaved),
      const SizedBox(
        height: Insets.gutter,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text(context.l10n.ok),
            onPressed: () => context.pop(),
          ),
        ],
      ),
    ];
  }

  List<Widget> _getCompletedWithErrorWidgets(BuildContext context) {
    return [
      const SizedBox(height: kIconSize),
      if (!controller.isMaskLineCreated && controller.isSuccessful)
        Icon(
          Icons.warning,
          size: kIconSize,
          color: Theme.of(context).colorScheme.tertiary,
        )
      else
        Icon(
          Icons.error,
          size: kIconSize,
          color: Theme.of(context).colorScheme.error,
        ),
      if (!controller.isSuccessful) Text(context.l10n.sorryThereWasaProblem),
      const SizedBox(height: kIconSize),
      Text(
        context.l10n.yourPriceListWasNotCreated,
        style: EmrOneConstants.kSmallHeadingTextStyle,
      ),
      const Spacer(),
      if (!controller.isMaskLineCreated && controller.isSuccessful)
        Text(context.l10n.maskLineNotCreated)
      else
        Text(context.l10n.pleaseTryAgain),
      const Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text(context.l10n.retry.toUpperCase()),
            onPressed: () =>
                controller.gotoStep(PriceListStepsMobile.kSummary.index),
          ),
        ],
      ),
    ];
  }
}
