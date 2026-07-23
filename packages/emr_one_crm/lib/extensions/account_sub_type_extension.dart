import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:emr_sharedtypes/models/accounts/account_sub_types.dart';

extension AccountSubTypeChecks on Account {
  bool hasSubType(AccountSubType type) {
    return accountSubTypes!.any((sub) => sub.key == type && sub.value == true);
  }

  bool get isTraderAccount => hasSubType(AccountSubType.trader);
  bool get isCustomerAccount => hasSubType(AccountSubType.customer);
  bool get isHaulierAccount => hasSubType(AccountSubType.haulier);
  bool get isTradeSupplierAccount => hasSubType(AccountSubType.tradeSupplier);
  bool get isOverheadSupplierAccount =>
      hasSubType(AccountSubType.overheadSupplier);
}
