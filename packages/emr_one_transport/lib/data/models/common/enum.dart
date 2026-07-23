import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:json_annotation/json_annotation.dart';

enum GroupedJobPosition { first, middle, last, single, notFound }

enum JobListSearchView { listView, cardView }

enum ContainerLocationOption { customer, start, both }

enum JobType {
  swap,
  dropOff,
  pickUp,
  liveLoad,
  yardWork,
  pullAndReturn,
  sales,
  preLoad,
  preLoadWithReturn,
  interCompanyUnload,
  emptyContainer,
  pullAndReturnType2,
  maintenance;

  @override
  String toString() {
    switch (this) {
      case JobType.swap:
        return StringConstants.swapDisplay;
      case JobType.dropOff:
        return StringConstants.dropOffDisplay;
      case JobType.pickUp:
        return StringConstants.pickUpDisplay;
      case JobType.liveLoad:
        return StringConstants.liveLoadDisplay;
      case JobType.yardWork:
        return StringConstants.yardWorkDisplay;
      case JobType.pullAndReturn:
        return StringConstants.pullAndReturnDisplay;
      case JobType.sales:
        return StringConstants.salesDisplay;
      case JobType.preLoad:
        return StringConstants.preLoadDisplay;
      case JobType.preLoadWithReturn:
        return StringConstants.preLoadWithReturnDisplay;
      case JobType.interCompanyUnload:
        return StringConstants.interCompanyUnloadDisplay;
      case JobType.emptyContainer:
        return StringConstants.emptyContainerDisplay;
      case JobType.pullAndReturnType2:
        return StringConstants.pullAndReturnType2Display;
      case JobType.maintenance:
        return StringConstants.maintenanceDisplay;
    }
  }
}

extension JobTypeDisplay on JobType {
  String get abbreviation {
    switch (this) {
      case JobType.swap:
        return StringConstants.swapAbbreviation;
      case JobType.dropOff:
        return StringConstants.dropOffAbbreviation;
      case JobType.pickUp:
        return StringConstants.pickUpAbbreviation;
      case JobType.liveLoad:
        return StringConstants.liveLoadAbbreviation;
      case JobType.yardWork:
        return StringConstants.yardWorkAbbreviation;
      case JobType.pullAndReturn:
        return StringConstants.pullAndReturnAbbreviation;
      case JobType.sales:
        return StringConstants.salesAbbreviation;
      case JobType.preLoad:
        return StringConstants.preLoadAbbreviation;
      case JobType.preLoadWithReturn:
        return StringConstants.preLoadWithReturnAbbreviation;
      case JobType.interCompanyUnload:
        return StringConstants.interCompanyUnloadAbbreviation;
      case JobType.emptyContainer:
        return StringConstants.emptyContainerAbbreviation;
      case JobType.pullAndReturnType2:
        return StringConstants.pullAndReturnType2Abbreviation;
      case JobType.maintenance:
        return StringConstants.maintenanceAbbreviation;
    }
  }

  /// Returns the API value for the job type.
  String get apiValue {
    switch (this) {
      case JobType.swap:
        return StringConstants.swapApiValue;
      case JobType.dropOff:
        return StringConstants.dropOffApiValue;
      case JobType.pickUp:
        return StringConstants.pickUpApiValue;
      case JobType.liveLoad:
        return StringConstants.liveLoadApiValue;
      case JobType.yardWork:
        return StringConstants.yardWorkApiValue;
      case JobType.pullAndReturn:
        return StringConstants.pullAndReturnApiValue;
      case JobType.sales:
        return StringConstants.salesApiValue;
      case JobType.preLoad:
        return StringConstants.preLoadApiValue;
      case JobType.preLoadWithReturn:
        return StringConstants.preLoadWithReturnApiValue;
      case JobType.interCompanyUnload:
        return StringConstants.interCompanyUnloadApiValue;
      case JobType.emptyContainer:
        return StringConstants.emptyContainerApiValue;
      case JobType.pullAndReturnType2:
        return StringConstants.pullAndReturnType2ApiValue;
      case JobType.maintenance:
        return StringConstants.maintenanceApiValue;
    }
  }
}

extension JobTypeStringToApiValue on String {
  String toApiValue() {
    switch (this) {
      case StringConstants.swapDisplay:
        return StringConstants.swapApiValue;
      case StringConstants.dropOffDisplay:
        return StringConstants.dropOffApiValue;
      case StringConstants.pickUpDisplay:
        return StringConstants.pickUpApiValue;
      case StringConstants.liveLoadDisplay:
        return StringConstants.liveLoadApiValue;
      case StringConstants.yardWorkDisplay:
        return StringConstants.yardWorkApiValue;
      case StringConstants.pullAndReturnDisplay:
        return StringConstants.pullAndReturnApiValue;
      case StringConstants.salesDisplay:
        return StringConstants.salesApiValue;
      case StringConstants.preLoadDisplay:
        return StringConstants.preLoadApiValue;
      case StringConstants.preLoadWithReturnDisplay:
        return StringConstants.preLoadWithReturnApiValue;
      case StringConstants.interCompanyUnloadDisplay:
        return StringConstants.interCompanyUnloadApiValue;
      case StringConstants.emptyContainerDisplay:
        return StringConstants.emptyContainerApiValue;
      case StringConstants.pullAndReturnType2Display:
        return StringConstants.pullAndReturnType2ApiValue;
      case StringConstants.maintenanceDisplay:
        return StringConstants.maintenanceApiValue;
      default:
        throw Exception('Unknown Job Type: $this');
    }
  }
}

JobType jobTypeFromApiValue(String apiValue) {
  return JobType.values.firstWhere(
    (jobType) =>
        jobType.apiValue == apiValue, // using your extension property apiValue
    orElse: () => throw Exception('Unknown JobType for API value: $apiValue'),
  );
}

enum JobStatus {
  pending,
  scheduling,
  scheduled,
  abandoned,
  completed,
  deleted,
  started;

  @override
  String toString() {
    switch (this) {
      case JobStatus.pending:
        return StringConstants.pendingApiValue;
      case JobStatus.scheduling:
        return StringConstants.schedulingApiValue;
      case JobStatus.scheduled:
        return StringConstants.scheduledApiValue;
      case JobStatus.abandoned:
        return StringConstants.abandonedApiValue;
      case JobStatus.completed:
        return StringConstants.completedApiValue;
      case JobStatus.deleted:
        return StringConstants.deletedApiValue;
      case JobStatus.started:
        return StringConstants.startedApiValue;
    }
  }

  String get apiValue {
    switch (this) {
      case JobStatus.pending:
        return StringConstants.pendingApiValue;
      case JobStatus.scheduling:
        return StringConstants.schedulingApiValue;
      case JobStatus.scheduled:
        return StringConstants.scheduledApiValue;
      case JobStatus.abandoned:
        return StringConstants.abandonedApiValue;
      case JobStatus.completed:
        return StringConstants.completedApiValue;
      case JobStatus.deleted:
        return StringConstants.deletedApiValue;
      case JobStatus.started:
        return StringConstants.startedApiValue;
    }
  }
}

JobStatus jobStatusFromApiValue(String apiValue) {
  switch (apiValue) {
    case StringConstants.pendingApiValue:
      return JobStatus.pending;
    case StringConstants.schedulingApiValue:
      return JobStatus.scheduling;
    case StringConstants.scheduledApiValue:
      return JobStatus.scheduled;
    case StringConstants.abandonedApiValue:
      return JobStatus.abandoned;
    case StringConstants.completedApiValue:
      return JobStatus.completed;
    case StringConstants.deletedApiValue:
      return JobStatus.deleted;
    case StringConstants.startedApiValue:
      return JobStatus.started;
    default:
      throw Exception('Unknown job status API value: $apiValue');
  }
}

enum ThirdPartyJobDisplayEnum {
  all,
  none,
  scheduled,
  started,
  completed,
  abandoned,
}

enum JobContextMenuOptions {
  unassignJob,
  startJob,
  groupWithPrevious,
  groupWithNext,
  ungroupJob,
  printDispatchSlip,
  editJob,
  quickCloneJob,
  updateDriverEvents,
  deleteJob,
  abandonJob,
  track;

  @override
  String toString() {
    switch (this) {
      case JobContextMenuOptions.editJob:
        return StringConstants.editJob;
      case JobContextMenuOptions.quickCloneJob:
        return StringConstants.quickClonejob;
      case JobContextMenuOptions.updateDriverEvents:
        return StringConstants.updateDriverEvents;
      case JobContextMenuOptions.unassignJob:
        return StringConstants.unassignJob;
      case JobContextMenuOptions.groupWithPrevious:
        return StringConstants.groupWithPreviousJob;
      case JobContextMenuOptions.groupWithNext:
        return StringConstants.groupWithNextJob;
      case JobContextMenuOptions.startJob:
        return StringConstants.startJob;
      case JobContextMenuOptions.deleteJob:
        return StringConstants.deleteJob;
      case JobContextMenuOptions.abandonJob:
        return StringConstants.abandonJob;
      case JobContextMenuOptions.ungroupJob:
        return StringConstants.ungroupJob;
      case JobContextMenuOptions.printDispatchSlip:
        return StringConstants.printDispatchSlip;
      case JobContextMenuOptions.track:
        return StringConstants.track;
    }
  }
}

enum YardContextMenuOptions {
  printDispatchSlip,
  yardReport,
  rearrangeTrucks;

  @override
  String toString() {
    switch (this) {
      case YardContextMenuOptions.rearrangeTrucks:
        return StringConstants.rearrangeTrucks;
      case YardContextMenuOptions.printDispatchSlip:
        return StringConstants.printDispatchSlip;
      case YardContextMenuOptions.yardReport:
        return StringConstants.yardReportDisplay;
    }
  }
}

enum ThirdPartyHaulierContextMenuOptions {
  copyHaulierCode,
  printDispatchSlip;

  @override
  String toString() {
    switch (this) {
      case ThirdPartyHaulierContextMenuOptions.printDispatchSlip:
        return StringConstants.printDispatchSlip;
      case ThirdPartyHaulierContextMenuOptions.copyHaulierCode:
        return StringConstants.copyHaulierCode;
    }
  }
}

enum TruckContextMenuOptions {
  moveOutStandingJobs,
  cloneJobsForward,
  enforceJobSequence,
  ignoreJobSequence,
  addVOR,
  printDispatchSlip,
  copyVrm,
  haulierReport;

  @override
  String toString() {
    switch (this) {
      case TruckContextMenuOptions.moveOutStandingJobs:
        return StringConstants.moveOutstandingJobs;
      case TruckContextMenuOptions.cloneJobsForward:
        return StringConstants.cloneJobsForward;
      case TruckContextMenuOptions.addVOR:
        return StringConstants.vorCreate;
      case TruckContextMenuOptions.haulierReport:
        return StringConstants.haulierReport;
      case TruckContextMenuOptions.enforceJobSequence:
        return StringConstants.enforceJobSequence;
      case TruckContextMenuOptions.ignoreJobSequence:
        return StringConstants.ignoreJobSequence;
      case TruckContextMenuOptions.printDispatchSlip:
        return StringConstants.printDispatchSlip;
      case TruckContextMenuOptions.copyVrm:
        return StringConstants.copyVrm;
    }
  }
}

enum DragItemType {
  unscheduledJob,
  internalJob,
  managedJob,
  thirdPartyJob,
  thirdPartyJobGroup,
  plan,
}

enum JobSource {
  standard,
  standingOrder,
  plan;

  @override
  String toString() {
    switch (this) {
      case JobSource.standard:
        return StringConstants.standardDisplay;
      case JobSource.standingOrder:
        return StringConstants.standingOrderDisplay;
      case JobSource.plan:
        return StringConstants.planDisplay;
    }
  }
}

extension JobSourceFilterValues on JobSource {
  String get getFilterValues => name[0].toUpperCase() + name.substring(1);
}

JobSource jobSourceFromApiValue(String apiValue) {
  switch (apiValue) {
    case StringConstants.standardDisplay:
      return JobSource.standard;
    case StringConstants.standingOrder:
    case StringConstants.standingOrderDisplay:
      return JobSource.standingOrder;
    case StringConstants.planDisplay:
      return JobSource.plan;
    default:
      throw Exception('Unknown job source API value: $apiValue');
  }
}

enum HaulierType {
  internal,
  managed,
  thirdParty;

  @override
  String toString() {
    switch (this) {
      case HaulierType.internal:
        return StringConstants.internalDisplay;
      case HaulierType.managed:
        return StringConstants.managedDisplay;
      case HaulierType.thirdParty:
        return StringConstants.thirdPartyDisplay;
    }
  }

  /// Parses one of the display strings and returns the corresponding enum.
  /// Throws [ArgumentError] if the input doesn’t match any known type.
  static HaulierType fromString(String display) {
    switch (display) {
      case StringConstants.internalDisplay:
        return HaulierType.internal;
      case StringConstants.managedDisplay:
        return HaulierType.managed;
      case StringConstants.thirdPartyDisplay:
        return HaulierType.thirdParty;
      default:
        throw ArgumentError('Unknown HaulierType: $display');
    }
  }
}

String containerTypeValue(int? value) {
  switch (value) {
    case 1:
      return 'Pick';
    case 2:
      return 'Drop';

    default:
      return '';
  }
}

enum StandingOrderStatus {
  active,
  expired;

  @override
  String toString() {
    switch (this) {
      case StandingOrderStatus.active:
        return StringConstants.active;
      case StandingOrderStatus.expired:
        return StringConstants.expired;
    }
  }
}

enum StandingOrderFrequency {
  daily,
  weekly,
  monthly,
  biWeekly;

  @override
  String toString() {
    switch (this) {
      case StandingOrderFrequency.daily:
        return StringConstants.daily;
      case StandingOrderFrequency.weekly:
        return StringConstants.weekly;
      case StandingOrderFrequency.monthly:
        return StringConstants.monthly;
      case StandingOrderFrequency.biWeekly:
        return StringConstants.biWeekly;
    }
  }
}

enum RepetitionPerDay {
  onceADay,
  twiceADay,
  thriceADay,
  fourTimesADay,
  fiveTimesADay;

  @override
  String toString() {
    switch (this) {
      case RepetitionPerDay.onceADay:
        return StringConstants.onceADay;
      case RepetitionPerDay.twiceADay:
        return StringConstants.twiceADay;
      case RepetitionPerDay.thriceADay:
        return StringConstants.thriceADay;
      case RepetitionPerDay.fourTimesADay:
        return StringConstants.fourTimesADay;
      case RepetitionPerDay.fiveTimesADay:
        return StringConstants.fiveTimesADay;
    }
  }
}

int repetitionPerDayForAPI(String selectedValue) {
  switch (selectedValue) {
    case StringConstants.onceADay:
      return 1;
    case StringConstants.twiceADay:
      return 2;
    case StringConstants.thriceADay:
      return 3;
    case StringConstants.fourTimesADay:
      return 4;
    case StringConstants.fiveTimesADay:
      return 5;
    default:
      throw Exception('Unknown Repetition value: $selectedValue');
  }
}

String repetitionPerDayFromAPI(int apiValue) {
  switch (apiValue) {
    case 1:
      return StringConstants.onceADay;
    case 2:
      return StringConstants.twiceADay;
    case 3:
      return StringConstants.thriceADay;
    case 4:
      return StringConstants.fourTimesADay;
    case 5:
      return StringConstants.fiveTimesADay;
    default:
      throw Exception('Unknown Repetition value: $apiValue');
  }
}

enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday;

  @override
  String toString() {
    switch (this) {
      case DayOfWeek.monday:
        return StringConstants.monday;
      case DayOfWeek.tuesday:
        return StringConstants.tuesday;
      case DayOfWeek.wednesday:
        return StringConstants.wednesday;
      case DayOfWeek.thursday:
        return StringConstants.thursday;
      case DayOfWeek.friday:
        return StringConstants.friday;
    }
  }
}

enum ContainerLifeCycleStatusEnum {
  active,
  maintenance,
  missing,
  stolen,
  scrapped,
  notInUse,
}

extension LifeCycleStatusesDisplay on ContainerLifeCycleStatusEnum {
  String get name => toString().split('.').last;

  String get getLifeCycleStatus =>
      toString().split('.').last[0].toUpperCase() +
      toString().split('.').last.substring(1);
}

String displayLifeCycleStatus(String lifeCycleStatus) {
  final value = lifeCycleStatus[0].toLowerCase() + lifeCycleStatus.substring(1);
  switch (value) {
    case 'active':
      return StringConstants.active;
    case 'maintenance':
      return StringConstants.maintenance;
    case 'missing':
      return StringConstants.missing;
    case 'stolen':
      return StringConstants.stolen;
    case 'scrapped':
      return StringConstants.scrapped;
    case 'notInUse':
      return StringConstants.notInUse;
    default:
      return '-';
  }
}

enum LocationType { customer, truck, yard }

extension LocationTypeExtension on LocationType {
  String get code {
    switch (this) {
      case LocationType.customer:
        return 'Customer';
      case LocationType.truck:
        return 'Truck';
      case LocationType.yard:
        return 'Yard';
    }
  }
}

enum FlowType {
  outboundSales,
  customerCollections,
  interDepotMovements,
  brokerage,
  internal,
}

extension FlowTypeDisplay on FlowType {
  String get name => toString().split('.').last;

  String get getflowtype =>
      toString().split('.').last[0].toUpperCase() +
      toString().split('.').last.substring(1);
}

String displayFlowType(String flowtype) {
  final value = flowtype.toLowerCase();
  switch (value) {
    case StringConstants.outboundSales:
      return StringConstants.outboundSalesDisplay;
    case StringConstants.customerCollections:
      return StringConstants.customerCollectionsDisplay;
    case StringConstants.interDepot:
      return StringConstants.interDepotDisplay;
    case StringConstants.brokerage:
      return StringConstants.brokerageDisplay;
    case StringConstants.internal:
      return StringConstants.internalDisplay;
    default:
      return '-';
  }
}

String flowTypeValue(int? value) {
  switch (value) {
    case 0:
      return StringConstants.outboundSalesDisplay;
    case 1:
      return StringConstants.customerCollectionsDisplay;
    case 2:
      return StringConstants.interDepotDisplay;
    case 3:
      return StringConstants.brokerageDisplay;
    case 4:
      return StringConstants.internalDisplay;
    default:
      return '-';
  }
}

enum Uom {
  mt,
  lb,
  gt,
  nt,
  kg,
  ld,
  ea,
  lt,
  hr,
  cwt;

  @override
  String toString() {
    switch (this) {
      case Uom.mt:
        return 'MT';
      case Uom.lb:
        return 'LB';
      case Uom.gt:
        return 'GT';
      case Uom.nt:
        return 'NT';
      case Uom.kg:
        return 'KG';
      case Uom.ld:
        return 'LD';
      case Uom.ea:
        return 'EA';
      case Uom.lt:
        return 'LT';
      case Uom.hr:
        return 'HR';
      case Uom.cwt:
        return 'CWT';
    }
  }
}

enum Due {
  am,
  pm,
  any;

  @override
  String toString() {
    switch (this) {
      case Due.am:
        return 'AM';
      case Due.pm:
        return 'PM';
      case Due.any:
        return 'ANY';
    }
  }
}

enum ReportType {
  haulier,
  yard,
  openjobs;

  @override
  String toString() {
    switch (this) {
      case ReportType.haulier:
        return StringConstants.haulierDisplay;
      case ReportType.yard:
        return StringConstants.yardText;
      case ReportType.openjobs:
        return StringConstants.openJobs;
    }
  }
}

enum ActionStatus { formValidationFailed, apiSuccess, apiFailure }

enum ContainerLocation { startLocation, customerLocation }

enum ManagedTruckStatus {
  inuse,
  notInUse;

  @override
  String toString() {
    switch (this) {
      case ManagedTruckStatus.inuse:
        return StringConstants.inUseDisplay;
      case ManagedTruckStatus.notInUse:
        return StringConstants.notInUseDisplay;
    }
  }

  String get apiValue {
    switch (this) {
      case ManagedTruckStatus.inuse:
        return StringConstants.inUseApiValue;
      case ManagedTruckStatus.notInUse:
        return StringConstants.notInUseApiValue;
    }
  }
}

enum ContainerActionType { pick, drop }

enum SchedulerTruckGroupBy {
  @JsonValue('Yard')
  yard,
  @JsonValue('Haulier')
  haulier,
}

enum LocationTypeEnum {
  @JsonValue('StartLocation')
  startLocation,
  @JsonValue('CustomerLocation')
  customerLocation,
  @JsonValue('EndLocation')
  endLocation,
}

enum AddressFormatType {
  @JsonValue('FullAddress')
  fullAddress,

  @JsonValue('PostCodeOnly')
  postCodeOnly,

  @JsonValue('YardCode')
  yardCode,
}
enum PlanJobStatus {
  unassigned,
  assigned;

  @override
  String toString() {
    switch (this) {
      case PlanJobStatus.unassigned:
        return StringConstants.unassignedLoadsApiValue;
      case PlanJobStatus.assigned:
        return StringConstants.assignedLoadsApiValue;
    }
  }

  String get apiValue {
    switch (this) {
      case PlanJobStatus.unassigned:
        return StringConstants.unassignedLoadsApiValue;
      case PlanJobStatus.assigned:
        return StringConstants.assignedLoadsApiValue;
    }
  }
}

enum AssetType {
  @JsonValue('Truck')
  truck,
  @JsonValue('Container')
  container,
  @JsonValue('Trailer')
  trailer;

  @override
  String toString() {
    switch (this) {
      case AssetType.truck:
        return 'Truck';
      case AssetType.container:
        return 'Container';
      case AssetType.trailer:
        return 'Trailer';
    }
  }
}
