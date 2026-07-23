class EmrQueryMetadata<T> {
  EmrQueryMetadata(this.facets, this.recordCount);

  final T facets;

  final int recordCount;
}
