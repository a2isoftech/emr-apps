import 'package:emr_sharedtypes/constants.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';

extension UomValueExtension on UomValue {
  double roundOff() =>
      double.parse(value.toStringAsFixed(uom.displayFormatFractionalDigits));
}
