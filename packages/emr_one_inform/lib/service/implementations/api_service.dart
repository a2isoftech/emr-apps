import 'dart:io';

import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/service/form_services.dart';
import 'package:http/http.dart';
// ignore: unnecessary_import
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

class ApiService implements IApiService {
  ApiService({
    required this.authProvider,
  });

  final IAuthorizationProvider authProvider;

  static const String loggerPrefix = '[ApiService] - ';

  @override
  Future<Response> getAsync(String url) async {
    Response response;
    var doReattempt = false;

    do {
      response = await get(
        Uri.parse(url),
        headers: await _addHeader(doReattempt),
      );

      if (!ResponseHelper.isSuccessStatusCode(response)) {}

      doReattempt =
          !doReattempt && (response.statusCode == HttpStatus.unauthorized);
    } while (doReattempt);

    return response;
  }

  @override
  Future<Response> postAsync({
    required String url,
    required Object? data,
  }) async {
    Response response;
    var doReattempt = false;

    final body = data;
    do {
      response = await post(
        Uri.parse(url),
        body: body,
        headers: await _addHeader(doReattempt),
      );

      if (!ResponseHelper.isSuccessStatusCode(response)) {}

      doReattempt =
          !doReattempt && (response.statusCode == HttpStatus.unauthorized);
    } while (doReattempt);

    return response;
  }

  Future<Map<String, String>?> _addHeader([
    bool forceTokenRefresh = false,
  ]) async {
    return {
      'Authorization':
          await authProvider.getAuthorizationHeader(forceTokenRefresh),
      'Accept': 'application/json',
      'content-type': 'application/json',
    };
  }

  @override
  Future<StreamedResponse> postMultipartFormData({
    required String url,
    required dynamic data,
    RetryPredicateMultiPart? retryPredicate,
  }) async {
    StreamedResponse response;
    var doReattempt = false;

    do {
      final request = MultipartRequest(
        'POST',
        Uri.parse(url),
      );
      request.headers['accept'] = 'application/json';
      request.headers['content-type'] = 'multipart/form-data';
      request.headers['authorization'] =
          await authProvider.getAuthorizationHeader(doReattempt);

      if (data != null) {
        // ignore: avoid_dynamic_calls
        final filePath = data.filePath as String;
        final mimeType = lookupMimeType(filePath);
        if (mimeType != null) {
          final multipartFile = MultipartFile.fromBytes(
            'MediaData',
            File(filePath).readAsBytesSync(),
            filename: filePath.split('/').last,
            contentType: MediaType.parse(mimeType),
          );
          request.files.add(multipartFile);
          // ignore: avoid_dynamic_calls
          request.fields['Id'] = data.id as String;
        }
      }
      response = await request.send();

      if (!ResponseHelperMultiPart.isSuccessStatusCode(response)) {}

      doReattempt =
          !doReattempt && (response.statusCode == HttpStatus.unauthorized);
    } while (doReattempt);

    return response;
  }
}

class ResponseHelper {
  static bool isSuccessStatusCode<T extends BaseResponse>(T r) =>
      r.statusCode >= 200 && r.statusCode <= 299;
}

class ResponseHelperMultiPart {
  static bool isSuccessStatusCode<T extends StreamedResponse>(T r) =>
      r.statusCode >= 200 && r.statusCode <= 299;
}
