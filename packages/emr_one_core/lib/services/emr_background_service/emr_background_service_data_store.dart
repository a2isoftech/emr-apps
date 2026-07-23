import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/services/emr_background_service/background_data.dart';
import 'package:emr_one_core/services/emr_background_service/background_upload.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class EmrBackgroundServiceDataStore {
  EmrBackgroundServiceDataStore({required this.onDataChanged});

  final void Function() onDataChanged;

  File? _dataFile;

  BackgroundData _data = BackgroundData([]);

  bool _isInitialised = false;

  Directory _documentsDirectory = Directory('');

  Future<void> initialize() async {
    // Make sure we can only initialise once.
    if (_isInitialised) {
      return;
    }

    _isInitialised = true;

    _documentsDirectory = await getApplicationDocumentsDirectory();

    _dataFile =
        File(path.join(_documentsDirectory.path, '_EmrBackgroundService.json'));

    try {
      await _loadData();
    } on Exception catch (e) {
      event(
        'EmrBackgroundServiceDataStore.initialize',
        message: 'Failed to load data: $e',
        severity: EmrLogLevel.critical,
      );
    }

    await _fixSourcePaths();

    debugPrint('LOADED _EmrBackgroundService.json WITH '
        '${_data.uploads.length} UPLOAD(S)\n'
        '- ${pendingUploads.length} PENDING\n'
        '- ${completedUploads.length} COMPLETE\n'
        '- ${failedUploads.length} FAILED\n'
        '- ${abandonedUploads.length} ABANDONED');

    onDataChanged();
  }

  List<BackgroundUpload> get uploads => _data.uploads.toList();

  List<BackgroundUpload> get pendingUploads => _data.uploads
      .where((element) => element.status == BackgroundTransferStatus.pending)
      .toList();

  List<BackgroundUpload> get completedUploads => _data.uploads
      .where((element) => element.status == BackgroundTransferStatus.completed)
      .toList();

  List<BackgroundUpload> get failedUploads => _data.uploads
      .where((element) => element.status == BackgroundTransferStatus.failed)
      .toList();

  List<BackgroundUpload> get abandonedUploads => _data.uploads
      .where((element) => element.status == BackgroundTransferStatus.abandoned)
      .toList();

  BackgroundUpload? getUploadById(String id) =>
      _data.uploads.singleWhereOrNull((element) => element.id == id);

  Future<void> addUpload(BackgroundUpload value) async {
    _data.uploads.add(value);

    await _writeData();

    onDataChanged();
  }

  Future<void> updateUpload(
    BackgroundUpload value, {
    String? id,
    String? source,
    BackgroundTransferStatus? status,
    String? message,
    int? attempts,
    BackgroundUploadConnectionType? connectionType,
    int? progress,
  }) async {
    final item = getUploadById(value.id);

    if (item == null) {
      return;
    }

    if (id != null) {
      item.id = id;
    }

    if (source != null) {
      item.source = source;
    }

    if (status != null) {
      item.status = status;
    }

    if (message != null) {
      item.message = message;
    }

    if (attempts != null) {
      item.attempts = attempts;
    }

    if (connectionType != null) {
      item.connectionType = connectionType;
    }

    if (progress != null) {
      item.progress = progress;
    }

    item.timestamp = DateTime.now().toUtc();

    await _writeData();

    onDataChanged();
  }

  Future<void> _loadData() async {
    if (_dataFile == null || !_dataFile!.existsSync()) {
      return;
    }

    final text = await _dataFile!.readAsString();
    final json = jsonDecode(text) as Map<String, dynamic>;
    final data = BackgroundData.fromJson(json);

    // Remove any completed uploads older than 30 days.
    final cutoff = DateTime.now().subtract(const Duration(days: 30));
    data.uploads = data.uploads.where(
      (element) {
        if (element.status != BackgroundTransferStatus.completed) {
          return true;
        }

        return element.timestamp.isAfter(cutoff);
      },
    ).toList();

    for (final upload in data.uploads) {
      if (upload.status == BackgroundTransferStatus.completed) {
        upload.progress = 100;
      }
    }

    _data = data;
  }

  Future<void> _writeData() async {
    if (_dataFile == null) {
      return;
    }

    final json = _data.toJson();
    final text = const JsonEncoder.withIndent('  ').convert(json);
    final sink = _dataFile!.openWrite();

    try {
      sink.write(text);
    } finally {
      await sink.close();
    }
  }

  // When an iOS app is installed, the application gets a different Id,
  // therefore the Documents path changes. We need to update any existing
  // paths.
  Future<void> _fixSourcePaths() async {
    if (!Platform.isIOS) {
      return;
    }

    final documentsDirectoryPathSegments = _documentsDirectory.uri.pathSegments;

    for (final upload in _data.uploads) {
      final source = File(upload.source);

      // Only update paths in the Documents folder.
      final documentsIndex = source.uri.pathSegments.indexOf('Documents');

      if (documentsIndex == -1) {
        continue;
      }

      final newSource = path.joinAll([
        '/', // Force the path to be absolute.
        ...documentsDirectoryPathSegments,
        ...source.uri.pathSegments.sublist(documentsIndex + 1),
      ]);

      upload.source = newSource;
    }

    await _writeData();
  }

  void event(
    String name, {
    BackgroundUpload? backgroundUpload,
    String? message,
    EmrLogLevel severity = EmrLogLevel.information,
  }) {
    if (backgroundUpload != null) {
      EmrLogger.event(
        name,
        type: 'coreBackgroundService',
        params: {
          'id': backgroundUpload.id,
          'source': backgroundUpload.source,
          'destinationUrl': backgroundUpload.destinationUrl,
          'status': backgroundUpload.status.toString(),
          'attempts': backgroundUpload.attempts.toString(),
          'connectionType': backgroundUpload.connectionType.toString(),
          'message': backgroundUpload.message,
          'pending': pendingUploads.length.toString(),
          'complete': completedUploads.length.toString(),
          'failed': failedUploads.length.toString(),
          'abandoned': abandonedUploads.length.toString(),
          'timestamp': backgroundUpload.timestamp.toIso8601String(),
        },
      );
    }

    if (message != null) {
      EmrLogger.event(
          name,
          type: 'coreBackgroundService',
          severity: severity,
          params: {
            'message': message,
            'pending': pendingUploads.length.toString(),
            'complete': completedUploads.length.toString(),
            'failed': failedUploads.length.toString(),
            'abandoned': abandonedUploads.length.toString(),
            'timestamp': DateTime.now().toUtc().toIso8601String(),
          },
      );
    }
  }

  Future<void> deleteUpload(BackgroundUpload value) async {
    _data.uploads.remove(value);

    await _writeData();

    onDataChanged();
  }
}
