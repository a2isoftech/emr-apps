enum QuoteAccountType { none, retail, business, supplier, unknown }

QuoteAccountType accountTypeFromJson(String value) {
  switch (value) {
    case 'NONE':
      return QuoteAccountType.none;
    case 'BUSINESS':
      return QuoteAccountType.business;
    case 'RETAIL':
      return QuoteAccountType.retail;
    case 'SUPPLIER':
      return QuoteAccountType.supplier;
    default:
      return QuoteAccountType.unknown;
  }
}

String accountTypeToJson(QuoteAccountType type) {
  switch (type) {
    case QuoteAccountType.none:
      return 'NONE';
    case QuoteAccountType.business:
      return 'BUSINESS';
    case QuoteAccountType.retail:
      return 'RETAIL';
    case QuoteAccountType.supplier:
      return 'SUPPLIER';
    case QuoteAccountType.unknown:
      return 'UNKNOWN';
  }
}
