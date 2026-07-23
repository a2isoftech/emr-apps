import 'dart:typed_data';

import 'package:emr_one_forms_engine/core/models/database/hive_audit_history.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_captured_media.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_form_instance.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_form_instance_data_set.dart';
import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/models/service/retry_media.dart';
import 'package:emr_one_forms_engine/core/models/service/service_models.dart';

import 'idisposable.dart';
import 'iinitializable.dart';

abstract class IDatabaseManager implements IAsyncDisposable, IInitializable {
  /// INSERT methods
  Future<HiveFormInstance> insertFormInstance(
      {required String uuid,
      required String json,
      required bool isSubmitted,
      required String scheduledItemId,
      InstanceJobData? jobInfo,
      bool isNewInstance = true,
      List<InstanceAuditHistory>? history});

  Future<List<HiveCapturedMedia>> deleteCapturedMedia(
      {required String? uniqueInstanceId,
      required String componentId,
      required List<CapturedMedia> media});

  Future<List<HiveCapturedMedia>> insertCapturedMedia(
      {required String uniqueInstanceId,
      required String componentId,
      required List<CapturedMedia> media});

  Future<List<HiveCapturedMedia>> insertDownloadMedia(
      {required String uniqueInstanceId,
      required List<CapturedMediaDTO> media});

  Future<HiveAuditHistory> insertAuditHistory(
      {required String uniqueInstanceId,
      required InstanceAuditHistory historyItem});

  /// UPDATE methods
  Future<void> setCapturedMediaPath(String mediaItemUuid,
      {String? localPath, String? url, bool? isDownloaded});

  Future<void> setInstanceUploadSuccess(String instanceId);

  Future<void> setInstanceUploadFailed(String instanceId, String message);

  Future<void> removeUploadedHistoryItems(List<String>? historyIds);

  Future<void> setAuditHistoryUploadFailed(List<String>? historyIds);

  Future<void> clearUploadingFlags();

  Future<List<HiveFormInstanceDataSet>> instanceDataForUploading();

  Future<List<HiveCapturedMedia>> mediaForUploading();

  Future<void> setMediaUploadSuccess(String instanceId);

  Future<void> setMediaUploadFailed(String instanceId, String message);

  /// QUERY methods
  Future<HiveFormInstance?> findInstance(String uniqueId);

  Future<List<HiveCapturedMedia>> findCapturedMediaForInstance(String uniqueId);

  Future<List<HiveAuditHistory>> findHistory(String uniqueInstanceId);

  Future<List<HiveFormInstance>?> findLocalInstances();
  Future<List<HiveFormInstance>?> findUploadedInstances();

  Future<List<HiveFormInstance>?> findLocalInstancesForTemplates();

  Future<List<HiveFormInstance>?> findLocalInstancesNotOnServer();
  Future<List<HiveFormInstance>?> findInstancesByWorkOrderId(
      String workOrderId);

  Future<void> removeInstance(String uniqueId);

  Future<void> saveImageData(String uuid, Uint8List imageData);
  Uint8List? getImageData(String uuid);

  Future<List<HiveFormInstanceDataSet>> getInstanceDataForUploading(
      String instanceId);
  Future<List<HiveCapturedMedia>> getMediaForUploading(String instanceId);
  Future<List<HiveFormInstance>?> getAllInstances();
  void removeSubmittedInstances();
  void removeNonSubmittedInstances();
  Future<void> clearImagesOlderThanDays();
  void clearOldHistory();
  Future<void> incrementRetryCountForFailedUploadMedia(
      String mediaId, String instanceId);
  Future<RetryMedia?> getRetryMediaFromPreference(
      String mediaId, String instanceId);
  Future<void> setRetryMediaInPreference(
      String mediaId, String instanceId, int? retryCount);
}
