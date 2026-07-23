enum AccountSubType {
  none,
  trader,
  customer,
  haulier,
  tradeSupplier,
  overheadSupplier,
}

class AccountSubTypeBool {

  AccountSubTypeBool({
    required this.key,
    required this.value,
  });
  final AccountSubType key;
  final bool value;
}
