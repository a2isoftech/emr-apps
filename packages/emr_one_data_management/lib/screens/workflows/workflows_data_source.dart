import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/queries/workflows/workflows.dart';
import 'package:emr_core_api/services/core_api_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/workflows/workflows_filter_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

typedef ApiStocktakeRule =
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule;

typedef ApiYardPaymentRule =
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule;

typedef ApiAccountApprovalRule =
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule;

class WorkflowsDataSource extends EmrQueryGraphQLDataSource<WorkflowRule> {
  WorkflowsDataSource({
    required this.coreApiService,
    required this.errorHandler,
    required this.workflowsFilterController,
  });

  final CoreApiService coreApiService;
  final void Function(String) errorHandler;
  final WorkflowsFilterController workflowsFilterController;

  @override
  bool get supportsFacets => false;

  @override
  bool get supportsPaging => false;

  @override
  Future<void> refresh() async {
    loading.value = true;

    final workflowType = workflowsFilterController.getCurrentWorkflowAsEnum();

    final yardCodes = workflowsFilterController.filters.value.isNotEmpty
        ? workflowsFilterController.filters.value
                  .firstWhereOrNull(
                    (x) => x.key == WorkflowsFilterController.kYard,
                  )
                  ?.value
              as List<String>?
        : null;

    final territoryCodes = workflowsFilterController.filters.value.isNotEmpty
        ? workflowsFilterController.filters.value
                  .firstWhereOrNull(
                    (x) => x.key == WorkflowsFilterController.kTerritory,
                  )
                  ?.value
              as List<String>?
        : null;

    final productFamilies = workflowsFilterController.filters.value.isNotEmpty
        ? workflowsFilterController.filters.value
                  .firstWhereOrNull(
                    (x) => x.key == WorkflowsFilterController.kProductFamily,
                  )
                  ?.value
              as List<String>?
        : null;

    final response = await coreApiService.referenceData.searchWorkfloweRules(
      territoryCodes: territoryCodes,
      yardCodes: yardCodes,
      productFamilies: productFamilies,
      workflowType: workflowType,
      query: queryScope.query,
    );

    if (!response.success) {
      errorHandler(response.message);
    } else {
      data.value = response.data!.map((x) {
        return switch (x) {
          ApiStocktakeRule() => StocktakeRule(
            id: x.id,
            yardCode: x.yardCode,
            productFamily: x.productFamily,
            levelUserEmails: Map.fromEntries(
              x.levelUserEmails.map(
                (y) => MapEntry<int, List<String>>(y.key, y.value),
              ),
            ),
          ),
          ApiYardPaymentRule() => YardPaymentRule(
            id: x.id,
            yardCode: x.yardCode,
            minAmount: x.minAmount,
            maxAmount: x.maxAmount,
            levelUserEmails: Map.fromEntries(
              x.levelUserEmails.map(
                (y) => MapEntry<int, List<String>>(y.key, y.value),
              ),
            ),
          ),
          ApiAccountApprovalRule() => AccountApprovalRule(
            id: x.id,
            yardCode: x.yardCode,
            levelUserEmails: Map.fromEntries(
              x.levelUserEmails.map(
                (y) => MapEntry<int, List<String>>(y.key, y.value),
              ),
            ),
          ),
          _ => throw Exception('Unknown workflow rule type: ${x.runtimeType}'),
        };
      }).toList();
    }

    loading.value = false;
  }
}
