import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class AllocateChequeNumbersFormData {
  AllocateChequeNumbersFormData({
    Yard? yard,
    int? blockSize,
  }) {
    this.yard = ValueNotifier(yard);
    this.blockSize = ValueNotifier(blockSize);
  }

  late final ValueNotifier<Yard?> yard;

  late final ValueNotifier<int?> blockSize;
}
