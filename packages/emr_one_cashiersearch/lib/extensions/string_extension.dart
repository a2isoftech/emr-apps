extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(
    RegExp(' +'),
    ' ',
  ).split(' ').map((str) => str.toCapitalized()).join(' ');

  T toEnum<T extends Enum>(List<T> values, {required T fallback}) {
    for (final v in values) {
      if (v.name == this) return v;
    }
    return fallback;
  }

  String toRavenSearchableText() {
    final words = split(' ').map((word) => '$word*');
    return words.join(' ');
  }

  String toAbsoluteUrl(String baseUrl) {
    if (startsWith('http://') || startsWith('https://')) {
      return this;
    }

    final normalizedBase = baseUrl.endsWith('/')
        ? baseUrl.substring(0, baseUrl.length - 1)
        : baseUrl;

    final normalizedRelative = startsWith('/') ? substring(1) : this;

    return '$normalizedBase/$normalizedRelative';
  }

  String toBackendCardId() {
    final compact = replaceAll(' ', '');

    if (compact.length <= 1) return compact;

    return '${compact[0]} ${compact.substring(1)}';
  }

  String toUiCardId() {
    return replaceAll(' ', '');
  }
}
