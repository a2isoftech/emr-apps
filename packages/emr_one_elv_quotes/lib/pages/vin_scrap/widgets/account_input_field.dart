import 'package:emr_core_api/services/account_service.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/widgets/select_account_dialog.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';

class AccountInputField extends StatefulWidget {
  const AccountInputField({
    required this.accountService,
    required this.defaultTerritoryCode,
    required this.onAccountSelected,
    required this.controller,
    super.key,
  });
  final AccountService accountService;
  final String defaultTerritoryCode;
  final void Function(Account) onAccountSelected;
  final TextEditingController controller;

  @override
  State<AccountInputField> createState() => _AccountInputFieldState();
}

class _AccountInputFieldState extends State<AccountInputField> {
  Future<void> _openAccountSearchDialog() async {
    final selectedAccount = await showDialog<Account>(
      context: context,
      builder: (context) => Dialog(
        child: SizedBox(
          height: 600,
          width: 500,
          child: SelectAccountDialog(
            service: widget.accountService,
            defaultTerritoryCode: widget.defaultTerritoryCode,
          ),
        ),
      ),
    );

    if (selectedAccount != null) {
      widget.onAccountSelected(selectedAccount);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Insets.gutter),
      child: SizedBox(
        width: 500,
        child: TextField(
          controller: widget.controller,
          readOnly: true,
          decoration: InputDecoration(
            label: Text(context.l10n.selectAccount),
          ),
          onTap: _openAccountSearchDialog,
        ),
      ),
    );
  }
}
