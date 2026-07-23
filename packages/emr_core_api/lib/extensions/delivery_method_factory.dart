import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_sharedtypes/pricing/delivery_method.dart';

extension DeliveryMethodFactory on Enum$DeliveryMethod {
  DeliveryMethod toDeliveryMethodModel() => switch (this) {
    Enum$DeliveryMethod.NONE => DeliveryMethod.none,
    Enum$DeliveryMethod.DELIVERED => DeliveryMethod.delivered,
    Enum$DeliveryMethod.COLLECTED => DeliveryMethod.collected,
    Enum$DeliveryMethod.COLLECTED_LESS_CHARGE =>
      DeliveryMethod.collectedLessCharge,
    Enum$DeliveryMethod.COLLECTED_FULLY_CHARGED =>
      DeliveryMethod.collectedFullyCharged,
    Enum$DeliveryMethod.$unknown => DeliveryMethod.none,
  };
}
