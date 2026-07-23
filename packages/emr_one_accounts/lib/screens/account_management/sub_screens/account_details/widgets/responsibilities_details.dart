import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResponsibilitiesDetails extends EmrTabBarVerticalViewCard {
  ResponsibilitiesDetails(
    BuildContext context, {
    required ManageResponsibilitiesController manageResponsibilityController,
    required GlobalKey<FormState> manageResponsibilityFormKey,
    required Account? account,
    required void Function() onRefresh,
    required super.title,
    super.key,
  }) : super(
         child: Builder(
           builder: (context) {
             return Consumer<ManageResponsibilitiesController>(
               builder: (context, manageResponsibilityController, child) {
                 return ResponsibilitiesGrid(
                   account: account,
                   controller: manageResponsibilityController,
                   onRefresh: onRefresh,
                 );
               },
             );
           },
         ),
         actions: {
           CardAddActionIntent: CardAddAction(
             context,
             createIntent: (context) => CardAddActionIntent(context: context),
             onAction: () {
               EmrDialog.modal<void>(
                 context,
                 titleText: context.l10n.addManager,
                 acceptLabel: context.l10n.save,
                 builder: (context1) => SizedBox(
                   width: MediaQuery.of(context).size.width * 0.4,
                   height: MediaQuery.of(context).size.width * 0.18,
                   child: ManageResponsibilitiesScreen(
                     accountId: account?.id ?? '',
                     accountManagerTypeId: null,
                     manageResponsibilitiesController:
                         manageResponsibilityController,
                     userId: null,
                     responsibilityFormKey: manageResponsibilityFormKey,
                   ),
                 ),
                 onAccept: () async {
                   if (manageResponsibilityFormKey.currentState?.validate() ??
                       false) {
                     final (success, error) =
                         await manageResponsibilityController.add();

                     if (!success) {
                       final message =
                           error ==
                               ManageResponsibilitiesController
                                   .kManagerAlreadyExistsInServiceType
                           ? context.l10n.managerAlreadyExistsInServiceType
                           : error;
                       await EmrModal.showMessageBar(
                         context,
                         message,
                         messageType: MessageBarTypes.error,
                       );
                       return;
                     }
                     manageResponsibilityController.reset();
                     manageResponsibilityController.gridRefreshSignal.value++;
                     AccountDetailsController.forceLoad = true;
                     onRefresh();
                     context.pop();
                     await EmrModal.showMessageBar(
                       context,
                       context.l10n.responsibilitySavedMsg,
                     );
                   } else {
                     manageResponsibilityController.isFormValid.value = false;
                   }
                 },
               ).then((_) => manageResponsibilityController.reset());
             },
           ),
         },
       );
}
