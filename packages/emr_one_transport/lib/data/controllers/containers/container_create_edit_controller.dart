import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/current_location.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/containers/container.dart';
import 'package:emr_one_transport/data/models/containers/create_container_request.dart';
import 'package:emr_one_transport/data/models/containers/update_container_request.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/jobs/get_last_x_jobs_with_containers_request.dart';
import 'package:emr_one_transport/data/models/jobs/transport_job_response.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/container_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/data/services/truck_service.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';

class ContainerCreateEditController extends ChangeNotifier {
  ContainerCreateEditController({
    required this.containerService,
    required this.commonService,
    required this.truckService,
    required this.jobListService,
  });
  final ContainerService containerService;
  final CommonService commonService;
  final TruckService truckService;
  final JobListService jobListService;

  Containers? containerDetails;

  List<String> lifeCycleStatuses = [];

  ValueNotifier<int> containersToExpireCount = ValueNotifier(0);
  ValueNotifier<int> containersToExpireDays = ValueNotifier(10);
  ValueNotifier<List<Containers>> containersToExpire = ValueNotifier([]);

  ValueNotifier<String> selectedLifeCycleStatus = ValueNotifier('');

  ValueNotifier<List<ListDetails>> containerTypes = ValueNotifier([]);
  ValueNotifier<ListDetails?> selectedContainerType = ValueNotifier(null);

  ValueNotifier<List<ListDetails>> conditions = ValueNotifier([]);
  ValueNotifier<ListDetails?> selectedCondition = ValueNotifier(null);

  ValueNotifier<String> assetNumber = ValueNotifier<String>('');
  ValueNotifier<String> description = ValueNotifier<String>('');
  ValueNotifier<String> dispatchYard = ValueNotifier<String>('');
  ValueNotifier<String> containerType = ValueNotifier<String>('');
  ValueNotifier<String> serialNumber = ValueNotifier<String>('');
  ValueNotifier<String> lifeCycleStatus = ValueNotifier<String>('');
  ValueNotifier<int> length = ValueNotifier<int>(0);
  ValueNotifier<int> weight = ValueNotifier<int>(0);
  ValueNotifier<double> cost = ValueNotifier<double>(0);
  ValueNotifier<String> manufacturer = ValueNotifier<String>('');
  ValueNotifier<String> comments = ValueNotifier<String>('');
  ValueNotifier<String> yardCode = ValueNotifier<String>('');
  ValueNotifier<DateTime?> validUptoDate = ValueNotifier<DateTime?>(
    DateTime.now(),
  );

  ValueNotifier<List<String>> selectedLocationType = ValueNotifier([
    StringConstants.yard,
  ]);
  ValueNotifier<ListDetails?> selectedLocationDetail = ValueNotifier(null);

  final ValueNotifier<Map<String, String>> locationOptions = ValueNotifier({
    StringConstants.yard: StringConstants.yard,
    StringConstants.customerDisplay: StringConstants.customerDisplay,
    StringConstants.truck: StringConstants.truck,
  });
  final enableAssetNumberEdit = ValueNotifier(true);

  List<DispatchYards> yards = [];
  List<String> customers = [];
  List<String> trucks = [];

  List<DispatchYards> accessibleYardsList = [];
  List<ListDetails> containerTypeList = [];
  List<ListDetails> conditionList = [];
  late String lastSelectedLocation;

  bool isLoading = true;

  Future<void> initialize(String? containerId) async {
    if (containerId != null && containerId.isNotEmpty) {
      enableAssetNumberEdit.value = false;
      final result = await containerService.getContainerById(containerId);
      containerDetails = result;
    }

    final tasks = [
      _getContainerTypes(),
      _getConditions(),
      _getAccessibleYards(),
    ];

    if (containerId == null) {
      tasks.add(getNextAssetNumber());
    }

    await Future.wait(tasks);

    final lifeCycleStatusList = ContainerLifeCycleStatusEnum.values
        .map((e) => displayLifeCycleStatus(e.getLifeCycleStatus))
        .toList();
    lifeCycleStatusList.sort();

    lifeCycleStatuses = lifeCycleStatusList;
    containerTypes.value = containerTypeList.toList();
    conditions.value = conditionList.toList();
    yards = accessibleYardsList;
    selectedLocationType.value = ['Yard'];
    lastSelectedLocation = selectedLocationType.value.first;

    if (containerDetails != null) {
      setInitialFieldValues(containerDetails!);
    }
    _setLoading(false);
  }

  Future<void> _getContainerTypes() async {
    containerTypeList = await commonService.getListByType(
      StringConstants.containerTypes,
    );
  }

  Future<void> _getConditions() async {
    conditionList = await commonService.getListByType(
      StringConstants.assetConditions,
    );
  }

  Future<void> _getAccessibleYards() async {
    accessibleYardsList = await commonService.getAccessibleYardsForUser();
  }

  Future<void> getNextAssetNumber() async {
    assetNumber.value = await containerService.getNextContainerId();
  }

  Future<bool> isDuplicateAssetNumber(String? value) async {
    if (value == null || value.isEmpty) {
      return false;
    }

    final result = await containerService.assetNumberUsedForContainer(
      assetNumber.value,
    );

    if (result != null && result != containerDetails?.id) {
      return true;
    }
    return false;
  }

  Future<List<ListDetails>> searchCustomers(String query) async {
    final response = await jobListService.partySearchByAccountOrName(query);
    return response
        .map(
          (e) => ListDetails(
            code: e.locationCode,
            description: e.locationName ?? e.customerName,
          ),
        )
        .toList();
  }

  Future<List<ListDetails>> searchTrucks(String query) async {
    final payload = PagedFilterRequest(
      1,
      50,
      searchTerm: query,
      sortBy: StringConstants.vrm.toLowerCase(),
      sortOrder: StringConstants.asc,
      includeFacets: false,
      filters: {},
    );
    final result = await truckService.searchTrucks(payload);
    if (result.isSuccess && result.data != null) {
      return result.data!.map((e) => ListDetails(description: e.vrm)).toList();
    }
    return [];
  }

  void resetFields() {
    if (containerDetails != null) {
      setInitialFieldValues(containerDetails!);
    } else {
      description.value = '';
      comments.value = '';
      validUptoDate.value = DateTime.now();
      yardCode.value = '';
      weight.value = 0;
      length.value = 0;
      cost.value = 0;
      manufacturer.value = '';
      serialNumber.value = '';
      lifeCycleStatus.value = '';
      containerType.value = '';
      dispatchYard.value = '';
      selectedLifeCycleStatus.value = '';
      selectedContainerType.value = const ListDetails();
      selectedCondition.value = const ListDetails();
      selectedLocationType.value = ['Yard'];
      lastSelectedLocation = selectedLocationType.value.first;
      selectedLocationDetail.value = const ListDetails();
    }
  }

  void setInitialFieldValues(Containers containerDetails) {
    assetNumber.value = containerDetails.assetNumber;
    cost.value = containerDetails.cost ?? 0.0;
    description.value = containerDetails.description ?? '';
    comments.value = containerDetails.comments ?? '';
    yardCode.value = containerDetails.yardCode ?? '';
    validUptoDate.value = containerDetails.validUpTo ?? DateTime.now();
    weight.value = containerDetails.weight ?? 0;
    length.value = containerDetails.length ?? 0;
    manufacturer.value = containerDetails.manufacturer ?? '';
    serialNumber.value = containerDetails.serialNumber ?? '';
    selectedCondition.value = conditions.value.firstWhere(
      (type) => type.description == containerDetails.condition,
      orElse: ListDetails.new,
    );
    selectedLifeCycleStatus.value = containerDetails.lifeCycleStatus ?? '';
    selectedContainerType.value = containerTypes.value.firstWhere(
      (type) => type.description == containerDetails.containerType,
      orElse: ListDetails.new,
    );

    final currentLocation = containerDetails.currentLocation;

    if (currentLocation != null) {
      final status = currentLocation.status?.toLowerCase() ?? '';

      final locationType = switch (status) {
        'customer' => LocationType.customer,
        'truck' => LocationType.truck,
        _ => LocationType.yard,
      };

      selectedLocationType.value = [locationType.code];
      lastSelectedLocation = selectedLocationType.value.first;

      switch (locationType) {
        case LocationType.customer:
        case LocationType.truck:
          selectedLocationDetail.value = ListDetails(
            code: currentLocation.locationCode,
            description: currentLocation.locationCode,
          );

        case LocationType.yard:
          final matchedYard = yards.firstWhere(
            (yard) =>
                yard.yardCode?.toLowerCase() ==
                currentLocation.locationCode?.toLowerCase(),
            orElse: DispatchYards.new,
          );

          selectedLocationDetail.value = ListDetails(
            code: matchedYard.yardCode ?? currentLocation.locationCode,
            description: matchedYard.yardName != null
                ? '${matchedYard.yardName} (${matchedYard.yardCode})'
                : currentLocation.locationCode,
          );
      }
    }
  }

  CreateContainerRequest buildContainerCreateRequestModel() {
    return CreateContainerRequest(
      assetNumber: assetNumber.value.toUpperCase(),
      containerType: selectedContainerType.value!.description!,
      containerTypeId: selectedContainerType.value!.id.toString(),
      validUpTo: validUptoDate.value,
      condition: selectedCondition.value!.description,
      description: description.value,
      yardCode: yardCode.value,
      lifeCycleStatus: ContainerLifeCycleStatusEnum.values
          .where(
            (e) =>
                displayLifeCycleStatus(e.name) == selectedLifeCycleStatus.value,
          )
          .first,
      currentLocation: CurrentLocation(
        status: selectedLocationType.value.first,
        locationCode:
            selectedLocationDetail.value?.code ??
            selectedLocationDetail.value?.description ??
            '',
      ),
      comments: comments.value,
      length: length.value,
      weight: weight.value,
      manufacturer: manufacturer.value,
      cost: cost.value,
      serialNumber: serialNumber.value,
    );
  }

  UpdateContainerRequest buildContainerUpdateRequestModel() {
    return UpdateContainerRequest(
      id: containerDetails?.id ?? '',
      assetNumber: assetNumber.value.toUpperCase(),
      containerType: selectedContainerType.value!.description!,
      containerTypeId: selectedContainerType.value!.id ?? '',
      validUpTo: validUptoDate.value,
      condition: selectedCondition.value!.description,
      description: description.value,
      yardCode: yardCode.value,
      lifeCycleStatus: ContainerLifeCycleStatusEnum.values.firstWhere(
        (e) => displayLifeCycleStatus(e.name) == selectedLifeCycleStatus.value,
      ),
      currentLocation: CurrentLocation(
        status: selectedLocationType.value.first,
        locationCode:
            selectedLocationDetail.value?.code ??
            selectedLocationDetail.value?.description ??
            '',
      ),
      comments: comments.value,
      length: length.value,
      weight: weight.value,
      manufacturer: manufacturer.value,
      cost: cost.value,
      serialNumber: serialNumber.value,
    );
  }

  Future<ApiResponse<CreateContainerRequest>> createContainer() async {
    _setLoading(true);

    final requestBody = buildContainerCreateRequestModel();
    final response = await containerService.createContainer(requestBody);

    _setLoading(false);
    return response;
  }

  Future<ApiResponse<UpdateContainerRequest>> updateContainer() async {
    _setLoading(true);

    final requestBody = buildContainerUpdateRequestModel();
    final response = await containerService.updateContainer(requestBody);

    _setLoading(false);
    return response;
  }

  Future<List<TransportJobResponse>> fetchLatestJobsWithContainers(
    String assetNumber,
  ) async {
    final request = GetLastXJobsWithContainersRequest(
      count: 10,
      assetNumbers: [assetNumber],
    );

    _setLoading(true);
    final result = await containerService.getLatestContainerJobs(request);
    _setLoading(false);
    if (result.isSuccess && result.data != null && result.data!.isNotEmpty) {
      return result.data!.first.jobs;
    }
    return [];
  }

  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  Future<void> fetchContainersToExpire() async {
    _setLoading(true);

    final result = await containerService.containersToExpire(
      containersToExpireDays.value,
    );

    if (result.isSuccess && result.data != null) {
      containersToExpireCount.value = result.data!.totalCount ?? 0;
      containersToExpire.value = result.data!.items!;
    } else {
      containersToExpireCount.value = 0;
      containersToExpire.value = [];
    }

    _setLoading(false);
  }

  Future<ApiResponse<String>> downloadQRCodes(
    String endpoint,
    MimeType fileType,
    String fileName, {
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      _setLoading(true);
      final response = await commonService.getQRCodeFileBytes(
        endpoint,
        queryParams: queryParams,
      );
      if (response.isSuccess) {
        await FileSaver.instance.saveFile(
          name: fileName,
          bytes: response.data,
          mimeType: fileType,
        );
        return ApiResponse(null);
      }
      return ApiResponse(
        null,
        errorMessage: response.errorMessage,
        isSuccess: false,
      );
    } finally {
      _setLoading(false);
    }
  }
}
