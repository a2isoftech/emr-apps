import 'package:emr_sharedtypes/constants.dart';

class GradePricePair {

  GradePricePair({
    required this.deliveredPrice,
    required this.collectedPrice,
  });

  final ValueUomPair deliveredPrice;
  final ValueUomPair collectedPrice;
}
