abstract class IAuthorizationProvider {
  Future<String> getAuthorizationToken([bool forceRefresh = false]);

  Future<String> getSimpleAuthorizationToken();

  Future<String> getAuthorizationHeader([bool forceRefresh = false]);
}
