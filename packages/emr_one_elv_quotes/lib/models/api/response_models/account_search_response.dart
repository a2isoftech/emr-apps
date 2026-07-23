import 'package:emr_one_core/data/emr_query_graphql_page_info.dart';
import 'package:emr_one_elv_quotes/models/account_model.dart';

class AccountSearchResponse {
  AccountSearchResponse({
    required this.accounts,
    required this.pageInfo,
  });
  final List<AccountModel> accounts;
  final EmrQueryGraphQLPageInfo pageInfo;
}
