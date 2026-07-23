class PagedFilterRequest {
  PagedFilterRequest(
    this.pageNumber,
    this.pageSize, {
    this.searchTerm = '',
    this.sortOrder = '',
    this.filters,
    this.sortBy = '',
    this.before,
    this.after,
    this.includeFacets,
  });

  Map<String, dynamic>? toQueryParam() {
    final queryParams = <String, dynamic>{
      'searchTerm': searchTerm,
      'pageNumber': pageNumber,
      'pageSize': pageSize,
      'includeFacets': includeFacets,
    };
    if (sortBy.isNotEmpty) {
      queryParams.addAll({'sortBy': sortBy});
    }

    if (sortBy.isNotEmpty) {
      queryParams.addAll({'sortOrder': sortOrder});
    }

    if (filters != null && filters!.isNotEmpty) {
      queryParams.addAll({'filters': filters});
    }
    return queryParams;
  }

  Map<String, String>? toGraphQLQueryParam() {
    final queryParams = <String, String>{
      'searchTerm': searchTerm,
      'pageSize': pageSize.toString(),
    };
    if (before != null) {
      queryParams.addAll({'before': before!});
    }

    if (after != null) {
      queryParams.addAll({'after': after!});
    }
    return queryParams;
  }

  Map<String, List<String>>? filters;
  String searchTerm;
  String sortBy;
  String sortOrder;
  int pageNumber;
  int pageSize;
  String? before;
  String? after;
  bool? includeFacets;
}
