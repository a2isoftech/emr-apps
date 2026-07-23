import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class PlYardPrice {
  PlYardPrice({
    required this.yard,
    required this.finalPrice,
  });

  final Yard yard;

  final ValueUomPair finalPrice;
}
