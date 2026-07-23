import 'package:emr_one_core/auth/auth.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';

class FirebaseAuthorizationProvider implements IAuthorizationProvider {
  @override
  Future<String> getAuthorizationToken([bool forceRefresh = false]) {
    return FirebaseLogin.getToken(forceRefresh: forceRefresh);
  }

  @override
  Future<String> getAuthorizationHeader([bool forceRefresh = false]) async {
    return 'Bearer ${await getAuthorizationToken(forceRefresh)}';
  }

  @override
  Future<String> getSimpleAuthorizationToken() {
    return getAuthorizationToken();
  }
}
