extension StringExtensions on String {
  String get stripCollectionName => split('/').last;
  String get toDocumentId =>
      trim().replaceAll(RegExp(r'\s+'), '-').toUpperCase();

  bool validateName() {
    final name = trim();

    if (name.isEmpty) {
      return false;
    }

    final alphanumericWithSpaceRegex = RegExp(r'^[a-zA-Z0-9 _-]+$');
    if (!alphanumericWithSpaceRegex.hasMatch(name)) {
      return false;
    }

    return true;
  }

  bool validateAlphaNumeric() {
    final name = trim();

    if (name.isEmpty) {
      return false;
    }

    final alphanumericRegex = RegExp(r'^[a-zA-Z0-9]+$');
    if (!alphanumericRegex.hasMatch(name)) {
      return false;
    }

    return true;
  }

  bool validateLength(int maxLength) {
    final query = trim();
    return query.length <= maxLength;
  }

  bool validateUrl() {
    final queryToValidate = trim();
    const urlPattern = r'^(http|https):\/\/[^\s$.?#].[^\s]*$';
    return RegExp(urlPattern, caseSensitive: false)
        .hasMatch(queryToValidate);
  }

  bool isValidQueryParameters() {
    var queryToValidate = trim();

    if (queryToValidate.isEmpty) {
      return false;
    }

    if (queryToValidate.startsWith('?')) {
      queryToValidate = queryToValidate.substring(1);
    }

    final pairs = queryToValidate.split('&');

    for (final pair in pairs) {
      final keyValue = pair.split('=');
      if (keyValue.length != 2) {
        return false;
      }

      if (keyValue[0].trim().isEmpty || keyValue[1].trim().isEmpty) {
        return false;
      }
    }

    return true;
  }

  bool validateIpAddress() {
    final queryToValidate = trim();

    if (queryToValidate.isEmpty) {
      return false;
    }
    final ipRegex = RegExp(
      '^(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])'
      r'(\.(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])){3}$',
    );
    return ipRegex.hasMatch(queryToValidate);
  }
}
