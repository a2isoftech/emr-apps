abstract class EmrCacheProvider {
  Future<String?> get(String key);
  Future<bool> set(String key, String value, [Duration ttl = Duration.zero]);
  Future<void> clear();
}
