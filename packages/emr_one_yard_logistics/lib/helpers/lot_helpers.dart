import 'package:collection/collection.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class LotHelpers {
  static String getAcronymFromComposition(
    List<LotCompositionAcronym> acronyms,
    String casing,
  ) {
    final acronym = acronyms
        .firstWhereOrNull((a) => a.key.toLowerCase() == casing.toLowerCase());

    if (acronym != null) {
      return acronym.value;
    }
    return 'UNK';
  }

  static String calculateNetWeight(
    UomValue? grossWeight,
    UomValue? tareWeight,
    Uom uomForView,
  ) {
    if (grossWeight == null && tareWeight == null) {
      return '';
    } else {
      final netweightMt =
          (grossWeight?.mtValue ?? 0) - (tareWeight?.mtValue ?? 0);

      final netWeightUom = UomValue.fromValue(netweightMt, Uom.mt);

      return netWeightUom.convertWeight(uomForView).toWeightString();
    }
  }
}
