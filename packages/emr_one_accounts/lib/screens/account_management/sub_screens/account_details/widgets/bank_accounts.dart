import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide AccountSettings;
import 'package:flutter/material.dart';

class BankAccounts extends EmrTabBarVerticalViewCard {
  BankAccounts({
    required this.account,
    required this.onRefresh,
    required this.controller,
    super.key,
  }) : super(
         title: 'Bank Accounts',
         minHeight: AccountSettings.scrollableCardMinHeight,
         maxHeight: AccountSettings.scrollableCardMaxHeight,
       );

  final Account? account;
  final void Function() onRefresh;
  final bankAccountsFormKey = GlobalKey<FormState>();
  final ManageBankAccountDetailsController controller;

  @override
  Widget build(BuildContext context) {
    final bankAccount = account?.bankAccounts?.firstOrNull;

    if (bankAccount == null) {
      return DataCardWithNameValue(
        columns: const {},
        onEdit: () => EmrDialog.modal<void>(
          context,
          titleText: context.l10n.editBankAccount,
          acceptLabel: context.l10n.save,
          builder: (context) => SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            child: ManageBankAccountDetailsScreen(
              accountId: account?.id ?? '',
              bankAccountDetailsFormKey: bankAccountsFormKey,
              controller: controller,
            ),
          ),
          onAccept: () async {
            if (bankAccountsFormKey.currentState?.validate() ?? true) {
              final (success, error) = await controller.update();

              if (!success) {
                controller.showErrorMessage.value = error;

                return;
              }
              controller.reset();
              onRefresh();
              context.pop();
            } else {
              controller.isFormValid.value = false;
            }
          },
        ),
      );
    }

    return DataCardWithNameValue(
      columns: {
        'Account Number': bankAccount.accountNumber ?? '',
        'Sort Code': bankAccount.sortCode ?? '',
        'Ref': bankAccount.reference ?? '',
        'Bank Name': bankAccount.bankName,
        'Address 1': bankAccount.address?.address1,
        'Address 2': bankAccount.address?.address2,
        'Postcode': bankAccount.address?.postCode,
        'Country Code': bankAccount.address?.countryCode,
        'Currency Id': bankAccount.currencyId,
      },
      onEdit: () => EmrDialog.modal<void>(
        context,
        titleText: context.l10n.editBankAccount,
        acceptLabel: context.l10n.save,
        builder: (context) => SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          child: ManageBankAccountDetailsScreen(
            accountId: account?.id ?? '',
            bankAccountDetailsFormKey: bankAccountsFormKey,
            controller: controller,
            isEditing: true,
          ),
        ),
        onAccept: () async {
          if (bankAccountsFormKey.currentState?.validate() ?? true) {
            final (success, error) = await controller.update();

            if (!success) {
              controller.showErrorMessage.value = error;

              return;
            }
            controller.reset();
            onRefresh();
            context.pop();
          } else {
            controller.isFormValid.value = false;
          }
        },
      ),
    );
  }
}
