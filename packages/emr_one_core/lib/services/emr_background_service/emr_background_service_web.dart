import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/services/emr_background_service/background_upload.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
// ignore: unnecessary_import
import 'package:http_parser/http_parser.dart';

class EmrBackgroundService {
  EmrBackgroundService._privateConstructor();

  static final EmrBackgroundService _instance =
      EmrBackgroundService._privateConstructor();

  static EmrBackgroundService get instance => _instance;

  bool _isInitialised = false;

  /// For web this array will always be empty.
  final ValueNotifier<List<BackgroundUpload>> uploads =
      ValueNotifier<List<BackgroundUpload>>([]);

  Future<Map<String, String>> Function() _getDefaultHeaders =
      () => Future.value({});

  Future<void> initialize({
    Future<Map<String, String>> Function()? getDefaultHeaders,
  }) {
    if (_isInitialised) {
      return Future.value();
    }

    _isInitialised = true;

    if (getDefaultHeaders != null) {
      _getDefaultHeaders = getDefaultHeaders;
    }

    return Future.value();
  }

  Future<EmrBackgroundServiceResponse> upload(
    dynamic source,
    String destinationUrl,
  ) async {
    if (source is! XFile) {
      throw ArgumentError('source must be a String');
    }

    final client = ResilientHttpClient.withPolicy(
      SimplePolicy(destinationUrl)
        ..getToken = FirebaseLogin.getToken
        ..shouldRetry = (retryContext) {
          return Future.value(false);
        }
        ..timeout = const Duration(seconds: 60),
    );

    final request = MultipartRequest(
      'POST',
      Uri.parse(destinationUrl),
    );

    request.headers.addAll(
      await _getDefaultHeaders(),
    );

    request.files.add(
      MultipartFile.fromBytes(
        'formFile',
        await source.readAsBytes(),
        filename: source.name,
        contentType: MediaType.parse(
          source.mimeType ?? 'application/octet-stream',
        ),
      ),
    );

    final response = await client.send(request);

    return EmrBackgroundServiceResponse(
      status: response.statusCode == 201
          ? BackgroundTransferStatus.completed
          : BackgroundTransferStatus.failed,
      message: 'HTTP ${response.statusCode}',
    );
  }

  /// Delete an upload. This is only appropriate for native platforms.
  Future<void> deleteUpload(BackgroundUpload backgroundUpload) =>
      throw UnimplementedError();
}
