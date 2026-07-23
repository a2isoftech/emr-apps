import 'package:emr_core_api/models/account_price.dart';
import 'package:emr_one_core/emr_one_core.dart';

class AccountPricesOutput {
  AccountPricesOutput({
    required this.accountPrices,
    required this.metadata,
  });

  final List<AccountPrice> accountPrices;
  final EmrQueryGraphQLMetadata<Map<String, EmrFacetResult>> metadata;
}
