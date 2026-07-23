import 'package:emr_one_crm/models/grade.dart';
import 'package:emr_one_crm/models/publication_yard_price.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class GplGrade extends Grade {
  GplGrade(
    super.gradeCode,
    super.description,
    super.gradeGroup,
    super.gradeType,
    this.baseRate,
    this.deliveryRate,
    this.collectedRate,
    this.contractWeight,
    this.materialDescription,
    this.targetLoads,
    this.yardPrices,
    this.brokerReference,
  );
  factory GplGrade.empty() => GplGrade(
        '',
        '',
        '',
        '',
        ValueUomPair(),
        ValueUomPair(),
        ValueUomPair(),
        ValueUomPair(),
        '',
        0,
        [],
        '',
      );

  ValueUomPair deliveryRate;

  ValueUomPair collectedRate;

  ValueUomPair contractWeight;

  ValueUomPair? targetWeightPerLoad;

  int? targetLoads;

  final ValueUomPair baseRate;

  String materialDescription;

  final List<PublicationYardPrice> yardPrices;
  String? brokerReference;
}
