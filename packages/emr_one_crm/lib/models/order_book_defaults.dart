class OrderBookHeaderDefaults {
  OrderBookHeaderDefaults(
    this.contractTypeId,
    this.currencyCode,
    this.priceTypeId,
    this.targetTonnageUomID,
  );
  final int contractTypeId;
  final String currencyCode;
  final int priceTypeId;
  final int targetTonnageUomID;
}
