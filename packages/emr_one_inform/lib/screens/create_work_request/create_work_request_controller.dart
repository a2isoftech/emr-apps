import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/asset_query_filter.dart';
import 'package:emr_one_inform/models/depot.dart';
import 'package:emr_one_inform/models/depot_query_filter.dart';
import 'package:emr_one_inform/models/new_work_request_media.dart';
import 'package:emr_one_inform/models/work_request_add_request.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/create_work_request_service.dart';
import 'package:emr_one_inform/widgets/forms_app_media_capture.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class CreateWorkRequestController extends BaseController {
  CreateWorkRequestController({
    required this.createWorkRequestService,
  });

  final CreateWorkRequestService createWorkRequestService;

  bool isBusy = false;
  List<Depot> depots = List.empty(growable: true);
  List<Asset> assets = List.empty(growable: true);
  List<Depot> depotsWorkRequestOptions = List.empty(growable: true);
  List<String>? requestTypes = List.empty(growable: true);
  List<String>? faultSymptoms = List.empty(growable: true);

  int selectedServiceLevel = 4; // set to medium
  String selectedDepot = '';
  String selectedAsset = '';
  String description = '';
  String selectedFaultSymptom = '';
  String additionalNotes = '';
  String selectedRequestType = '';

  List<NewWorkRequestMedia>? newWorkRequestMedia = [];
  List<WorkRequestCapturedMedia>? existingMedia = [];

  Future<void> createWorkRequest() async {
    isBusy = true;
    notifyListeners();

    final workRequestAddRequest = WorkRequestAddRequest(
      newRequestId: const Uuid().v4(),
      serviceLevel: selectedServiceLevel,
      assetId: selectedAsset,
      description: description,
      faultSymptom: selectedFaultSymptom,
      media: newWorkRequestMedia,
      notes: additionalNotes,
      requestType: selectedRequestType,
    );

    await createWorkRequestService.createWorkRequest(workRequestAddRequest);

    if (workRequestAddRequest.media != null &&
        workRequestAddRequest.media!.isNotEmpty) {
      for (final media in workRequestAddRequest.media!) {
        await createWorkRequestService.uploadNewWorkRequestMedia(media);
      }
    }

    isBusy = false;
    notifyListeners();
  }

  Future<void> getAssets({
    required AssetQueryFilter filter,
  }) async {
    isBusy = true;
    notifyListeners();

    final allAssets = await createWorkRequestService.getAssets(
      AssetQueryFilter(
        depotNos: filter.depotNos,
      ),
    );

    assets = allAssets
        .where(
          (asset) => !ConstantLists.DisposedStatus.contains(
            asset.status?.toUpperCase(),
          ),
        )
        .toList();

    isBusy = false;
    notifyListeners();
  }

  Future<List<Asset>> getAssetsForDepot(String searchText) async {
    return assets
        .where(
          (e) => e.assetCode.toLowerCase().contains(searchText.toLowerCase()),
        )
        .toList();
  }

  String getDate(Locale activeLocale) {
    final today = DateTime.now().toUtc();
    final submitDate =
        DateFormat.yMd(activeLocale.toString()).format(today.toLocal());
    return submitDate;
  }

  Future<List<Depot>> getDepots(String searchText) async {
    return createWorkRequestService.getDepots(
      DepotQueryFilter(
        searchText: searchText,
      ),
    );
  }

  String getTime() {
    final today = DateTime.now();
    final submitTime = today.toIso8601String().substring(11, 16);
    return submitTime;
  }

  Future<void> getWorkRequestOptionsForDepots({
    required DepotQueryFilter filter,
    required Asset asset,
  }) async {
    isBusy = true;
    notifyListeners();

    depotsWorkRequestOptions =
        await createWorkRequestService.getWorkRequestOptionsForDepots(
      DepotQueryFilter(depotNos: [filter.depotNos!.first]),
    );

    if (depotsWorkRequestOptions.isNotEmpty) {
      final selectedDepot = depotsWorkRequestOptions.first;
      if (selectedDepot.workRequestOptions != null) {
        if (selectedDepot.workRequestOptions!.requestTypes != null) {
          requestTypes = selectedDepot.workRequestOptions?.requestTypes;
          requestTypes?.sort();
        }
      }
    }
    faultSymptoms = List.empty(growable: true);
    if (asset.maintenance?.faultSymptoms != null) {
      faultSymptoms = asset.maintenance!.faultSymptoms;
    }

    isBusy = false;
    notifyListeners();
  }
}
