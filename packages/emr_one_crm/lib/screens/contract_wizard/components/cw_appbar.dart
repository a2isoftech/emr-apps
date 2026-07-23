import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWAppBar {
  static AppBar getAppBar(BuildContext context, ContractController controller) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return AppBar(
      actions: [
        ValueListenableBuilder(
          valueListenable: controller.isContractCreationFailed,
          builder: (context, visible, child) {
            return Visibility(
              visible: !visible,
              child: IconButton(
                onPressed: () => EmrDialog.cancelOk(
                  context,
                  titleText: context.l10n.areYouSure,
                  contentText: context.l10n.anyWorkWillBeLost,
                  onOk: () {
                    context.goNamed(
                      NamedRoutes.traderPartyPrices,
                      params: {
                        'partyAccountNo': controller.partyAccountNo,
                      },
                    );
                  },
                ),
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ],
      elevation: 0,
      title: controller.isSpot
          ? Text(
              context.l10n.createASpotContract,
              style: TextStyle(
                color: isDark
                    ? Theme.of(context).colorScheme.onSurface
                    : Theme.of(context).colorScheme.onSecondary,
              ),
            )
          : Text(
              context.l10n.createAFixedContract,
              style: TextStyle(
                color: isDark
                    ? Theme.of(context).colorScheme.onSurface
                    : Theme.of(context).colorScheme.onSecondary,
              ),
            ),
      backgroundColor: isDark
          ? Theme.of(context).colorScheme.surface
          : Theme.of(context).colorScheme.secondary,
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 16),
        child: Text(
          controller.partyAccountNo,
          style: TextStyle(
            color: isDark
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}
