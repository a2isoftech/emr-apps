import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/services/emr_background_service/background_upload.dart';
import 'package:emr_one_core/services/emr_background_service/emr_background_service_native.dart';
import 'package:emr_one_core/services/emr_background_service/platform_background_service.dart';
import 'package:emr_one_core/services/emr_background_service/work_manager/java_bindings.dart';
import 'package:flutter/foundation.dart';
import 'package:jni/jni.dart';

class AndroidBackgroundService extends PlatformBackgroundService {
  AndroidBackgroundService(this.emrBackgroundService);

  final EmrBackgroundServiceBase emrBackgroundService;

  late final wmw = WorkManagerWrapper()
    ..setCallback(
      WorkManagerCallback.implement(
        $WorkManagerCallback(onComplete: onComplete, onProgress: onProgress),
      ),
    );

  @override
  void initialize() {
    // wmw.clear();
    wmw.startObserving();
  }

  @override
  void dispose() {
    wmw.stopObserving();
    wmw.release();
  }

  @override
  Future<String?> startUpload(BackgroundUpload backgroundUpload) async {
    // First try to get the default headers, which will include the token, so if
    // that fails (e.g. we're logged out), we then don't create a temporary file
    // below, as we catch the exception in the calling function and mark the
    // BackgroundUpload as failed.
    final defaultHeaders = await emrBackgroundService.getDefaultHeaders();

    final id = wmw
        .upload(
          defaultHeaders
              .map(
                (key, value) => MapEntry(
                  key.toJString(),
                  value.toJString(),
                ),
              )
              .toJMap(JString.type, JString.type),
          backgroundUpload.source.toJString(),
          backgroundUpload.destinationUrl.toJString(),
        )
        ?.toDartString();

    return id;
  }

  Future<void> onComplete(JString? id, JMap<JString?, JObject?>? data) async {
    final result = WorkManagerResult(
      data?['result'.toJString()]?.toString(),
      data?['source'.toJString()]?.toString(),
      data?['destinationUrl'.toJString()]?.toString(),
      data?['statusCode'.toJString()]?.toString(),
      data?['message'.toJString()]?.toString(),
    );

    // Try to find the BackgroundUpload.
    final backgroundUpload =
        emrBackgroundService.dataStore.getUploadById(id?.toDartString() ?? '');

    if (backgroundUpload == null) {
      emrBackgroundService.dataStore.event(
        'AndroidBackgroundService.onComplete',
        message:
            'Unable to find BackgroundUpload for ${result.destinationUrl!}',
        severity: EmrLogLevel.error,
      );
    }

    // Only update the status when we're expecting it to be pending.
    // This is to prevent overwriting data when Work Manager returns a result
    // for work multiple time, until it is cleared from the database.
    if (backgroundUpload?.id == id?.toDartString() &&
        backgroundUpload?.status == BackgroundTransferStatus.pending) {
      // Determine the status of the task.
      var status = BackgroundTransferStatus.failed;

      final message = result.message == null
          ? 'HTTP ${result.statusCode}'
          : 'HTTP ${result.statusCode}: ${result.message}';

      if (result.statusCode == '201') {
        status = BackgroundTransferStatus.completed;
      }

      await emrBackgroundService.dataStore.updateUpload(
        backgroundUpload!,
        status: status,
        message: message,
      );

      emrBackgroundService.dataStore.event(
        'AndroidBackgroundService.onComplete',
        backgroundUpload: backgroundUpload,
      );

      if (status == BackgroundTransferStatus.completed) {
        backgroundUpload.progress = 100;
        emrBackgroundService.onDataChanged();
      }
    }

    id?.release();
    data?.release();
  }

  Future<void> onProgress(JString? id, int progress) async {
    debugPrint('onProgress: $id, progress: $progress');

    final backgroundUpload =
        emrBackgroundService.dataStore.getUploadById(id?.toDartString() ?? '');

    // We only want to update the progress if the status is pending.
    if (backgroundUpload?.status == BackgroundTransferStatus.pending) {
      // Make sure we never show 100% while still uploading.
      backgroundUpload!.progress = progress.clamp(0, 99);

      emrBackgroundService.onDataChanged();
    }

    id?.release();
  }
}

class WorkManagerResult {
  WorkManagerResult(
    this.result,
    this.source,
    this.destinationUrl,
    this.statusCode,
    this.message,
  );

  final String? result;
  final String? source;
  final String? destinationUrl;
  final String? statusCode;
  final String? message;

  @override
  String toString() {
    return '{'
        'result: $result, '
        'source: $source, '
        'destinationUrl: $destinationUrl, '
        'statusCode: $statusCode, '
        'message: $message'
        '}';
  }
}
