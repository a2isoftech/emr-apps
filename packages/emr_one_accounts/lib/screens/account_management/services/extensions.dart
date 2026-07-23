import 'package:emr_sharedtypes/enums/account_type_enum.dart';

extension BoolExtensions on bool? {
  String get toYesNo => this ?? false ? 'Yes' : 'No';
}

extension GroupTypeValidation on AccountTypeEnum {
  bool get isTraderIndustryGroupRequired => switch (this) {
    AccountTypeEnum.retail => true,
    AccountTypeEnum.business => true,
    AccountTypeEnum.supplier => false,
    AccountTypeEnum.internal => false,
    AccountTypeEnum.none => false,
  };

  bool get isSupplierIndustryGroupRequired => false;
}
