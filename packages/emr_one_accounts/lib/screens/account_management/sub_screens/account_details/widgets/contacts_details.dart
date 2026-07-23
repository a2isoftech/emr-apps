import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactDetails extends EmrTabBarVerticalViewCard {
  ContactDetails(
    BuildContext context, {
    required ManageContactController manageContactController,
    required GlobalKey<FormState> manageContactFormKey,
    required Account? account,
    required super.title,
    super.key,
  }) : super(
         child: Builder(
           builder: (context) {
             return Consumer<ManageContactController>(
               builder: (context, manageContactController, child) {
                 return ContactsGrid(
                   account: account!,
                   controller: manageContactController,
                 );
               },
             );
           },
         ),
         actions: {
           CardAddActionIntent: CardAddAction(
             context,
             createIntent: (context) => CardAddActionIntent(context: context),
             onAction: () => EmrDialog.modal<void>(
               context,
               titleText: context.l10n.addContact,
               acceptLabel: context.l10n.save,
               builder: (context1) => ScaffoldMessenger(
                 child: Builder(
                   builder: (context) {
                     manageContactController.errorMessage.value = '';
                     return Column(
                       children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.8,
                           height: MediaQuery.of(context).size.height * 0.8,
                           child: ManageContactScreen(
                             account: account!,
                             manageContactController: manageContactController,
                             contact: null,
                             contactFormKey: manageContactFormKey,
                           ),
                         ),
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.8,
                           child: ValueListenableBuilder<String>(
                             valueListenable:
                                 manageContactController.errorMessage,
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
                                         manageContactController
                                             .errorMessage
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
                 if (manageContactFormKey.currentState?.validate() ?? true) {
                   final (success, error) = await manageContactController
                       .create();

                   if (!success) {
                     if (context.mounted) {
                       await EmrModal.showMessageBar(
                         context,
                         error.isNotEmpty
                             ? error
                             : context.l10n.anErrorOccurredTryAgain,
                         messageType: MessageBarTypes.error,
                       );
                     }
                     return;
                   }
                   if (context.mounted) {
                     await EmrModal.showMessageBar(
                       context,
                       context.l10n.contactSavedSuccessfully,
                     );
                   }
                   final result = await manageContactController
                       .coreApiService.accountService
                       .getAccountInfo(account!.id!, forceLoad: true);
                   final updatedAccount = result.$1;
                   if (updatedAccount != null) {
                     account.contacts
                       ?..clear()
                       ..addAll(updatedAccount.contacts ?? []);
                     account.portalEnabledContacts =
                     updatedAccount.portalEnabledContacts;
                   }
                   manageContactController.reset();
                   manageContactController.gridRefreshSignal.value++;
                   AccountDetailsController.forceLoad = true;
                   if (context.mounted) {
                     final documentsController =
                         context.read<ManageDocumentsController>();
                     final accountDetailsController =
                         context.read<AccountDetailsController>();
                     context.pop();
                     accountDetailsController.refreshScreen();
                     documentsController.setAccount(account);
                   }
                 } else {
                   manageContactController.isFormValid.value = false;
                 }
               },
             ),
           ),
         },
       );
}
