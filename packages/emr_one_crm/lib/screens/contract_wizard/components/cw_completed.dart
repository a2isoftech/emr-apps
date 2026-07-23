import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_core.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CWCompleted extends StatelessWidget {
  const CWCompleted({
    required this.controller,
    super.key,
  });

  final ContractController controller;

  static const double kIconSize = 64;

  @override
  Widget build(BuildContext context) {
    return CWStepCore(
      controller: controller,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (controller.contractResult!.code == ContractResultCode.ok)
              ..._getCompletedOkWidgets(context),
            if (controller.contractResult!.code != ContractResultCode.ok)
              ..._getCompletedWithErrorWidgets(context),
          ],
        ),
      ),
    );
  }

  List<Widget> _getCompletedOkWidgets(BuildContext context) {
    final elevatedButton = ElevatedButton(
      child: Text(context.l10n.ok.toUpperCase()),
      onPressed: () => context.goNamed(
        NamedRoutes.traderPartyPrices,
        params: {
          'partyAccountNo': controller.partyAccountNo,
        },
      ),
    );
    return [
      const SizedBox(height: kIconSize),
      const Icon(
        Icons.check_circle,
        size: 96,
      ),
      Text('${context.l10n.great}!'),
      const SizedBox(height: kIconSize),
      Text(
        controller.isSpot
            ? context.l10n.spotContractConfirmed
            : context.l10n.fixedContractConfirmed,
        style: EmrOneConstants.kSmallHeadingTextStyle,
      ),
      Text(
        '${context.l10n.contractRef}: '
        '${controller.contractResult!.contractRef}',
        style: EmrOneConstants.kSmallHeadingTextStyle.copyWith(
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
      Text(context.l10n.yourContractWasSavedSuccessfully),
      if (!kIsWeb) ...[
        const Spacer(),
        Row(
          children: [
            Expanded(
              child: elevatedButton,
            ),
          ],
        ),
      ],
      if (kIsWeb) elevatedButton,
    ];
  }

  List<Widget> _getCompletedWithErrorWidgets(BuildContext context) {
    final elevatedButton = ElevatedButton(
      child: Text(context.l10n.retry.toUpperCase()),
      onPressed: () => controller.gotoStep(ContractController.kContractDetails),
    );
    return [
      const SizedBox(height: kIconSize),
      Icon(Icons.error, size: 96, color: Theme.of(context).colorScheme.error),
      Text(context.l10n.sorryThereWasaProblem),
      const SizedBox(height: kIconSize),
      Text(
        context.l10n.yourContractWasNotSaved,
        style: EmrOneConstants.kSmallHeadingTextStyle,
      ),
      if (controller.contractResult!.code == ContractResultCode.gatewayError)
        Text(
          controller.contractResult!.message,
          style: EmrOneConstants.kSmallSubtleTextStyle.copyWith(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
      if (!kIsWeb) const Spacer(),
      Text(context.l10n.pleaseTryAgain),
      if (!kIsWeb) ...[
        const Spacer(),
        Row(
          children: [
            Expanded(
              child: elevatedButton,
            ),
          ],
        ),
      ],
      if (kIsWeb) elevatedButton,
    ];
  }
}
