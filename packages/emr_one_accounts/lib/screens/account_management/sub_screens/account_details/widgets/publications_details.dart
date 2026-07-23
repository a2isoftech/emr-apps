import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PublicationDetails extends EmrTabBarVerticalViewCard {
  PublicationDetails(
    BuildContext context, {
    required ManagePublicationsController managePublicationController,
    required GlobalKey<FormState> managePublicationFormKey,
    required Account? account,
    required super.title,
    super.key,
  }) : super(
         child: PublicationsGrid(
           account: account,
           controller: managePublicationController,
         ),
         actions: {
           CardAddActionIntent: CardAddAction(
             context,
             createIntent: (context) => CardAddActionIntent(context: context),
             onAction: () => EmrDialog.modal<void>(
               context,
               titleText: context.l10n.publication,
               acceptLabel: context.l10n.save,
               builder: (context1) => ScaffoldMessenger(
                 child: SizedBox(
                   width: MediaQuery.of(context).size.width * 0.6,
                   height: MediaQuery.of(context).size.width * 0.3,
                   child: ManagePublicationScreen(
                     accountId: account?.id ?? '',
                     publicationId: null,
                     controller: managePublicationController,
                     publicationsFormKey: managePublicationFormKey,
                   ),
                 ),
               ),
               onAccept: () async {
                 if (!(managePublicationFormKey.currentState?.validate() ??
                     true)) {
                   managePublicationController.isFormValid.value = false;
                   return;
                 }

                 final (success, error) = await managePublicationController
                     .update();

                 if (!success) {
                   await EmrModal.showMessageBar(
                     context,
                     error,
                     messageType: MessageBarTypes.error,
                   );
                   return;
                 }
                 managePublicationController.reset();
                 managePublicationController.gridRefreshSignal.value++;
                 AccountDetailsController.forceLoad = true;

                 if (context.mounted) {
                   context.read<AccountDetailsController>().refreshScreen();
                   context.pop();
                   await EmrModal.showMessageBar(
                     context,
                     context.l10n.msgPublicationSaved,
                   );
                 }
               },
             ),
           ),
         },
       );
}
