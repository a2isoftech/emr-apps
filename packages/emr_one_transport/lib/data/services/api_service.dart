import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class ApiService {
  ApiService({required this.httpClient});
  final ResilientHttpClient httpClient;

  /// **GET a single object**
  Future<ApiResponse<T>> get<T>(
    String endpoint, {
    required T Function(dynamic) fromJsonT,
    Map<String, dynamic>? queryParams,
  }) async {
    return _performSingleGetRequest<T>(
      endpoint,
      fromJsonT: fromJsonT,
      queryParams: queryParams,
    );
  }

  /// **POST a single object**
  Future<ApiResponse<T>> post<T>(
    String endpoint, {
    T Function(dynamic)? fromJsonT,
    dynamic body,
  }) async {
    return _performSinglePostRequest<T>(
      endpoint,
      fromJsonT: fromJsonT,
      body: body,
    );
  }

  /// **PUT a single object**
  Future<ApiResponse<T>> put<T>(
    String endpoint, {
    T Function(dynamic)? fromJsonT,
    dynamic body,
  }) async {
    return _performSinglePutRequest<T>(
      endpoint,
      fromJsonT: fromJsonT,
      body: body,
    );
  }

  /// **PATCH a single object**
  Future<ApiResponse<T>> patch<T>(
    String endpoint, {
    required T Function(dynamic) fromJsonT,
    dynamic body,
  }) async {
    return _performSinglePatchRequest<T>(
      endpoint,
      fromJsonT: fromJsonT,
      body: body,
    );
  }

  /// **GET a list of objects with pagination and facets**
  Future<ApiResponse<List<T>>> getList<T>(
    String endpoint, {
    required T Function(Map<String, dynamic> json) fromJsonT,
    PagedFilterRequest? pageInfo,
    Map<String, dynamic>? queryParams,
  }) async {
    return _performListGetRequest<T>(
      endpoint,
      fromJsonT: fromJsonT,
      queryParams: {
        if (pageInfo != null) ...{...?pageInfo.toQueryParam()},
        if (queryParams != null) ...queryParams,
      },
    );
  }

  /// **Post and get list of objects with pagination and facets**
  Future<ApiResponse<List<T>>> postList<T>(
    String endpoint, {
    required T Function(Map<String, dynamic> json) fromJsonT,
    dynamic body,
    PagedFilterRequest? pageInfo,
    Map<String, dynamic>? queryParams,
  }) async {
    return _performListPostRequest<T>(
      endpoint,
      body: body,
      fromJsonT: fromJsonT,
      queryParams: {
        if (pageInfo != null) ...{...?pageInfo.toQueryParam()},
        if (queryParams != null) ...queryParams,
      },
    );
  }

  /// **DELETE a single object**
  Future<ApiResponse<T>> delete<T>(String endpoint, dynamic body) async {
    final response = await _performDeleteRequest<T>(endpoint, body: body);
    return response;
  }

  /// **GET GraphQL response with pagination**
  Future<ApiResponse<List<T>>> getGraphQLResponse<T>(
    String endpoint, {
    required T Function(Map<String, dynamic> json) fromJsonT,
    PagedFilterRequest? pageInfo,
    Map<String, dynamic>? queryParams,
  }) {
    final qp = {
      if (pageInfo != null) ...{...?pageInfo.toGraphQLQueryParam()},
      if (queryParams != null) ...queryParams,
    };
    return _performListGetRequest<T>(
      endpoint,
      fromJsonT: fromJsonT,
      queryParams: qp,
    );
  }

  Future<ApiResponse<Uint8List>> getFileBytes(
    String endpoint, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final uri = Uri.parse('${httpClient.getUri()}/$endpoint').replace(
        queryParameters: queryParams?.isNotEmpty ?? false ? queryParams : null,
      );

      final response = await httpClient.get(uri);

      final err = await checkResponseHttp<Uint8List>(response);
      if (err == null) {
        return ApiResponse<Uint8List>(response.bodyBytes);
      }
      return err;
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during file download',
        error: ex,
        stackTrace: trace,
      );
      return ApiResponse.serverFault();
    }
  }

  Future<ApiResponse<Uint8List>> postFileBytes(
    String endpoint, {
    dynamic body,
  }) async {
    try {
      final response = await httpClient.post(
        Uri.parse('${httpClient.getUri()}/$endpoint'),
        body: body != null ? jsonEncode(body) : null,
      );

      final err = await checkResponseHttp<Uint8List>(response);
      if (err == null) {
        return ApiResponse<Uint8List>(response.bodyBytes);
      }
      return err;
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during POST $endpoint',
        error: ex,
        stackTrace: trace,
        params: {'body': jsonEncode(body)},
      );
      return ApiResponse.serverFault();
    }
  }

  Future<ApiResponse<T>> uploadDocument<T>({
    required String endpoint,
    required Uint8List fileBytes,
    T Function(dynamic)? fromJsonT,
  }) async {
    try {
      final uri = Uri.parse('${httpClient.getUri()}/$endpoint');
      const xlsxMime =
          'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
      final request = http.MultipartRequest('POST', uri);
      request.files.add(
        http.MultipartFile.fromBytes(
          'file',
          fileBytes,
          filename: 'upload.xlsx',
          contentType: MediaType.parse(xlsxMime),
        ),
      );

      final response = await httpClient.send(request);

      final apiResponse = await checkResponseHttp<T>(response);

      return ApiResponse<T>(
        null,
        isSuccess: apiResponse == null,
        errorMessage: apiResponse?.errorMessage ?? '',
        errorCode: apiResponse?.errorCode ?? '',
      );
    } catch (e) {
      return ApiResponse.badRequest();
    }
  }

  /// **Handles GET requests for a single object**
  Future<ApiResponse<T>> _performSingleGetRequest<T>(
    String endpoint, {
    required T Function(dynamic) fromJsonT,
    required Map<String, dynamic>? queryParams,
  }) async {
    try {
      final uri = Uri.parse('${httpClient.getUri()}/$endpoint').replace(
        queryParameters: queryParams?.isNotEmpty ?? false ? queryParams : null,
      );

      final response = await httpClient.get(uri);
      return _processResponse(response, fromJsonT);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during GET $endpoint',
        error: ex,
        stackTrace: trace,
        params: {'body': jsonEncode(queryParams)},
      );
      return ApiResponse.serverFault();
    }
  }

  /// **Handles GET requests for a single object**
  Future<ApiResponse<T>> _performSinglePostRequest<T>(
    String endpoint, {
    required dynamic body,
    T Function(dynamic)? fromJsonT,
  }) async {
    try {
      final uri = Uri.parse('${httpClient.getUri()}/$endpoint');

      final response = await httpClient.post(
        uri,
        body: body != null ? jsonEncode(body) : null,
      );
      return _processResponse(response, fromJsonT);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during POST $endpoint',
        error: ex,
        stackTrace: trace,
        params: {'body': jsonEncode(body)},
      );
      return ApiResponse.serverFault();
    }
  }

  /// **Handles PUT requests for a single object**
  Future<ApiResponse<T>> _performSinglePutRequest<T>(
    String endpoint, {
    required T Function(dynamic)? fromJsonT,
    required dynamic body,
  }) async {
    try {
      final uri = Uri.parse('${httpClient.getUri()}/$endpoint');

      final response = await httpClient.put(
        uri,
        body: body != null ? jsonEncode(body) : null,
      );
      return _processResponse(response, fromJsonT);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during PUT $endpoint',
        error: ex,
        stackTrace: trace,
        params: {'body': jsonEncode(body)},
      );
      return ApiResponse.serverFault();
    }
  }

  /// **Handles PATCH requests for a single object**
  Future<ApiResponse<T>> _performSinglePatchRequest<T>(
    String endpoint, {
    required T Function(dynamic) fromJsonT,
    required dynamic body,
  }) async {
    try {
      final uri = Uri.parse('${httpClient.getUri()}/$endpoint');

      final response = await httpClient.patch(
        uri,
        body: body != null ? jsonEncode(body) : null,
      );
      return _processResponse(response, fromJsonT);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during PATCH $endpoint',
        error: ex,
        stackTrace: trace,
        params: {'body': jsonEncode(body)},
      );
      return ApiResponse.serverFault();
    }
  }

  /// **Handles GET requests for a list of objects**
  Future<ApiResponse<List<T>>> _performListPostRequest<T>(
    String endpoint, {
    required dynamic body,
    required T Function(Map<String, dynamic> json) fromJsonT,
    required Map<String, dynamic>? queryParams,
  }) async {
    try {
      final uri = Uri.parse('${httpClient.getUri()}/$endpoint').replace(
        queryParameters: queryParams?.isNotEmpty ?? false ? queryParams : null,
      );

      final response = await httpClient.post(
        uri,
        body: body != null ? jsonEncode(body) : null,
      );
      return _processListResponse(response, fromJsonT);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during POST $endpoint',
        error: ex,
        stackTrace: trace,
        params: {'body': jsonEncode(body)},
      );
      return ApiResponse.serverFault();
    }
  }

  /// **Handles GET requests for a list of objects**
  Future<ApiResponse<List<T>>> _performListGetRequest<T>(
    String endpoint, {
    required T Function(Map<String, dynamic> json) fromJsonT,
    required Map<String, dynamic>? queryParams,
  }) async {
    try {
      final uri = Uri.parse('${httpClient.getUri()}/$endpoint').replace(
        queryParameters: queryParams?.isNotEmpty ?? false ? queryParams : null,
      );

      final response = await httpClient.get(uri);
      return _processListResponse(response, fromJsonT);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during GET $endpoint',
        error: ex,
        stackTrace: trace,
        params: {'query params': jsonEncode(queryParams)},
      );
      return ApiResponse.serverFault();
    }
  }

  /// **Handles DELETE requests
  Future<ApiResponse<T>> _performDeleteRequest<T>(
    String endpoint, {
    required dynamic body,
  }) async {
    try {
      final uri = Uri.parse('${httpClient.getUri()}/$endpoint');

      final response = await httpClient.delete(
        uri,
        body: body != null ? jsonEncode(body) : null,
      );
      final apiError = await checkResponseHttp<T>(response);
      if (apiError != null) return apiError;

      return ApiResponse<T>(null);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Exception occurred during DELETE $endpoint',
        error: ex,
        stackTrace: trace,
        params: {'body': jsonEncode(body)},
      );
      return ApiResponse.serverFault();
    }
  }

  Future<ApiResponse<T>> _processResponse<T>(
    http.Response response,
    T Function(dynamic)? fromJsonT,
  ) async {
    try {
      final jsonData = jsonDecode(response.body) as Map<String, dynamic>;
      final errorMessage = (jsonData['errorMessage'] as String?) ?? '';
      final errorCode = (jsonData['errorCode'] as String?) ?? '';

      final apiResponse = await checkResponseHttp<T>(response);
      if (apiResponse != null) return apiResponse;

      final isSuccess = (jsonData['isSuccess'] as bool?) ?? false;

      final parsedResponse = fromJsonT != null
          ? fromJsonT(jsonData['data'] as dynamic)
          : null;

      return ApiResponse<T>(
        parsedResponse,
        isSuccess: isSuccess,
        errorMessage: errorMessage,
        errorCode: errorCode,
      );
    } catch (e, trace) {
      EmrLogger.error(
        'Exception occurred during processing request',
        stackTrace: trace,
        params: {'response': response.body},
      );
      return ApiResponse<T>(
        null,
        isSuccess: false,
        errorMessage: 'Invalid response format: $e',
      );
    }
  }

  Future<ApiResponse<List<T>>> _processListResponse<T>(
    http.Response response,
    T Function(Map<String, dynamic> json) fromJsonT,
  ) async {
    try {
      final apiResponse = await checkResponseHttp<List<T>>(response);
      if (apiResponse != null) return apiResponse;

      final jsonData = jsonDecode(response.body) as Map<String, dynamic>;

      final items = (jsonData['data'] as List<dynamic>?) ?? [];

      final dataList = items
          .whereType<Map<String, dynamic>>()
          .map((item) => fromJsonT(item))
          .toList();

      return ApiResponse<List<T>>(
        dataList,
        isSuccess: (jsonData['isSuccess'] as bool?) ?? false,
        errorMessage: (jsonData['errorMessage'] as String?) ?? '',
        errorCode: (jsonData['errorCode'] as String?) ?? '',
      )..setMetadata(
        jsonData['pageNumber'] as int?,
        jsonData['pageSize'] as int?,
        jsonData['totalCount'] as int?,
        jsonData['pageInfo'] as Map<String, dynamic>?,
        jsonData['facets'] as Map<String, dynamic>?,
      );
    } catch (e) {
      EmrLogger.error(
        'Invalid response format',
        params: {'response': response.body},
      );
      return ApiResponse<List<T>>(
        [],
        isSuccess: false,
        errorMessage: 'Invalid response format: $e',
      );
    }
  }
}
