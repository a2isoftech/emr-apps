import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class GplDisplayGrades {
  GplDisplayGrades({
    required this.grade,
    required this.colPrice,
    required this.delPrice,
    required this.yardCode,
    required this.uom,
  });
  String grade;
  double delPrice;
  double colPrice;
  String yardCode;
  Uom uom;
}
