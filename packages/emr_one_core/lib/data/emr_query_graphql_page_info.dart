class EmrQueryGraphQLPageInfo {
  EmrQueryGraphQLPageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    required this.startCursor,
    required this.endCursor,
  });

  final bool hasPreviousPage;

  final bool hasNextPage;

  final String? startCursor;

  final String? endCursor;
}
