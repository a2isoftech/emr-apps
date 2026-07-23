// ignore_for_file: experimental_member_use

import 'dart:convert';
import 'dart:io';

import 'package:emr_one_forms_engine/core/models/database/hive_audit_history.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_captured_media.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_form_instance.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_form_instance_data_set.dart';
import 'package:emr_one_forms_engine/core/models/service/retry_media.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HiveDatabaseManager implements IDatabaseManager {
  late final Box<HiveFormInstance> formInstanceBox;
  late final Box<HiveCapturedMedia> capturedMediaBox;
  late final Box<HiveAuditHistory> auditHistoryBox;

  @override
  Future<void> initialize() async {
    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(6)) {
      Hive.registerAdapter<HiveFormInstance>(HiveFormInstanceAdapter());
    }
    if (!Hive.isAdapterRegistered(7)) {
      Hive.registerAdapter<HiveCapturedMedia>(HiveCapturedMediaAdapter());
    }
    if (!Hive.isAdapterRegistered(8)) {
      Hive.registerAdapter<HiveAuditHistory>(HiveAuditHistoryAdapter());
    }

    formInstanceBox = await Hive.openBox<HiveFormInstance>('hiveFormInstance');
    capturedMediaBox = await Hive.openBox<HiveCapturedMedia>(
      'hiveCapturedMedia',
    );
    auditHistoryBox = await Hive.openBox<HiveAuditHistory>('hiveAuditHistory');

    await clearUploadingFlags();
  }

  @override
  Future<void> clearUploadingFlags() async {
    final uploadingFormInstance = formInstanceBox.values.where(
      (e) => e.isUploading,
    );
    for (final formInstance in uploadingFormInstance) {
      formInstance.isUploading = false;
      formInstance.save();
    }

    final uploadingCapturedMedia = capturedMediaBox.values.where(
      (e) => e.isUploading,
    );
    for (final capturedMedia in uploadingCapturedMedia) {
      capturedMedia.isUploading = false;
      capturedMedia.save();
    }

    final uploadingAuditHistory = auditHistoryBox.values.where(
      (e) => e.isUploading,
    );
    for (final auditHistory in uploadingAuditHistory) {
      auditHistory.isUploading = false;
      auditHistory.save();
    }
  }

  @override
  Future<void> dispose() async {
    formInstanceBox.close();
    capturedMediaBox.close();
    auditHistoryBox.close();
    Hive.close();
  }

  @override
  Future<List<HiveCapturedMedia>> findCapturedMediaForInstance(
    String uniqueId,
  ) async {
    final instance = formInstanceBox.values
        .where((e) => e.uuid == uniqueId)
        .firstOrNull;

    if (instance == null) {
      throw Exception('Instance id $uniqueId does not exist');
    }

    return instance.capturedMedia.toList();
  }

  @override
  Future<List<HiveAuditHistory>> findHistory(String uniqueInstanceId) async {
    final instance = formInstanceBox.values
        .where((e) => e.uuid == uniqueInstanceId)
        .firstOrNull;

    if (instance == null) {
      throw Exception('Instance id $uniqueInstanceId does not exist');
    }

    return instance.auditHistory.toList();
  }

  @override
  Future<HiveFormInstance?> findInstance(String uniqueId) async {
    final instance = formInstanceBox.values
        .where((e) => e.uuid == uniqueId)
        .firstOrNull;
    return instance;
  }

  @override
  Future<List<HiveFormInstance>?> findLocalInstances() async {
    final instances = formInstanceBox.values
        .where((e) => e.isUploaded == false && e.isSubmitted == false)
        .toList();
    return instances;
  }

  @override
  Future<List<HiveFormInstance>?> findUploadedInstances() async {
    final instances = formInstanceBox.values
        .where((e) => e.isUploaded == true || e.isSubmitted == true)
        .toList();
    return instances;
  }

  @override
  Future<List<HiveFormInstance>?> findLocalInstancesForTemplates() async {
    var instances = formInstanceBox.values
        .where((e) => e.isSubmitted == false)
        .toList();
    return instances;
  }

  @override
  Future<List<HiveFormInstance>?> findLocalInstancesNotOnServer() async {
    final instances = formInstanceBox.values
        .where((e) => e.isSubmitted == true && e.isOnServer == false)
        .toList();
    return instances;
  }

  @override
  Future<HiveAuditHistory> insertAuditHistory({
    required String uniqueInstanceId,
    required InstanceAuditHistory historyItem,
  }) async {
    final instance = formInstanceBox.values
        .where((e) => e.uuid == uniqueInstanceId)
        .firstOrNull;

    if (instance == null) {
      throw Exception('Instance id $uniqueInstanceId does not exist');
    }

    final auditHistory = _mapAuditHistoryToHive(uniqueInstanceId, historyItem);
    auditHistoryBox.add(auditHistory);

    instance.auditHistory.add(auditHistory);
    instance.save();

    return auditHistory;
  }

  Future<void> _deleteCapturedMedia(List<HiveCapturedMedia> toDelete) async {
    final indices = capturedMediaBox.values.indexed
        .where((e) => toDelete.map((x) => x.uuid).contains(e.$2.uuid))
        .map((e) => e.$1)
        .toList();

    for (var index in indices) {
      capturedMediaBox.deleteAt(index);
    }
  }

  @override
  Future<List<HiveCapturedMedia>> deleteCapturedMedia({
    required String? uniqueInstanceId,
    required String componentId,
    required List<CapturedMedia> media,
  }) async {
    if (media.isEmpty) {
      return [];
    }
    assert(
      uniqueInstanceId != null,
      'Either instanceId or uniqueInstanceId must be set',
    );
    uniqueInstanceId ??= (await findInstance(uniqueInstanceId!))?.uuid;
    var toDelete = media
        .map(
          (e) => HiveCapturedMedia(
            instanceUuid: uniqueInstanceId!,
            componentId: componentId,
            uuid: e.uniqueId,
            mediaType: e.type.toString(),
            localPath: e.file!.path,
            url: '',
            isDownloaded: true,
            isUploaded: false,
            isUploading: false,
          ),
        )
        .toList();
    await _deleteCapturedMedia(toDelete);
    return toDelete;
  }

  @override
  Future<List<HiveCapturedMedia>> insertCapturedMedia({
    required String uniqueInstanceId,
    required String componentId,
    required List<CapturedMedia> media,
  }) async {
    if (media.isEmpty) {
      return [];
    }

    var toInsert = media
        .map(
          (e) => HiveCapturedMedia(
            instanceUuid: uniqueInstanceId,
            componentId: componentId,
            uuid: e.uniqueId,
            mediaType: e.type.name,
            localPath: e.file?.path ?? e.uniqueId,
            url: '',
            isDownloaded: true,
            isUploaded: false,
            isUploading: false,
          ),
        )
        .toList();

    await _insertCapturedMedia(uniqueInstanceId, toInsert);

    return toInsert;
  }

  @override
  Future<List<HiveCapturedMedia>> insertDownloadMedia({
    required String uniqueInstanceId,
    required List<CapturedMediaDTO> media,
  }) async {
    if (media.isEmpty) {
      return [];
    }

    var toInsert = media
        .map(
          (e) => HiveCapturedMedia(
            instanceUuid: uniqueInstanceId,
            componentId: e.componentId,
            uuid: e.uuid,
            mediaType: e.type,
            localPath: '',
            url: e.path,
            isDownloaded: false,
            isUploaded: true,
            isUploading: false,
          ),
        )
        .toList();

    await _insertCapturedMedia(uniqueInstanceId, toInsert);

    return toInsert;
  }

  @override
  Future<HiveFormInstance> insertFormInstance({
    required String uuid,
    required String json,
    required bool isSubmitted,
    required String scheduledItemId,
    InstanceJobData? jobInfo,
    bool isNewInstance = true,
    List<InstanceAuditHistory>? history,
  }) async {
    final record = HiveFormInstance(
      uuid: uuid,
      scheduledItemId: scheduledItemId,
      json: json,
      isUploading: false,
      isUploaded: false,
      isSubmitted: isSubmitted,
      isOnServer: !isNewInstance,
      jobType: jobInfo?.jobType,
      assetCode: jobInfo?.assetCode,
      workOrderId: jobInfo?.workOrderId,
      depotNo: jobInfo?.depotNo,
      capturedMedia: HiveList<HiveCapturedMedia>(capturedMediaBox),
      auditHistory: HiveList<HiveAuditHistory>(auditHistoryBox),
    );

    var instance = await findInstance(uuid);
    if (instance == null) {
      instance = record;
      formInstanceBox.add(instance);
    } else {
      _copyTo(record, instance);
      instance.save();
    }

    if (history?.isNotEmpty == true) {
      final toInsert = history!
          .map((e) => _mapAuditHistoryToHive(uuid, e))
          .toList();
      auditHistoryBox.addAll(toInsert);
      instance.auditHistory.addAll(toInsert);
      instance.save();
    }

    return instance;
  }

  @override
  Future<List<HiveFormInstanceDataSet>> instanceDataForUploading() async {
    final instances = formInstanceBox.values
        .where((e) => e.isUploaded == false && e.isUploading == false)
        .toList();

    final instanceIdList = instances.map((e) => e.uuid).toList();

    var config = ServiceContainer().get<IFormConfiguration>();
    final List<HiveFormInstance> anotherUserInstances = [];

    for (var instance in instances) {
      var instanceJson = FormInstanceDTO.fromJson(jsonDecode(instance.json));

      if (instanceJson.submittedByUuid != null) {
        if (instanceJson.submittedByUuid != config.userUuid) {
          anotherUserInstances.add(instance);
          continue;
        }
      }

      instance.isUploading = true;
      instance.save();
    }

    //removing the another user instances saved in device
    instances.removeWhere((x) => anotherUserInstances.contains(x));
    instanceIdList.removeWhere(
      (x) => anotherUserInstances.map((e) => e.uuid).contains(x),
    );

    final dataSet = formInstanceBox.values
        .where((e) => instanceIdList.contains(e.uuid) || e.isOnServer == true)
        .map(
          (e) => HiveFormInstanceDataSet(
            e,
            e.auditHistory.where((x) => x.isUploading == false).toList(),
          ),
        )
        .toList();

    for (var data in dataSet) {
      for (var history in data.history) {
        history.isUploading = true;
        history.save();
      }
    }

    return dataSet;
  }

  @override
  void removeSubmittedInstances() {
    final submittedInstances = formInstanceBox.values
        .where((x) => x.isSubmitted)
        .toList();
    for (var instance in submittedInstances) {
      var instanceDto = FormInstanceDTO.fromJson(jsonDecode(instance.json));
      var submittedDate = instanceDto.submitDate;
      if (submittedDate != null) {
        if (submittedDate.isBefore(
          DateTime.now().subtract(const Duration(days: 2)),
        )) {
          formInstanceBox.delete(instance.key);
        }
      } else {
        if (instanceDto.startDate.isBefore(
          DateTime.now().subtract(const Duration(days: 2)),
        )) {
          formInstanceBox.delete(instance.key);
        }
      }
    }
  }

  @override
  void removeNonSubmittedInstances() {
    final submittedInstances = formInstanceBox.values
        .where((x) => !x.isSubmitted)
        .toList();
    for (var instance in submittedInstances) {
      var instanceDto = FormInstanceDTO.fromJson(jsonDecode(instance.json));
      if (instanceDto.startDate.isBefore(
        DateTime.now().subtract(const Duration(days: 7)),
      )) {
        formInstanceBox.delete(instance.key);
      }
    }
  }

  @override
  Future<void> clearImagesOlderThanDays() async {
    final uploadedImages = capturedMediaBox.values.toList();
    for (var image in uploadedImages) {
      final imageDate = await _getFileCreationDate(image.localPath);
      if (imageDate != null) {
        if (imageDate.isBefore(
          DateTime.now().subtract(const Duration(days: 2)),
        )) {
          capturedMediaBox.delete(image.key);
        }
      }
    }
  }

  @override
  void clearOldHistory() {
    final auditHistory = auditHistoryBox.values.where(
      (x) => x.createdDate.isBefore(
        DateTime.now().subtract(const Duration(days: 7)),
      ),
    );
    auditHistoryBox.deleteAll(auditHistory.map((x) => x.key));
  }

  Future<DateTime?> _getFileCreationDate(String filePath) async {
    try {
      // Get the file from the provided path
      final file = File(filePath);

      // Check if the file exists
      if (await file.exists()) {
        // Fetch the file's creation date
        return await file.stat().then((stat) => stat.changed);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<HiveCapturedMedia>> mediaForUploading() async {
    final imageRecords = capturedMediaBox.values
        .where((e) => e.isUploading == false && e.isUploaded == false)
        .toList();
    var alreadyfailed3TimesList = [];
    for (var image in imageRecords) {
      final retryMedia = await getRetryMediaFromPreference(
        image.uuid,
        image.instanceUuid,
      );
      if (retryMedia != null) {
        if (retryMedia.retryCount != null) {
          if (retryMedia.retryCount! >= 3) {
            alreadyfailed3TimesList.add(image);
            continue;
          }
        }
      }
      image.isUploading = true;
      image.save();
    }
    imageRecords.removeWhere((x) => alreadyfailed3TimesList.contains(x));
    return imageRecords;
  }

  @override
  Future<void> removeUploadedHistoryItems(List<String>? historyIds) async {
    if (historyIds?.isNotEmpty != true) {
      return;
    }
    final indices = auditHistoryBox.values.indexed
        .where(
          (e) => historyIds!.contains(e.$2.uuid) && e.$2.isUploading == true,
        )
        .map((e) => e.$1)
        .toList();

    for (var index in indices) {
      auditHistoryBox.deleteAt(index);
    }
  }

  @override
  Future<void> setAuditHistoryUploadFailed(List<String>? historyIds) async {
    if (historyIds?.isNotEmpty != true) {
      return;
    }

    final histories = auditHistoryBox.values.where(
      (e) => historyIds!.contains(e.uuid),
    );
    for (var history in histories) {
      history.isUploading = false;
      history.save();
    }
  }

  @override
  Future<void> setCapturedMediaPath(
    String mediaItemUuid, {
    String? localPath,
    String? url,
    bool? isDownloaded,
  }) async {
    assert(
      localPath != null || url != null,
      'localPath or url must be set to update',
    );

    final capturedMedia = capturedMediaBox.values
        .where((e) => e.uuid == mediaItemUuid)
        .firstOrNull;
    if (capturedMedia == null) {
      throw Exception('Media item uuid $mediaItemUuid does not exist');
    }

    if (localPath != null) {
      capturedMedia.localPath = localPath;
      capturedMedia.isDownloaded = isDownloaded ?? true;
    }
    if (url != null) {
      capturedMedia.url = url;
      capturedMedia.isUploading = false;
      capturedMedia.isUploaded = true;
    }

    capturedMedia.save();
  }

  @override
  Future<void> setInstanceUploadFailed(
    String instanceId,
    String message,
  ) async {
    final instance = formInstanceBox.values
        .where((e) => e.uuid == instanceId && e.isUploading == true)
        .firstOrNull;

    if (instance == null) return;

    instance.isUploading = false;
    instance.error = message;
    instance.isUploaded = false;

    instance.save();
  }

  @override
  Future<void> setInstanceUploadSuccess(String instanceId) async {
    final instance = formInstanceBox.values
        .where((e) => e.uuid == instanceId && e.isUploading == true)
        .firstOrNull;

    if (instance == null) return;

    instance.isUploading = false;
    instance.error = null;
    instance.isUploaded = true;
    instance.isOnServer = true;

    instance.save();
  }

  @override
  Future<void> setMediaUploadFailed(String instanceId, String message) async {
    final capturedMedia = capturedMediaBox.values
        .where((e) => e.uuid == instanceId && e.isUploading == true)
        .firstOrNull;

    if (capturedMedia == null) return;

    capturedMedia.isUploading = false;
    capturedMedia.isUploaded = false;

    capturedMedia.save();
  }

  @override
  Future<void> setMediaUploadSuccess(String instanceId) async {
    final capturedMedia = capturedMediaBox.values
        .where((e) => e.uuid == instanceId && e.isUploading == true)
        .firstOrNull;

    if (capturedMedia == null) return;

    capturedMedia.isUploading = false;
    capturedMedia.isUploaded = true;

    capturedMedia.save();
  }

  @override
  Future<void> saveImageData(String uuid, Uint8List imageData) async {
    final capturedImage = capturedMediaBox.values
        .where((e) => e.uuid == uuid)
        .firstOrNull;
    if (capturedImage == null) return;

    capturedImage.imageData = imageData;
    capturedImage.save();
  }

  @override
  Uint8List? getImageData(String uuid) {
    final capturedImage = capturedMediaBox.values
        .where((e) => e.uuid == uuid)
        .firstOrNull;
    if (capturedImage == null) return null;

    return capturedImage.imageData;
  }

  HiveAuditHistory _mapAuditHistoryToHive(
    String instanceUuid,
    InstanceAuditHistory historyItem,
  ) {
    return HiveAuditHistory(
      uuid: historyItem.actionId,
      action: historyItem.action,
      componentId: historyItem.componentId,
      createdDate: historyItem.date,
      details: historyItem.value ?? '',
      instanceUuid: instanceUuid,
      isUploading: false,
      username: historyItem.userName,
      userUuid: historyItem.userUuid,
    );
  }

  Future<void> _insertCapturedMedia(
    String instanceUuid,
    List<HiveCapturedMedia> toInsert,
  ) async {
    final instance = formInstanceBox.values
        .where((e) => e.uuid == instanceUuid)
        .firstOrNull;

    if (instance == null) {
      throw Exception('Instance id $instanceUuid does not exist');
    }
    capturedMediaBox.addAll(toInsert);

    instance.capturedMedia.addAll(toInsert);
    instance.save();
  }

  void _copyTo(HiveFormInstance source, HiveFormInstance destination) {
    destination.json = source.json;
    destination.isUploading = source.isUploading;
    destination.isUploaded = source.isUploaded;
    destination.isSubmitted = source.isSubmitted;
    destination.isOnServer = source.isOnServer;
    destination.error = source.error;
  }

  @override
  Future<List<HiveFormInstance>?> findInstancesByWorkOrderId(
    String workOrderId,
  ) async {
    final instance = formInstanceBox.values
        .where(
          (e) => e.workOrderId != null && e.workOrderId!.contains(workOrderId),
        )
        .toList();
    return instance;
  }

  @override
  Future<void> removeInstance(String uniqueId) async {
    final indices = formInstanceBox.values.indexed
        .where((e) => uniqueId == e.$2.uuid)
        .map((e) => e.$1)
        .toList();

    for (var index in indices) {
      formInstanceBox.deleteAt(index);
    }
  }

  @override
  Future<List<HiveFormInstanceDataSet>> getInstanceDataForUploading(
    String instanceId,
  ) async {
    final instances = formInstanceBox.values
        .where((e) => e.uuid == instanceId)
        .toList();

    final instanceIdList = instances.map((e) => e.uuid).toList();

    var config = ServiceContainer().get<IFormConfiguration>();
    final List<HiveFormInstance> anotherUserInstances = [];

    for (var instance in instances) {
      var instanceJson = FormInstanceDTO.fromJson(jsonDecode(instance.json));

      if (instanceJson.submittedByUuid != null) {
        if (instanceJson.submittedByUuid != config.userUuid) {
          anotherUserInstances.add(instance);
          continue;
        }
      }
      instance.isUploading = true;
      instance.save();
    }

    //removing the another user instances saved in device
    instances.removeWhere((x) => anotherUserInstances.contains(x));
    instanceIdList.removeWhere(
      (x) => anotherUserInstances.map((e) => e.uuid).contains(x),
    );

    final dataSet = formInstanceBox.values
        .where((e) => instanceIdList.contains(e.uuid))
        .map(
          (e) => HiveFormInstanceDataSet(
            e,
            e.auditHistory.where((x) => x.isUploading == false).toList(),
          ),
        )
        .toList();

    for (var data in dataSet) {
      for (var history in data.history) {
        history.isUploading = true;
        history.save();
      }
    }

    return dataSet;
  }

  @override
  Future<List<HiveCapturedMedia>> getMediaForUploading(
    String instanceId,
  ) async {
    final imageRecords = capturedMediaBox.values
        .where((e) => e.instanceUuid == instanceId && e.isUploaded == false)
        .toList();

    for (var image in imageRecords) {
      image.isUploading = true;
      image.save();
    }

    return imageRecords;
  }

  @override
  Future<List<HiveFormInstance>?> getAllInstances() async {
    return formInstanceBox.values.toList();
  }

  @override
  Future<void> incrementRetryCountForFailedUploadMedia(
    String mediaId,
    String instanceId,
  ) async {
    final mediaPref = await getRetryMediaFromPreference(mediaId, instanceId);
    if (mediaPref == null) {
      await setRetryMediaInPreference(mediaId, instanceId, 1);
      return;
    }
    mediaPref.retryCount = (mediaPref.retryCount ?? 0) + 1;
    await setRetryMediaInPreference(mediaId, instanceId, mediaPref.retryCount);
  }

  @override
  Future<RetryMedia?> getRetryMediaFromPreference(
    String mediaId,
    String instanceId,
  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final mediaPref = preferences.get('$instanceId/$mediaId') as String?;
    if (mediaPref == null) {
      return null;
    }
    final medModel = RetryMedia.fromJson(jsonDecode(mediaPref));
    return medModel;
  }

  @override
  Future<void> setRetryMediaInPreference(
    String mediaId,
    String instanceId,
    int? retryCount,
  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(
      '$instanceId/$mediaId',
      jsonEncode(
        RetryMedia(
          mediaUuid: mediaId,
          instanceId: instanceId,
          retryCount: retryCount,
        ),
      ),
    );
  }
}
