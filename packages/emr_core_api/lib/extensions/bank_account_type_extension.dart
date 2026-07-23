import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension BankAccountTypeExtension on Enum$BankAccountType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$BankAccountType.PERSONAL => context.l10n.personal,
      Enum$BankAccountType.BUSINESS => context.l10n.business,
      Enum$BankAccountType.NONE || Enum$BankAccountType.$unknown => '',
    };
  }
}
