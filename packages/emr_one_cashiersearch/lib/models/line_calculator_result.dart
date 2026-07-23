import 'package:emr_sharedtypes/uom/uom_value.dart';

class LineCalculatorResult {
  LineCalculatorResult({
    required this.netWeight,
    required this.payableWeight,
    required this.price,
    required this.totalAmount,
  });

  final UomValue netWeight;
  final UomValue payableWeight;
  final double price;
  final double totalAmount;
}
