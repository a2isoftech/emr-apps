// ignore_for_file: prefer_function_declarations_over_variables

import 'package:emr_one_core/networking/networking.dart';

abstract class Policy {
  /// A callback to get the next Uri.
  Uri getUri({Uri? uri});

  /// A callback to get a token.
  GetNullableFutureString getToken = Future.value;

  /// The last Uri.
  Uri? uri;

  /// A callback to determine whether to retry a failed HTTP request,
  /// or whether to try to keep a websocket connection open.
  GetShouldRetryFutureBool shouldRetry = (retryContext) => Future.value(true);

  /// A duration after which the connection is closed if no data is received.
  Duration timeout = const Duration(seconds: 10);

  /// An optional first message to be sent after a websocket is opened.
  String? connectionMessage;

  /// A callback which is called after shouldRetry returns true
  /// but before the next call to getUri.
  void willRetry(RetryContext retryContext) {}

  /// The duration to wait before a failed connection is attempted again.
  Duration retryDelay = const Duration(seconds: 5);

  /// The default headers to add to requests. If the header parameter is passed
  /// into e.g. the `get` or `post` methods, and the default headers already
  /// contains a header with a matching key, then the default header value will
  /// be overwritten.
  Future<Map<String, String>> getDefaultHeaders() => Future.value({
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      });
}
