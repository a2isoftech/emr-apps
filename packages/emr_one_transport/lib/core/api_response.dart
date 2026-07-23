import 'dart:convert';

import 'package:emr_one_core/data/emr_query_graphql_page_info.dart';
import 'package:emr_one_transport/data/models/filters/facet_response.dart';
import 'package:http/http.dart';

class ApiResponse<T> {
  ApiResponse(
    this.data, {
    this.status = ResponseStatus.ok,
    this.isSuccess = true,
    this.errorMessage = '',
    this.errorCode = '',
    this.totalItems = 0,
    this.pageNumber = 0,
    this.pageInfo,
  });

  factory ApiResponse.serverFault() {
    return ApiResponse<T>(
      null,
      status: ResponseStatus.serverFault,
      errorMessage: 'Internal Server Error',
      isSuccess: false,
    );
  }

  factory ApiResponse.unauthorized() {
    return ApiResponse<T>(
      null,
      status: ResponseStatus.unauthorized,
      errorMessage: 'User not authorized',
      isSuccess: false,
    );
  }

  factory ApiResponse.badRequest({String? errorMessage}) {
    return ApiResponse<T>(
      null,
      status: ResponseStatus.badRequest,
      errorMessage:
          (errorMessage?.isEmpty ?? true) ? 'Bad Request' : errorMessage!,
      isSuccess: false,
    );
  }

  factory ApiResponse.notFound({String? errorMessage}) {
    return ApiResponse<T>(
      null,
      status: ResponseStatus.notFound,
      errorMessage:
          (errorMessage?.isEmpty ?? true) ? 'Not Found' : errorMessage!,
      isSuccess: false,
    );
  }

  factory ApiResponse.conflict(String errorMessage, String errorCode) {
    return ApiResponse<T>(
      null,
      status: ResponseStatus.conflict,
      errorMessage: errorMessage.isEmpty ? 'Conflict Exception' : errorMessage,
      isSuccess: false,
      errorCode: errorCode,
    );
  }

  factory ApiResponse.fromJson(
    String responseBody,
    T Function(Object? json) fromJsonT,
  ) {
    final jsonObject = json.decode(responseBody) as Map<String, dynamic>;

    return ApiResponse<T>(
      fromJsonT(jsonObject['data']),
      isSuccess: jsonObject['isSuccess'] as bool? ?? false,
      errorMessage: jsonObject['errorMessage'] as String? ?? '',
      errorCode: jsonObject['errorCode'] as String? ?? '',
      totalItems: jsonObject['totalCount'] as int,
    );
  }

  final T? data;
  final bool isSuccess;
  final ResponseStatus status;
  String errorMessage;
  String errorCode;
  int totalItems;
  int pageNumber;
  EmrQueryGraphQLPageInfo? pageInfo;

  /// Pagination & Metadata
  int pageSize = 50;
  Map<String, FacetResponse>? facets;

  void setMetadata(
    int? pageNumber,
    int? pageSize,
    int? totalItems,
    Map<String, dynamic>? graphQlPageInfoJson,
    Map<String, dynamic>? facets,
  ) {
    this.pageNumber = pageNumber ?? 0;
    this.pageSize = pageSize ?? 0;
    this.facets = FacetResponse.parseFacets(facets);
    this.totalItems = totalItems ?? 0;
    pageInfo = graphQlPageInfoJson != null
        ? EmrQueryGraphQLPageInfo(
            hasPreviousPage: false,
            hasNextPage: false,
            startCursor: graphQlPageInfoJson['startCursor'] as String,
            endCursor: graphQlPageInfoJson['endCursor'] as String,
          )
        : null;
  }
}

enum ResponseStatus {
  ok,
  serverFault,
  badRequest,
  unauthorized,
  conflict,
  notFound
}

extension HttpStatusExtension on int {
  bool get isSuccessful => this >= 200 && this <= 299;
  bool get isUnauthorized => this == 401;
  bool get isServerFault => this == 500;
  bool get isConflict => this == 409;
  bool get isBadRequest => this == 400;
  bool get isNotFoundRequest => this == 404;
}

Future<ApiResponse<T>?> checkResponseHttp<T>(Object response) async {
  final (status, _, body) = await _readHttp(response);

  if (status.isSuccessful) {
    return null;
  } else if (status.isUnauthorized) {
    return ApiResponse.unauthorized();
  } else if (status.isConflict) {
    return ApiResponse.conflict(
      _extractErrorMessage(body),
      _extractErrorCode(body),
    );
  } else if (status.isServerFault) {
    return ApiResponse.badRequest(
      errorMessage: _extractErrorMessage(body),
    );
  } else if (status.isBadRequest) {
    return ApiResponse.badRequest(errorMessage: _extractErrorMessage(body));
  } else if (status.isNotFoundRequest) {
    return ApiResponse.notFound(errorMessage: _extractErrorMessage(body));
  } else {
    // Unknown status range -> throw with any message we can extract
    final msg = _extractErrorMessage(body);
    throw Exception('Exception occurred - $status ${msg.isEmpty ? "" : msg}');
  }
}

Future<(int status, Map<String, String> headers, String body)> _readHttp(
  Object resp,
) async {
  if (resp is Response) {
    return (resp.statusCode, resp.headers, resp.body);
  }
  if (resp is StreamedResponse) {
    final bytes = await resp.stream.toBytes();
    return (
      resp.statusCode,
      resp.headers,
      utf8.decode(bytes, allowMalformed: true)
    );
  }
  throw ArgumentError('Unsupported response type: ${resp.runtimeType}');
}

String _extractErrorMessage(String body) {
  if (body.isEmpty) return '';
  try {
    final obj = json.decode(body);
    if (obj is Map<String, dynamic>) {
      final err = obj['ErrorMessage'] ?? obj['errorMessage'];
      if (err is String && err.isNotEmpty) return err;
    }
  } catch (_) {}
  return '';
}

String _extractErrorCode(String body) {
  try {
    final obj = json.decode(body);
    if (obj is Map<String, dynamic>) {
      final code = obj['errorCode'] ?? obj['ErrorCode'];
      if (code is String && code.isNotEmpty) return code;
    }
  } catch (_) {}
  return '';
}
