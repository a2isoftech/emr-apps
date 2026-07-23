import 'package:emr_one_core/data/emr_query_graphql_page_info.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class SearchAccountResult {
  SearchAccountResult({
    required this.accounts,
    required this.pageInfo,
  });
  final List<Account> accounts;
  final EmrQueryGraphQLPageInfo pageInfo;
}
