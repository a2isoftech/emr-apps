import 'dart:convert';
import 'dart:io';

import 'package:emr_one_forms_engine/core/constants/enums.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/iauthorization_provider.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/idatabase_manager.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/ihttp_service.dart';
import 'package:emr_one_forms_engine/core/services/service_container.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

class HttpService implements IHttpService {
  String _baseUrl;
  http.Client Function()? _clientFactory;

  HttpService(this._baseUrl, {http.Client Function()? clientFactory}) {
    if (!_baseUrl.endsWith('/')) {
      _baseUrl += '/';
    }

    _clientFactory = clientFactory;
    _clientFactory ??= () => http.Client();
  }

  Future<HttpResult<T>> _sendJson<T>(String url, String method, dynamic body,
      TypedJsonParser<T> parser) async {
    final client = _clientFactory!();

    try {
      if (!url.startsWith(RegExp(r'https?://'))) {
        url = _baseUrl + (url.startsWith('/') ? url.substring(1) : url);
      }

      final request = http.Request(method, Uri.parse(url));
      request.headers['Accept'] = 'application/json';

      if (body != null) {
        request.body = json.encode(body);
        request.headers['Content-Type'] = 'application/json';
      }

      String? authorization = await ServiceContainer()
          .get<IAuthorizationProvider?>()
          ?.getAuthorizationHeader();

      if (authorization != null) {
        request.headers['Authorization'] = authorization;
      }

      final response = await client.send(request);

      if (response.statusCode == 200) {
        final responseBody = await response.stream.bytesToString();
        T? responseObj;
        if (responseBody.isNotEmpty) {
          responseObj = parser(json.decode(responseBody));
        }
        return HttpResult(true,
            response: responseObj, responseBody: responseBody);
      } else if (response.statusCode == 204) {
        return HttpResult(true);
      } else {
        throw HttpException(
            'Received status code ${response.statusCode} from server');
      }
    } on SocketException {
      return HttpResult(false,
          errorMessage: 'Failed to contact server. Check network connection.');
    } on HttpException catch (e) {
      return HttpResult(false,
          errorMessage: 'HTTP request failed: ${e.message}');
    } finally {
      client.close();
    }
  }

  @override
  Future<HttpResult<T>> get<T>(String url, TypedJsonParser<T> parser) {
    return _sendJson<T>(url, 'GET', null, parser);
  }

  @override
  Future<HttpResult<T>> post<T>(
      String url, IJsonEncodable body, TypedJsonParser<T> parser) {
    return _sendJson(url, 'POST', body, parser);
  }

  @override
  Future<HttpResult<T>> postList<T>(
      String url, List<IJsonEncodable> body, TypedJsonParser<T> parser) {
    return _sendJson(url, 'POST', body, parser);
  }

  @override
  Future<HttpResult<T>> postMultipartFormData<T>(
      String url, IJsonEncodable body, TypedJsonParser<T> parser) {
    return _sendMultipartFormDataJson(url, 'POST', body, parser);
  }

  Future<HttpResult<T>> _sendMultipartFormDataJson<T>(String url, String method,
      dynamic body, TypedJsonParser<T> parser) async {
    final client = _clientFactory!();

    try {
      if (!url.startsWith(RegExp(r'https?://'))) {
        url = _baseUrl + (url.startsWith('/') ? url.substring(1) : url);
      }

      http.MultipartRequest request = http.MultipartRequest(
        method,
        Uri.parse(url),
      );
      request.headers['accept'] = 'application/json';
      String? authorization = await ServiceContainer()
          .get<IAuthorizationProvider?>()
          ?.getAuthorizationHeader();

      if (authorization != null) {
        request.headers['authorization'] = authorization;
      }

      if (body != null) {
        String filePath = body.filePath;
        CapturedMediaType mediaType = body.mediaType;
        String? mimeType = lookupMimeType(filePath);
        Uint8List? fileByteData;
        if (kIsWeb) {
          final databaseManager = ServiceContainer().get<IDatabaseManager>();
          fileByteData = databaseManager.getImageData(filePath);
        } else {
          fileByteData = File(filePath).readAsBytesSync();
        }
        if (mimeType != null || kIsWeb) {
          http.MultipartFile multipartFile =
              http.MultipartFile.fromBytes('MediaData', fileByteData!,
                  filename: filePath.split("/").last,
                  contentType: kIsWeb
                      ? mediaType == CapturedMediaType.image
                          ? MediaType.parse('image/png')
                          : MediaType.parse('video/mp4')
                      : MediaType.parse(mimeType!));
          request.files.add(multipartFile);
          request.fields['Id'] = body.id;
        }
        request.headers['content-type'] = 'multipart/form-data';
      }

      final response = await client.send(request);

      if (response.statusCode == 200) {
        final responseBody = await response.stream.bytesToString();
        T? responseObj;
        if (responseBody.isNotEmpty) {
          responseObj = parser(json.decode(responseBody));
        }
        return HttpResult(true,
            response: responseObj, responseBody: responseBody);
      } else if (response.statusCode == 204) {
        return HttpResult(true);
      } else {
        throw HttpException(
            'Received status code ${response.statusCode} from server');
      }
    } on SocketException {
      return HttpResult(false,
          errorMessage: 'Failed to contact server. Check network connection.');
    } on HttpException catch (e) {
      return HttpResult(false,
          errorMessage: 'HTTP request failed: ${e.message}');
    } finally {
      client.close();
    }
  }

  @override
  Future<HttpResult<Uint8List>> getFile(String url) async {
    final client = _clientFactory!();

    try {
      if (!url.startsWith(RegExp(r'https?://'))) {
        url = _baseUrl + (url.startsWith('/') ? url.substring(1) : url);
      }

      final request = http.Request('GET', Uri.parse(url));
      request.headers['Accept'] = 'application/json';

      String? authorization = await ServiceContainer()
          .get<IAuthorizationProvider?>()
          ?.getAuthorizationHeader();

      if (authorization != null) {
        request.headers['Authorization'] = authorization;
      }

      final response = await client.send(request);

      if (response.statusCode == 200) {
        final stream = await response.stream.toBytes();
        return HttpResult(true, response: stream);
      } else if (response.statusCode == 204) {
        return HttpResult(true);
      } else {
        throw HttpException(
            'Received status code ${response.statusCode} from server');
      }
    } on SocketException {
      return HttpResult(false,
          errorMessage: 'Failed to contact server. Check network connection.');
    } on HttpException catch (e) {
      return HttpResult(false,
          errorMessage: 'HTTP request failed: ${e.message}');
    } finally {
      client.close();
    }
  }
}
