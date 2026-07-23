import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/job_container_config.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_group.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:intl/intl.dart';

class JobHelper {
  static String getFormattedCostOfJob(
    SchedulerJob job, {
    String emptyValue = StringConstants.noData,
  }) {
    final rate = job.provisionalCost?.finalRate;
    if (rate == null || rate <= 0) return emptyValue;

    final currencyCode = (job.provisionalCost?.currencyCode ?? job.currencyCode)
        .trim();
    final formatter = currencyCode.isEmpty
        ? NumberFormat.currency(locale: 'en_US', symbol: r'$', decimalDigits: 0)
        : NumberFormat.simpleCurrency(name: currencyCode, decimalDigits: 0);

    return formatter.format(rate);
  }

  static GroupedJobPosition getJobPosition(
    SchedulerJob currentJob,
    List<SchedulerJob> allJobs,
  ) {
    // 1) Find its index in the sorted list
    final idx = allJobs.indexWhere((j) => j.jobNumber == currentJob.jobNumber);
    if (idx < 0) return GroupedJobPosition.notFound;

    // 2) Ungrouped → SINGLE
    final groupId = currentJob.groupId;
    if (groupId == null) return GroupedJobPosition.single;

    // 3) Check adjacent jobs
    final hasPrev = idx > 0 && allJobs[idx - 1].groupId == groupId;
    final hasNext =
        idx < allJobs.length - 1 && allJobs[idx + 1].groupId == groupId;

    // 4) Decide position
    if (!hasPrev && !hasNext) return GroupedJobPosition.single;
    if (!hasPrev && hasNext) return GroupedJobPosition.first;
    if (hasPrev && !hasNext) return GroupedJobPosition.last;
    return GroupedJobPosition.middle;
  }

  static String getTotalDurtionOfJobs(SchedulerTruck truck) {
    if (truck.schedulerJobs.isEmpty) return '';

    final totalMinutes = truck.schedulerJobs
        .where((j) => j.jobStatus != StringConstants.abandonedApiValue)
        .map((job) => job.duration)
        .fold<int>(0, (sum, minutes) => sum + minutes);
    // Convert total minutes to hours and minutes
    final hours = totalMinutes ~/ 60; // Integer division for hours
    final minutes = totalMinutes % 60; // Remainder for minutes
    return totalMinutes > 0 ? '${hours}h ${minutes}m' : '';
  }

  static String getTotalCostOfJobs(SchedulerTruck truck) {
    if (truck.schedulerJobs.isEmpty) return '';

    final currencyCode =
        truck.schedulerJobs
            .where(
              (j) =>
                  (j.provisionalCost?.currencyCode ?? '').isNotEmpty ||
                  j.currencyCode.isNotEmpty,
            )
            .firstOrNull
            ?.provisionalCost
            ?.currencyCode ??
        truck.schedulerJobs
            .where((j) => j.currencyCode.isNotEmpty)
            .firstOrNull
            ?.currencyCode ??
        '';
    final formatter = currencyCode.isEmpty
        ? NumberFormat.currency(locale: 'en_US', symbol: r'$')
        : NumberFormat.simpleCurrency(name: currencyCode, decimalDigits: 0);

    final totalAmount = truck.schedulerJobs
        .where((j) => j.jobStatus != StringConstants.abandonedApiValue)
        .fold<double>(0, (sum, j) => sum + (j.provisionalCost?.finalRate ?? 0));

    return totalAmount > 0 ? formatter.format(totalAmount) : '';
  }

  static T? bringItemToTop<T>({
    required List<T> list,
    required bool Function(T item) match,
  }) {
    final index = list.indexWhere(match);
    if (index <= 0) return index == 0 ? list[0] : null;

    final item = list.removeAt(index);
    list.insert(0, item);
    return item;
  }

  static (String? firstLocationCode, String? secondLocationCode)
  getStartAndEndLocation(
    String? jobType,
    String? startLocationCode,
    String? endLocationCode,
    String? customerLocationCode,
  ) {
    String? firstLocationCode;
    String? secondLocationCode;

    if (jobType == null) {
      return (firstLocationCode, secondLocationCode);
    }

    switch (jobType) {
      // Swap & LiveLoad → customer → end
      case StringConstants.swapDisplay:
      case StringConstants.liveLoadDisplay:
        firstLocationCode = customerLocationCode;
        secondLocationCode = endLocationCode;

      // dropOff, sales, preLoad, preLoadWithReturn,
      // pllAndReturnType2 → start → customer
      case StringConstants.dropOffDisplay:
      case StringConstants.salesDisplay:
      case StringConstants.preLoadDisplay:
      case StringConstants.preLoadWithReturnDisplay:
      case StringConstants.pullAndReturnType2Display:
        firstLocationCode = startLocationCode;
        secondLocationCode = customerLocationCode;

      // pickUp, interCompanyUnload, pullAndReturn → customer → end
      case StringConstants.pickUpDisplay:
      case StringConstants.interCompanyUnloadDisplay:
      case StringConstants.pullAndReturnDisplay:
        firstLocationCode = customerLocationCode;
        secondLocationCode = endLocationCode;
      case StringConstants.yardWorkDisplay:
      case StringConstants.emptyContainerDisplay:
      case StringConstants.maintenanceDisplay:
        firstLocationCode = customerLocationCode;
        secondLocationCode = customerLocationCode;
    }

    return (firstLocationCode, secondLocationCode);
  }

  static Map<JobType, Map<ContainerLocation, JobContainerConfig>>
  getContainerConfigs() {
    const drop = 'Drop';
    const pick = 'Pick';
    final containerConfigs =
        <JobType, Map<ContainerLocation, JobContainerConfig>>{
          JobType.swap: {
            ContainerLocation.startLocation: const JobContainerConfig(
              drop,
              checkboxRequired: false,
            ),
            ContainerLocation.customerLocation: const JobContainerConfig(
              pick,
              checkboxRequired: true,
            ),
          },
          JobType.dropOff: {
            ContainerLocation.startLocation: const JobContainerConfig(
              drop,
              checkboxRequired: true,
            ),
          },
          JobType.pickUp: {
            ContainerLocation.customerLocation: const JobContainerConfig(
              pick,
              checkboxRequired: true,
            ),
          },
          JobType.yardWork: {
            ContainerLocation.customerLocation: const JobContainerConfig(
              pick,
              checkboxRequired: false,
            ),
          },
          JobType.liveLoad: {
            ContainerLocation.startLocation: const JobContainerConfig(
              drop,
              checkboxRequired: true,
            ),
          },
          JobType.pullAndReturn: {
            ContainerLocation.startLocation: const JobContainerConfig(
              drop,
              checkboxRequired: false,
            ),
            ContainerLocation.customerLocation: const JobContainerConfig(
              pick,
              checkboxRequired: false,
            ),
          },
          JobType.sales: {
            ContainerLocation.startLocation: const JobContainerConfig(
              drop,
              checkboxRequired: true,
            ),
          },
          JobType.preLoad: {
            ContainerLocation.startLocation: const JobContainerConfig(
              drop,
              checkboxRequired: true,
            ),
          },
          JobType.preLoadWithReturn: {
            ContainerLocation.startLocation: const JobContainerConfig(
              pick,
              checkboxRequired: false,
            ),
          },
          JobType.emptyContainer: {
            ContainerLocation.customerLocation: const JobContainerConfig(
              pick,
              checkboxRequired: true,
            ),
          },
          JobType.pullAndReturnType2: {
            ContainerLocation.customerLocation: const JobContainerConfig(
              pick,
              checkboxRequired: true,
            ),
            ContainerLocation.startLocation: const JobContainerConfig(
              drop,
              checkboxRequired: true,
            ),
          },
        };

    return containerConfigs;
  }

  static String getTotalCostOfSchedulerGroup(SchedulerGroup group) {
    final costAndCurrencyCodes = group.trucks
        .where((truck) => truck.schedulerJobs.isNotEmpty)
        .expand((truck) => truck.schedulerJobs)
        .where(
          (job) =>
              job.jobStatus != StringConstants.abandonedApiValue &&
              (job.provisionalCost?.finalRate ?? 0) > 0,
        )
        .map(
          (job) => {
            'cost': (job.provisionalCost?.finalRate ?? 0),
            'currencyCode': (job.provisionalCost?.currencyCode ?? '').isNotEmpty
                ? job.provisionalCost?.currencyCode ?? ''
                : job.currencyCode,
          },
        )
        .toList();

    final currencyCode = costAndCurrencyCodes.isNotEmpty
        ? costAndCurrencyCodes.first['currencyCode']! as String
        : '';

    final formatter = currencyCode.isEmpty
        ? NumberFormat.currency(locale: 'en_US', symbol: r'$')
        : NumberFormat.simpleCurrency(name: currencyCode, decimalDigits: 0);

    final cost = costAndCurrencyCodes.fold<double>(
      0,
      (sum, job) => sum + (job['cost']! as double),
    );

    return cost > 0 ? formatter.format(cost) : '';
  }
}
