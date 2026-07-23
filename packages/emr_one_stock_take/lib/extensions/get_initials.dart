extension GetInitials on String {
  String getInitials() {
    final subStrings = split(' ');
    return '${subStrings.first[0].toUpperCase()}'
        '${subStrings.last[0].toUpperCase()}';
  }
}
