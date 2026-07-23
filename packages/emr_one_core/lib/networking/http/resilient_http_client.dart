import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:uuid/uuid.dart';

class ResilientHttpClient extends EmrHttpClient {
  ResilientHttpClient._() : super();

  factory ResilientHttpClient.withPolicy(Policy policy) =>
      ResilientHttpClient._()
        ..policy = policy
        ..getUri = policy.getUri
        ..getToken = policy.getToken;

  @override
  Future<StreamedResponse> send(BaseRequest request) => _resilientSend(
        requestBuilder: (idempotencyKey) async {
          final absoluteUrl = getUri(uri: request.url);
          final multipartRequest =
              MultipartRequest(request.method, absoluteUrl);

          final mergedHeaders =
              await _getHeaders(request, idempotencyKey, request.headers);
          multipartRequest.headers.addAll(mergedHeaders);

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

        final mergedHeaders =
            await _getHeaders(request, idempotencyKey, headers);
        request.headers.addAll(mergedHeaders);

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
    EmrLogger.verbose(
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
      EmrLogger.verbose(
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
          EmrLogger.info(
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

        EmrLogger.warning(
          'emr_networking response failure - retrying if shouldRetry',
          source: source,
          error: Exception(response.reasonPhrase),
          stackTrace: StackTrace.current,
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
          EmrLogger.error(
            'emr_networking: Returning HTTP 444 (No Response)',
            error: error,
            source: source,
            stackTrace: trace,
            params: {
              'shouldRetry': shouldRetry.toString(),
              'idempotencyKey': idempotencyKey,
            },
          );

          // Unofficial "No Response" status code
          // (see https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
          return StreamedResponse(const Stream<List<int>>.empty(), 444);
        }

        EmrLogger.warning(
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

  Future<Map<String, String>> _getHeaders(
    BaseRequest request,
    String idempotencyKey,
    Map<String, String>? headers,
  ) async {
    // Add an Authorization header if we have a token.
    final token = await getToken();

    // Create a single map of headers using the following precedence:
    // - Client headers are added:
    //    - Authorization: A bearer token if one is return by `getToken`.
    //    - Idempotency-Key: which enables us to track a single request over
    //      multiple retries)
    // - Policy default headers are added and overwrite any existing values.
    // - Request headers passed into this method are added and overwrite any
    //   existing values.
    return {
      if (token?.isNotEmpty ?? false) 'Authorization': 'Bearer $token',
      'Idempotency-Key': idempotencyKey,
    }
      ..addAll(await policy.getDefaultHeaders())
      ..addAll(headers ?? {});
  }
}

// This class has to be in this file because we're calling the
// private constructor of ResilientHttpClient.
class CoreApiClient extends ResilientHttpClient {
  CoreApiClient._() : super._();

  factory CoreApiClient.withPolicy(Policy policy) {
    return CoreApiClient._()
      ..policy = policy
      ..getUri = policy.getUri
      ..getToken = policy.getToken;
  }
}

// This class has to be in this file because we're calling the
// private constructor of CoreApiClient.
class MockCoreApiClient extends CoreApiClient {
  MockCoreApiClient(this.fn) : super._();

  final Future<Response> Function(Request) fn;

  late final MockClient _mockClient = MockClient(fn);

  @override
  Future<Response> head(Uri url, {Map<String, String>? headers}) =>
      _mockClient.head(url, headers: headers);

  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) =>
      _mockClient.get(url, headers: headers);

  @override
  Future<Response> post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) =>
      _mockClient.post(url, headers: headers, body: body, encoding: encoding);

  @override
  Future<Response> put(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) =>
      _mockClient.put(url, headers: headers, body: body, encoding: encoding);

  @override
  Future<Response> patch(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) =>
      _mockClient.patch(url, headers: headers, body: body, encoding: encoding);

  @override
  Future<Response> delete(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) =>
      _mockClient.delete(url, headers: headers, body: body, encoding: encoding);
}
