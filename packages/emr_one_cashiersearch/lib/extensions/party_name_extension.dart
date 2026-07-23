extension StringExtension on String {
  bool isEMR() {
    return startsWith(RegExp('[DY]', caseSensitive: false));
  }
}
