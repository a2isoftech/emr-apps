import 'package:emr_one_eam/models/page_info.dart';

class PaginatedResponse<T> {
  PaginatedResponse({
    required this.pageInfo,
    required this.totalCount,
    required this.results,
  });

  final PageInfo pageInfo;
  final int totalCount;
  final List<T> results;
}
