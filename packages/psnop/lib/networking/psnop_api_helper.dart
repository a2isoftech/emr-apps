import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:emr_one_core/config/app_config.dart';
import 'package:http/http.dart';
import 'package:psnop/networking/api_exceptions.dart';

class PsnopApiHelper {
  PsnopApiHelper({
    required this.config,
    required this.httpClient,
  }) {
    if (config.finlayBaseUrl.isEmpty) {
      throw Exception('finlayBaseUrl not set in AppConfig');
    }
  }

  final BaseClient httpClient;

  final AppConfig config;

  Future<dynamic> get(
    String url, {
    String accept = 'application/json',
    bool bodyAsJson = true,
  }) async {
    try {
      final uri = config.finlayBaseUrl + url;

      final response = await httpClient.get(
        Uri.parse(uri),
        headers: {
          'Accept': accept,
        },
      );

      return _returnResponse(response, bodyAsJson: bodyAsJson);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  Future<dynamic> post(
    String url,
    Map<String, dynamic>? body, {
    String accept = 'application/json',
    bool bodyAsJson = true,
  }) async {
    try {
      final uri = config.finlayBaseUrl + url;

      final response = await httpClient.post(
        Uri.parse(uri),
        headers: {
          'Accept': accept,
        },
        body: body != null ? json.encode(body) : null,
      );

      return _returnResponse(response, bodyAsJson: bodyAsJson);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  dynamic _returnResponse(Response response, {bool bodyAsJson = true}) {
    switch (response.statusCode) {
      case 200:
        if (bodyAsJson) {
          final responseJson = json.decode(response.body);
          return responseJson;
        }
        return response.bodyBytes;
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnauthorisedException(response.body);
      case 500:
      default:
        throw FetchDataException(
          'Communication error with StatusCode : ${response.statusCode}',
        );
    }
  }
}
