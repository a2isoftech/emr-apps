import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';

class YardPriceLine {
  YardPriceLine(
    this.partyAccountNo,
    this.gradeCode,
    this.gradeType,
    this.gradeComment,
    this.yardCode,
    this.finalPriceMt,
    this.customerUom,
  );

  final String partyAccountNo;
  final String gradeCode;
  final String gradeType;
  final String gradeComment;
  final String yardCode;
  final double finalPriceMt;
  final Enum$Uom? customerUom;
}
