import 'dart:async';

import 'package:emr_core_api/services/account_service.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocationDetails extends EmrTabBarVerticalViewCard {
  LocationDetails(
    BuildContext context, {
    required ManageLocationController manageLocationController,
    required AccountService accountService,
    required GlobalKey<FormState> manageLocationFormKey,
    required Account? account,
    required super.title,
    super.key,
  }) : super(
         child: Builder(
           builder: (context) {
             return Consumer<ManageLocationController>(
               builder: (context, manageLocationController, child) {
                 return LocationsGrid(
                   account: account!,
                   controller: manageLocationController,
                   accountService: accountService,
                 );
               },
             );
           },
         ),
         maxHeight: getMaxHeight(account!.locations),
         actions: {
           CardAddActionIntent: CardAddAction(
             context,
             createIntent: (context) => CardAddActionIntent(context: context),
             onAction: () => EmrDialog.modal<void>(
               context,
               titleText: context.l10n.addlocation,
               acceptLabel: context.l10n.save,
               builder: (context1) => ScaffoldMessenger(
                 child: Builder(
                   builder: (context) {
                     manageLocationController.showErrorMessage.value = '';
                     return SizedBox(
                       width: MediaQuery.of(context).size.width * 0.6,
                       height: MediaQuery.of(context).size.height * 0.6,
                       child: ManageLocationScreen(
                         accountId: account.id ?? '',
                         manageLocationController: manageLocationController,
                         locationCode: null,
                         accountService: accountService,
                         locationsFormKey: manageLocationFormKey,
                       ),
                     );
                   },
                 ),
               ),
               onAccept: () async {
                 if (manageLocationFormKey.currentState?.validate() ?? false) {
                   final (success, error) = await manageLocationController
                       .add();

                   if (!success) {
                     manageLocationController.showErrorMessage.value = error;
                     await EmrModal.showMessageBar(
                       context,
                       error,
                       messageType: MessageBarTypes.error,
                     );
                     return;
                   }
                   manageLocationController.reset();
                   manageLocationController.gridRefreshSignal.value++;
                   AccountDetailsController.forceLoad = true;
                   if (context.mounted) {
                    context.read<AccountDetailsController>().refreshScreen();
                     context.pop();
                     unawaited(
                       EmrModal.showMessageBar(
                         context,
                         context.l10n.locationAddedSuccessfully,
                       ),
                     );
                   }
                 } else {
                   manageLocationController.isFormValid.value = false;
                 }
               },
             ),
           ),
         },
       );
}
