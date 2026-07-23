import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';

extension EnumAccountTypeExtension on Enum$AccountType {
  AccountTypeEnum toAccountType() {
    switch (this) {
      case Enum$AccountType.NONE:
        return AccountTypeEnum.none;
      case Enum$AccountType.RETAIL:
        return AccountTypeEnum.retail;
      case Enum$AccountType.BUSINESS:
        return AccountTypeEnum.business;
      case Enum$AccountType.SUPPLIER:
        return AccountTypeEnum.supplier;
      case Enum$AccountType.INTERNAL:
        return AccountTypeEnum.internal;
      case Enum$AccountType.$unknown:
        return AccountTypeEnum.none;
    }
  }
}
