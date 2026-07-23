class CurrentTag {
  CurrentTag(
    this.linkId,
    this.tagId,
    this.tagTemplateId,
    this.description,
    this.appliedTo,
    this.validFrom,
    this.validTo,
    this.rateUomValue,
    this.rate,
  );
  final int linkId;
  final int tagId;
  final int tagTemplateId;
  final String description;
  late String appliedTo;
  final DateTime validFrom;
  DateTime? validTo;
  final double? rateUomValue;
  final double? rate;
}
