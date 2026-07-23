import 'package:emr_one_crm/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class PlGrade extends Grade {
  PlGrade(
    super.gradeCode,
    super.description,
    super.gradeGroup,
    super.gradeType,
    super.groupDesc, {
    required this.basePrice,
    required this.partyDelta,
    required this.yardPrices,
  });

  final ValueUomPair basePrice;

  final List<PlYardPrice> yardPrices;

  ValueUomPair partyDelta;
}
