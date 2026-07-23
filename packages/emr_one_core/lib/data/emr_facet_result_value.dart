class EmrFacetResultValue {
  EmrFacetResultValue({
    required this.text,
    required this.value,
    required this.count,
    this.textShort = '',
  });

  final String text;

  final String textShort;

  final String value;

  final int count;
}
