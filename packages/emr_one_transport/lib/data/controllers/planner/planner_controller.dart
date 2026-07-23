import 'package:collection/collection.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/planner/schedule_plan_controller.dart';
import 'package:emr_one_transport/data/models/common/account.dart';
import 'package:emr_one_transport/data/models/common/enum.dart' hide Uom;
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/common/product.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/common/provisional_cost_details.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/models/jobs/customer_details.dart';
import 'package:emr_one_transport/data/models/plans/plan_container.dart';
import 'package:emr_one_transport/data/models/plans/plan_request.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/planner/plan_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:flutter/material.dart';

class PlannerController extends ChangeNotifier {
  PlannerController({
    required this.joblistservice,
    required this.schedulePlanController,
    required this.planService,
  });
  final SchedulePlanController schedulePlanController;
  final JobListService joblistservice;
  final PlanService planService;
  PlanResponse? plan;

  List<String> jobTypes = [];
  List<String> dispatchYards = [];
  List<String> trailerTypes = [];
  List<Containers> containerTypes = [];
  List<String> productTypes = [];
  List<Uom> uomTypes = [];
  List<String> due = [];

  ValueNotifier<List<ContainerDetails>> addedCustomerLocnContainers =
      ValueNotifier([]);
  ValueNotifier<List<ContainerDetails>> addedStartLocnContainers =
      ValueNotifier([]);

  ValueNotifier<Containers?> selectedCustomerLocnContainer = ValueNotifier(
    null,
  );
  ValueNotifier<Containers?> selectedStartLocnContainer = ValueNotifier(null);
  ValueNotifier<List<Haulier>> addedHaulier = ValueNotifier([]);

  ValueNotifier<String> selectedUomType = ValueNotifier('');
  ValueNotifier<String> selectedDue = ValueNotifier('');
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
  ValueNotifier<String?> selectedProductType = ValueNotifier(null);
  ValueNotifier<List<Product>> selectedProduct = ValueNotifier([]);
  ValueNotifier<Haulier?> selectedHaulier = ValueNotifier(null);

  ValueNotifier<DateTime?> selectedScheduledDate = ValueNotifier<DateTime?>(
    DateTime.now(),
  );
  ValueNotifier<DateTime?> selectedDueDate = ValueNotifier<DateTime?>(
    DateTime.now(),
  );
  ValueNotifier<String> dispatcherNotes = ValueNotifier<String>('');
  ValueNotifier<String> officeNotes = ValueNotifier<String>('');
  ValueNotifier<int> selectedWeightPerLoad = ValueNotifier(1);
  ValueNotifier<int> selectedTotalLoad = ValueNotifier(1);
  ValueNotifier<List<String>> selectedDays = ValueNotifier([]);
  ValueNotifier<bool> isStartLocnEnabled = ValueNotifier<bool>(true);
  ValueNotifier<bool> isEndLocnEnabled = ValueNotifier<bool>(true);
  String defaultGuid = '00000000-0000-0000-0000-000000000000';

  final uomValueNotifier = ValueNotifier<UomValue?>(null);

  final days = ValueNotifier(StringConstants.clonePlanDays);

  bool isLoading = true;
  bool isProductLoading = false;
  //Haulage price
  final loadingPrices = ValueNotifier<bool>(false);
  final provisionalRateOptions = ValueNotifier<List<ProvisionalCostDetails>>(
    [],
  );

  Future<List<Product>> getProductbyFamily(String productType) async {
    final productsByfamily = await joblistservice.getProductByFamily(
      productType,
    );

    return productsByfamily.where((x) => (x.active ?? true) == true).map((e) {
      return Product(
        id: '',
        code: e.code ?? '',
        description: e.description,
        active: e.active ?? true,
      );
    }).toList();
  }

  List<DispatchYards> dispatchYardsList = [];
  List<ListDetails> containersList = [];
  List<ListDetails> trailerTypesList = [];
  List<ListDetails> productTypesList = [];

  Future<void> fetchPlanDetails(int? planNumber) async {
    selectedHaulier.addListener(onSelectedHaulierChanged);

    if (planNumber != null && planNumber > 0) {
      final result = await planService.getPlanDetailsByPlanNumber(planNumber);
      plan = result;
    }

    final jobTypesList = JobType.values.map((e) => e.toString()).toList();
    jobTypesList.sort();
    final dueList = Due.values.map((e) => e.toString()).toList();

    await Future.wait([
      schedulePlanController.initialize(plan?.planNumber),
      _getDispatchYardsForUser(),
      _getContainerTypes(),
      _getTrailerTypes(),
      _getProductTypes(),
    ]);

    jobTypes = jobTypesList;
    due = dueList;
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

    selectedProductType.addListener(_getProducts);

    if (plan != null) {
      await setInitialFieldValues(plan!);
    }
    isLoading = false;
    notifyListeners();

    selectedJobtype.addListener(_jobTypeChanged);
    selectedCustomerLocation.addListener(_autoFillStartOrEndLocation);

    selectedCustomerLocation.addListener(
      _onSelectedStartOrEndOrCustomerLocationsChangedCallback,
    );

    selectedStartLocation.addListener(
      _onSelectedStartOrEndOrCustomerLocationsChangedCallback,
    );

    selectedEndLocation.addListener(
      _onSelectedStartOrEndOrCustomerLocationsChangedCallback,
    );
  }

  Future<void> _onSelectedStartOrEndOrCustomerLocationsChangedCallback() async {
    loadingPrices.value = true;
    provisionalRateOptions.value = await joblistservice.getProvisionalCosts(
      jobType: selectedJobtype.value,
      startLocationCode: selectedStartLocation.value.locationCode,
      endLocationCode: selectedEndLocation.value.locationCode,
      customerLocationCode: selectedCustomerLocation.value.locationCode,
      startDate: plan?.planDate ?? DateTime.now(),
    );
    loadingPrices.value = false;
  }

  Future<void> _getDispatchYardsForUser() async {
    dispatchYardsList = await joblistservice.getDispatchYardsForUser();
  }

  Future<void> _getContainerTypes() async {
    containersList = await joblistservice.getContainerTypes();
  }

  Future<void> _getTrailerTypes() async {
    trailerTypesList = await joblistservice.getTrailerTypes();
  }

  Future<void> _getProductTypes() async {
    productTypesList = await joblistservice.getProductTypes();
  }

  Future<void> _getProducts() async {
    selectedProduct.value = [];
    if (selectedProductType.value != null) {
      isProductLoading = true;
      products.value = await getProductbyFamily(selectedProductType.value!);
      isProductLoading = false;
    }
  }

  Future<void> _jobTypeChanged() async {
    _resetContainers();

    if (selectedCustomerLocation.value.customerCode != null ||
        selectedCustomerLocation.value.locationCode != null) {
      _fillStartOrEndLocation();
      provisionalRateOptions.value = await joblistservice.getProvisionalCosts(
        jobType: selectedJobtype.value,
        startLocationCode: selectedStartLocation.value.locationCode,
        endLocationCode: selectedEndLocation.value.locationCode,
        customerLocationCode: selectedCustomerLocation.value.locationCode,
        startDate: plan?.planDate ?? DateTime.now(),
      );
    }
  }

  Future<void> _autoFillStartOrEndLocation() async {
    if (selectedJobtype.value != '') {
      _fillStartOrEndLocation();
    }
  }

  void _resetContainers() {
    addedStartLocnContainers.value = [];
    addedCustomerLocnContainers.value = [];

    selectedCustomerLocnContainer.value = null;
    selectedStartLocnContainer.value = null;
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

  Future<ApiResponse<PlanResponse>> createPlan() async {
    try {
      _setLoading(true);
      final requestBody = buildPlanRequestModel();
      final response = await planService.createPlan(requestBody);
      return response;
    } finally {
      _setLoading(false);
    }
  }

  Future<ApiResponse<PlanResponse>> updatePlan() async {
    _setLoading(true);
    final requestBody = buildPlanRequestModel();
    updateProductsForJobEdit(requestBody);
    final response = await planService.updatePlan(
      id: plan!.id,
      body: requestBody,
    );
    _setLoading(false);
    return response;
  }

  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  Future<void> resetFields() async {
    selectedJobtype.value = null;
    selectedTrailertype.value = '';
    selectedDispatchYard.value = '';
    selectedCustomerLocation.value = Account();
    selectedStartLocation.value = Account();
    selectedEndLocation.value = Account();
    selectedProductType.value = null;
    selectedProduct.value = [];
    selectedHaulier.value = null;
    selectedScheduledDate.value = DateTime.now();
    selectedDueDate.value = DateTime.now();
    dispatcherNotes.value = '';
    officeNotes.value = '';
    selectedDays.value = [];
    selectedDue.value = '';
    selectedTotalLoad.value = 1;
    uomValueNotifier.value = null;
    addedHaulier.value = [];
    addedCustomerLocnContainers.value = [];
    addedStartLocnContainers.value = [];
    selectedCustomerLocnContainer.value = null;
    selectedStartLocnContainer.value = null;
    provisionalRateOptions.value = [];

    if (plan != null) {
      await setInitialFieldValues(plan!);
    }
  }

  PlanRequest buildPlanRequestModel() {
    final haulierSchedule = schedulePlanController
        .getUpdatedScheduleWithDiffs();
    final jobsToDelete = schedulePlanController.getJobsTodelete();

    return PlanRequest(
      selectedScheduledDate.value?.toUtc(),
      selectedProductType.value != null
          ? ProductFamily(
              code: selectedProductType.value,
              products: selectedProduct.value,
              active: true,
            )
          : null,
      selectedTotalLoad.value,
      selectedDispatchYard.value,
      selectedDue.value,
      selectedJobtype.value!.toApiValue(),
      dispatcherNotes.value,
      officeNotes.value,
      CustomerDetails(
        code: selectedCustomerLocation.value.customerCode,
        name: selectedCustomerLocation.value.customerName,
        sicCode: selectedCustomerLocation.value.sicCode,
      ),
      LocationInfo(
        code: selectedCustomerLocation.value.locationCode,
        name: selectedCustomerLocation.value.locationName,
        address: selectedCustomerLocation.value.address,
      ),
      LocationInfo(
        code: selectedStartLocation.value.locationCode,
        name: selectedStartLocation.value.locationName,
        address: selectedStartLocation.value.address,
      ),
      LocationInfo(
        code: selectedEndLocation.value.locationCode,
        name: selectedEndLocation.value.locationName,
        address: selectedEndLocation.value.address,
      ),
      haulierSchedule,
      PlanContainer(
        addedCustomerLocnContainers.value
            .expand(
              (container) => List.filled(
                container.quantity.value,
                container.containerType ?? '',
              ),
            )
            .toList(),
        addedStartLocnContainers.value
            .expand(
              (container) => List.filled(
                container.quantity.value,
                container.containerType ?? '',
              ),
            )
            .toList(),
      ),
      null,
      selectedDays.value,
      jobsToDelete: jobsToDelete,
      uomValue: uomValueNotifier.value,
    );
  }

  Future<void> setInitialFieldValues(PlanResponse plan) async {
    selectedJobtype.value = jobTypeFromApiValue(
      plan.jobType.toString(),
    ).toString();
    selectedDispatchYard.value = plan.dispatchYard;
    selectedProductType.value = plan.productFamily?.code != ''
        ? plan.productFamily?.code
        : null;
    selectedProduct.value =
        plan.productFamily?.products
            ?.where((e) => (e.active ?? false) == true)
            .toList() ??
        [];
    selectedTrailertype.value = plan.trailer?.trailerType ?? '';
    selectedTrailerModel.value = plan.trailer?.model ?? '';
    selectedScheduledDate.value = plan.planDate?.toLocal();
    selectedTotalLoad.value = plan.loads;
    uomValueNotifier.value = plan.uomValue;
    selectedDue.value = plan.due ?? '';

    selectedCustomerLocation.value = Account(
      customerCode: plan.customer.code,
      customerName: plan.customer.name,
      sicCode: plan.customer.sicCode,
      locationCode: plan.customerLocation.code,
      locationName: plan.customerLocation.name,
      address: plan.customerLocation.address,
    );

    selectedStartLocation.value = Account(
      locationCode: plan.startLocation.code,
      locationName: plan.startLocation.name,
      address: plan.startLocation.address,
    );

    selectedEndLocation.value = Account(
      locationCode: plan.endLocation.code,
      locationName: plan.endLocation.name,
      address: plan.endLocation.address,
    );

    dispatcherNotes.value = plan.dispatcherNotes ?? '';
    officeNotes.value = plan.officeNotes ?? '';

    final truckHaulierList = <Haulier>[];

    for (final item in plan.haulierScheduleDetails) {
      final haulier = Haulier(
        accountNo: item.haulierCode,
        name: item.haulierName,
        isManagedHaulier:
            item.haulierType.toLowerCase() ==
            HaulierType.managed.name.toLowerCase(),
        isThirdPartyHaulier:
            item.haulierType.toLowerCase() !=
            HaulierType.internal.name.toLowerCase(),
        loads: ValueNotifier(item.loads),
      );
      truckHaulierList.add(haulier);
    }

    addedHaulier.value = truckHaulierList;

    final lstcustomerlocncontainers = <ContainerDetails>[];

    plan.containers?.customerLocationContainers.forEach((e) {
      if (lstcustomerlocncontainers.any((x) => x.containerType == e)) {
        lstcustomerlocncontainers
                .where((q) => q.containerType == e)
                .first
                .quantity
                .value =
            (lstcustomerlocncontainers
                .where((z) => z.containerType == e)
                .first
                .quantity
                .value) +
            1;
      } else {
        lstcustomerlocncontainers.add(ContainerDetails(containerType: e));
      }
    });

    addedCustomerLocnContainers = ValueNotifier(lstcustomerlocncontainers);

    final lststartlocncontainers = <ContainerDetails>[];

    plan.containers?.startLocationContainers.forEach((e) {
      if (lststartlocncontainers.any((x) => x.containerType == e)) {
        lststartlocncontainers
                .where((q) => q.containerType == e)
                .first
                .quantity
                .value =
            (lststartlocncontainers
                .where((z) => z.containerType == e)
                .first
                .quantity
                .value) +
            1;
      } else {
        lststartlocncontainers.add(ContainerDetails(containerType: e));
      }
    });

    addedStartLocnContainers = ValueNotifier(lststartlocncontainers);

    _fillStartOrEndLocation(onEditStandingOrderLoad: true);

    provisionalRateOptions.value = await joblistservice.getProvisionalCosts(
      jobType: selectedJobtype.value,
      startLocationCode: selectedStartLocation.value.locationCode,
      endLocationCode: selectedEndLocation.value.locationCode,
      customerLocationCode: selectedCustomerLocation.value.locationCode,
      startDate: plan.planDate ?? DateTime.now(),
    );
  }

  void updateProductsForJobEdit(PlanRequest requestModel) {
    final productsReceived = plan?.productFamily?.products ?? [];

    if (productsReceived.isEmpty) {
      return;
    }

    final updatedProductsList = <Product>[];

    updatedProductsList.addAll(
      productsReceived.map((e) => e.copyWith(active: false)).toList(),
    );

    for (final e in selectedProduct.value) {
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
      code: selectedProductType.value ?? '',
      products: updatedProductsList,
      active: true,
    );
  }

  Future<ApiResponse<bool>> deletePlan() async {
    _setLoading(true);
    final response = await planService.deletePlan(
      plan!.territoryCode,
      plan!.planNumber,
    );
    _setLoading(false);
    return response;
  }

  void onSelectedHaulierChanged() {
    if (selectedHaulier.value != null && !_checkHaulierAlreadyAdded()) {
      addedHaulier.value = [...addedHaulier.value, selectedHaulier.value!];
    }
  }

  bool _checkHaulierAlreadyAdded() {
    final newItem = selectedHaulier.value;
    if (newItem == null) return false;

    // compare by haulierCode
    if (newItem.accountNo != null) {
      return addedHaulier.value.any((e) => e.accountNo == newItem.accountNo);
    }
    return false;
  }

  bool validateLoads() {
    final addedLoads = addedHaulier.value.map((h) => h.loads?.value ?? 0).sum;
    return addedLoads <= selectedTotalLoad.value;
  }
}
