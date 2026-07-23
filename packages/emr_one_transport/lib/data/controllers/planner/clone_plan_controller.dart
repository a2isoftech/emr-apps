import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/common/product.dart';
import 'package:emr_one_transport/data/models/common/product_family.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/models/plans/clone_plan_request.dart';
import 'package:emr_one_transport/data/models/plans/plan_container.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/data/planner/plan_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/material.dart';

class ClonePlanController extends ChangeNotifier {
  ClonePlanController({
    required this.jobListservice,
    required this.planService,
  });
  final JobListService jobListservice;
  final PlanService planService;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ValueNotifier<List<Containers>> addedstartlocncontainers =
      ValueNotifier([]);
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

  ValueNotifier<String?> selectedProductType = ValueNotifier(null);
  ValueNotifier<List<Product>> selectedProduct = ValueNotifier([]);
  ValueNotifier<List<String>> selectedDays = ValueNotifier([]);
  ValueNotifier<List<Product>> products = ValueNotifier([]);

  final days = ValueNotifier(StringConstants.clonePlanDays);
  int planNumber = 0;
  bool isProductLoading = false;
  bool isLoading = false;

  List<Containers> containerTypes = [];
  List<String> productTypes = [];
  List<ListDetails> productTypesList = [];

  ValueNotifier<DateTime> cloneDate = ValueNotifier(DateTime.now());
  ValueNotifier<int> loads = ValueNotifier(0);

  Future<void> getContainers() async {
    final containerslist = await jobListservice.getContainerTypes();
    containerTypes = containerslist
        .map((e) => Containers(containerType: e.description ?? e.code ?? ''))
        .toList();
    final allContainerTypes = containerTypes;
    customerLocnContainerTypes.value = allContainerTypes.toList();
    startLocnContainerTypes.value = allContainerTypes.toList();
  }

  Future<ActionResult> clonePlan() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(status: ActionStatus.formValidationFailed);
    }

    final request = buildClonePlanRequest();
    final apiResponse = await planService.clonePlan(request);

    if (apiResponse.isSuccess) {
      return ActionResult(status: ActionStatus.apiSuccess);
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: apiResponse.errorMessage,
      );
    }
  }

  Future<void> setFieldValues(PlanResponse plan) async {
    showLoader();
    selectedProductType.addListener(_getProducts);
    await Future.wait([getProductTypes()]);
    productTypes = productTypesList
        .map((e) => e.description ?? e.code ?? '')
        .toList();

    planNumber = plan.planNumber;
    selectedDays.value = [];
    cloneDate.value = DateTime.now();
    loads.value = plan.loads;
    selectedProductType.value = plan.productFamily?.code != ''
        ? plan.productFamily?.code
        : null;
    selectedProduct.value =
        plan.productFamily?.products
            ?.where((e) => (e.active ?? false) == true)
            .toList() ??
        [];
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
    selectedCustomerLocnContainer.addListener(
      onSelectedCustomerLocnContainerChanged,
    );
    selectedStartLocnContainer.addListener(onSelectedStartLocnContainerChanged);
    hideLoader();
    notifyListeners();
  }

  ClonePlanRequest buildClonePlanRequest() {
    return ClonePlanRequest(
      planNumber,
      cloneDate.value.toUtc(),
      loads.value,
      selectedProductType.value != null
          ? ProductFamily(
              code: selectedProductType.value,
              products: selectedProduct.value,
              active: true,
            )
          : null,
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
      selectedDays.value,
    );
  }

  Future<void> getProductTypes() async {
    productTypesList = await jobListservice.getProductTypes();
  }

  Future<void> _getProducts() async {
    selectedProduct.value = [];
    if (selectedProductType.value != null) {
      setProductsLoading(isLoading: true);
      products.value = await getProductbyFamily(selectedProductType.value!);
      setProductsLoading();
    }
  }

  void setProductsLoading({bool isLoading = false}) {
    isProductLoading = isLoading;
    notifyListeners();
  }

  Future<List<Product>> getProductbyFamily(String productType) async {
    final productsByfamily = await jobListservice.getProductByFamily(
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

  void onSelectedCustomerLocnContainerChanged() {
    if (selectedCustomerLocnContainer.value != null &&
        addedCustomerLocnContainers.value.length < 9 &&
        !addedCustomerLocnContainers.value.any(
          (e) =>
              e.containerType ==
              selectedCustomerLocnContainer.value?.containerType,
        )) {
      addedCustomerLocnContainers.value = [
        ...addedCustomerLocnContainers.value,
        ContainerDetails(
          containerType: selectedCustomerLocnContainer.value?.containerType,
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
              selectedStartLocnContainer.value?.containerType,
        )) {
      addedStartLocnContainers.value = [
        ...addedStartLocnContainers.value,
        ContainerDetails(
          containerType: selectedStartLocnContainer.value?.containerType,
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
