class StaticData {
  static List<String>? userIds;
  static List<String>? groupIds;
  static String accessControllerId = '';
  static bool _ignoreCache = false;

  static set ignoreCache(bool val) {
    _ignoreCache = val;
  }

  static bool get ignoreCache {
    final value = _ignoreCache;
    _ignoreCache = false;
    return value;
  }
}
