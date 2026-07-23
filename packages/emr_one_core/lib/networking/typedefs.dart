import 'package:emr_one_core/networking/networking.dart';

typedef GetNullableFutureString = Future<String?> Function();

typedef GetShouldRetryFutureBool = Future<bool> Function(RetryContext);

typedef GetUri = Uri Function({Uri? uri});
