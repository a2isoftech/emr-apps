import 'package:emr_one_core/data/emr_query_graphql_page_info.dart';
import 'package:emr_one_core/data/emr_query_metadata.dart';

class EmrQueryGraphQLMetadata<T> extends EmrQueryMetadata<T> {
  EmrQueryGraphQLMetadata(super.facets, super.recordCount, this.pageInfo);

  final EmrQueryGraphQLPageInfo pageInfo;
}
