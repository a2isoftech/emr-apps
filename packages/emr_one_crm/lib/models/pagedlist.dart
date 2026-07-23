class PagedList<T> {
  PagedList(
    this.items,
    this.cursor, {
    required this.hasNextPage,
  });
  final List<T> items;
  final String? cursor;
  final bool hasNextPage;
}
