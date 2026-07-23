class ArisingPoint {
  const ArisingPoint(
    this.id,
    this.shortName,
    this.aliasCode,
  );
  factory ArisingPoint.any() => const ArisingPoint(-9999, 'ANY', 'ANY');
  final int id;
  final String shortName;
  final String aliasCode;
}
