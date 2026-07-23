import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class KnownTareData {
  KnownTareData({
    Uom? uom,
    double? value,
    String? comments,
    DateTime? expiryDate,
  })  : uom = ValueNotifier(uom),
        value = ValueNotifier(value),
        comments = ValueNotifier(comments),
        expiryDate = ValueNotifier(expiryDate);

  KnownTareData.fromKnownTare(WeightDeduction weighDeduction)
      : uom = ValueNotifier(weighDeduction.value.uom),
        value = ValueNotifier(weighDeduction.value.value),
        comments = ValueNotifier(weighDeduction.comments),
        expiryDate = ValueNotifier(weighDeduction.expiryDate);

  KnownTareData.fromNew()
      : uom = ValueNotifier(null),
        value = ValueNotifier(null),
        comments = ValueNotifier(null),
        expiryDate = ValueNotifier(null);

  WeightDeduction? toKnownTare() {
    if (uom.value == null || value.value == null) {
      return null;
    }
    return WeightDeduction(
      value: UomValue.fromValue(
        value.value!,
        uom.value!,
      ),
      comments: comments.value,
      expiryDate: expiryDate.value,
    );
  }

  late final ValueNotifier<Uom?> uom;
  late final ValueNotifier<double?> value;
  late final ValueNotifier<String?> comments;
  late final ValueNotifier<DateTime?> expiryDate;
}
