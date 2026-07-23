import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/graphql/graphql.dart';

class PricelistMapper {
  static PriceListModel pricelistMapper(
    Query$GetPricelist$partyPricelistSummary$nodes source,
  ) {
    return PriceListModel(
      deliveryMethod: source.deliveryMethod ?? '',
      description: source.description ?? '',
      notes: source.notes ?? '',
      unitOfMeasurement: source.uoM ?? '',
      price: source.price ?? '',
      updatedDate: source.updatedDate ?? DateTime.now(),
      grade: source.grade ?? '',
    );
  }
}
