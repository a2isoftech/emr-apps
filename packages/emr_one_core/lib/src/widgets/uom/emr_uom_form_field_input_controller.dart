import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class EmrUomFormFieldInputController {
  EmrUomFormFieldInputController({
    required this.uoms,
    required this.isRate,
    required this.allowNegative,
    required this.value,
    required this.uom,
    required this.onChanged,
  }) {
    isNegative = ValueNotifier<bool>((value.value ?? 0) < 0);
  }

  final List<Uom> uoms;

  final bool isRate;

  final bool allowNegative;

  final ValueNotifier<double?> value;

  final ValueNotifier<Uom> uom;

  late final ValueNotifier<bool> isNegative;

  final void Function() onChanged;

  // Determine the number of fractional digits for the selected UOM and
  // type (weight / rate).
  int get numberOfFractionalDigits =>
      UomValue.fromValue(0, uom.value, isRate: isRate).numberOfFractionalDigits;

  void toggleNegative() {
    isNegative.value = !isNegative.value;

    if (value.value != null) {
      value.value = value.value! * -1;
      onChanged();
    }
  }

  void setNegative() {
    if (!isNegative.value) {
      toggleNegative();
    }
  }

  void setPositive() {
    if (isNegative.value) {
      toggleNegative();
    }
  }

  UomValue? getUomValue() {
    if (value.value == null) {
      return null;
    }

    return UomValue.fromValue(value.value!, uom.value, isRate: isRate);
  }
}
