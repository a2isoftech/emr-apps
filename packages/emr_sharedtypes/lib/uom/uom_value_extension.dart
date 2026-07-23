import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/uom/uom_converter.dart' as converter;

extension UomValueExtension on UomValue {
  int get numberOfFractionalDigits {
    if (isRate) {
      return uom.weightType == WeightType.metric ? 2 : 4;
    }

    return uom.displayFormatFractionalDigits;
  }

  String toWeightString() =>
      '${value.toStringAsFixed(numberOfFractionalDigits)} '
      '${uom.name.toUpperCase()}';

  String toRateString() =>
      '${value.toStringAsFixed(numberOfFractionalDigits)} / '
      '${uom.name.toUpperCase()}';

  UomValue convertWeight(Uom uom) {
    if (isRate) {
      throw Exception('Cannot convert rate to weight');
    }

    if (this.uom == Uom.unknown || uom == Uom.unknown) {
      throw Exception('Cannot convert to/from Uom.unknown');
    }

    final weight = converter.convertWeight(this.uom, uom, value);
    return UomValue.fromValue(weight, uom);
  }

  UomValue convertRate(Uom uom) {
    if (!isRate) {
      throw Exception('Cannot convert weight to rate');
    }

    if (this.uom == Uom.unknown || uom == Uom.unknown) {
      throw Exception('Cannot convert to/from Uom.unknown');
    }

    final rate = converter.convertRate(this.uom, uom, value);
    return UomValue.fromValue(rate, uom, isRate: true);
  }
}
