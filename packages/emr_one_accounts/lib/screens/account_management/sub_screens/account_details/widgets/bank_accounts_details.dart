import 'dart:async';

import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/permissions/account_management_permissions.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/bank_accounts_grid.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BankAccountsDetails extends EmrTabBarVerticalViewCard {
  BankAccountsDetails(
    BuildContext context, {
    required ManageBankAccountDetailsController bankAccountController,
    required GlobalKey<FormState> bankAccountDetailsFormKey,
    required Account? account,
    required super.title,
    super.key,
  }) : super(
         allowedPermissions: const [
           AccountManagementPermissions.bankAccountView,
         ],
         child: Builder(
           builder: (context) {
             return Consumer<ManageBankAccountDetailsController>(
               builder: (context, bankAccountController, child) {
                 return BankAccountsGrid(
                   account: account,
                   controller: bankAccountController,
                 );
               },
             );
           },
         ),
         maxHeight: getMaxHeight(account!.bankAccounts!),
         actions: (account.bankAccounts ?? []).isEmpty
             ? {
                 CardAddActionIntent: CardAddAction(
                   context,
                   createIntent: (context) =>
                       CardAddActionIntent(context: context),
                   onAction: () => EmrDialog.modal<void>(
               context,
               titleText: context.l10n.addBankAccount,
               acceptLabel: context.l10n.save,
               builder: (context1) => ScaffoldMessenger(
                 child: Builder(
                   builder: (innerContext) {
                     bankAccountController.showErrorMessage.value = '';
                     return Column(
                       children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.6,
                           height: MediaQuery.of(context).size.height * 0.6,
                           child: ManageBankAccountDetailsScreen(
                             accountId: account.id ?? '',
                             controller: bankAccountController,
                             bankAccountDetailsFormKey:
                                 bankAccountDetailsFormKey,
                           ),
                         ),
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.6,
                           child: ValueListenableBuilder<String>(
                             valueListenable:
                                 bankAccountController.showErrorMessage,
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
                                         bankAccountController
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
                 if (bankAccountDetailsFormKey.currentState?.validate() ??
                     true) {
                   final (success, error) = await bankAccountController.add();

                   if (!success) {
                     bankAccountController.showErrorMessage.value = error;

                     return;
                   }
                   bankAccountController.reset();
                   bankAccountController.gridRefreshSignal.value++;
                   AccountDetailsController.forceLoad = true;
                   if (context.mounted) {
                    context.read<AccountDetailsController>().refreshScreen();
                     context.pop();
                     unawaited(
                       EmrModal.showMessageBar(
                         context,
                         context.l10n.updatedSuccessfully,
                       ),
                     );
                   }
                 } else {
                   bankAccountController.isFormValid.value = false;
                 }
               },
             ),
           ),
               }
             : {},
       );
}
