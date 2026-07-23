import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManagePrepaymentCardScreen extends StatefulWidget {
  const ManagePrepaymentCardScreen({
    required this.accountId,
    required this.cardCode,
    required this.managePrepayCardController,
    required this.prepayCardsFormKey,
    required this.isReplaceAction,
    super.key,
  });

  final String accountId;
  final String? cardCode;
  final ManagePrepaymentCardsController managePrepayCardController;
  final GlobalKey<FormState> prepayCardsFormKey;
  final ValueNotifier<bool> isReplaceAction;

  @override
  State<ManagePrepaymentCardScreen> createState() =>
      _ManagePrepaymentCardScreenState();
}

class _ManagePrepaymentCardScreenState
    extends State<ManagePrepaymentCardScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<(Account?, String?, String?)>(
      future: context.coreApi.accountService.getAccountInfo(widget.accountId),
      builder:
          (
            BuildContext ctx,
            AsyncSnapshot<(Account?, String?, String?)> snapshot,
          ) {
            PrepaymentCard? prepaymentCard;

            if (snapshot.data?.$2 ==
                AccountAccessConstants.accountNotAuthorized) {
              return Center(child: Text(context.l10n.doNotHaveAccessToAccount));
            }

            if (widget.isReplaceAction.value == false) {
              prepaymentCard =
                  (widget.managePrepayCardController.account?.prepaymentCards ??
                          [])
                      .firstWhereOrNull((c) => c.code == widget.cardCode);
              widget.managePrepayCardController.setPrepaymentCard(
                prepaymentCard,
              );
            } else {
              prepaymentCard = null;
              widget.managePrepayCardController.setPrepaymentCard(
                prepaymentCard,
              );
            }
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.data != null) {
              widget.managePrepayCardController.showErrorMessage.value = '';
              widget.managePrepayCardController.setAccount(snapshot.data?.$1);
            }
            return Column(
              children: [
                Expanded(
                  child: (snapshot.connectionState != ConnectionState.done)
                      // Loading.
                      ? const Center(child: CircularProgressIndicator())
                      : (snapshot.data == null)
                      // User not found.
                      ? Center(child: Text(context.l10n.prepaymentCardNotFound))
                      // Form.
                      : Form(
                          key: widget.prepayCardsFormKey,
                          child: EmrTabBarVerticalView(
                            children: [
                              EditPrepaymentCards(
                                context,
                                controller: widget.managePrepayCardController,
                                title: context.l10n.prepaymentCard,
                                isReplaceAction: widget.isReplaceAction.value,
                              ),
                            ],
                          ),
                        ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ValueListenableBuilder<String>(
                        valueListenable:
                            widget.managePrepayCardController.showErrorMessage,
                        builder: (_, visible, __) {
                          return visible != ''
                              ? Container(
                                  key: const ValueKey(1),
                                  padding: const EdgeInsets.all(
                                    Insets.gutter / 2,
                                  ),
                                  color: Theme.of(context).colorScheme.error,
                                  child: Text(
                                    widget
                                        .managePrepayCardController
                                        .showErrorMessage
                                        .value,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                )
                              : const SizedBox.shrink();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
    );
  }
}
