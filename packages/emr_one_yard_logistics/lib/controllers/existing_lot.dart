import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:signals/signals_flutter.dart';

class ExistingLotController {
  ExistingLotController(Lot lot) {
    this.lot = signal<Lot>(lot);
    saveError = signal<bool>(false);
    confirmError = signal<bool>(false);
    saving = signal<bool>(false);
    confirming = signal<bool>(false);
    assessed = computed(() {
      return this.lot().extendedProperties.isNotEmpty &&
          this.lot().extendedProperties[YlConstants.epLotOuterCasing] != null &&
          switch (this.lot().type) {
            LotType.sticks => _isStickLotAssessed(),
            LotType.joints => true,
            LotType.unknown => false,
          };
    });
    busy = computed(() {
      return saving() || confirming();
    });
    saveAllowed = computed(() {
      return !(saveError() || saving() || confirming());
    });
    confirmAllowed = computed(() {
      return !saveError() && this.lot().state == LotState.newLot;
    });
    lotCanBeModified = computed(() {
      return saveAllowed() && this.lot().state == LotState.newLot;
    });

    lotCanBeConfirmed = computed(() {
      return this.lot().state == LotState.newLot &&
          assessed() &&
          this.lot().grossWeightUom != null &&
          switch (this.lot().type) {
            LotType.sticks =>
              this.lot().photos != null && this.lot().photos!.isNotEmpty,
            LotType.joints => true,
            LotType.unknown => false,
          };
    });
  }

// If these values exist, we can safely assume it has been assessed, because we
// will capture corresponding percentage based on what we select in inner and
// outer
  bool _isStickLotAssessed() {
    return lot().extendedProperties[YlConstants.epLotInnerComposition] !=
            null &&
        lot().extendedProperties[YlConstants.epLotCircumference] != null;
  }

  late FlutterSignal<Lot> lot;
  late FlutterSignal<bool> saveError;
  late Signal<bool> confirmError;
  late Computed<bool> saveAllowed;
  late Computed<bool> lotCanBeConfirmed;
  late Computed<bool> lotCanBeModified;
  late Computed<bool> confirmAllowed;
  late Signal<bool> saving;
  late Signal<bool> confirming;
  late Computed<bool> busy;
  late Computed<bool> assessed;
}
