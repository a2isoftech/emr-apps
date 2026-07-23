import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/data/models/common/account.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/models/jobs/customer_details.dart';
import 'package:emr_one_transport/data/models/jobs/haulier_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order_container.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order_request_model.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/data/services/standing_order_service.dart';
import 'package:flutter/material.dart';

class StandingOrderCreateEditController extends ChangeNotifier {
  StandingOrderCreateEditController({
    required this.standingOrderService,
    required this.jobListService,
  });
  final StandingOrderService standingOrderService;
  final JobListService jobListService;

  StandingOrder? standingOrderDetails;
  List<String> jobTypes = [];
  List<String> dispatchYards = [];
  List<String> trailerTypes = [];
  List<Containers> containerTypes = [];
  List<String> productTypes = [];

  ValueNotifier<List<ContainerDetails>> addedCustomerLocnContainers =
      ValueNotifier([]);
  ValueNotifier<List<ContainerDetails>> addedStartLocnContainers =
      ValueNotifier([]);

  ValueNotifier<Containers?> selectedCustomerLocnContainer = ValueNotifier(
    null,
  );
  ValueNotifier<Containers?> selectedStartLocnContainer = ValueNotifier(null);

  List<Containers> allContainerTypes = [];
  ValueNotifier<List<Containers>> customerLocnContainerTypes = ValueNotifier(
    [],
  );
  ValueNotifier<List<Containers>> startLocnContainerTypes = ValueNotifier([]);
  ValueNotifier<List<Product>> products = ValueNotifier([]);
  ValueNotifier<String?> selectedJobtype = ValueNotifier(null);
  ValueNotifier<String> selectedTrailertype = ValueNotifier('');
  ValueNotifier<String> selectedTrailerModel = ValueNotifier('');
  ValueNotifier<String> selectedDispatchYard = ValueNotifier('');
  ValueNotifier<Account> selectedCustomerLocation = ValueNotifier(Account());
  ValueNotifier<Account> selectedStartLocation = ValueNotifier(Account());
  ValueNotifier<Account> selectedEndLocation = ValueNotifier(Account());
  ValueNotifier<String?> selectedproductType = ValueNotifier(null);
  ValueNotifier<List<Product>> selectedproduct = ValueNotifier([]);
  ValueNotifier<TruckInfo?> selectedhaulier = ValueNotifier(null);
  ValueNotifier<DateTime?> selectedEffectiveDate = ValueNotifier<DateTime?>(
    DateTime.now(),
  );
  ValueNotifier<DateTime?> selectedExpiryDate = ValueNotifier<DateTime?>(null);
  ValueNotifier<String> dispatcherNotes = ValueNotifier<String>('');
  ValueNotifier<String> officeNotes = ValueNotifier<String>('');
  ValueNotifier<int?> numberofDaysInAdvance = ValueNotifier(7);
  ValueNotifier<bool> isStartLocnEnabled = ValueNotifier<bool>(true);
  ValueNotifier<bool> isEndLocnEnabled = ValueNotifier<bool>(true);
  ValueNotifier<bool> recreateFutureJobs = ValueNotifier<bool>(false);
  ValueNotifier<int> proposedDuration = ValueNotifier<int>(0);

  final List<String> reccuringFrequency = StandingOrderFrequency.values
      .map((e) => e.toString())
      .toList();

  final List<String> repetitionPerDay = RepetitionPerDay.values
      .map((e) => e.toString())
      .toList();

  ValueNotifier<Map<String, String>> weekdays = ValueNotifier(
    Map.fromEntries(
      DayOfWeek.values.map((e) => MapEntry(e.toString(), e.toString())),
    ),
  );

  ValueNotifier<String> selectedReccuringFrequency = ValueNotifier('');
  ValueNotifier<String> selectedRepetitionPerDay = ValueNotifier('');
  ValueNotifier<List<String>> selectedWeekDays = ValueNotifier([]);
  EmrButtonGroupFormFieldMode weekDaysMode = EmrButtonGroupFormFieldMode.single;
  ValueNotifier<bool> weekDaysEnabled = ValueNotifier(true);

  bool isLoading = true;
  bool isProductLoading = false;

  List<DispatchYards> dispatchYardsList = [];
  List<ListDetails> containersList = [];
  List<ListDetails> trailerTypesList = [];
  List<ListDetails> productTypesList = [];

  Future<void> initialize({String? standingOrderId, JobList? job}) async {
    showLoader();
    if (standingOrderId != null && standingOrderId.isNotEmpty) {
      final result = await standingOrderService.getStandingOrderDetailsById(
        standingOrderId,
      );
      standingOrderDetails = result;
    } else if (job != null) {
      standingOrderDetails = StandingOrder.fromJobList(job);
    }

    final jobtypeslist = JobType.values.map((e) => e.toString()).toList();
    jobtypeslist.sort();

    await Future.wait([
      _getDispatchYardsForUser(),
      _getContainerTypes(),
      _getTrailerTypes(),
      _getProductTypes(),
    ]);

    jobTypes = jobtypeslist;
    dispatchYards = dispatchYardsList.map((e) => e.yardCode ?? '').toList();

    containersList.addAll(trailerTypesList);
    containerTypes = containersList
        .map((e) => Containers(containerType: e.description ?? e.code ?? ''))
        .toList();

    productTypes = productTypesList
        .map((e) => e.description ?? e.code ?? '')
        .toList();

    customerLocnContainerTypes.value = containerTypes.toList();
    startLocnContainerTypes.value = containerTypes.toList();

    selectedproductType.addListener(_getProducts);

    if (standingOrderDetails != null) {
      setInitialFieldValues(standingOrderDetails);
    }
    hideLoader();

    selectedJobtype.addListener(_jobTypeChanged);
    selectedCustomerLocation.addListener(_autoFillStartOrEndLocation);
    selectedCustomerLocnContainer.addListener(
      onSelectedCustomerLocnContainerChanged,
    );
    selectedStartLocnContainer.addListener(onSelectedStartLocnContainerChanged);

    selectedStartLocation.addListener(_getProposedJobDuration);
    selectedEndLocation.addListener(_getProposedJobDuration);
  }

  void disposeListeners() {
    selectedJobtype.removeListener(_jobTypeChanged);
    selectedCustomerLocation.removeListener(_autoFillStartOrEndLocation);
    selectedStartLocation.removeListener(_getProposedJobDuration);
    selectedEndLocation.removeListener(_getProposedJobDuration);
    selectedCustomerLocnContainer.removeListener(
      onSelectedCustomerLocnContainerChanged,
    );
    selectedStartLocnContainer.removeListener(
      onSelectedStartLocnContainerChanged,
    );
    selectedproductType.removeListener(_getProducts);
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

  void _jobTypeChanged() {
    _resetContainers();

    if (selectedCustomerLocation.value.customerCode != null ||
        selectedCustomerLocation.value.locationCode != null) {
      _fillStartOrEndLocation();
    }
    _getProposedJobDuration();
  }

  void _resetContainers() {
    addedStartLocnContainers.value = [];
    addedCustomerLocnContainers.value = [];

    selectedCustomerLocnContainer.value = null;
    selectedStartLocnContainer.value = null;
  }

  void _autoFillStartOrEndLocation() {
    if (selectedJobtype.value != '') {
      _fillStartOrEndLocation();
    }
  }

  void _fillStartOrEndLocation({bool onEditStandingOrderLoad = false}) {
    final jobTypesWithSameStartandCustomerLocn = [
      JobType.pickUp.toString(),
      JobType.interCompanyUnload.toString(),
      JobType.pullAndReturn.toString(),
      JobType.maintenance.toString(),
    ];

    final jobTypesWithSameEndandCustomerLocn = [
      JobType.pullAndReturnType2.toString(),
      JobType.sales.toString(),
      JobType.preLoad.toString(),
      JobType.preLoadWithReturn.toString(),
      JobType.dropOff.toString(),
    ];

    if (jobTypesWithSameStartandCustomerLocn.contains(selectedJobtype.value)) {
      selectedStartLocation.value = selectedCustomerLocation.value;
      if (!onEditStandingOrderLoad) {
        selectedEndLocation.value = Account();
      }
      isStartLocnEnabled.value = false;
      isEndLocnEnabled.value = true;
    } else if (jobTypesWithSameEndandCustomerLocn.contains(
      selectedJobtype.value,
    )) {
      selectedEndLocation.value = selectedCustomerLocation.value;
      if (!onEditStandingOrderLoad) {
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
    selectedEffectiveDate.value = DateTime.now();
    selectedExpiryDate.value = null;
    dispatcherNotes.value = '';
    officeNotes.value = '';
    selectedReccuringFrequency.value = '';
    selectedRepetitionPerDay.value = '';
    selectedWeekDays.value = [];
    numberofDaysInAdvance.value = 7;
    proposedDuration.value = 0;

    if (standingOrderDetails != null) {
      setInitialFieldValues(standingOrderDetails);
    }
  }

  bool showCustomerLocationContainers(String selectedJobtype) {
    final jobswithcustomerlocationcontainers = [
      JobType.swap.toString(),
      JobType.pickUp.toString(),
      JobType.yardWork.toString(),
      JobType.pullAndReturn.toString(),
      JobType.emptyContainer.toString(),
      JobType.pullAndReturnType2.toString(),
    ];

    return jobswithcustomerlocationcontainers.any(
      (e) => e.toLowerCase() == selectedJobtype.toLowerCase(),
    );
  }

  bool showStartLocationContainers(String selectedJobtype) {
    final jobswithstartlocationcontainers = [
      JobType.swap.toString(),
      JobType.dropOff.toString(),
      JobType.liveLoad.toString(),
      JobType.sales.toString(),
      JobType.preLoad.toString(),
      JobType.pullAndReturnType2.toString(),
    ];

    return jobswithstartlocationcontainers.any(
      (e) => e.toLowerCase() == selectedJobtype.toLowerCase(),
    );
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

  StandingOrderRequestModel buildStandingOrderRequestModel() {
    final addedStartLocnContainerslst = <String>[];
    final addedCustomerLocnContainerslst = <String>[];

    for (final x in addedStartLocnContainers.value) {
      var quantity = x.quantity.value;
      while (quantity > 0) {
        addedStartLocnContainerslst.add(x.containerType ?? '');
        quantity = quantity - 1;
      }
    }

    for (final x in addedCustomerLocnContainers.value) {
      var quantity = x.quantity.value;
      while (quantity > 0) {
        addedCustomerLocnContainerslst.add(x.containerType ?? '');
        quantity = quantity - 1;
      }
    }

    return StandingOrderRequestModel(
      id: standingOrderDetails != null ? standingOrderDetails?.id : '',
      standingOrderId: '',
      active: standingOrderDetails?.active ?? true,
      effectiveDate: selectedEffectiveDate.value?.toUtc(),
      expiryDate: selectedExpiryDate.value?.toUtc(),
      dispatchYard: selectedDispatchYard.value,
      proposedDurationMinutes: proposedDuration.value,
      jobType: JobType.values.firstWhere(
        (e) => e.toString() == selectedJobtype.value,
      ),
      customer: standingOrderDetails != null
          ? standingOrderDetails?.customer
          : CustomerDetails(
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
      haulier: selectedhaulier.value?.haulierCode != null
          ? HaulierDetails(
              haulierCode: selectedhaulier.value?.haulierCode,
              haulierName: selectedhaulier.value?.haulierName,
              haulierType: selectedhaulier.value?.haulierType,
              assetNumber: selectedhaulier.value?.assetNumber,
              vrm: selectedhaulier.value?.vrm,
            )
          : null,
      containers: StandingOrderContainer(
        customerLocationContainers: addedCustomerLocnContainerslst,
        startLocationContainers: addedStartLocnContainerslst,
      ),
      dispatcherNotes: dispatcherNotes.value,
      recurringFrequency: selectedReccuringFrequency.value,
      repeatPerDay: repetitionPerDayForAPI(selectedRepetitionPerDay.value),
      daysInAdvance: numberofDaysInAdvance.value,
      applicableDays: selectedWeekDays.value,
      officeNotes: officeNotes.value,
      productFamily: selectedproductType.value != null
          ? ProductFamily(
              code: selectedproductType.value,
              products: selectedproduct.value,
              active: true,
            )
          : null,
    );
  }

  bool showWeekdays(
    String selectedReccuringFrequency, {
    bool isEditScreen = false,
  }) {
    if (selectedReccuringFrequency == StandingOrderFrequency.daily.toString()) {
      selectedWeekDays.value = DayOfWeek.values
          .map((e) => e.toString())
          .toList();
      weekDaysMode = EmrButtonGroupFormFieldMode.multiple;
      weekDaysEnabled.value = false;
      return true;
    } else if (selectedReccuringFrequency ==
            StandingOrderFrequency.weekly.toString() ||
        selectedReccuringFrequency ==
            StandingOrderFrequency.biWeekly.toString()) {
      if (!isEditScreen) {
        selectedWeekDays.value = [];
      }
      weekDaysMode = EmrButtonGroupFormFieldMode.multiple;
      weekDaysEnabled.value = true;
      return true;
    }
    selectedWeekDays.value = [];
    return false;
  }

  void setInitialFieldValues(StandingOrder? standingOrder) {
    if (standingOrder != null) {
      selectedJobtype.value = jobTypeFromApiValue(
        standingOrder.jobType ?? '',
      ).toString();
      selectedDispatchYard.value = standingOrder.dispatchYard ?? '';
      selectedproductType.value = standingOrder.productFamily?.code != ''
          ? standingOrder.productFamily?.code
          : null;
      selectedproduct.value =
          standingOrder.productFamily?.products
              ?.where((e) => (e.active ?? false) == true)
              .toList() ??
          [];
      selectedTrailertype.value = standingOrder.trailer?.trailerType ?? '';
      selectedTrailerModel.value = standingOrder.trailer?.model ?? '';

      selectedEffectiveDate.value = standingOrder.effectiveDate?.toLocal();
      selectedExpiryDate.value = standingOrder.expiryDate?.toLocal();
      selectedCustomerLocation.value = standingOrder.customerLocation != null
          ? Account(
              locationCode: standingOrder.customerLocation?.code,
              locationName: standingOrder.customerLocation?.name,
              address: standingOrder.customerLocation?.address,
            )
          : Account();

      selectedStartLocation.value = standingOrder.startLocation != null
          ? Account(
              locationCode: standingOrder.startLocation?.code,
              locationName: standingOrder.startLocation?.name,
              address: standingOrder.startLocation?.address,
            )
          : Account();

      selectedEndLocation.value = standingOrder.endLocation != null
          ? Account(
              locationCode: standingOrder.endLocation?.code,
              locationName: standingOrder.endLocation?.name,
              address: standingOrder.endLocation?.address,
            )
          : Account();

      selectedhaulier.value = standingOrder.haulier != null
          ? TruckInfo(
              haulierCode: standingOrder.haulier?.haulierCode,
              haulierName: standingOrder.haulier?.haulierName,
              haulierType: standingOrder.haulier?.haulierType,
              assetNumber: standingOrder.haulier?.assetNumber,
              vrm: standingOrder.haulier?.vrm,
            )
          : TruckInfo();

      proposedDuration.value = standingOrder.duration ?? 0;
      dispatcherNotes.value = standingOrder.dispatcherNotes ?? '';
      officeNotes.value = standingOrder.officeNotes ?? '';

      selectedReccuringFrequency.value = standingOrder.recurringFrequency ?? '';
      numberofDaysInAdvance.value = standingOrder.daysInAdvance ?? 7;
      selectedWeekDays.value = standingOrder.applicableDays ?? [];
      selectedRepetitionPerDay.value = standingOrder.repeatPerDay != null
          ? repetitionPerDayFromAPI(standingOrder.repeatPerDay ?? 0)
          : '';

      final lstcustomerlocncontainers = <ContainerDetails>[];

      standingOrder.containers?.customerLocationContainers?.forEach((e) {
        if (lstcustomerlocncontainers.any((x) => x.containerType == e)) {
          lstcustomerlocncontainers
                  .firstWhere((q) => q.containerType == e)
                  .quantity
                  .value =
              (lstcustomerlocncontainers
                  .firstWhere((z) => z.containerType == e)
                  .quantity
                  .value) +
              1;
        } else {
          lstcustomerlocncontainers.add(ContainerDetails(containerType: e));
        }
      });

      addedCustomerLocnContainers = ValueNotifier(lstcustomerlocncontainers);

      final lststartlocncontainers = <ContainerDetails>[];

      standingOrder.containers?.startLocationContainers?.forEach((e) {
        if (lststartlocncontainers.any((x) => x.containerType == e)) {
          lststartlocncontainers
                  .firstWhere((q) => q.containerType == e)
                  .quantity
                  .value =
              (lststartlocncontainers
                  .firstWhere((z) => z.containerType == e)
                  .quantity
                  .value) +
              1;
        } else {
          lststartlocncontainers.add(ContainerDetails(containerType: e));
        }
      });

      addedStartLocnContainers = ValueNotifier(lststartlocncontainers);

      _fillStartOrEndLocation(onEditStandingOrderLoad: true);
    }
  }

  Future<ApiResponse<StandingOrder>> createStandingOrder() async {
    showLoader();
    final requestBody = buildStandingOrderRequestModel();
    final response = await standingOrderService.createStandingOrder(
      requestBody,
    );

    hideLoader();
    return response;
  }

  Future<ApiResponse<StandingOrder>> updateStandingOrder() async {
    showLoader();
    try {
      final requestBody = buildStandingOrderRequestModel();
      updateProductsForJobEdit(requestBody);
      if (recreateFutureJobs.value) {
        final response = await standingOrderService
            .updateStandingOrderDetailsWithJobsbyId(requestBody);
        return response;
      }

      final response = await standingOrderService
          .updateStandingOrderDetailsbyId(requestBody);
      return response;
    } finally {
      hideLoader();
    }
  }

  void updateProductsForJobEdit(StandingOrderRequestModel requestModel) {
    final productsReceived =
        standingOrderDetails?.productFamily?.products ?? [];

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

  void onSelectedCustomerLocnContainerChanged() {
    if (selectedCustomerLocnContainer.value != null &&
        addedCustomerLocnContainers.value.length < 9 &&
        !addedCustomerLocnContainers.value.any(
          (e) =>
              e.containerType ==
                  selectedCustomerLocnContainer.value?.containerType &&
              e.suggestedAssetNumber ==
                  selectedCustomerLocnContainer.value?.assetNumber,
        )) {
      addedCustomerLocnContainers.value = [
        ...addedCustomerLocnContainers.value,
        ContainerDetails(
          containerType: selectedCustomerLocnContainer.value?.containerType,
          suggestedAssetNumber:
              selectedCustomerLocnContainer.value?.assetNumber,
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
                  selectedStartLocnContainer.value?.assetNumber,
        )) {
      addedStartLocnContainers.value = [
        ...addedStartLocnContainers.value,
        ContainerDetails(
          containerType: selectedStartLocnContainer.value?.containerType,
          suggestedAssetNumber: selectedStartLocnContainer.value?.assetNumber,
        ),
      ];
    }
    selectedStartLocnContainer.value = null;
  }

  void showLoader() {
    isLoading = true;
    notifyListeners();
  }

  void hideLoader() {
    isLoading = false;
    notifyListeners();
  }
}
