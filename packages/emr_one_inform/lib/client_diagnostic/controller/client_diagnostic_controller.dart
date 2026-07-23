import 'package:emr_one_forms_engine/core/models/database/hive_form_instance.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/client_diagnostic/models/client_diagnostic_model.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/background_processor.dart';
import 'package:flutter/material.dart';

abstract class IClientDiagnosticController extends BaseController {
  bool get isLoading;
  bool get isBusy;
  bool isLoadingPreview = false;
  String get successMessage;
  String? get territoryCode;

  List<ClientDiagnosticModel>? jobs;

  ValueNotifier<bool> isSearchWidgetVisible = ValueNotifier(true);
  void searchStateChanged(Map<String, dynamic> searchState);
  Map<String, dynamic> get searchState;
  Future<List<String>> getWorkOrderIds(String searchText);
  void toggleSearchWindow();

  Future<void> loadJobs();
  Future<void> searchSelectedJobs();
  Future<void> push(ClientDiagnosticModel? instance);
  Future<void> uploadOnlyMediaToServer(String instanceId);
  Future<void> delete(ClientDiagnosticModel? instance);
  Future<void> resetStatus(ClientDiagnosticModel? instance);
  Future<void> setTerritoryCode(String code);
  Future<void> autoFix();
  Future<List<String>> autoDeleteCompleted();
}

class ClientDiagnosticController extends IClientDiagnosticController {
  ClientDiagnosticController({
    required this.backgroundCleanUpProcessor,
  });

  final IBackgroundProcessor backgroundCleanUpProcessor;

  bool _isLoading = true;
  bool _isBusy = false;
  String? _territoryCode;
  final String _successMessage =
      'Your request has been queued. Refresh the screen after sometime';
  List<ClientDiagnosticModel>? _jobs;

  Map<String, dynamic> _searchState = {
    'jobType': 'NotUploaded',
  };

  @override
  void searchStateChanged(Map<String, dynamic> searchState) {
    _searchState = searchState;
  }

  @override
  Map<String, dynamic> get searchState => _searchState;

  @override
  List<ClientDiagnosticModel>? get jobs => _jobs;

  @override
  String get successMessage => _successMessage;

  @override
  bool get isBusy => _isBusy;

  @override
  bool get isLoading => _isLoading;
  @override
  void toggleSearchWindow() {
    isSearchWidgetVisible.value = !isSearchWidgetVisible.value;
    reload();
  }

  @override
  Future<void> searchSelectedJobs() async {
    await loadJobs();
    reload();
  }

  @override
  Future<void> loadJobs() async {
    _isBusy = true;
    _isLoading = true;
    reload();

    var result = List<ClientDiagnosticModel>.empty();
    List<HiveFormInstance>? localData = List.empty();
    String? workOrderId = '';
    String? jobType = '';

    if (searchState.keys.contains('workOrderId') &&
        searchState['workOrderId'] != null) {
      workOrderId = searchState['workOrderId'] as String;
    }

    if (searchState.keys.contains('jobType') &&
        searchState['jobType'] != null) {
      jobType = searchState['jobType'] as String;
    }
    try {
      if (workOrderId.isNotEmpty) {
        localData = await FormsEngine.services
            .get<IDatabaseManager>()
            .findInstancesByWorkOrderId(workOrderId);
      } else if (jobType == 'All') {
        localData = await FormsEngine.services
            .get<IDatabaseManager>()
            .getAllInstances();
      } else {
        localData = await FormsEngine.services
            .get<IDatabaseManager>()
            .findLocalInstancesNotOnServer();
      }
    } catch (e) {
      localData = List.empty();
    }

    if (localData != null) {
      result = localData
          .map(
            (e) => ClientDiagnosticModel(
              isOnServer: e.isOnServer,
              isSubmitted: e.isSubmitted,
              isUploading: e.isUploading,
              isUploaded: e.isUploaded,
              scheduledItemId: e.scheduledItemId,
              workOrderId: e.workOrderId,
              instanceId: e.uuid,
              json: e.json,
              assetCode: e.assetCode,
              depotNo: e.depotNo,
              jobType: e.jobType,
              error: e.error,
              capturedMedia: e.capturedMedia.toList(),
            ),
          )
          .toList();
    }
    _jobs = result;

    _isBusy = false;
    _isLoading = false;
    reload();
  }

  @override
  Future<void> push(ClientDiagnosticModel? instance) async {
    _isBusy = true;
    _isLoading = true;
    reload();

    if (instance != null && instance.instanceId.isNotEmpty) {
      await FormsEngine.services
          .get<ISaveFormInstanceService>()
          .upload(instanceId: instance.instanceId);
    }
    _isBusy = false;
    _isLoading = false;
    await loadJobs();
  }

  @override
  Future<void> delete(ClientDiagnosticModel? instance) async {
    _isBusy = true;
    _isLoading = true;
    reload();
    if (instance != null && instance.instanceId.isNotEmpty) {
      await FormsEngine.services
          .get<IDatabaseManager>()
          .removeInstance(instance.instanceId);
    }
    _isBusy = false;
    _isLoading = false;
    await loadJobs();
  }

  @override
  Future<void> resetStatus(ClientDiagnosticModel? instance) async {
    _isBusy = true;
    _isLoading = true;
    reload();
    if (instance != null && instance.instanceId.isNotEmpty) {
      final currentJob = await FormsEngine.services
          .get<IDatabaseManager>()
          .findInstance(instance.instanceId);

      if (currentJob != null &&
          currentJob.isSubmitted &&
          !currentJob.isUploaded &&
          currentJob.isUploading) {
        await FormsEngine.services
            .get<IDatabaseManager>()
            .setInstanceUploadFailed(
              instance.instanceId,
              'Instance is stuck in uploading status.',
            );
      }
    }
    _isBusy = false;
    _isLoading = false;
    await loadJobs();
  }

  @override
  Future<List<String>> getWorkOrderIds(String searchText) async {
    var workOrderIds = <String>[];
    final localData = await FormsEngine.services
        .get<IDatabaseManager>()
        .findInstancesByWorkOrderId(searchText);

    if (localData != null || localData!.isNotEmpty) {
      workOrderIds = localData.map((e) => e.workOrderId!).toList();
    }
    return workOrderIds;
  }

  @override
  String? get territoryCode => _territoryCode;

  @override
  Future<void> setTerritoryCode(String code) async {
    _territoryCode = code;
  }

  @override
  Future<List<String>> autoDeleteCompleted() async {
    final removedIds = await backgroundCleanUpProcessor.removeCompletedJobs();
    await loadJobs();
    return removedIds;
  }

  @override
  Future<void> autoFix() async {
    await backgroundCleanUpProcessor.uploadSubmittedJobs();
    await loadJobs();
  }

  @override
  Future<void> uploadOnlyMediaToServer(String instanceId) async {
    _isBusy = true;
    _isLoading = true;
    reload();

    if (instanceId.isNotEmpty) {
      await FormsEngine.services
          .get<ISaveFormInstanceService>()
          .uploadMediaToServer(instanceId);
    }
    _isBusy = false;
    _isLoading = false;
    await loadJobs();
  }
}
