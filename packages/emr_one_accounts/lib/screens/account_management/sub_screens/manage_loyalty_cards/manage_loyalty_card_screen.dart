import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManageLoyaltyCardScreen extends StatefulWidget {
  const ManageLoyaltyCardScreen({
    required this.accountId,
    required this.cardCode,
    required this.cardsFormKey,
    this.controller,
    super.key,
  });

  final String accountId;
  final String? cardCode;
  final ManageLoyaltyCardsController? controller;
  final GlobalKey<FormState> cardsFormKey;

  @override
  State<ManageLoyaltyCardScreen> createState() =>
      _ManageLoyaltyCardScreenState();
}

class _ManageLoyaltyCardScreenState extends State<ManageLoyaltyCardScreen> {
  @override
  Widget build(BuildContext context) {
    final controller =
        widget.controller ??
        Provider.of<ManageLoyaltyCardsController>(context, listen: false);

    controller.cardsFormKey = widget.cardsFormKey;

    return FutureBuilder<(Account?, String?, String?)>(
      future: context.coreApi.accountService.getAccountInfo(widget.accountId),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.data?.$2 == AccountAccessConstants.accountNotAuthorized) {
          return Center(child: Text(context.l10n.doNotHaveAccessToAccount));
        }

        if (snapshot.data == null) {
          return Center(child: Text(context.l10n.loyaltyCardNotFound));
        }

        final account = snapshot.data?.$1;
        controller.setAccount(account);

        final loyaltyCard = (controller.account?.loyaltyCards ?? [])
            .firstWhereOrNull((c) => c.code == widget.cardCode);

        if (controller.loyaltyCard == null) {
          controller.setLoyaltyCard(loyaltyCard);
        }

        return Form(
          key: widget.cardsFormKey,
          child: EmrTabBarVerticalView(
            children: [
              EditLoyaltyCards(
                context,
                controller: controller,
                title: context.l10n.loyaltyCard,
              ),
            ],
          ),
        );
      },
    );
  }
}
