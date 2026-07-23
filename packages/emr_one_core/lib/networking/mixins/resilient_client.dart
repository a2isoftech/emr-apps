import 'package:emr_one_core/networking/networking.dart';

mixin ResilientClient {
  GetNullableFutureString getToken = Future.value;

  GetUri getUri = ({Uri? uri}) => Uri.parse('');

  late Policy policy;

  GetShouldRetryFutureBool shouldRetry = (retryContext) => Future.value(true);
}
