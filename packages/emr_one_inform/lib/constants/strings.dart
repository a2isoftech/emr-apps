// ignore_for_file: constant_identifier_names

abstract class SharedPreferenceKeys {
  static const String SelectedDepotKey = 'SelectedDepot';
  static const String CreatedOnDateText = 'Created On ';
  static const String JobsList = 'JobsList';
  static const String CachedJobs = 'cachedJobs';
  static const String JsonTemplates = 'JsonTemplates';
  static const String SelectedTerritoryKey = 'TerritoryKey';
  static const String TraceEnabledKey = 'TraceEnabled';
  static const String SearchDatesKey = 'LastSearchedDates';
  static const String SubmittedJobIds = 'SubmittedJobIds';
  static const String InProgressJobIds = 'InProgressJobIds';
  static const String SearchTermsKey = 'LastSearchedTerms';
  static const String SelectedYardKey = 'SelectedYard';
  static const String CachedUsers = 'cachedUsers';
}

abstract class FormAppStringLiteral {
  static const String ChoiceChipTextUnassigned = 'Unallocated';
  static const String QuickTemplate = 'Quick Template';
  static const String StartDateValidation = 'Please select a start date';
  static const String DueDateValidation = 'Please select a due date';
  static const String StartDateAfterDueDateMessage =
      'Start date is after due date!';
  static const String DueDateBeforeStartDateMessage =
      'Due date is before start date!';
  static const String ViewWorkRequests = 'View Work Requests';
  static const String WorkRequests = 'Work Requests';
  static const String PackageName = 'emr_one_inform';
  static const String JobStateNew = 'New';
  static const String JobStateInProgress = 'In Progress';
  static const String JobStateCompleted = 'Completed';
}

abstract class Configs {
  static const int SnackBarDisplayDuration = 5;
  static const int cacheTimeout = 15;
}

abstract class RegexPatterns {
  static const String email = r'\S+@\S+\.\S+';
}

abstract class ScheduleItemType {
  static const String Automatic = 'Automatic';
  static const String Manual = 'Manual';
  static const String Linked = 'Linked';
  static const String Workflow = 'Workflow';
  static const String WorkOrder = 'WorkOrder';
}

abstract class JobPriority {
  static const String Low = 'Low';
  static const String Medium = 'Medium';
  static const String High = 'High';
  static const String Critical = 'Critical';
  static const String Urgent = 'Urgent';
}

abstract class AllocateUserScreenGroupItem {
  static const String All = 'All';
  static const String Unassigned = 'Unallocated';
  static const String Assigned = 'Allocated';
  static const String Selected = 'Selected';
  static const String Inprogress = 'Inprogress';
  static const String Scheduled = 'Scheduled';
}

abstract class FormInstanceStatus {
  static const String InProgress = 'InProgress';
  static const String ReadyToSubmit = 'ReadyToSubmit';
  static const String Submitted = 'Submitted';
  static const String SubmitFailed = 'SubmitFailed';
  static const String Canceled = 'Canceled';
}

abstract class ScheduledItemStatus {
  static const String NotStarted = 'NotStarted';
  static const String InProgress = 'InProgress';
  static const String Cancelled = 'Cancelled';
  static const String Complete = 'Complete';
}

abstract class ClientDiagnosticStatus {
  static const String Submitted = 'Submitted';
  static const String NotSubmitted = 'Not Submitted';
  static const String Uploaded = 'Uploaded';
  static const String NotUploaded = 'Not Uploaded';
  static const String Uploading = 'Uploading';
}

abstract class DiagnsoticActionType {
  static const String InProgress = 'InProgress';
  static const String Queued = 'Queued';
  static const String Completed = 'Completed';
  static const String Failed = 'Failed';
  static const String All = 'All';
  static const String Cancelled = 'Cancelled';
}

abstract class EmrOneInformTelemetry {
  static const String kYardSelection = 'kYardSelection';
  static const String kJobPage = 'kJobPage';
  static const String kJobSearch = 'kJobSearch';
}

abstract class ConstantLists {
  static const List<String> ScheduleItemTypes = [
    ScheduleItemType.Automatic,
    ScheduleItemType.Manual,
    ScheduleItemType.Linked,
    ScheduleItemType.Workflow,
    ScheduleItemType.WorkOrder,
  ];

  static const List<String> JobPriorities = [
    JobPriority.Low,
    JobPriority.Medium,
    JobPriority.High,
    JobPriority.Critical,
    JobPriority.Urgent,
  ];

  static const List<String> AllocateUserScreenGroup = [
    AllocateUserScreenGroupItem.All,
    AllocateUserScreenGroupItem.Unassigned,
    AllocateUserScreenGroupItem.Assigned,
    AllocateUserScreenGroupItem.Selected,
  ];

  static const List<String> DiagnsoticActions = [
    DiagnsoticActionType.All,
    DiagnsoticActionType.Completed,
    DiagnsoticActionType.Failed,
    DiagnsoticActionType.InProgress,
    DiagnsoticActionType.Queued,
    DiagnsoticActionType.Cancelled,
  ];

  static const List<String> DisposedStatus = [
    'SOLD',
    'SCRAPPED',
    'RETURNED',
    'STOLEN',
    'DUPLICATE',
  ];
}
