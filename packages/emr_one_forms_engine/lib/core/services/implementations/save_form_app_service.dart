import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:emr_one_forms_engine/core/models/api/exports.dart';
import 'package:emr_one_forms_engine/core/models/api/media_save_request.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_captured_media.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_form_instance_data_set.dart';
import 'package:emr_one_forms_engine/core/store/store.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveFormInstanceAppService implements ISaveFormInstanceService {
  Timer? _uploadTimer;
  bool _isUploadRunning = false;

  @override
  void dispose() {
    _uploadTimer?.cancel();
    _uploadTimer = null;
  }

  @override
  Future<void> initialize() async {
    _uploadTimer = Timer.periodic(
        Duration(
            seconds: ServiceContainer()
                .get<IFormConfiguration>()
                .uploadAttemptInterval),
        _uploadAttemptTask);
    _clearSubmittedOldData();
  }

  @override
  Future<void> deleteMedia(
      {required IFormComponent component,
      required List<CapturedMedia> media}) async {
    // save images to db and flag as needing upload
    if (media.isEmpty) {
      return;
    }
    final store = ServiceContainer().get<IFormStore>();
    if (!kIsWeb) {
      // delete the file from directory
      for (var f in media) {
        var filePath = f.file!.path;
        var file = File(filePath);
        file.delete();
      }
    }
    // need to save instance first before storing media
    if (store.instanceId == null) {
      await save(
          actions: [InstanceAuditHistory.mediaCaptured(component.id, media)]);
    }
    await ServiceContainer().get<IDatabaseManager>().deleteCapturedMedia(
        uniqueInstanceId: store.instanceId,
        componentId: component.id,
        media: media);
    await component.removeExistingMedia(media);
  }

  @override
  Future<void> storeMedia(
      {required IFormComponent component,
      required List<CapturedMedia> media}) async {
    // save images to db and flag as needing upload
    if (media.isEmpty) {
      return;
    }

    final store = ServiceContainer().get<IFormStore>();

    if (!kIsWeb) {
      // move media to the documents directory
      final documentsDir = await getApplicationDocumentsDirectory();
      final mediaDir = join(documentsDir.path, FormsConstants.mediaDirectoy);

      // move the images to the dir
      for (var f in media) {
        final moveTo = join(mediaDir, basename(f.file!.path));
        await File(moveTo).create(recursive: true);
        await f.file!.saveTo(moveTo);
        f.file = XFile(moveTo);
      }
    }

    // need to save instance first before storing media
    if (store.instanceId == null) {
      await save(
          actions: [InstanceAuditHistory.mediaCaptured(component.id, media)]);
    }

    await ServiceContainer().get<IDatabaseManager>().insertCapturedMedia(
        uniqueInstanceId: store.instanceId!,
        componentId: component.id,
        media: media);

    if (kIsWeb) {
      final databaseManager = ServiceContainer().get<IDatabaseManager>();
      for (var f in media) {
        final imageBytes = await f.file?.readAsBytes() ?? f.bytes!;
        databaseManager.saveImageData(f.uniqueId, imageBytes);
      }
    }

    await component.addExistingMedia(media);
  }

  @override
  Future<void> save(
      {bool submit = false,
      required List<InstanceAuditHistory> actions}) async {
    try {
      // flag data as unsynchronized and kick off background isolate to start uploading
      final store = ServiceContainer().get<IFormStore>();
      final json = jsonEncode(store.getInstanceData());
      final dbManager = ServiceContainer().get<IDatabaseManager>();
      try {
        // instance id is set on load or during call of getInstanceData()
        await dbManager.insertFormInstance(
            uuid: store.instanceId!,
            scheduledItemId: store.scheduledItemId!,
            jobInfo: store.jobInfo,
            json: json,
            isSubmitted: submit,
            history: actions);
      } catch (e) {
        FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
          'message': 'Error',
          'errorMessage': e.toString(),
          'uuid': store.instanceId!,
          'scheduledItemId': store.scheduledItemId!,
          'json': json,
          'isSubmitted': submit.toString()
        });
      }
    } catch (e) {
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService,
          {'message': 'Error', 'errorMessage': e.toString(), 'method': 'Save'});
    }
  }

  Future<void> _uploadAttemptTask(Timer timer) async {
    if (_isUploadRunning) {
      return;
    }

    _isUploadRunning = true;

    try {
      await FormsEngine().initialize;

      final connectivityResult =
          await ServiceContainer().get<IConnectivity>().checkConnectivity();
      if (connectivityResult != ConnectivityResult.none) {
        final dbManager = ServiceContainer().get<IDatabaseManager>();

        final toUpload = await dbManager.instanceDataForUploading();

        List<String> successInstances = [];
        for (var instance in toUpload) {
          var instanceUploaded = await _uploadInstanceRequest(instance);
          if (instanceUploaded) {
            successInstances.add(instance.instance.uuid);
          }
        }

        final imagesToUpload = await dbManager.mediaForUploading();

        List<HiveCapturedMedia> filteredMedias = [];
        for (var image in imagesToUpload) {
          final instance = await dbManager.findInstance(image.instanceUuid);
          if (successInstances.contains(image.instanceUuid) ||
              (instance != null && instance.isUploaded)) {
            filteredMedias.add(
                image); // Uploading only those medias where instances are uploaded successfully
          }
        }
        var uploadMediaTask = _uploadMedia(filteredMedias);

        await uploadMediaTask;
      }
    } finally {
      _isUploadRunning = false;
    }
  }

  Future<bool> _isFirstVisit() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String lastVisitDate = (preferences.get("cleanupDateKey") as String?) ?? '';

    String toDayDate =
        '${DateTime.now().day.toString()}-${DateTime.now().month.toString()}-${DateTime.now().year.toString()}';
    if (toDayDate == lastVisitDate) {
      return false;
    } else {
      preferences.setString("cleanupDateKey", toDayDate);
      return true;
    }
  }

  Future<void> _clearSubmittedOldData() async {
    if (!await _isFirstVisit()) {
      return;
    }

    final dbManager = ServiceContainer().get<IDatabaseManager>();
    Future.delayed(const Duration(seconds: 5), () async {
      await dbManager.clearImagesOlderThanDays();
      dbManager.removeSubmittedInstances();
      dbManager.removeNonSubmittedInstances();
      dbManager.clearOldHistory();
    });
  }

  static Future<void> _uploadMedia(List<HiveCapturedMedia> media) async {
    for (final m in media) {
      await _uploadMediaRequest(m);
    }
  }

  static Future<void> _uploadMediaRequest(HiveCapturedMedia media) async {
    final httpClient = ServiceContainer().get<IHttpService>();
    final config = ServiceContainer().get<IFormConfiguration>();
    final dbManager = ServiceContainer().get<IDatabaseManager>();
    String? errorMessage;

    var request = MediaSaveRequest(
        id: media.uuid,
        filePath: kIsWeb ? media.uuid : media.localPath,
        mediaType: CapturedMediaType.values
            .firstWhere((e) => e.name == media.mediaType));
    dynamic mediaSaveResult;
    try {
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService,
          {'message': 'Posting media to server', 'mediaUUID': request.id});
      mediaSaveResult = await httpClient.postMultipartFormData(
          config.saveMediaUrl,
          request,
          (json) => ApiResponse.fromJson(
              json, (d) => SaveInstanceMediaMessage.fromJson(d)));
    } catch (e) {
      // log error to app insights
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
        'message': 'Error',
        'method': 'Upload media request',
        'errorMessage': e.toString(),
      });
      await dbManager.incrementRetryCountForFailedUploadMedia(
          media.uuid, media.instanceUuid);
    }
    if (mediaSaveResult == null) {
      errorMessage = 'Failed to upload media';
    } else if (!mediaSaveResult.success) {
      errorMessage = mediaSaveResult.errorMessage;
    } else if (mediaSaveResult.response == null ||
        mediaSaveResult.response!.errorLevel == ApiResponseType.error) {
      errorMessage =
          mediaSaveResult.response?.message ?? 'Unknown error occurred';
    }

    if (errorMessage == null) {
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
        'message': 'Media uploaded to server successfully',
        'mediaUUID': request.id
      });
      await dbManager.setMediaUploadSuccess(request.id);
    } else {
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
        'message': 'Media uploading failed',
        'mediaUUID': request.id,
        'errorMessage': errorMessage,
      });
      await dbManager.setMediaUploadFailed(request.id, errorMessage);
      await dbManager.incrementRetryCountForFailedUploadMedia(
          media.uuid, media.instanceUuid);
    }
  }

  static Future<bool> _postInstanceRequest(InstanceSaveRequest request) async {
    final httpClient = ServiceContainer().get<IHttpService>();
    final config = ServiceContainer().get<IFormConfiguration>();
    final dbManager = ServiceContainer().get<IDatabaseManager>();
    String? errorMessage;

    FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
      'message': 'Posting instance data to server',
      'scheduleid': request.scheduledItemId
    });
    dynamic instanceSaveResult;
    try {
      instanceSaveResult = await httpClient.post(
          config.saveInstanceUrl,
          request,
          (json) => ApiResponse.fromJson(
              json, (d) => SaveInstancePayload.fromJson(d)));
    } catch (ex) {
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
        'message': 'Failed to sync instance data to server',
        'scheduleid': request.scheduledItemId,
        'errorMessage': ex.toString()
      });
      errorMessage = 'Failed to sync instance data to server';
    }
    if (instanceSaveResult == null) {
      errorMessage = 'Failed to sync instance data to server';
    } else if (!instanceSaveResult.success) {
      errorMessage = instanceSaveResult.errorMessage;
    } else if (instanceSaveResult.response == null ||
        instanceSaveResult.response!.errorLevel == ApiResponseType.error) {
      errorMessage =
          instanceSaveResult.response?.message ?? 'Unknown error occurred';
    }

    try {
      if (errorMessage == null) {
        FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
          'message': 'Instance data synced to server successfully',
          'scheduleid': request.scheduledItemId
        });
        await dbManager.setInstanceUploadSuccess(request.id);
        await _postHistoryRecords(request.historyRecords);
        return true;
      } else {
        FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
          'message': 'Failed to sync instance data to server',
          'scheduleid': request.scheduledItemId,
          'errorMessage': errorMessage
        });
        await dbManager.setInstanceUploadFailed(request.id, errorMessage);
        return false;
      }
    } catch (e) {
      // log error to app insights
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
        'message': 'Error',
        'errorMessage': e.toString(),
        'method': 'Post instance request'
      });
      return false;
    }
  }

  static Future<void> _postHistoryRecords(
      List<InstanceAuditLogEntry>? request) async {
    if (request?.isNotEmpty != true) {
      return;
    }

    final httpClient = ServiceContainer().get<IHttpService>();
    final config = ServiceContainer().get<IFormConfiguration>();
    final dbManager = ServiceContainer().get<IDatabaseManager>();

    dynamic historySaveResult;
    try {
      // instance saved, send history
      historySaveResult = await httpClient.postList(
          config.saveHistoryUrl,
          request!,
          (json) => ApiResponse.fromJson(
              json, (d) => SaveHistoryPayload.fromJson(d)));
    } catch (e) {
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
        'message': 'Error',
        'errorMessage': e.toString(),
        'method': 'Post history records'
      });
    }

    List<String>? failedIds;
    if (historySaveResult == null) {
      failedIds = request!.map((h) => h.id).toList();
    } else if (historySaveResult.response == null ||
        historySaveResult.response!.errorLevel == ApiResponseType.error) {
      failedIds = historySaveResult.response?.data?.failedEntries
          ?.map((e) => e.item2)
          .toList();

      // if the list of failed ids wasn't set, assume everything failed
      if (failedIds?.isNotEmpty != true) {
        failedIds = request!.map((h) => h.id).toList();
      }

      // log error messaging to app insights
    }

    final successIds = request!
        .map((h) => h.id)
        .where((id) => failedIds == null || !failedIds.any((f) => f == id))
        .toList();

    try {
      await dbManager.setAuditHistoryUploadFailed(failedIds);
      await dbManager.removeUploadedHistoryItems(successIds);
    } catch (e) {
      // log error to app insights
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
        'message': 'Error',
        'errorMessage': e.toString(),
        'method': 'Post history records'
      });
    }
  }

  static Future<bool> _uploadInstanceRequest(
      HiveFormInstanceDataSet instance) async {
    List<InstanceAuditLogEntry>? history;

    if (instance.history.isNotEmpty) {
      history = instance.history
          .map((e) => InstanceAuditLogEntry(
              id: e.uuid,
              instanceId: instance.instance.uuid,
              componentId: e.componentId,
              action: e.action,
              details: e.details,
              userName: e.username,
              userUuid: e.userUuid ?? '00000000-0000-0000-0000-000000000000',
              createdDate: e.createdDate))
          .toList();
    }

    if (instance.instance.isUploading) {
      var config = ServiceContainer().tryGet<IFormConfiguration>();
      return await _postInstanceRequest(InstanceSaveRequest(
          id: instance.instance.uuid,
          document: instance.instance.json,
          scheduledItemId: instance.instance.scheduledItemId,
          historyRecords: history,
          appVersion: config?.informsAppVersion));
    } else if (history != null) {
      FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
        'message': 'Attempting to upload audit history ',
        'InstanceId': history.map((e) => e.instanceId).join(',')
      });
      await _postHistoryRecords(history);
    }
    return false;
  }

  @override
  Future<void> upload({String? instanceId}) async {
    if (instanceId == null || instanceId.isEmpty) {
      return;
    }
    try {
      await FormsEngine().initialize;

      final connectivityResult =
          await ServiceContainer().get<IConnectivity>().checkConnectivity();
      if (connectivityResult != ConnectivityResult.none) {
        final dbManager = ServiceContainer().get<IDatabaseManager>();

        final toUpload =
            await dbManager.getInstanceDataForUploading(instanceId);
        FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
          'message': 'Attempting to upload instance data',
          'itemCount': toUpload.length.toString()
        });
        for (var instance in toUpload) {
          await _uploadInstanceRequest(instance);
        }
        await uploadMediaToServer(instanceId);
      }
    } catch (e) {
      // Empty
    }
  }

  @override
  Future<void> uploadMediaToServer(String instanceId) async {
    final dbManager = ServiceContainer().get<IDatabaseManager>();
    final imagesToUpload = await dbManager.getMediaForUploading(instanceId);
    FormsEngine().log?.call(FormsEngineTelemetry.kSaveFormAppService, {
      'message': 'Attempting to upload media',
      'itemCount': imagesToUpload.length.toString()
    });
    var uploadMediaTask = _uploadMedia(imagesToUpload);
    await uploadMediaTask;
  }
}
