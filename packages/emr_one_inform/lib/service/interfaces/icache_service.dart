abstract class ICacheService {
  void deleteCache({required String cacheKey});

  void saveToCache<T>({required String cacheKey, required T value});

  T? readCache<T>({required String cacheKey});
}
