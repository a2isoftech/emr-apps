import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ExistingPalletController {
  ExistingPalletController(Pallet pallet) {
    this.pallet = signal<Pallet>(pallet);

    showSpinnerWhenRemovingLots = signal<bool>(false);
    scannedLotCodeList = ValueNotifier<List<String>>([]);
    totalPalletWeight = Signal(UomValue.fromValue(0, Uom.mt));
  }

  late Signal<Pallet> pallet;
  late Signal<bool> showSpinnerWhenRemovingLots;
  late ValueNotifier<List<String>> scannedLotCodeList;
  late Signal<UomValue> totalPalletWeight;

  void addLotToScannedLotList(String lotCode) {
    if (scannedLotCodeList.value.contains(lotCode)) {
      return;
    }
    scannedLotCodeList.value = [...scannedLotCodeList.value, lotCode];
  }
}
