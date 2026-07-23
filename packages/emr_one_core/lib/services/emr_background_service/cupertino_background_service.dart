import 'dart:async';
import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/services/emr_background_service/background_upload.dart';
import 'package:emr_one_core/services/emr_background_service/cupertino_http/cupertino_api.dart';
import 'package:emr_one_core/services/emr_background_service/emr_background_service_native.dart';
import 'package:emr_one_core/services/emr_background_service/platform_background_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart' as http_parser;
import 'package:objective_c/objective_c.dart';

extension URLSessionTaskExtensions on URLSessionTask {
  static const String cupertinoBackgroundServiceId =
      'CupertinoBackgroundService-Id';

  /// Try to return the Id of the BackgroundUpload that we store in the headers.
  String get id =>
      originalRequest?.allHttpHeaderFields?[cupertinoBackgroundServiceId] ?? '';
}

class CupertinoBackgroundService extends PlatformBackgroundService {
  CupertinoBackgroundService(this.emrBackgroundService);

  final EmrBackgroundServiceBase emrBackgroundService;

  late final AppLifecycleListener _appLifecycleListener;

  late final URLSession _session;

  /// A list of running tasks.
  List<URLSessionTask> tasks = [];

  @override
  void initialize() {
    // Wire up the app lifecycle listener.
    _appLifecycleListener = AppLifecycleListener(
      onStateChange: _onStateChanged,
    );

    // Create a background session.
    final configuration = URLSessionConfiguration.backgroundSession(
      'com.emrgroup.emrapps.backgroundsession',
    );

    configuration.httpMaximumConnectionsPerHost = 1;
    configuration.allowsCellularAccess = true;

    _session = URLSession.sessionWithConfiguration(
      configuration,
      onDidSendBodyData:
          (session, task, bytesSent, totalBytesSent, totalBytesExpectedToSend) {
        final backgroundUpload =
            emrBackgroundService.dataStore.getUploadById(task.id);

        // We only want to update the progress if the status is pending.
        if (backgroundUpload?.status != BackgroundTransferStatus.pending) {
          return;
        }

        final progress =
            ((totalBytesSent / totalBytesExpectedToSend) * 100.0).toInt();

        debugPrint('Task ${task.id} progress: $progress%');

        // Make sure we never show 100% while still uploading.
        backgroundUpload!.progress = progress.clamp(0, 99);

        emrBackgroundService.onDataChanged();
      },
      onComplete: (session, task, error) async {
        tasks.remove(task);

        if (task.id.isEmpty) {
          emrBackgroundService.dataStore.event(
            'CupertinoBackgroundService.onComplete',
            message: 'Unable to get the id from the task.',
            severity: EmrLogLevel.error,
          );

          return;
        }

        // Determine the status of the task.
        var status = BackgroundTransferStatus.failed;
        var message = '';

        if (error == null) {
          if (task.response is HTTPURLResponse) {
            final response = task.response! as HTTPURLResponse;

            message = 'HTTP ${response.statusCode}';

            if (response.statusCode == 201) {
              status = BackgroundTransferStatus.completed;
            }
          } else {
            message = 'Not a HTTPURLResponse';
          }
        } else {
          message =
              '${error.code} ${error.localizedDescription.toDartString()}';
        }

        // Find the BackgroundUpload and update it.
        final backgroundUpload =
            emrBackgroundService.dataStore.getUploadById(task.id);

        if (backgroundUpload == null) {
          emrBackgroundService.dataStore.event(
            'CupertinoBackgroundService.onComplete',
            message: 'Unable to find BackgroundUpload for task Id ${task.id}',
            severity: EmrLogLevel.error,
          );

          return;
        }

        await emrBackgroundService.dataStore.updateUpload(
          backgroundUpload,
          status: status,
          message: message,
        );

        emrBackgroundService.dataStore.event(
          'CupertinoBackgroundService.onComplete',
          backgroundUpload: backgroundUpload,
        );

        if (status == BackgroundTransferStatus.completed) {
          backgroundUpload.progress = 100;
          emrBackgroundService.onDataChanged();
        }

        // Clean-up the temporary file that contained the multipart request.
        try {
          final tmpFile = File('${backgroundUpload.source}.tmp');

          if (tmpFile.existsSync()) {
            await tmpFile.delete();
          }
        } catch (e) {
          // Do nothing.
        }
      },
    );
  }

  Future<void> _onStateChanged(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      for (final task in tasks) {
        task.resume();
      }
    }
  }

  @override
  void dispose() {
    _appLifecycleListener.dispose();
  }

  @override
  Future<String?> startUpload(
    BackgroundUpload backgroundUpload,
  ) async {
    // First try to get the default headers, which will include the token, so if
    // that fails (e.g. we're logged out), we then don't create a temporary file
    // below, as we catch the exception in the calling function and mark the
    // BackgroundUpload as failed.
    final defaultHeaders = await emrBackgroundService.getDefaultHeaders();

    // Create a MultipartRequest which is used to upload a file.
    final multipartRequest = MultipartRequest(
      'POST',
      Uri.parse(backgroundUpload.destinationUrl),
    );

    final sourceFile = File(backgroundUpload.source);

    multipartRequest.files.add(
      MultipartFile.fromBytes(
        'formFile',
        await sourceFile.readAsBytes(),
        filename: 'filename',
        contentType: http_parser.MediaType.parse('application/octet-stream'),
      ),
    );

    // Write the multipart message body to a temporary file so it can be
    // uploaded by NSURLSession.
    final multipartByteStream = multipartRequest.finalize();
    final tmpFile = File('${backgroundUpload.source}.tmp');
    final sink = tmpFile.openWrite();

    try {
      await multipartByteStream.pipe(sink);
    } finally {
      await sink.close();
    }

    // Create a request.
    final request =
        MutableURLRequest.fromUrl(Uri.parse(backgroundUpload.destinationUrl))
          ..httpMethod = 'POST';

    // Copy the headers to the request.
    for (final header in multipartRequest.headers.entries) {
      request.setValueForHttpHeaderField(header.key, header.value);
    }

    for (final header in defaultHeaders.entries) {
      request.setValueForHttpHeaderField(header.key, header.value);
    }

    request.setValueForHttpHeaderField('Accept', '*/*');
    request.setValueForHttpHeaderField('Cache-Control', 'no-cache');
    request.setValueForHttpHeaderField('Accept-Encoding', 'gzip, deflate');
    request.setValueForHttpHeaderField(
      URLSessionTaskExtensions.cupertinoBackgroundServiceId,
      backgroundUpload.id,
    );

    // Create a background task.
    final task = _session.upload(request, tmpFile.uri)
      ..priority = 1
      ..prefersIncrementalDelivery = false;

    tasks.add(task);

    task.resume();

    // For iOS, the id was passed with the `backgroundUpload` parameter, so we
    // don't need to return it here as we already know about it in the calling
    // function.
    return null;
  }
}
