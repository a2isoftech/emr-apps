import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AccountSearchBox extends StatelessWidget {
  const AccountSearchBox({
    required this.accountController,
    required this.onChanged,
    required this.isSearching,
    this.label,
    super.key,
  });

  final TextEditingController accountController;
  final void Function(String) onChanged;
  final bool isSearching;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: TextFormField(
        autofocus: true,
        controller: accountController,
        decoration: InputDecoration(
          label: Text('${label??context.l10n.account}:'),
          contentPadding: const EdgeInsets.all(
            Insets.gutter / 2,
          ),
          fillColor: Theme.of(context).colorScheme.surface,
          suffixIcon: isSearching
              ? const Padding(
                  padding: EdgeInsets.all(Insets.gutter / 2),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(),
                  ),
                )
              : null,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
