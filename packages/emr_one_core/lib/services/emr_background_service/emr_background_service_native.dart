import 'dart:async';
import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/services/emr_background_service/android_background_service.dart';
import 'package:emr_one_core/services/emr_background_service/background_upload.dart';
import 'package:emr_one_core/services/emr_background_service/cupertino_background_service.dart';
import 'package:emr_one_core/services/emr_background_service/emr_background_service_data_store.dart';
import 'package:emr_one_core/services/emr_background_service/platform_background_service.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

abstract class EmrBackgroundServiceBase {
  late final dataStore =
      EmrBackgroundServiceDataStore(onDataChanged: onDataChanged);

  final ValueNotifier<List<BackgroundUpload>> uploads =
      ValueNotifier<List<BackgroundUpload>>([]);

  Future<Map<String, String>> getDefaultHeaders() => Future.value({});

  void onDataChanged() {
    uploads.value = [...dataStore.uploads];
  }
}

class EmrBackgroundService extends EmrBackgroundServiceBase {
  EmrBackgroundService._privateConstructor();

  static final EmrBackgroundService _instance =
      EmrBackgroundService._privateConstructor();

  static EmrBackgroundService get instance => _instance;

  late final PlatformBackgroundService _platformBackgroundService;

  late final AppLifecycleListener _appLifecycleListener;

  bool _isInitialised = false;

  // A Timer which is used to retry failed uploads.
  Timer? _timer;

  Future<Map<String, String>> Function() _getDefaultHeaders =
      () => Future.value({});

  @override
  Future<Map<String, String>> getDefaultHeaders() => _getDefaultHeaders();

  Future<void> initialize({
    Future<Map<String, String>> Function()? getDefaultHeaders,
  }) async {
    if (_isInitialised) {
      return;
    }

    _isInitialised = true;

    if (getDefaultHeaders != null) {
      _getDefaultHeaders = getDefaultHeaders;
    }

    await dataStore.initialize();

    // Wire up the app lifecycle listener.
    _appLifecycleListener = AppLifecycleListener(
      onStateChange: _onStateChanged,
    );

    if (Platform.isIOS) {
      _platformBackgroundService = CupertinoBackgroundService(this);
    } else if (Platform.isAndroid) {
      _platformBackgroundService = AndroidBackgroundService(this);
    } else {
      throw UnsupportedError('Unsupported platform');
    }

    _platformBackgroundService.initialize();

    // Resume uploads as appropriate for the platform.
    // For iOS we resume pending uploads as well as failed ones. This is because
    // if the app is force quit by the user, the background upload task(s) are
    // also cancelled by the OS. Android behaves differently and allows work to
    // continue, which means we will still receive callbacks for them.
    if (Platform.isIOS) {
      await _uploads(dataStore.pendingUploads + dataStore.failedUploads);
    } else if (Platform.isAndroid) {
      await _uploads(dataStore.failedUploads);
    }
  }

  void dispose() {
    _stopTimer();
    _appLifecycleListener.dispose();
  }

  Future<void> _onStateChanged(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      // Resume any failed uploads.
      await _uploads(dataStore.failedUploads);
    }
  }

  Future<EmrBackgroundServiceResponse> upload(
    dynamic source,
    String destinationUrl,
  ) async {
    final sourcePath = await switch (source) {
      final String s => Future.value(s),
      final XFile xFile => () async {
          // Write XFile bytes to the documents folder.
          final copiedPath = path.join(
            (await getApplicationDocumentsDirectory()).path,
            xFile.name,
          );

          File(copiedPath).writeAsBytesSync(await xFile.readAsBytes());

          return copiedPath;
        }(),
      _ => throw ArgumentError('source must be a String or an XFile'),
    };

    final backgroundUpload = BackgroundUpload(
      // On Android, WorkManager will return an Id for the upload which
      // we'll store later.
      id: Platform.isAndroid ? '' : const Uuid().v4(),
      sourcePath,
      destinationUrl,
    );

    await dataStore.addUpload(backgroundUpload);

    return _upload(backgroundUpload);
  }

  Future<void> _uploads(List<BackgroundUpload> backgroundUploads) async {
    for (final backgroundUpload in backgroundUploads) {
      await _upload(backgroundUpload);
    }
  }

  Future<EmrBackgroundServiceResponse> _upload(
    BackgroundUpload backgroundUpload,
  ) async {
    await dataStore.updateUpload(
      backgroundUpload,
      attempts: backgroundUpload.attempts + 1,
      progress: 0,
      status: BackgroundTransferStatus.pending,
      message: '',
    );

    // Verify the file still exists.
    final sourceFile = File(backgroundUpload.source);

    if (!sourceFile.existsSync()) {
      await dataStore.updateUpload(
        backgroundUpload,
        status: BackgroundTransferStatus.abandoned,
        message: 'Source file does not exist.',
      );

      dataStore.event(
        'EmrBackgroundService._upload',
        backgroundUpload: backgroundUpload,
        severity: EmrLogLevel.critical,
      );

      return EmrBackgroundServiceResponse(
        status: backgroundUpload.status,
        message: backgroundUpload.message,
      );
    }

    // Verify the destination URL is valid.
    if (Uri.tryParse(backgroundUpload.destinationUrl) == null) {
      await dataStore.updateUpload(
        backgroundUpload,
        status: BackgroundTransferStatus.abandoned,
        message: 'Invalid destination URL.',
      );

      dataStore.event(
        'EmrBackgroundService._upload',
        backgroundUpload: backgroundUpload,
        severity: EmrLogLevel.critical,
      );

      return EmrBackgroundServiceResponse(
        status: backgroundUpload.status,
        message: backgroundUpload.message,
      );
    }

    try {
      final id = await _platformBackgroundService.startUpload(backgroundUpload);

      // Update the Id if the platform gives us one.
      if (id != null) {
        await dataStore.updateUpload(
          backgroundUpload,
          id: id,
        );
      }

      dataStore.event(
        'EmrBackgroundService._upload',
        backgroundUpload: backgroundUpload,
      );

      // Start the timer to check for failed uploads.
      _startTimer();

      return EmrBackgroundServiceResponse(
        status: BackgroundTransferStatus.pending,
      );
    } catch (e) {
      await dataStore.updateUpload(
        backgroundUpload,
        status: BackgroundTransferStatus.failed,
        message: e.toString(),
      );

      dataStore.event(
        'EmrBackgroundService._upload.catch',
        backgroundUpload: backgroundUpload,
        severity: EmrLogLevel.error,
      );

      return EmrBackgroundServiceResponse(
        status: backgroundUpload.status,
        message: backgroundUpload.message,
      );
    }
  }

  void _startTimer() {
    if (_timer != null) {
      return;
    }

    _timer = Timer.periodic(const Duration(seconds: 60), _timerCallback);
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void _timerCallback(Timer timer) {
    if (dataStore.pendingUploads.isEmpty && dataStore.failedUploads.isEmpty) {
      _stopTimer();
      return;
    }

    _uploads(dataStore.failedUploads);
  }

  /// Delete an upload.
  Future<void> deleteUpload(BackgroundUpload backgroundUpload) =>
      dataStore.deleteUpload(backgroundUpload);
}
