import 'package:emr_one_core/emr_one_core.dart';

/// Provide a mixin to enable non-GraphQL data source to support pagination
/// using [EmrQueryLayout].
mixin EmrQueryDataSourcePager<T> on EmrQueryDataSource<T> {
  EmrQueryPageInfo pageInfo = EmrQueryPageInfo(
    hasNextPage: false,
    hasPreviousPage: false,
  );
}
