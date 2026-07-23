import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/country_helper.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
class EditBankAccountDetails
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditBankAccountDetails(
    BuildContext context, {
    required ManageBankAccountDetailsController controller,
    required super.title,
    bool isEditing = false,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.bankAccountType,
             items: controller.bankAccountTypes,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.bankAccountType,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: context.l10n.accountName,
             binding: controller.data.accountHolderName,
             validator: Validators.required,
           ),
           ListenableBuilder(
             listenable: controller.bankAccountComboErrorField,
             builder: (context, _) => EmrTextFormField<String?>(
               labelText: context.l10n.accountNumber,
               binding: controller.data.accountNumber,
               enabled: ValueNotifier(!isEditing),
               autovalidateMode: AutovalidateMode.onUserInteraction,
               validator: (v) =>
                   _bankAccountNumberValidator(context, controller, v),
             ),
           ),
           ListenableBuilder(
             listenable: controller.bankAccountComboErrorField,
             builder: (context, _) => EmrTextFormField<String?>(
               labelText: context.l10n.sortCode,
               binding: controller.data.sortCode,
               enabled: ValueNotifier(!isEditing),
               autovalidateMode: AutovalidateMode.onUserInteraction,
               validator: (v) => _bankSortCodeValidator(context, controller, v),
             ),
           ),
           EmrTextFormField(
             labelText: context.l10n.bankName,
             binding: controller.data.bankName,
             enabled: ValueNotifier(false),
           ),
           EmrTextFormField(
             labelText: context.l10n.address,
             binding: controller.data.addressString,
             enabled: ValueNotifier(false),
           ),
           EmrPickerFormField(
             labelText: context.l10n.country,
             items: controller.countries,
             itemTitleText: (item) => getCountryTitle(item.value),
             binding: controller.data.country,
             validator: Validators.required,
           ),
           EmrPickerFormField(
             labelText: context.l10n.currencyCode,
             items: StandingDataService.currencyCodes,
             itemTitleText: (item) => item,
             binding: controller.data.currenyCode,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: context.l10n.iban,
             binding: controller.data.ibanCode,
           ),
           EmrTextFormField(
             labelText: context.l10n.swift,
             binding: controller.data.swiftCode,
           ),
           EmrTextFormField(
             labelText: context.l10n.reference,
             binding: controller.data.reference,
           ),
           EmrPickerFormField(
             labelText: context.l10n.verificationType,
             items: controller.bankVerificationTypes,
             itemTitleText: (item) => item.key.displayString(context),
             binding: controller.data.bankAccountVerificationType,
           ),
           SizedBox(
             width: double.infinity,
             child: EmrSwitchFormField(
               labelText: context.l10n.fasterPayment,
               binding: controller.data.isFasterPay,
             ),
           ),
         ],
       );
}

String? _bankAccountNumberValidator(
  BuildContext context,
  ManageBankAccountDetailsController c,
  String? value,
) {
  const maxAccountNumberLength = 8;
  return Validators.join([
        Validators.required(value),
        Validators.length(value, equals: maxAccountNumberLength),
        Validators.integer(value),
      ]) ??
      (c.bankAccountComboErrorField.value ==
              BankAccountComboErrorField.accountNumber
          ? context.l10n.accountAndSortCodeValidation
          : null);
}

String? _bankSortCodeValidator(
  BuildContext context,
  ManageBankAccountDetailsController c,
  String? value,
) {
  const maxSortCodeLength = 6;
  return Validators.join([
        Validators.required(value),
        Validators.length(value, equals: maxSortCodeLength),
        Validators.integer(value),
      ]) ??
      (c.bankAccountComboErrorField.value == BankAccountComboErrorField.sortCode
          ? context.l10n.accountAndSortCodeValidation
          : null);
}
