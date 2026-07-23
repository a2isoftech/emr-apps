import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoyaltyCardDetails extends EmrTabBarVerticalViewCard {
  LoyaltyCardDetails(
    BuildContext context, {
    required ManageLoyaltyCardsController loyaltyCardController,
    required GlobalKey<FormState> loyaltyCardFormKey,
    required Account? account,
    required super.title,
    super.key,
  }) : super(
         child: Builder(
           builder: (context) {
             return Consumer<ManageLoyaltyCardsController>(
               builder: (context, loyaltyCardController, child) {
                 return LoyaltyCardsGrid(
                   account: account,
                   controller: loyaltyCardController,
                 );
               },
             );
           },
         ),
         maxHeight: getMaxHeight(account?.loyaltyCards ?? []),
         actions: {
           CardAddActionIntent: CardAddAction(
             context,
             createIntent: (context) => CardAddActionIntent(context: context),
             onAction: () => EmrDialog.modal<void>(
               context,
               titleText: context.l10n.addLoyaltyCard,
               acceptLabel: context.l10n.save,
               builder: (context1) => ScaffoldMessenger(
                 child: Builder(
                   builder: (context) {
                     loyaltyCardController.showErrorMessage.value = '';

                     return Column(
                       children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.4,
                           height: MediaQuery.of(context).size.height * 0.4,
                           child: ManageLoyaltyCardScreen(
                             accountId: account?.id ?? '',
                             controller: loyaltyCardController,
                             cardCode: null,
                             cardsFormKey: loyaltyCardFormKey,
                           ),
                         ),
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.4,
                           child: ValueListenableBuilder<String>(
                             valueListenable:
                                 loyaltyCardController.showErrorMessage,
                             builder: (_, visible, __) {
                               return visible != ''
                                   ? Container(
                                       padding: const EdgeInsets.all(
                                         Insets.gutter / 2,
                                       ),
                                       color: Theme.of(
                                         context,
                                       ).colorScheme.error,
                                       child: Text(
                                         loyaltyCardController
                                             .showErrorMessage
                                             .value,
                                         style: const TextStyle(
                                           color: Colors.white,
                                         ),
                                       ),
                                     )
                                   : const SizedBox.shrink();
                             },
                           ),
                         ),
                       ],
                     );
                   },
                 ),
               ),
               onAccept: () async {
                 if (loyaltyCardFormKey.currentState?.validate() ?? true) {
                   final (success, error) = await loyaltyCardController.add();

                   if (!success) {
                     loyaltyCardController.showErrorMessage.value = error;
                     return;
                   }
                   loyaltyCardController.reset();
                   loyaltyCardController.gridRefreshSignal.value++;
                   AccountDetailsController.forceLoad = true;
                    if (context.mounted) {
                       context.read<AccountDetailsController>().refreshScreen();
                       context.pop();
                     }
                 } else {
                   loyaltyCardController.isFormValid.value = false;
                 }
               },
             ),
           ),
         },
       );
}
