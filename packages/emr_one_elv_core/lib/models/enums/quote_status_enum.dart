enum QuoteStatusEnum {
  unknown('Unknown'),
  draft('Draft'),
  confirmed('Confirmed'),
  inspected('Inspected'),
  inspectionInProgress('Inspection In Progress'),
  abandoned('Abandoned');

  const QuoteStatusEnum(this.label);

  final String label;

  static String getLabel(String value) => switch (value) {
        'draft' => draft.label,
        'confirmed' => confirmed.label,
        'inspected' => inspected.label,
        'inspectionInProgress' => inspectionInProgress.label,
        'abandoned' => abandoned.label,
        _ => value,
      };
}

QuoteStatusEnum quoteStatusFromJson(String value) {
  switch (value) {
    case 'DRAFT':
      return QuoteStatusEnum.draft;
    case 'CONFIRMED':
      return QuoteStatusEnum.confirmed;
    case 'INSPECTED':
      return QuoteStatusEnum.inspected;
    case 'INSPECTION_IN_PROGRESS':
      return QuoteStatusEnum.inspectionInProgress;
    case 'ABANDONED':
      return QuoteStatusEnum.abandoned;
    default:
      return QuoteStatusEnum.unknown;
  }
}

String quoteStatusToJson(QuoteStatusEnum type) {
  switch (type) {
    case QuoteStatusEnum.draft:
      return 'DRAFT';
    case QuoteStatusEnum.confirmed:
      return 'CONFIRMED';
    case QuoteStatusEnum.inspected:
      return 'INSPECTED';
    case QuoteStatusEnum.inspectionInProgress:
      return 'INSPECTION_IN_PROGRESS';
    case QuoteStatusEnum.abandoned:
      return 'ABANDONED';
    case QuoteStatusEnum.unknown:
      return 'UNKNOWN';
  }
}
