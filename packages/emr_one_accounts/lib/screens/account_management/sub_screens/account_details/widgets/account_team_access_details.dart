import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/account_team_access_grid.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_team_access/manage_team_access.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountTeamAccessDetails extends EmrTabBarVerticalViewCard {
  AccountTeamAccessDetails(
    BuildContext context, {
    required ManageTeamAccessController accountTeamController,
    required GlobalKey<FormState> accountTeamFormKey,
    required Account? account,
    required super.title,
    super.key,
  }) : super(
         child: Builder(
           builder: (context) {
             return Consumer<ManageTeamAccessController>(
               builder: (context, accountTeamController, child) {
                 return AccountTeamAccessGrid(
                   account: account,
                   controller: accountTeamController,
                 );
               },
             );
           },
         ),
         maxHeight: getMaxHeight(account!.accountTeams!),
         actions: {
           CardAddActionIntent: CardAddAction(
             context,
             createIntent: (context) => CardAddActionIntent(context: context),
             onAction: () => EmrDialog.modal<void>(
               context,
               titleText: context.l10n.addTeam,
               acceptLabel: context.l10n.save,
               builder: (context1) => ScaffoldMessenger(
                 child: Builder(
                   builder: (context) {
                     accountTeamController.errorMessage.value = '';
                     return Column(
                       children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.3,
                           height: MediaQuery.of(context).size.height * 0.3,
                           child: ManageTeamAccessScreen(
                             account: account,
                             controller: accountTeamController,
                             teamsFormKey: accountTeamFormKey,
                             teamId: null,
                           ),
                         ),
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.3,
                           child: ValueListenableBuilder<String>(
                             valueListenable:
                                 accountTeamController.errorMessage,
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
                                         accountTeamController
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
                 if (accountTeamFormKey.currentState?.validate() ?? true) {
                   final (success, error) = await accountTeamController.add();

                   if (!success) {
                     accountTeamController.errorMessage.value = error;
                     return;
                   }
                   accountTeamController.reset();
                   accountTeamController.gridRefreshSignal.value++;
                   AccountDetailsController.forceLoad = true;
                   if (context.mounted) {
                     context.read<AccountDetailsController>().refreshScreen();
                     context.pop();
                   }
                 } else {
                   accountTeamController.isFormValid.value = false;
                 }
               },
             ),
           ),
         },
       );
}
