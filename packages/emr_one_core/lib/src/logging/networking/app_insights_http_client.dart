import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:http/http.dart';
import 'package:uuid/uuid.dart';

/// Http client intended for use with application insights
class AppInsightsHttpClient extends EmrHttpClient {
  factory AppInsightsHttpClient.withPolicy(Policy policy) =>
      AppInsightsHttpClient._()
        ..policy = policy
        ..getUri = policy.getUri
        ..getToken = policy.getToken;

  AppInsightsHttpClient._() : super();

  // We want to make sure that we're only logging to certain sinks.
  // As this class is being used in the network calls for the App
  // Insights logger, we want to be sure that logs cannot be sent to app
  // insights as this could cause an infinite loop.
  static const _loggers = [
    EmrOneCoreLogging.kTextFileLogger,
    EmrOneCoreLogging.kConsoleLogger,
  ];

  @override
  Future<StreamedResponse> send(BaseRequest request) => _resilientSend(
        requestBuilder: (idempotencyKey) async {
          final absoluteUrl = getUri(uri: request.url);
          final multipartRequest =
              MultipartRequest(request.method, absoluteUrl);

          if (request is MultipartRequest) {
            multipartRequest.fields.addAll(request.fields);
            multipartRequest.files.addAll(request.files);
          }

          return multipartRequest;
        },
      );

  /// Sends a non-streaming [Request] and returns a non-streaming [Response].
  @override
  Future<Response> sendUnstreamed(
    String method,
    Uri url,
    Map<String, String>? headers, [
    Object? body,
    Encoding? encoding,
  ]) async {
    final response = await _resilientSend(
      requestBuilder: (String idempotencyKey) async {
        final absoluteUrl = getUri(uri: url);
        final request = Request(method, absoluteUrl);

        if (encoding != null) request.encoding = encoding;

        if (body != null) {
          if (body is String) {
            request.body = body;
          } else if (body is List) {
            request.bodyBytes = body.cast<int>();
          } else if (body is Map) {
            request.bodyFields = body.cast<String, String>();
          } else {
            throw ArgumentError('Invalid request body "$body".');
          }
        }

        return request;
      },
    );

    return Response.fromStream(response);
  }

  Future<StreamedResponse> _resilientSend({
    required Future<BaseRequest> Function(String idempotencyKey) requestBuilder,
  }) async {
    final idempotencyKey = const Uuid().v4();
    const source = 'ResilientHttpClient._resilientSend()';
    EmrLogger.logTo(
      _loggers,
      EmrLogLevel.information,
      'Begin request',
      source: source,
      params: {
        'idempotencyKey': idempotencyKey,
      },
    );

    var attempts = 0;
    // Determine whether we should try again.
    final retryContext = RetryContext(policy);
    while (true) {
      attempts++;
      retryContext.attempts = attempts;
      // Create a request and send it.
      final request = await requestBuilder(idempotencyKey);
      EmrLogger.logTo(
        _loggers,
        EmrLogLevel.verbose,
        'emr_networking request created',
        source: source,
        params: {
          'url': request.url.toString(),
          'idempotencyKey': idempotencyKey,
        },
      );
      try {
        final response = await request.send().timeout(policy.timeout);

        // Return the response if we don't need to try it again.
        if ((response.statusCode >= 200 && response.statusCode <= 299) ||
            response.statusCode == HttpStatus.badRequest) {
          EmrLogger.logTo(
            _loggers,
            EmrLogLevel.information,
            'emr_networking response',
            source: source,
            params: {
              'url': request.url.toString(),
              'idempotencyKey': idempotencyKey,
              'statusCode': response.statusCode.toString(),
              'reason': response.reasonPhrase ?? '',
            },
          );
          return response;
        }

        retryContext.httpResponse = response;
        final shouldRetry = await policy.shouldRetry(retryContext);

        EmrLogger.logTo(
          _loggers,
          EmrLogLevel.warning,
          'emr_networking response failure - retrying if shouldRetry',
          error: Exception(response.reasonPhrase),
          stackTrace: StackTrace.current,
          source: source,
          params: {
            'url': request.url.toString(),
            'idempotencyKey': idempotencyKey,
            'statusCode': response.statusCode.toString(),
            'reason': response.reasonPhrase ?? '',
            'shouldRetry': shouldRetry.toString(),
          },
        );

        if (!shouldRetry) {
          return response;
        }

        // Reduce the effect of repeatedly failing connections.
        await Future.delayed(policy.retryDelay, () {});

        policy.willRetry(retryContext);
      } on Exception catch (error, trace) {
        retryContext.error = error;
        final shouldRetry = await policy.shouldRetry(retryContext);

        if (!shouldRetry) {
          EmrLogger.logTo(
            _loggers,
            EmrLogLevel.error,
            'emr_networking: Returning HTTP 444 (No Response)',
            source: source,
            params: {
              'shouldRetry': shouldRetry.toString(),
              'idempotencyKey': idempotencyKey,
              'error': error.toString(),
            },
          );

          // Unofficial "No Response" status code
          // (see https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
          return StreamedResponse(const Stream<List<int>>.empty(), 444);
        }

        EmrLogger.logTo(
          _loggers,
          EmrLogLevel.warning,
          'emr_networking error - retrying if shouldRetry',
          error: error,
          stackTrace: trace,
          source: source,
          params: {
            'shouldRetry': shouldRetry.toString(),
            'idempotencyKey': idempotencyKey,
          },
        );

        // Reduce the effect of repeatedly failing connections.
        await Future.delayed(policy.retryDelay, () {});

        policy.willRetry(retryContext);
      }
    }
  }
}
