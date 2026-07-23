import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/account.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/common/provisional_cost_details.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/models/jobs/customer_details.dart';
import 'package:emr_one_transport/data/models/jobs/haulier_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_containers.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/models/jobs/job_request_model.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/screens/jobs/edit_or_clone_job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';

class JobCreateEditController extends ChangeNotifier {
  JobCreateEditController({required this.jobListService});
  final JobListService jobListService;

  JobList? jobDetails;
  List<String> jobTypes = [];
  List<String> dispatchYards = [];
  List<String> trailerTypes = [];
  List<Containers> containerTypes = [];
  List<String> productTypes = [];
  List<Containers> allContainerTypes = [];

  ValueNotifier<List<ContainerDetails>> addedCustomerLocnContainers =
      ValueNotifier([]);
  ValueNotifier<List<ContainerDetails>> addedStartLocnContainers =
      ValueNotifier([]);

  ValueNotifier<Containers?> selectedCustomerLocnContainer = ValueNotifier(
    null,
  );
  ValueNotifier<Containers?> selectedStartLocnContainer = ValueNotifier(null);

  ValueNotifier<List<Containers>> customerLocnContainerTypes = ValueNotifier(
    [],
  );
  ValueNotifier<List<Containers>> startLocnContainerTypes = ValueNotifier([]);
  ValueNotifier<List<Product>> products = ValueNotifier([]);
  ValueNotifier<String?> selectedJobtype = ValueNotifier(null);
  ValueNotifier<String> selectedTrailertype = ValueNotifier('');
  ValueNotifier<String> selectedTrailerModel = ValueNotifier('');
  ValueNotifier<String> selectedTrailerAssetNumber = ValueNotifier('');
  ValueNotifier<String> selectedDispatchYard = ValueNotifier('');
  ValueNotifier<Account> selectedCustomerLocation = ValueNotifier(Account());
  ValueNotifier<Account> selectedStartLocation = ValueNotifier(Account());
  ValueNotifier<Account> selectedEndLocation = ValueNotifier(Account());
  ValueNotifier<String?> selectedproductType = ValueNotifier(null);
  ValueNotifier<List<Product>> selectedproduct = ValueNotifier([]);
  ValueNotifier<TruckInfo?> selectedhaulier = ValueNotifier(null);
  ValueNotifier<bool> isLocked = ValueNotifier<bool>(false);
  ValueNotifier<DateTime?> selectedScheduledDate = ValueNotifier<DateTime?>(
    null,
  );
  ValueNotifier<DateTime?> selectedDueDate = ValueNotifier<DateTime?>(
    DateTime.now(),
  );
  ValueNotifier<String> dispatcherNotes = ValueNotifier<String>('');
  ValueNotifier<String> officeNotes = ValueNotifier<String>('');
  ValueNotifier<int> proposedDuration = ValueNotifier<int>(0);
  ValueNotifier<int?> numberOfJobsToBeCreated = ValueNotifier<int?>(1);
  ValueNotifier<bool> isStartLocnEnabled = ValueNotifier<bool>(true);
  ValueNotifier<bool> isEndLocnEnabled = ValueNotifier<bool>(true);

  final Map<String, ValueNotifier<bool>> readOnlyMap = {
    StringConstants.repeat: ValueNotifier<bool>(false),
    StringConstants.basicDetails: ValueNotifier<bool>(false),
    StringConstants.container: ValueNotifier<bool>(false),
    StringConstants.schedule: ValueNotifier<bool>(false),
    StringConstants.notes: ValueNotifier<bool>(false),
    StringConstants.jobDuration: ValueNotifier<bool>(false),
  };

  late VoidCallback? _onSelectedEndLocationChangedCallback;
  late VoidCallback? _onSelectedCustomerLocationChangedCallback;
  late VoidCallback? _onSelectedStartLocationChangedCallback;
  late VoidCallback? _onSelectedHaulierChangedCallback;
  late VoidCallback? _onSelectedJobTypeChangedCallback;

  // Haulage rate related fields
  final loadingPrices = ValueNotifier<bool>(false);
  final provisionalRateOptions = ValueNotifier<List<ProvisionalCostDetails>>(
    [],
  );
  bool isLoading = true;
  bool isProductLoading = false;
  JobMode mode = JobMode.create;

  List<DispatchYards> dispatchYardsList = [];
  List<ListDetails> containersList = [];
  List<ListDetails> trailerTypesList = [];
  List<ListDetails> productTypesList = [];

  Future<void> initialize(int? jobNumber, JobMode mode) async {
    showLoader();
    this.mode = mode;
    if (jobNumber != null && jobNumber > 0) {
      resetFields();
      final result = await jobListService.getJobDetailsByJobNumber(jobNumber);
      jobDetails = result;
    }

    final jobTypesList = JobType.values.map((e) => e.toString()).toList();
    jobTypesList.sort();

    final tasks = <Future<void>>[
      _getDispatchYardsForUser(),
      _getContainerTypes(),
      _getTrailerTypes(),
      _getProductTypes(),
    ];

    if (mode != JobMode.create) {
      final customerLocationAccount = jobDetails?.customerLocation != null
          ? Account(
              locationCode: jobDetails?.customerLocation?.code,
              locationName: jobDetails?.customerLocation?.name,
              address: jobDetails?.customerLocation?.address,
            )
          : Account();
      final startLocationAccount = jobDetails?.startLocation != null
          ? Account(
              locationCode: jobDetails?.startLocation?.code,
              locationName: jobDetails?.startLocation?.name,
              address: jobDetails?.startLocation?.address,
            )
          : Account();
      final endLocationAccount = jobDetails?.endLocation != null
          ? Account(
              locationCode: jobDetails?.endLocation?.code,
              locationName: jobDetails?.endLocation?.name,
              address: jobDetails?.endLocation?.address,
            )
          : Account();
      tasks.add(
        _getProvisionalCosts(
          jobType: jobTypeFromApiValue(jobDetails?.jobType ?? '').toString(),
          startLocationCode: startLocationAccount.locationCode,
          endLocationCode: endLocationAccount.locationCode,
          customerLocationCode: customerLocationAccount.locationCode,
          startDate:
              jobDetails?.scheduledDate ??
              jobDetails?.dueDate ??
              DateTime.now(),
        ),
      );
    }

    await Future.wait(tasks);

    jobTypes = jobTypesList;
    dispatchYards = dispatchYardsList.map((e) => e.yardCode ?? '').toList();

    containersList.addAll(trailerTypesList);
    containerTypes = containersList
        .map((e) => Containers(containerType: e.description ?? e.code ?? ''))
        .toList();

    productTypes = productTypesList
        .map((e) => e.description ?? e.code ?? '')
        .toList();

    allContainerTypes = containerTypes.toList();
    customerLocnContainerTypes.value = containerTypes.toList();
    startLocnContainerTypes.value = containerTypes.toList();

    // Product type listeners
    selectedproductType.addListener(_getProducts);

    if (jobDetails != null) {
      if (mode == JobMode.clone) {
        jobDetails?.containers?.customerLocationContainerDetails?.forEach((e) {
          e.jobContainerGuid = null;
          e.suggestedAssetNumber = 'Any ${e.containerType} container';
          e.assetNumberUsed = null;
        });
        jobDetails?.containers?.startLocationContainerDetails?.forEach((e) {
          e.jobContainerGuid = null;
          e.suggestedAssetNumber = 'Any ${e.containerType} container';
          e.assetNumberUsed = null;
        });
        enableAllUiFields();
      } else if (mode == JobMode.edit) {
        final statusWithReadOnlyForm = [
          JobStatus.completed.toString(),
          JobStatus.abandoned.toString(),
          JobStatus.deleted.toString(),
        ];

        if (statusWithReadOnlyForm.contains(jobDetails?.jobStatus)) {
          enableOnlyUiFields({StringConstants.notes});
        } else if (jobDetails?.source == JobSource.plan.toString()) {
          enableOnlyUiFields({
            StringConstants.notes,
            StringConstants.jobDuration,
          });
        } else {
          enableAllUiFields();
        }
      }

      _setInitialFieldValues(mode);
    }
    hideLoader();

    // Job Type listeners
    _onSelectedJobTypeChangedCallback = () {
      _clearProvisionalOptionsOnChangeOfLocation();
      _jobTypeChanged();
      _getProposedJobDuration();
      _getProvisionalCosts(
        jobType: selectedJobtype.value,
        startLocationCode: selectedStartLocation.value.locationCode,
        endLocationCode: selectedEndLocation.value.locationCode,
        customerLocationCode: selectedCustomerLocation.value.locationCode,
        startDate:
            jobDetails?.scheduledDate ?? jobDetails?.dueDate ?? DateTime.now(),
      );
    };
    selectedJobtype.addListener(_onSelectedJobTypeChangedCallback!);

    // Customer location listeners
    _onSelectedCustomerLocationChangedCallback = () {
      _clearAddedContainers(ContainerLocationOption.customer);
      _clearProvisionalOptionsOnChangeOfLocation();
      _autoFillStartOrEndLocation();
      _availableContainerAtSelectedCustomerLocation();
      _getProposedJobDuration();
      _getProvisionalCosts(
        jobType: selectedJobtype.value,
        startLocationCode: selectedStartLocation.value.locationCode,
        endLocationCode: selectedEndLocation.value.locationCode,
        customerLocationCode: selectedCustomerLocation.value.locationCode,
        startDate:
            jobDetails?.scheduledDate ?? jobDetails?.dueDate ?? DateTime.now(),
      );
    };
    selectedCustomerLocation.addListener(
      _onSelectedCustomerLocationChangedCallback!,
    );

    // Start location listeners
    _onSelectedStartLocationChangedCallback = () {
      _clearAddedContainers(ContainerLocationOption.start);
      _clearProvisionalOptionsOnChangeOfLocation();
      _availableContainerAtSelectedStartLocation();
      _getProposedJobDuration();
      _getProvisionalCosts(
        jobType: selectedJobtype.value,
        startLocationCode: selectedStartLocation.value.locationCode,
        endLocationCode: selectedEndLocation.value.locationCode,
        customerLocationCode: selectedCustomerLocation.value.locationCode,
        startDate:
            jobDetails?.scheduledDate ?? jobDetails?.dueDate ?? DateTime.now(),
      );
    };
    selectedStartLocation.addListener(_onSelectedStartLocationChangedCallback!);

    // End location listeners
    _onSelectedEndLocationChangedCallback = () {
      _clearProvisionalOptionsOnChangeOfLocation();
      _getProposedJobDuration();
      _getProvisionalCosts(
        jobType: selectedJobtype.value,
        startLocationCode: selectedStartLocation.value.locationCode,
        endLocationCode: selectedEndLocation.value.locationCode,
        customerLocationCode: selectedCustomerLocation.value.locationCode,
        startDate:
            jobDetails?.scheduledDate ?? jobDetails?.dueDate ?? DateTime.now(),
      );
    };
    selectedEndLocation.addListener(_onSelectedEndLocationChangedCallback!);

    // Customer location container listeners
    selectedCustomerLocnContainer.addListener(
      onSelectedCustomerLocnContainerChanged,
    );

    // Start location container listeners
    selectedStartLocnContainer.addListener(onSelectedStartLocnContainerChanged);

    // Haulier listeners
    _onSelectedHaulierChangedCallback = () {
      if (selectedhaulier.value == null) {
        selectedScheduledDate.value = null;
        isLocked.value = false;
      }
    };
    selectedhaulier.addListener(_onSelectedHaulierChangedCallback!);
  }

  void disposeListeners() {
    selectedJobtype.removeListener(_onSelectedJobTypeChangedCallback!);
    selectedCustomerLocation.removeListener(
      _onSelectedCustomerLocationChangedCallback!,
    );
    selectedStartLocation.removeListener(
      _onSelectedStartLocationChangedCallback!,
    );
    selectedEndLocation.removeListener(_onSelectedEndLocationChangedCallback!);
    selectedCustomerLocnContainer.removeListener(
      onSelectedCustomerLocnContainerChanged,
    );
    selectedStartLocnContainer.removeListener(
      onSelectedStartLocnContainerChanged,
    );
    selectedhaulier.removeListener(_onSelectedHaulierChangedCallback!);
    selectedproductType.removeListener(_getProducts);
  }

  void _clearProvisionalOptionsOnChangeOfLocation() {
    provisionalRateOptions.value = [];
  }

  Future<void> _getContainerTypes() async {
    containersList = await jobListService.getContainerTypes();
  }

  Future<void> _getTrailerTypes() async {
    trailerTypesList = await jobListService.getTrailerTypes();
  }

  Future<void> _getDispatchYardsForUser() async {
    dispatchYardsList = await jobListService.getDispatchYardsForUser();
  }

  Future<void> _getProductTypes() async {
    productTypesList = await jobListService.getProductTypes();
  }

  Future<void> _getProposedJobDuration() async {
    if (selectedJobtype.value == null ||
        selectedJobtype.value!.isEmpty ||
        selectedStartLocation.value.locationCode == null ||
        selectedEndLocation.value.locationCode == null ||
        selectedCustomerLocation.value.locationCode == null) {
      return;
    }
    final jobTypeEnumValue = JobType.values.firstWhere(
      (e) => e.toString() == selectedJobtype.value,
    );
    final result = await jobListService.getProposedJobDuration(
      jobTypeEnumValue.apiValue,
      selectedStartLocation.value.locationCode!,
      selectedEndLocation.value.locationCode!,
      selectedCustomerLocation.value.locationCode!,
    );
    if (result != null && result > 0) {
      proposedDuration.value = result;
    } else {
      proposedDuration.value = 0;
    }
  }

  Future<void> _getProducts() async {
    selectedproduct.value = [];
    if (selectedproductType.value != null) {
      isProductLoading = true;
      products.value = await getProductbyFamily(selectedproductType.value!);
      isProductLoading = false;
    }
  }

  Future<List<Product>> getProductbyFamily(String productType) async {
    final productsbyfamily = await jobListService.getProductByFamily(
      productType,
    );

    return productsbyfamily.where((x) => (x.active ?? true) == true).map((e) {
      return Product(
        id: '',
        code: e.code ?? '',
        description: e.description,
        active: e.active ?? true,
      );
    }).toList();
  }

  void resetFields() {
    selectedJobtype.value = '';
    selectedTrailertype.value = '';
    selectedDispatchYard.value = '';
    selectedCustomerLocation.value = Account();
    selectedStartLocation.value = Account();
    selectedEndLocation.value = Account();
    selectedproductType.value = null;
    selectedproduct.value = [];
    selectedhaulier.value = null;
    isLocked.value = false;
    selectedScheduledDate.value = null;
    selectedDueDate.value = DateTime.now();
    dispatcherNotes.value = '';
    officeNotes.value = '';
    proposedDuration.value = 0;
    loadingPrices.value = false;
    numberOfJobsToBeCreated.value = 1;
    addedCustomerLocnContainers.value = [];
    addedStartLocnContainers.value = [];
    provisionalRateOptions.value = [];
  }

  void _jobTypeChanged() {
    _clearAddedContainers(ContainerLocationOption.both);
    provisionalRateOptions.value = [];

    if (selectedCustomerLocation.value.customerCode != null ||
        selectedCustomerLocation.value.locationCode != null) {
      _fillStartOrEndLocation();
    }
  }

  void _autoFillStartOrEndLocation() {
    if (selectedJobtype.value != '') {
      _fillStartOrEndLocation();
    }
  }

  List<String> getJobTypesWithSameStartandCustomerLocn() {
    return [
      JobType.pickUp.toString(),
      JobType.interCompanyUnload.toString(),
      JobType.pullAndReturn.toString(),
      JobType.maintenance.toString(),
    ];
  }

  List<String> getJobTypesWithSameEndandCustomerLocn() {
    return [
      JobType.pullAndReturnType2.toString(),
      JobType.sales.toString(),
      JobType.preLoad.toString(),
      JobType.preLoadWithReturn.toString(),
      JobType.dropOff.toString(),
    ];
  }

  void _fillStartOrEndLocation() {
    final jobTypesWithSameStartandCustomerLocn =
        getJobTypesWithSameStartandCustomerLocn();

    final jobTypesWithSameEndandCustomerLocn =
        getJobTypesWithSameEndandCustomerLocn();

    if (jobTypesWithSameStartandCustomerLocn.contains(selectedJobtype.value)) {
      selectedStartLocation.value = selectedCustomerLocation.value;
      if (mode == JobMode.create) {
        selectedEndLocation.value = Account();
      }
      isStartLocnEnabled.value = false;
      isEndLocnEnabled.value = true;
    } else if (jobTypesWithSameEndandCustomerLocn.contains(
      selectedJobtype.value,
    )) {
      selectedEndLocation.value = selectedCustomerLocation.value;
      if (mode == JobMode.create) {
        selectedStartLocation.value = Account();
      }
      isStartLocnEnabled.value = true;
      isEndLocnEnabled.value = false;
    } else if (selectedJobtype.value == JobType.yardWork.toString() ||
        selectedJobtype.value == JobType.emptyContainer.toString()) {
      selectedStartLocation.value = selectedCustomerLocation.value;
      selectedEndLocation.value = selectedCustomerLocation.value;
      isStartLocnEnabled.value = false;
      isEndLocnEnabled.value = false;
    } else {
      isStartLocnEnabled.value = true;
      isEndLocnEnabled.value = true;
    }
  }

  Future<void> _availableContainerAtSelectedCustomerLocation() async {
    try {
      showLoader();
      if (showCustomerLocationContainers(selectedJobtype.value!)) {
        if (selectedCustomerLocation.value.locationCode != null) {
          final result = await jobListService.getContainersAtLocation(
            selectedCustomerLocation.value.locationCode ?? '',
          );

          if (result.isNotEmpty) {
            final combinedTypes = allContainerTypes.toList();
            combinedTypes.insertAll(0, result);
            customerLocnContainerTypes.value = combinedTypes;
          } else {
            customerLocnContainerTypes.value = allContainerTypes.toList();
          }
        } else {
          customerLocnContainerTypes.value = allContainerTypes.toList();
        }
      }
    } finally {
      hideLoader();
    }
  }

  Future<void> _availableContainerAtSelectedStartLocation() async {
    try {
      showLoader();
      if (showStartLocationContainers(selectedJobtype.value!)) {
        if (selectedStartLocation.value.locationCode != null) {
          final result = await jobListService.getContainersAtLocation(
            selectedStartLocation.value.locationCode ?? '',
          );

          if (result.isNotEmpty) {
            final combinedTypes = allContainerTypes.toList();
            combinedTypes.insertAll(0, result);
            startLocnContainerTypes.value = combinedTypes;
          } else {
            startLocnContainerTypes.value = allContainerTypes.toList();
          }
        } else {
          startLocnContainerTypes.value = allContainerTypes.toList();
        }
      }
    } finally {
      hideLoader();
    }
  }

  void resetWithInitialFieldLoads() {
    resetFields();
    _setInitialFieldValues(mode);
  }

  void _setInitialFieldValues(JobMode mode) {
    selectedJobtype.value = jobTypeFromApiValue(
      jobDetails?.jobType ?? '',
    ).toString();
    selectedDispatchYard.value = jobDetails?.dispatchYard ?? '';
    selectedproductType.value = jobDetails?.productFamily?.code != ''
        ? jobDetails?.productFamily?.code
        : null;
    selectedproduct.value =
        jobDetails?.productFamily?.products
            ?.where((e) => (e.active ?? false) == true)
            .toList() ??
        [];
    isLocked.value = jobDetails?.isLocked ?? false;
    selectedTrailertype.value = jobDetails?.trailer?.trailerType ?? '';
    selectedTrailerModel.value = jobDetails?.trailer?.model ?? '';
    selectedTrailerAssetNumber.value = jobDetails?.trailer?.assetNumber ?? '';
    selectedScheduledDate.value = mode == JobMode.clone
        ? null
        : jobDetails?.scheduledDate?.toLocal();
    selectedDueDate.value = mode == JobMode.clone
        ? DateTime.now()
        : jobDetails?.dueDate?.toLocal();
    isLocked.value = jobDetails?.isLocked ?? false;

    selectedCustomerLocation.value = jobDetails?.customerLocation != null
        ? Account(
            locationCode: jobDetails?.customerLocation?.code,
            locationName: jobDetails?.customerLocation?.name,
            customerCode: jobDetails?.customer?.code,
            customerName: jobDetails?.customer?.name,
            sicCode: jobDetails?.customer?.sicCode,
            address: jobDetails?.customerLocation?.address,
          )
        : Account();

    selectedStartLocation.value = jobDetails?.startLocation != null
        ? Account(
            locationCode: jobDetails?.startLocation?.code,
            locationName: jobDetails?.startLocation?.name,
            address: jobDetails?.startLocation?.address,
          )
        : Account();

    selectedEndLocation.value = jobDetails?.endLocation != null
        ? Account(
            locationCode: jobDetails?.endLocation?.code,
            locationName: jobDetails?.endLocation?.name,
            address: jobDetails?.endLocation?.address,
          )
        : Account();

    selectedhaulier.value =
        mode != JobMode.clone &&
            jobDetails?.haulier != null &&
            jobDetails?.jobStatus != StringConstants.pendingApiValue
        ? TruckInfo(
            haulierCode: jobDetails?.haulier?.haulierCode,
            haulierName: jobDetails?.haulier?.haulierName,
            haulierType: jobDetails?.haulier?.haulierType,
            assetNumber: jobDetails?.haulier?.assetNumber,
            vrm: jobDetails?.haulier?.vrm,
          )
        : null;

    proposedDuration.value = jobDetails?.duration ?? 0;
    dispatcherNotes.value = jobDetails?.dispatcherNotes ?? '';
    officeNotes.value = jobDetails?.officeNotes ?? '';

    final addedCustomerLocnContainersList = <ContainerDetails>[];

    jobDetails?.containers?.customerLocationContainerDetails
        ?.where((x) => (x.active ?? true) == true)
        .forEach((e) {
          final index = addedCustomerLocnContainersList.indexWhere(
            (x) =>
                x.containerType == e.containerType &&
                x.suggestedAssetNumber == e.suggestedAssetNumber,
          );

          if (index != -1) {
            addedCustomerLocnContainersList[index].quantity.value =
                (addedCustomerLocnContainersList[index].quantity.value) + 1;
            if (e.assetNumberUsed != null) {
              addedCustomerLocnContainersList[index].assetNumberUsed =
                  e.assetNumberUsed;
            }
          } else {
            addedCustomerLocnContainersList.add(e.copyWith());
          }
        });

    addedCustomerLocnContainers.value = addedCustomerLocnContainersList;

    final addedStartLocnContainersList = <ContainerDetails>[];

    jobDetails?.containers?.startLocationContainerDetails
        ?.where((x) => (x.active ?? true) == true)
        .forEach((e) {
          final index = addedStartLocnContainersList.indexWhere(
            (x) =>
                x.containerType == e.containerType &&
                x.suggestedAssetNumber == e.suggestedAssetNumber,
          );

          if (index != -1) {
            addedStartLocnContainersList[index].quantity.value =
                (addedStartLocnContainersList[index].quantity.value) + 1;
            if (e.assetNumberUsed != null) {
              addedStartLocnContainersList[index].assetNumberUsed =
                  e.assetNumberUsed;
            }
          } else {
            addedStartLocnContainersList.add(e.copyWith());
          }
        });
    addedStartLocnContainers.value = addedStartLocnContainersList;

    _fillStartOrEndLocation();
    _availableContainerAtSelectedCustomerLocation();
    _availableContainerAtSelectedStartLocation();
    notifyListeners();
  }

  bool showCustomerLocationContainers(String selectedJobtype) {
    final jobsWithCustomerLocationContainers = [
      JobType.swap.toString(),
      JobType.pickUp.toString(),
      JobType.yardWork.toString(),
      JobType.pullAndReturn.toString(),
      JobType.emptyContainer.toString(),
      JobType.pullAndReturnType2.toString(),
    ];

    return jobsWithCustomerLocationContainers.any(
      (e) => e.toLowerCase() == selectedJobtype.toLowerCase(),
    );
  }

  bool showStartLocationContainers(String selectedJobtype) {
    final jobsWithStartLocationContainers = [
      JobType.swap.toString(),
      JobType.dropOff.toString(),
      JobType.liveLoad.toString(),
      JobType.sales.toString(),
      JobType.preLoad.toString(),
      JobType.pullAndReturnType2.toString(),
    ];

    return jobsWithStartLocationContainers.any(
      (e) => e.toLowerCase() == selectedJobtype.toLowerCase(),
    );
  }

  Future<JobRequestModel> buildJobRequestModel() async {
    final addedStartLocnContainerslst = <ContainerDetails>[];
    final addedCustomerLocnContainerslst = <ContainerDetails>[];

    if (mode != JobMode.edit) {
      for (final x in addedStartLocnContainers.value) {
        var quantity = x.quantity.value;
        while (quantity > 0) {
          addedStartLocnContainerslst.add(x);
          quantity = quantity - 1;
        }
      }

      for (final x in addedCustomerLocnContainers.value) {
        var quantity = x.quantity.value;
        while (quantity > 0) {
          addedCustomerLocnContainerslst.add(x);
          quantity = quantity - 1;
        }
      }
    }
    final existingScheduledDateTime = jobDetails?.scheduledDate?.toLocal();
    var updatedScheduledDateTime = existingScheduledDateTime;
    if (didUserUpdateScheduleDate()) {
      updatedScheduledDateTime = selectedScheduledDate.value.dateOnly;
    }

    //incase of unassigned job, keep the haulier
    final haulierToUpdate = getHaulierToUpdate();
    final isExact = isExactSchedule();

    return JobRequestModel(
      isExactSchedule: isExact,
      id: jobDetails?.id ?? '',
      scheduledDate: updatedScheduledDateTime,
      proposedDueDate: selectedDueDate.value?.toUtc(),
      dispatchYard: selectedDispatchYard.value,
      source: jobDetails?.source ?? StringConstants.standardDisplay,
      jobType: JobType.values.firstWhere(
        (e) => e.toString() == selectedJobtype.value,
      ),
      proposedDurationMinutes: proposedDuration.value,
      isLocked: isLocked.value,
      customer: CustomerDetails(
        code: selectedCustomerLocation.value.customerCode,
        name: selectedCustomerLocation.value.customerName,
        sicCode: selectedCustomerLocation.value.sicCode,
      ),
      customerLocation: LocationInfo(
        code: selectedCustomerLocation.value.locationCode,
        name: selectedCustomerLocation.value.locationName,
        address: selectedCustomerLocation.value.address,
      ),
      startLocation: LocationInfo(
        code: selectedStartLocation.value.locationCode,
        name: selectedStartLocation.value.locationName,
        address: selectedStartLocation.value.address,
      ),
      endLocation: LocationInfo(
        code: selectedEndLocation.value.locationCode,
        name: selectedEndLocation.value.locationName,
        address: selectedEndLocation.value.address,
      ),
      haulier: haulierToUpdate,
      containers: JobContainers(
        addedStartLocnContainerslst.isNotEmpty
            ? addedStartLocnContainerslst
            : null,
        addedCustomerLocnContainerslst.isNotEmpty
            ? addedCustomerLocnContainerslst
            : null,
      ),
      dispatcherNotes: dispatcherNotes.value,
      officeNotes: officeNotes.value,
      productFamily: selectedproductType.value != null
          ? ProductFamily(
              code: selectedproductType.value,
              products: selectedproduct.value,
              active: true,
            )
          : null,
      provisionalCost: _getProvisionalCostDetails(),
      timeZoneId: await FlutterTimezone.getLocalTimezone(),
    );
  }

  ProvisionalCostDetails? _getProvisionalCostDetails() {
    final selectedHaulierCode = selectedhaulier.value?.haulierCode ?? '';
    return selectedHaulierCode.isNotEmpty
        ? provisionalRateOptions.value
              .where((item) => item.accountCode == selectedHaulierCode)
              //Like trade2 picking max price haulier
              .fold<ProvisionalCostDetails?>(null, (prev, element) {
                if (prev == null) return element;
                return (element.finalRate ?? 0) > (prev.finalRate ?? 0)
                    ? element
                    : prev;
              })
        : null;
  }

  Future<ApiResponse<JobList>> updateJobDetailsbyId() async {
    final requestBody = await buildJobRequestModel();
    showLoader();
    updateContainerDetailsForJobEdit(requestBody);
    updateProductsForJobEdit(requestBody);
    final response = await jobListService.updateJobDetailsbyId(requestBody);
    hideLoader();
    return response;
  }

  Future<ApiResponse<JobList>> createJob() async {
    final requestBody = await buildJobRequestModel();
    showLoader();
    final response = await jobListService.createJob(requestBody);
    hideLoader();
    return response;
  }

  Future<ApiResponse<List<int>>> cloneJob() async {
    final requestBody = await buildJobRequestModel();
    requestBody.numberOfJobsToBeCreated = numberOfJobsToBeCreated.value;
    requestBody.source = StringConstants.standardDisplay;
    showLoader();
    final response = await jobListService.cloneJobs(requestBody);
    hideLoader();
    return response;
  }

  void onSelectedCustomerLocnContainerChanged() {
    final selectedCustomerLocationContainer =
        selectedCustomerLocnContainer.value;
    if (selectedCustomerLocnContainer.value != null &&
        addedCustomerLocnContainers.value.length < 9 &&
        !addedCustomerLocnContainers.value.any(
          (e) =>
              e.containerType ==
                  selectedCustomerLocnContainer.value?.containerType &&
              e.suggestedAssetNumber ==
                  (selectedCustomerLocnContainer.value?.assetNumber ??
                      'Any '
                          '${selectedCustomerLocationContainer?.containerType}'
                          ' container') &&
              (e.active ?? true) == true,
        )) {
      addedCustomerLocnContainers.value = [
        ...addedCustomerLocnContainers.value,
        ContainerDetails(
          containerType: selectedCustomerLocnContainer.value?.containerType,
          suggestedAssetNumber:
              selectedCustomerLocnContainer.value?.assetNumber ??
              'Any ${selectedCustomerLocnContainer.value?.containerType}'
                  ' container',
          active: true,
        ),
      ];
    }
    selectedCustomerLocnContainer.value = null;
  }

  void onSelectedStartLocnContainerChanged() {
    if (selectedStartLocnContainer.value != null &&
        addedStartLocnContainers.value.length < 9 &&
        !addedStartLocnContainers.value.any(
          (e) =>
              e.containerType ==
                  selectedStartLocnContainer.value?.containerType &&
              e.suggestedAssetNumber ==
                  (selectedStartLocnContainer.value?.assetNumber ??
                      'Any ${selectedStartLocnContainer.value?.containerType}'
                          ' container') &&
              (e.active ?? true) == true,
        )) {
      addedStartLocnContainers.value = [
        ...addedStartLocnContainers.value,
        ContainerDetails(
          containerType: selectedStartLocnContainer.value?.containerType,
          suggestedAssetNumber:
              selectedStartLocnContainer.value?.assetNumber ??
              'Any ${selectedStartLocnContainer.value?.containerType}'
                  ' container',
          active: true,
        ),
      ];
    }
    selectedStartLocnContainer.value = null;
  }

  void updateProductsForJobEdit(JobRequestModel requestModel) {
    final productsReceived = jobDetails?.productFamily?.products ?? [];

    if (productsReceived.isEmpty) {
      return;
    }

    final updatedProductsList = <Product>[];

    updatedProductsList.addAll(
      productsReceived.map((e) => e.copyWith(active: false)).toList(),
    );

    for (final e in selectedproduct.value) {
      final index = updatedProductsList.indexWhere(
        (x) => x.code == e.code && x.description == e.description,
      );

      if (index > -1) {
        updatedProductsList[index].active = true;
      } else {
        updatedProductsList.add(e.copyWith(id: '', active: true));
      }
    }

    requestModel.productFamily = ProductFamily(
      code: selectedproductType.value ?? '',
      products: updatedProductsList,
      active: true,
    );
  }

  void updateContainerDetailsForJobEdit(JobRequestModel requestModel) {
    final addedStartLocnContainersList = getUpdatedContainersModel(
      addedStartLocnContainers.value,
      isStartLocnContainers: true,
    );
    final addedCustomerLocnContainersList = getUpdatedContainersModel(
      addedCustomerLocnContainers.value,
    );

    requestModel.containers = JobContainers(
      addedStartLocnContainersList.isNotEmpty
          ? addedStartLocnContainersList
          : null,
      addedCustomerLocnContainersList.isNotEmpty
          ? addedCustomerLocnContainersList
          : null,
    );
  }

  List<ContainerDetails> getUpdatedContainersModel(
    List<ContainerDetails> containers, {
    bool isStartLocnContainers = false,
  }) {
    var addedContainersList = isStartLocnContainers
        ? jobDetails?.containers?.startLocationContainerDetails?.toList()
        : jobDetails?.containers?.customerLocationContainerDetails?.toList();

    addedContainersList = addedContainersList ?? <ContainerDetails>[];

    if (containers.isEmpty) {
      for (final item in addedContainersList) {
        item.active = false;
      }
      return addedContainersList;
    }

    final finalContainers = containers
        .map((e) => (e.containerType, e.suggestedAssetNumber))
        .toSet();

    for (final item in addedContainersList) {
      if (!finalContainers.contains((
        item.containerType,
        item.suggestedAssetNumber,
      ))) {
        item.active = false;
      }
    }

    for (final x in containers) {
      var quantity = x.quantity.value;

      final containersReceived = addedContainersList
          .where(
            (e) =>
                e.containerType == x.containerType &&
                e.suggestedAssetNumber == x.suggestedAssetNumber,
          )
          .toList();

      final quantityReceived = containersReceived
          .where((e) => (e.active ?? true) == true)
          .length;

      // case when Container type is removed using REMOVE button
      if ((x.active ?? true) == false) {
        addedContainersList
            .where(
              (e) =>
                  e.containerType == x.containerType &&
                  e.suggestedAssetNumber == x.suggestedAssetNumber &&
                  e.assetNumberUsed == null,
            )
            .forEach((item) {
              item.active = false;
            });
      } else if (quantityReceived == 0) {
        while (quantity > 0) {
          addedContainersList.add(x.copyWith());
          quantity = quantity - 1;
        }
      } else if (quantity > quantityReceived) {
        quantity = quantity - quantityReceived;
        while (quantity > 0) {
          addedContainersList.add(x.copyWith());
          quantity = quantity - 1;
        }
      } else if (quantity < quantityReceived) {
        addedContainersList
            .where(
              (e) =>
                  e.containerType == x.containerType &&
                  e.suggestedAssetNumber == x.suggestedAssetNumber &&
                  e.assetNumberUsed == null &&
                  (e.active ?? true) == true,
            )
            .skip(quantity)
            .forEach((item) {
              item.active = false;
            });
      }
    }
    return addedContainersList;
  }

  void showLoader() {
    isLoading = true;
    notifyListeners();
  }

  void hideLoader() {
    isLoading = false;
    notifyListeners();
  }

  void _clearAddedContainers(ContainerLocationOption option) {
    void clearCustomerContainer() {
      selectedCustomerLocnContainer.value = null;
      addedCustomerLocnContainers.value = [];
    }

    void clearStartContainer() {
      selectedStartLocnContainer.value = null;
      addedStartLocnContainers.value = [];
    }

    switch (option) {
      case ContainerLocationOption.customer:
        clearCustomerContainer();
      case ContainerLocationOption.start:
        clearStartContainer();
      case ContainerLocationOption.both:
        clearCustomerContainer();
        clearStartContainer();
    }
  }

  Future<void> _getProvisionalCosts({
    required String? jobType,
    required String? startLocationCode,
    required String? endLocationCode,
    required String? customerLocationCode,
    required DateTime? startDate,
  }) async {
    loadingPrices.value = true;
    provisionalRateOptions.value = await jobListService.getProvisionalCosts(
      jobType: jobType,
      startLocationCode: startLocationCode,
      customerLocationCode: customerLocationCode,
      endLocationCode: endLocationCode,
      startDate: startDate,
    );
    loadingPrices.value = false;
  }

  HaulierDetails? getHaulierToUpdate() {
    final selected = selectedhaulier.value;
    //We want to keep the haulier detail eventhough the job is unassigned/pending state.
    return (jobDetails?.jobStatus == StringConstants.pendingApiValue &&
            selected == null)
        ? jobDetails?.haulier
        : selected != null
        ? HaulierDetails(
            haulierCode: selected.haulierCode,
            haulierName: selected.haulierName,
            haulierType: selected.haulierType,
            assetNumber: selected.assetNumber,
            vrm: selected.vrm,
          )
        : null;
  }

  void disableAllUiFields() {
    for (final notifier in readOnlyMap.values) {
      notifier.value = true;
    }
  }

  void enableAllUiFields() {
    for (final notifier in readOnlyMap.values) {
      notifier.value = false; // readOnly = false
    }
  }

  void enableOnlyUiFields(Set<String> fieldsToEnable) {
    readOnlyMap.forEach((fieldName, notifier) {
      notifier.value = !fieldsToEnable.contains(fieldName);
    });
  }

  bool didUserUpdateScheduleDate() {
    final updatedScheduledDate = selectedScheduledDate.value;
    final existingScheduledDate = jobDetails?.scheduledDate?.toLocal();

    // Case 1: both null → no update
    if (updatedScheduledDate == null && existingScheduledDate == null) {
      return false;
    }

    // Case 2: one is null and the other isn't → updated
    if (updatedScheduledDate == null || existingScheduledDate == null) {
      return true;
    }

    // Case 3: compare only YYYY-MM-DD
    return !DateHelper.isSameDate(updatedScheduledDate, existingScheduledDate);
  }

  bool isExactSchedule() {
    //For create and clone, schedule is always flexible
    //ie system schedules at next available timeslot.
    if (mode != JobMode.edit) {
      return false;
    }
    final hasUserUpdatedScheduledDate = didUserUpdateScheduleDate();
    if (hasUserUpdatedScheduledDate) {
      return false;
    }
    return true;
  }
}
