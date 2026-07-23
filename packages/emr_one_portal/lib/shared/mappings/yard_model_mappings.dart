import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_portal_tickets/graphql/queries/get_yards.graphql.dart';

class YardMappings {
  static Yard yardModelMapper(
    Query$YardDetails$yards source,
  ) {
    return Yard(
      source.yardCode,
      source.shortName,
      source.geoLocation?.latitude ?? 0,
      source.geoLocation?.longitude ?? 0,
    );
  }
}
