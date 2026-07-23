extension ValidPostCode on String {
  bool isValidPostcodeFormat() {
    // Allow alphanumeric characters and spaces, with specific patterns
    final regex =
        RegExp(r'^[A-Z0-9]{1,2}\d[A-Z\d]?\s?\d[A-Z]{2}$', caseSensitive: false);

    return regex.hasMatch(this);
  }
}
