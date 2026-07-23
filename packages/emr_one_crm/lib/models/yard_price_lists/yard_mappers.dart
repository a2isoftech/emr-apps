import 'package:emr_one_crm/graphql/trader/queries/queries.dart';
import 'package:emr_one_crm/models/yard_price_lists/yard_price_line.dart';

class YardMappers {
  static YardPriceLine yardMapper(
    Query$GetYardPrices$guidePrices$nodes source,
  ) {
    return YardPriceLine(
      source.partyAccountNo,
      source.grade?.gradeCode ?? '',
      source.grade?.gradeType ?? '',
      source.grade?.comment ?? '',
      source.yardCode,
      source.finalPriceMt,
      source.customerUom,
    );
  }
}
