import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

// all of these values are taken from the UOM conversion routines in Trade2
const int _tonnageRoundingDecimalPlaces = 13;
const int _rateDisplayRoundingDecimalPlaces = 4;
const double _lbsInTonne = 2204.62;
const int _conversionFactorRoundingDp = 17;

double convertWeight(Uom from, Uom to, double valueToConvert) {
  if (from == Uom.unknown || to == Uom.unknown) return valueToConvert;
  if (from == to) return valueToConvert;
  final decimalPlaces =
      to.weightType == WeightType.metric && from.weightType != WeightType.metric
          ? _tonnageRoundingDecimalPlaces
          : to.displayFormatFractionalDigits;

  if (from.isConvertible && to.isConvertible) {
    var conversionFactor = 1.0;

    final fromType = from.weightType;
    final toType = to.weightType;

    if (fromType == WeightType.imperial && toType == WeightType.metric) {
      conversionFactor = 1.0 / _lbsInTonne;
    } else if (fromType == WeightType.metric && toType == WeightType.imperial) {
      conversionFactor = _lbsInTonne;
    }

    final converted = (conversionFactor * from.scalingFactor) *
        (valueToConvert / to.scalingFactor);

    return _dp(converted, decimalPlaces);
  } else {
    throw Error();
  }
}

double convertRate(Uom from, Uom to, double valueToConvert) {
  if (from == Uom.unknown || to == Uom.unknown) return valueToConvert;
  if (from == to) return valueToConvert;

  final decimalPlaces = to.weightType == WeightType.metric
      ? _tonnageRoundingDecimalPlaces
      : _rateDisplayRoundingDecimalPlaces;

  if (from.isConvertible && to.isConvertible) {
    var conversionFactor = 1.0;

    final fromType = from.weightType;
    final toType = to.weightType;

    if (fromType == WeightType.imperial && toType == WeightType.metric) {
      conversionFactor = _lbsInTonne;
    } else if (fromType == WeightType.metric && toType == WeightType.imperial) {
      // no need to do decimal conversions here since the conversion factors can
      // all be expressed as floating point numbers precisely.  Just use _dp
      conversionFactor = _dp(1.0 / _lbsInTonne, _conversionFactorRoundingDp);
    }

// because floating point numbers are not precise, we need to use the Decimal
// datatype. This is from a package in dart, since it's not actually supported
// in the language itself.  I hope this changes in the future.

// Convert all the values to Decimal so we can do the math!
    final conversionFactorDecimal = Decimal.parse(conversionFactor.toString());
    final fromScalingFactorDecimal =
        Decimal.parse(from.scalingFactor.toString());
    final toScalingFactorDecimal = Decimal.parse(to.scalingFactor.toString());
    final valueToConvertDecimal = Decimal.parse(valueToConvert.toString());

// our critical conversion formula
    final converted = conversionFactorDecimal *
        toScalingFactorDecimal *
        valueToConvertDecimal /
        fromScalingFactorDecimal;

// now we need to chop off the decimal places to the correct number as defined
// by the UOM type.  The result is that the numbers match those in Trade2.
// I cannot use _dp() here since it returns the wrong results in a few
// unit tests.  See emr_sharedtypes_test.dart for more information.
    return double.parse(converted.toDouble().toStringAsFixed(decimalPlaces));
  } else {
    // for consistency with the other function, we should throw an error here
    // if the values are not convertible.  Returning null doesn't make sense.
    throw Error();
  }
}

double _dp(double val, int places) {
  final mod = pow(10.0, places);

  return (val * mod).round().toDouble() / mod;
}
