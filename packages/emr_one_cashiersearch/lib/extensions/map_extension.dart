extension MapExtensions on Map<String, dynamic> {
  dynamic getIgnoreCase(String key) {
    final lowerKey = key.toLowerCase();
    for (final entry in entries) {
      if (entry.key.toLowerCase() == lowerKey) {
        return entry.value;
      }
    }
    return null;
  }
}
