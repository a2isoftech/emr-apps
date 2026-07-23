import 'dart:math' as math;

import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductEwcDetails extends EmrTabBarVerticalViewCard {
  ProductEwcDetails(
    BuildContext context, {
    required ManageProductEWCController productEwcController,
    required GlobalKey<FormState> productEwcFormKey,
    required Account? account,
    required super.title,
    super.key,
  }) : super(
         child: Builder(
           builder: (context) {
             return Consumer<ManageProductEWCController>(
               builder: (context, productEwcController, child) {
                 return ProductEWCGrid(
                   account: account,
                   controller: productEwcController,
                 );
               },
             );
           },
         ),
         maxHeight: _getProductEwcMaxHeight(account!.productEWCCodes.length),
         actions: {
           CardAddActionIntent: CardAddAction(
             context,
             createIntent: (context) => CardAddActionIntent(context: context),
             onAction: () => EmrDialog.modal<void>(
               context,
               titleText: context.l10n.addProductEwc,
               acceptLabel: context.l10n.save,
               builder: (context1) => ScaffoldMessenger(
                 child: Builder(
                   builder: (context) {
                     productEwcController.showErrorMessage.value = '';
                     return Column(
                       children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.5,
                           height: MediaQuery.of(context).size.height * 0.4,
                           child: ManageProductEWCScreen(
                             accountId: account.id ?? '',
                             controller: productEwcController,
                             productId: null,
                             productEwcFormKey: productEwcFormKey,
                           ),
                         ),
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.5,
                           child: ValueListenableBuilder<String>(
                             valueListenable:
                                 productEwcController.showErrorMessage,
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
                                         productEwcController
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
                 if (productEwcFormKey.currentState?.validate() ?? true) {
                   final (success, error) = await productEwcController.add();

                   if (!success) {
                     return;
                   }
                   productEwcController.reset();
                   productEwcController.gridRefreshSignal.value++;
                   AccountDetailsController.forceLoad = true;
                   if (context.mounted) {
                     context.read<AccountDetailsController>().refreshScreen();
                     context.pop();
                     await EmrModal.showMessageBar(
                       context,
                       context.l10n.addProductEwcSuccessMessage,
                     );
                   }
                 } else {
                   productEwcController.isFormValid.value = false;
                 }
               },
             ),
           ),
         },
       );
}

double _getProductEwcMaxHeight(int recordCount) {
  if (recordCount == 0) {
    return double.infinity;
  }

  final visibleRows = math.min(recordCount + 1, accountGridMaxVisibleRows);

  return (visibleRows * accountGridRowHeight) + (Insets.gutter * 2);
}
