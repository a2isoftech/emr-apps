import 'package:emr_one_core/data/emr_query_graphql_page_info.dart';

class PaginatedResponse<T> {
  PaginatedResponse(this.data, this.pageInfo, this.totalCount);
  final T data;
  final EmrQueryGraphQLPageInfo pageInfo;
  final int totalCount;
}
