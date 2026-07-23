extension IterableStringExtensions on Iterable<String> {
  bool containsIgnoreCase(String value) {
    if (value.isEmpty) return false;

    return any((element) =>
        element.toLowerCase() == value.toLowerCase());
  }
}
