import 'package:emr_one_core/emr_one_core.dart';

class PaginationResponseModel<T> {
  PaginationResponseModel({
    required this.totalCount,
    required this.pageInfo,
    required this.facets,
    required this.data,
  });

  final int totalCount;
  final EmrQueryGraphQLPageInfo pageInfo;
  final Map<String, EmrFacetResult> facets;
  final List<T> data;
}
