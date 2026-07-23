import 'package:flutter/widgets.dart';

class StockTakeConfigFormData {
  StockTakeConfigFormData({String? yardCode, bool? isDeltaSnapshotEnabled}) {
    this.yardCode = ValueNotifier(yardCode);
    this.isDeltaSnapshotEnabled = ValueNotifier(
      isDeltaSnapshotEnabled ?? false,
    );
  }

  late final ValueNotifier<String?> yardCode;
  late final ValueNotifier<bool> isDeltaSnapshotEnabled;
}
