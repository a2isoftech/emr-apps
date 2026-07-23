class PaginatedResult<T> {
  PaginatedResult(this.nextPageToken, this.items);
  final String? nextPageToken;
  final T items;
}
