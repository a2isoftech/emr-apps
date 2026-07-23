import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';

class DoorAccessResilientHttpClient {
  static ResilientHttpClient getClient(AppConfig appConfig) {
    final policy = SimplePolicy(appConfig.endpoint('doorAccessUrl'));
    policy.timeout = const Duration(minutes: 10);
    policy.getToken = FirebaseLogin.getToken;
    policy.shouldRetry = (retryContext) => Future.value(false);
    return ResilientHttpClient.withPolicy(policy);
  }
}
