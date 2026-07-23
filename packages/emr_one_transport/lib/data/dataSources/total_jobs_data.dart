import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/planner/total_jobs_filter_controller.dart';
import 'package:emr_one_transport/data/models/plans/plan_haulier_job.dart';
import 'package:emr_one_transport/data/models/plans/plan_job_response.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/data/planner/plan_service.dart';

class TotalJobsDataSource extends EmrQueryDataSource<PlanHaulierJob>
    with EmrQueryDataSourcePager<PlanHaulierJob> {
  TotalJobsDataSource({
    required this.planService,
    required this.toalJobsFilterController,
  });

  final PlanService planService;
  final TotalJobsFilterController toalJobsFilterController;

  List<PlanJobResponse> planList = [];

  @override
  bool get autoPopulate => true;

  @override
  bool get supportsPaging => false;

  @override
  Future<void> refresh() async {
    data.value = [];
    loading.value = true;

    final plan = toalJobsFilterController
        .filtersAsMap[StringConstants.planIdFilter] as PlanResponse;

    try {
      final result = await planService.getRemainingLoads(plan.planNumber);
      final haulierJob = <PlanHaulierJob>[];

      for (final haulierDetail in result.where((x) => x.remainingLoads > 0)) {
        haulierJob.add(
          PlanHaulierJob(
            haulierCode: haulierDetail.haulierDetails.haulierCode,
            haulierName: haulierDetail.haulierDetails.haulierName ?? '',
            loads: haulierDetail.remainingLoads,
            jobStatus: 'N/A',
            haulierType:
                getHaulierTypeSting(haulierDetail.haulierDetails.haulierType),
          ),
        );
      }
      for (final haulierDetail in result) {
        haulierDetail.jobsAndStatus.forEach((jobNumber, status) {
          haulierJob.add(
            PlanHaulierJob(
              haulierCode: haulierDetail.haulierDetails.haulierCode,
              haulierName: haulierDetail.haulierDetails.haulierName ?? '',
              loads: 0,
              jobStatus: status,
              jobNumber: jobNumber,
              haulierType:
                  getHaulierTypeSting(haulierDetail.haulierDetails.haulierType),
            ),
          );
        });
      }
      data.value = filterData(haulierJob, queryScope.query);
      await onRefresh.call();
    } finally {
      loading.value = false;
    }
  }

  List<PlanHaulierJob> filterData(
    List<PlanHaulierJob> list,
    String searchTerm,
  ) {
    if (searchTerm.trim().isEmpty) return list;

    final query = searchTerm.toLowerCase();

    return list.where((p) {
      final inHaulierName = p.haulierName.toLowerCase().contains(query);
      final inHaulierCode = p.haulierCode.toLowerCase().contains(query);

      final inJobNumber = p.jobNumber.toString().toLowerCase().contains(query);

      return inHaulierName || inHaulierCode || inJobNumber;
    }).toList();
  }

  String getHaulierTypeSting(String haulierApiValue) {
    switch (haulierApiValue) {
      case StringConstants.internalDisplay:
        return StringConstants.internalHaulierDisplay;
      case StringConstants.managedDisplay:
        return StringConstants.managedthirdPartyHaulierDisplay;
      case StringConstants.thirdPartyDisplay:
        return StringConstants.thirdPartyHauliersDisplay;
      default:
        return '';
    }
  }
}
