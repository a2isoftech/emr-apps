extension StringExtensions on String {
  /// Replace first n occurrences of the target in a string
  String replaceFirstN(
    String target,
    String replacement,
    int n,
  ) {
    var count = 0;
    final result = StringBuffer();

    for (var i = 0; i < length; i++) {
      if (count < n && startsWith(target, i)) {
        result.write(replacement);
        i += target.length - 1;
        count++;
      } else {
        result.write(this[i]);
      }
    }

    return result.toString();
  }
}
