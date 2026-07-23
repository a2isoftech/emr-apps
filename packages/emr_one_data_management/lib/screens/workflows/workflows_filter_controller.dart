import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

class WorkflowsFilterController extends EmrFilterController {
  WorkflowsFilterController(
    CoreApiService coreApiService,
    String defaultTerritoryCode,
    void Function(String) errorHandler,
  ) : super(
        filterContentBuilder: (context, filter, controller) {
          return switch (filter.key) {
            kWorkflowType => EmrFilterAutoComplete<String, String>(
              Key(filter.key),
              filter,
              controller,
              (pattern, filterController) async {
                return [
                  kStocktakeWorkflow,
                  kPaymentWorkflow,
                  kAccountWorkflow,
                ].where((x) => x.toLowerCase().contains(pattern.toLowerCase()));
              },
              close: Navigator.of(context).pop,
              getTitle: (p0) => p0,
              getValue: (p0) => p0,
            ),
            kTerritory => EmrFilterAutoComplete<String, String>(
              Key(filter.key),
              filter,
              controller,
              (pattern, filterController) async {
                final workflowType =
                    (filterController as WorkflowsFilterController)
                        .getCurrentWorkflowAsEnum();
                final response = await coreApiService.referenceData
                    .getWorkflowRuleFilterValues(workflowType);

                if (response.success) {
                  final filters = response.data!;
                  if (filters.isEmpty) return [];
                  return filters.keys.where(
                    (x) => x.toLowerCase().contains(pattern.toLowerCase()),
                  );
                }
                errorHandler(response.message);
                return [];
              },
              close: Navigator.of(context).pop,
              getTitle: (p0) => p0,
              getValue: (p0) => p0,
              multi: true,
            ),
            kYard => EmrFilterAutoComplete<String, String>(
              Key(filter.key),
              filter,
              controller,
              (pattern, filterController) async {
                final workflowType = (controller as WorkflowsFilterController)
                    .getCurrentWorkflowAsEnum();

                final response = await coreApiService.referenceData
                    .getWorkflowRuleFilterValues(workflowType);

                if (response.success) {
                  final filters = response.data;
                  if (filters!.isEmpty) return [];
                  final territoryCodes =
                      filterController.filters.value
                              .firstWhereOrNull((x) => x.key == kTerritory)
                              ?.value
                          as List<String>?;

                  if (territoryCodes != null && territoryCodes.isNotEmpty) {
                    return territoryCodes
                        .map((x) => filters[x]!)
                        .flattenedToList
                        .where(
                          (x) =>
                              x.toLowerCase().contains(pattern.toLowerCase()),
                        );
                  }
                  return filters.values.flattenedToList.where(
                    (x) => x.toLowerCase().contains(pattern.toLowerCase()),
                  );
                }
                errorHandler(response.message);
                return [];
              },
              close: Navigator.of(context).pop,
              getTitle: (p0) => p0,
              getValue: (p0) => p0,
              multi: true,
            ),
            kProductFamily => EmrFilterAutoComplete<String, String>(
              Key(filter.key),
              filter,
              controller,
              (pattern, filterController) async {
                final response = await coreApiService.referenceData
                    .getStocktakeProductFamilyFilterValues(query: pattern);

                if (response.success) {
                  return response.data ?? [];
                }
                errorHandler(response.message);
                return [];
              },
              close: Navigator.of(context).pop,
              getTitle: (p0) => p0,
              getValue: (p0) => p0,
              multi: true,
            ),
            String() => throw Exception(
              'filterContentBuilder could not return '
              'a Widget for ${filter.key}',
            ),
          };
        },
        filters: [
          EmrFilterModel<String>(
            key: kWorkflowType,
            name: kWorkflowType,
            enableDelete: false,
            text: kStocktakeWorkflow,
            value: kStocktakeWorkflow,
          ),
          EmrFilterModel<List<String>>(
            key: kTerritory,
            name: kTerritory,
            enableDelete: false,
            text: defaultTerritoryCode,
            value: [defaultTerritoryCode],
          ),
        ],
        displayMode: EmrFilterDisplayMode.popover,
      );

  static const kYard = 'Yard';
  static const kTerritory = 'Territory';
  static const kProductFamily = 'Product Family';
  static const kWorkflowType = 'Workflow Type';

  static const kStocktakeWorkflow = 'Stocktake Workflow';
  static const kPaymentWorkflow = 'Payment Workflow';
  static const kAccountWorkflow = 'Account Workflow';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    final filters = [
      if (!containsFilter(key: kYard))
        EmrFilterModel<List<String>>(key: kYard, name: kYard),
    ];

    final workflowType = getCurrentWorkflow();

    switch (workflowType) {
      case kPaymentWorkflow:
        break;
      case kAccountWorkflow:
        break;
      case kStocktakeWorkflow:
        if (!containsFilter(key: kProductFamily)) {
          filters.add(
            EmrFilterModel<List<String>>(
              key: kProductFamily,
              name: kProductFamily,
            ),
          );
        }
    }

    return filters;
  }

  String getCurrentWorkflow() {
    return filters.value
            .firstWhereOrNull(
              (x) => x.key == WorkflowsFilterController.kWorkflowType,
            )
            ?.value
        as String;
  }

  List<String>? getCurrentTerritory() {
    return filters.value.isNotEmpty
        ? filters.value
                  .firstWhereOrNull(
                    (x) => x.key == WorkflowsFilterController.kTerritory,
                  )
                  ?.value
              as List<String>
        : null;
  }

  Enum$WorkflowType getCurrentWorkflowAsEnum() {
    final workflowType = getCurrentWorkflow();
    switch (workflowType) {
      case kStocktakeWorkflow:
        return Enum$WorkflowType.STOCKTAKE_WORKFLOW;
      case kPaymentWorkflow:
        return Enum$WorkflowType.PAYMENT_WORKFLOW;
      case kAccountWorkflow:
        return Enum$WorkflowType.ACCOUNT_WORKFLOW;
    }
    return Enum$WorkflowType.$unknown;
  }
}
