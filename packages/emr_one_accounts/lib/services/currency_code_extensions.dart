extension CurrencyCodeExtensions on String? {
  String? get currencyCode => this?.split('/').last;
}
