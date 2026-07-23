import 'dart:math';

import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension DoubleExtension on double {
  String asString() => toStringAsFixed(2);
  double roundOff(Uom uom) =>
      double.parse(toStringAsFixed(uom.displayFormatFractionalDigits));

  double roundAwayFromZero({int decimals = 2}) {
    final factor = pow(10, decimals);
    return (this * factor).sign * (this * factor).abs().round() / factor;
  }
}
