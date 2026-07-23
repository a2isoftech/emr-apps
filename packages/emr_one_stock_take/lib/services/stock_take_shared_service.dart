import 'package:emr_core_api/emr_core_api.dart';

class StockTakeSharedService {
  Map<int, String> workflowTitles = {};

  Future<void> loadWorkflowTitles(
    ReferenceDataService referenceDataService,
  ) async {
    if (workflowTitles.isEmpty) {
      final result = await referenceDataService
          .getWorkflowRuleConfiguration(Enum$WorkflowType.STOCKTAKE_WORKFLOW);
      workflowTitles = result.data?.levelTitle ?? {};
    }
  }
}
