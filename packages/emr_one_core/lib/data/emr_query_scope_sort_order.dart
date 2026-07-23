enum EmrQueryScopeSortOrderDirection {
  asc,
  desc;

  @override
  String toString() =>
      this == EmrQueryScopeSortOrderDirection.asc ? 'ASC' : 'DESC';
}

/// This is used to describe the sort field and direction of a search.
class EmrQueryScopeSortOrder {
  EmrQueryScopeSortOrder({
    required this.field,
    required this.direction,
  });

  String field;

  EmrQueryScopeSortOrderDirection direction;
}
