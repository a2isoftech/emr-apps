class DocumentRequirement<T> {
  DocumentRequirement({
    required this.type,
    required this.isRequired,
    required this.isSatisfied,
  });
  final T type;
  final bool isRequired;
  final bool isSatisfied;
}
