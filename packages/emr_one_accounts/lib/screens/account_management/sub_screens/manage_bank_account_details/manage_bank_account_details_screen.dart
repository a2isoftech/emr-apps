import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageBankAccountDetailsScreen extends StatefulWidget {
  const ManageBankAccountDetailsScreen({
    required this.accountId,
    required this.controller,
    required this.bankAccountDetailsFormKey,
    this.isEditing = false,
    super.key,
  });

  final String accountId;
  final ManageBankAccountDetailsController controller;
  final GlobalKey<FormState> bankAccountDetailsFormKey;
  final bool isEditing;

  @override
  State<ManageBankAccountDetailsScreen> createState() =>
      _ManageBankAccountDetailsScreenState();
}

class _ManageBankAccountDetailsScreenState
    extends State<ManageBankAccountDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<(Account?, String?, String?)>(
      future: context.coreApi.accountService.getAccountInfo(widget.accountId),
      builder:
          (
            BuildContext ctx,
            AsyncSnapshot<(Account?, String?, String?)> snapshot,
          ) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.data?.$2 ==
                AccountAccessConstants.accountNotAuthorized) {
              return Center(child: Text(context.l10n.doNotHaveAccessToAccount));
            }
            if (snapshot.data == null) {
              return Center(child: Text(context.l10n.accountNotFound));
            }
            widget.controller.showErrorMessage.value = '';
            final account = snapshot.data!.$1;
            widget.controller.setAccount(account);

            return Form(
              key: widget.bankAccountDetailsFormKey,
              child: EmrTabBarVerticalView(
                children: [
                  EditBankAccountDetails(
                    context,
                    title: context.l10n.bankAccountDetails,
                    controller: widget.controller,
                    isEditing: widget.isEditing,
                  ),
                ],
              ),
            );
          },
    );
  }
}
