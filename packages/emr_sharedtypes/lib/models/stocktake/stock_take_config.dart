class StockTakeConfig {
  StockTakeConfig({
    required this.yardCode,
    required this.isDeltaSnapshotEnabled,
  });

  final String yardCode;
  final bool? isDeltaSnapshotEnabled;
}
