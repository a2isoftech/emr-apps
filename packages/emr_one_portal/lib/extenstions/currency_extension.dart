extension CurrencyExtension on String? {
  String getCurrencySymbol() {
    if (this == 'GBP') {
      return '£';
    } else if (this == 'USD') {
      return r'$';
    } else if (this == 'EUR') {
      return '€';
    }
    return this ?? '';
  }
}
