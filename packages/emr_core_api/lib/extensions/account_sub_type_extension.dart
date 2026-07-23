import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension AccountSubTypeExtension on AccountSubType {
  String get headerChipLabel {
    return switch (this) {
      AccountSubType.trader => 'TRADER',
      AccountSubType.customer => 'CUSTOMER',
      AccountSubType.haulier => 'HAULIER',
      AccountSubType.tradeSupplier => 'TRADE SUPPLIER',
      AccountSubType.overheadSupplier => 'OVERHEAD SUPPLIER',
      AccountSubType.none => 'NONE',
    };
  }
}
