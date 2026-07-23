import 'package:emr_one_crm/models/account_type.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension AccountTypeExtensions on AccountTypeEnum {
  String displayName() {
    switch (this) {
      case AccountTypeEnum.supplier:
        return 'Supplier';
      case AccountTypeEnum.nonTaxRegistered:
        return 'Retail';
      case AccountTypeEnum.taxRegistered:
        return 'Business';
      case AccountTypeEnum.prospect:
        return 'Prospect';
      case AccountTypeEnum.sales:
        return 'Sales';
    }
  }

  String key() {
    switch (this) {
      case AccountTypeEnum.supplier:
        return 'Supplier';
      case AccountTypeEnum.nonTaxRegistered:
        return 'NonTaxRegistered';
      case AccountTypeEnum.taxRegistered:
        return 'TaxRegistered';
      case AccountTypeEnum.prospect:
        return 'Prospect';
      case AccountTypeEnum.sales:
        return 'Sales';
    }
  }
}

extension AccountTypeListExtensions on List<AccountTypeEnum> {
  List<AccountType> displayNames() =>
      map((e) => AccountType(e.displayName(), e.key())).toList();
}
