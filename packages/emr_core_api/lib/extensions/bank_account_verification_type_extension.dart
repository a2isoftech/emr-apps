import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension BankAccountVerificationTypeExtension
    on Enum$BankAccountVerificationType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$BankAccountVerificationType.NONE => context.l10n.psnopNone,
      Enum$BankAccountVerificationType.COPYOF_COMPANY_CHEQUE =>
        context.l10n.copyOfCompanyCheque,
      Enum$BankAccountVerificationType.COMPANY_PAYING_IN_SLIP =>
        context.l10n.companyPayingInSlip,
      Enum$BankAccountVerificationType.SCREENSHOT_OF_BANK_SCREEN =>
        context.l10n.screenshotOfBankScreen,
      Enum$BankAccountVerificationType.COMPANY_BANK_STATEMENT =>
        context.l10n.companyBankStatement,
      Enum$BankAccountVerificationType.$unknown => '',
    };
  }
}
