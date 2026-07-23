class PaginatedResult<T> {
  PaginatedResult({
    required this.items,
    required this.hasNextPage,
    this.nextPageToken,
  });
  final String? nextPageToken;
  final T items;
  final bool hasNextPage;
}
