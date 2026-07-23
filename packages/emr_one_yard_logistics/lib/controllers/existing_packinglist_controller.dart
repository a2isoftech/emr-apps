import 'package:emr_one_yard_logistics/models/packinglist.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ExistingPackingListController {
  ExistingPackingListController(PackingList packinglist) {
    this.packinglist = signal<PackingList>(packinglist);
    scannedItemCodeList = ValueNotifier<List<String>>([]);
    totalPackinglistWeight = Signal(UomValue.fromValue(0, Uom.kg));
    spinnerForPackingList = signal<SpinnerForPackingListOperations>(
      SpinnerForPackingListOperations.stopSpinner,
    );
    currentPackingListState = signal<PackingListState>(packinglist.state);
  }

  late Signal<PackingList> packinglist;
  late ValueNotifier<List<String>> scannedItemCodeList;
  late Signal<UomValue> totalPackinglistWeight;
  late Signal<SpinnerForPackingListOperations> spinnerForPackingList;
  late Signal<PackingListState> currentPackingListState;

  void addItemsToScannedPackingList(String itemCode) {
    if (scannedItemCodeList.value.contains(itemCode)) {
      return;
    }
    scannedItemCodeList.value = [...scannedItemCodeList.value, itemCode];
  }

  bool isPackingListInProgress() {
    return currentPackingListState.value == PackingListState.inProgress;
  }

  bool isPackingListEmpty() {
    return currentPackingListState.value == PackingListState.empty;
  }

  bool isPackingListPacked() {
    return currentPackingListState.value == PackingListState.packed ||
        currentPackingListState.value == PackingListState.completed;
  }
}
