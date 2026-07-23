extension StringExtension on String {
  String capitalize() {
    if (length == 0) {
      return this;
    }

    if (length == 1) {
      return this[0].toUpperCase();
    }

    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
