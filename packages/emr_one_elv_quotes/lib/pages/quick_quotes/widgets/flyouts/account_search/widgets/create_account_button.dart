import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/widgets/flyout/elv_flyouts.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/flyouts/create_account_flyout.dart';
import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    required this.controller,
    super.key,
  });

  final QuickQuoteController controller;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        context.pop();
        elvStandardFlyout(
          context: context,
          body: QuickQuotesCreateAccount(
            controller: controller,
          ),
          heading: context.l10n.createAccount,
        );
      },
      child: Text(
        context.l10n.createAccount,
      ),
    );
  }
}
