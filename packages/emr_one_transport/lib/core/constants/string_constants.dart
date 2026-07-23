class StringConstants {
  static const String transport = 'OnTrack';

  //Urls
  static String kgetJobTypesUrl = 'api/JobController1/types';
  static String kschedulergetYardTruckJobUrl = 'api/Scheduler/scheduler-jobs';
  static String kschedulergetThirdPrtyJobUrl =
      'api/Scheduler/loadthirdPartyhauliersandscheduledJobs';
  static String kschedulergetUnscheduledJobUrl =
      'api/Scheduler/get-paged-unscheduled-jobs';
  static String kschedulergetUnscheduledPlansUrl =
      'api/Scheduler/get-unscheduled-plans';
  static String kJobUpdateFromSchedulerUrl =
      'api/Job/update-job-from-scheduler';
  static String kschedulergetUserYardsUrl =
      'api/UserPreference/getUserDispatchYards';
  static String kschedulerScheduleJobUrl = 'api/Job/schedule';
  static String kFavourieHauliers = 'api/Haulier/favouriteHauliers';
  static String kcontainerWithoutAssetNumberUrl =
      'api/Container/jobContainersWithoutAssetNumberButImages';
  static String kcontainerSaveContainerUrl =
      'api/Container/saveJobContainerUsedAssetNumber';
  static String kReassignJobsUrl = 'api/Job/reassign-jobs';
  static String kSchedulePlanUrl = 'api/Job/create-and-assign-jobs';
  static String kgetProposedJobDurationUrl =
      'api/Job/get-job-proposed-duration';
  static String kJobQuickClone = 'api/JobAction/clone-job';
  static String kMovePendingJobs = 'api/JobAction/moveJobs';
  static String kCloneJobsForDay = 'api/JobAction/cloneJobsForDay';
  static String kGetUpdatableDriverEventsUrl =
      'api/JobAction/get-scheduler-updatable-driver-events';
  static String kUpdateJobGroupUrl = 'api/JobAction/update-jobs-group';
  static String kUpdateDriverEventsUrl =
      'api/JobAction/update-scheduler-updatable-driver-events';
  static String kJobLocateUrl = 'api/JobAction/job-locate';
  static String kgetAllJobsForOverviewUrl = 'api/job/search';
  static String kgetListUrl = 'api/List';
  static String kgetDispatchYardsForUserUrl =
      'api/Yard/getdispatchyardsforuser';
  static String kgetAccessibleYardsForUserUrl =
      'api/Yard/getuseraccessibleyards';
  static String kgetAllRegionUrl = 'api/Regions?hasParentRegion=true';
  static String kgetPartyAccountContactEmail =
      'api/Account/emailaddressesbycode?haulierCode=';
  static String ksearchTruckOrHaulierUrl =
      'api/Truck/search-trucks-and-hauliers';
  static String kdeleteJobsUrl = 'api/job/delete';
  static String kAccountSearchUrl = 'api/account/search';
  static String kcreateJobUrl = 'api/Job/create';
  static String kgetProductFamiliesUrl = 'api/Product/families';
  static String kgetProvisionalCostsUrl = 'api/priceMatrix/getProvisionalCosts';
  static String kgetProductsByFamilyUrl = 'api/Product/by-family';
  static String kgetProductsBySearchTermUrl = 'api/Product/products';
  static String kjobDetailsByJobNumberUrl = 'api/Job/by-jobNumber';
  static String kupdateJobByIdUrl = 'api/Job/by-id';
  static String kcloneJobsUrl = 'api/JobAction/deep-clone-job';
  static String kgetContainersAtLocationUrl =
      'api/container/getContainersAtLocation';

  static String kunassignJobsUrl = 'api/Job/unassign-jobs';
  static String kgetHaulierSettingsUrl = 'api/Haulier/list';
  static String ksaveHaulierSettingsUrl = 'api/Haulier/save';
  static String kgetUserSettingsDispatchYardsUrl =
      'api/UserPreference/getUserDispatchYards';
  static String ksaveUserSettingsDispatchYardsUrl =
      'api/UserPreference/saveUserDispatchYards';
  static String kgetManagedHauliers =
      'api/UserPreference/getUserManagedHauliers';
  static String kgetSchedulerPreference =
      'api/UserPreference/get-scheduler-preference';
  static String kSaveSchedulerPreference =
      'api/UserPreference/save-scheduler-preference';
  static String ksaveManagedHauliers =
      'api/UserPreference/saveUserManagedHauliers';
  static String kgetThirdPartyHauliers =
      'api/UserPreference/getUserThirdPartyHauliers';
  static String ksaveThirdPartyHauliers =
      'api/UserPreference/saveUserThirdPartyHauliers';
  static String kStandingOrdersOverviewUrl = 'api/StandingOrder/search';
  static String kCreateStandingOrdersUrl = 'api/StandingOrder/create';
  static String kUpdateStandingOrderByIdUrl = 'api/StandingOrder/by-id';
  static String kUpdateStandingOrderWithJobByIdUrl =
      'api/StandingOrder/update-with-create-new-jobs-by-id?encodedId=';
  static String kStandingOrderDetailsByIdUrl = 'api/StandingOrder/by-id';
  static String kDeleteStandingOrderUrl = 'api/StandingOrder/delete';
  static String kDeleteStandingOrderWithJobsUrl =
      'api/StandingOrder/deleteStandingOrderWithJobs';
  static String kjobTimelineUrl = 'api/job/jobTimeline';
  static String kjobTruckGeometryUrl = 'api/job/jobTruckGeometry?jobNumber=';

  static String kPlanSearchUrl = 'api/plan/search';
  static String kJobSearchByPlanUrl = 'api/job/plan-jobs';
  static String kgetRemainingLoadsOfPlanUrl =
      'api/plan/remaining-loads?plannumber=';
  static String kOverdueJobUrl = 'api/job/overdue-jobs';
  static String kCreatePlanUrl = 'api/plan/create';
  static String kUpdatePlanUrl = 'api/plan/by-id?encodedId=';
  static String kPlanDetailsByPlanNumberUrl = 'api/plan/by-planNumber';
  static String kSearchTruckUrl = 'api/truck/search';
  static String kJobStatusCountUrl = 'api/job/job-status-counts';
  static String kOverdueJobCountUrl = 'api/job/overdue-jobs-count';
  static String kJobDetailsPlanUrl = 'api/job/by-planId';
  static String kClonePlanUrl = 'api/plan/clone';
  static String kEnforceJobSequenceUrl =
      'api/truck/internal/enforcejobsequence';
  static String kPriceMatrixDevUrl =
      'https://transport-dev.emrgroup.com/pricematrix';
  static String kDeletePlanUrl = 'api/plan?encodedId=';
  static String jobNumberUrlName = 'jobNumber';
  static String importTemplateDownloadUrl = 'api/file/import-plan-template';
  static String planUploadUrl = 'api/Plan/import';

  static String dispatchSlipForJobsUrl =
      'api/Report/export-dispatch-slip-merged-for-jobs';
  static String dispatchSlipForTrucksUrl =
      'api/Report/export-dispatch-slip-merged';

  static String haulierReportUrl = 'api/Report/export-haulier-report';
  static String yardReportUrl = 'api/Report/export-yard-report';
  static String openJobsReportUrl = 'api/Report/open-jobs-report';
  static String sendHaulierReportUrl = 'api/Report/send-haulier-report';
  static String sendYardReportUrl = 'api/Report/send-yard-report';
  static String saveTruckOrderUrl =
      'api/UserPreference/save-truck-display-order-for-yard';
  static String getTruckOrderUrl =
      'api/UserPreference/get-truck-display-order-for-yards';
  static String exportPlansReportUrl = 'api/Report/export-plans';

  // Asset Tracking URLs
  static const String kGetTruckPosition = 'api/tracking/get-truck-position';
  static const String kTrackerSummary = 'api/tracking/tracker-summary';
  static const String kPositionByTimeRange =
      'api/tracking/position-by-time-range';
  static const String kTruckJobsByDateRange =
      'api/tracking/truck-jobs-by-date-range';
  static const String kAssetSearchGeoBoxTracking =
      'api/tracking/search-geo-box';
  static const String kGetDefaultViewportUrl = 'api/tracking/default-viewport';
  static const String exportContainersUrl = 'api/tracking/export-geobox';

  // Container Export
  static const String containerExportFileName = 'report';

  //SignalR event
  static String jobCreatedUpdated = 'JobCreatedOrUpdated';
  static String planCreatedOrUpdated = 'PlanCreatedOrUpdated';

  //Shared preference key
  static String kschedulerStateKey = 'scheduler.state';
  static String kJobListFilterKey = 'jobs.filter';
  static String kStandingOrderFilterKey = 'standingOrder.filter';
  static String kInternalTrucksFilterKey = 'internalTrucks.filter';
  static String kManagedTrucksFilterKey = 'managedTrucks.filter';
  static String kContainersFilterKey = 'containers.filter';
  static String kTrailersFilterKey = 'trailers.filter';
  static String kPlansFilterKey = 'plans.filter';
  static String kTrucksFilterKey = 'transportTrucksTracking.filter';

  // Display names
  static const String swapDisplay = 'Swap';
  static const String dropOffDisplay = 'Drop off';
  static const String pickUpDisplay = 'Pick up';
  static const String liveLoadDisplay = 'Live-load';
  static const String yardWorkDisplay = 'Yard work';
  static const String pullAndReturnDisplay = 'Pull and Return';
  static const String salesDisplay = 'Sales';
  static const String preLoadDisplay = 'Pre-load';
  static const String preLoadWithReturnDisplay = 'Pre-load with return';
  static const String interCompanyUnloadDisplay = 'Inter-company unload';
  static const String emptyContainerDisplay = 'Empty container';
  static const String pullAndReturnType2Display = 'Pull and Return type-2';
  static const String maintenanceDisplay = 'Maintenance';

  // API value constants - these strings coming from server
  static const String swapApiValue = 'Swap';
  static const String dropOffApiValue = 'DropOff';
  static const String pickUpApiValue = 'PickUp';
  static const String liveLoadApiValue = 'LiveLoad';
  static const String yardWorkApiValue = 'YardWork';
  static const String pullAndReturnApiValue = 'PullAndReturn';
  static const String salesApiValue = 'Sales';
  static const String preLoadApiValue = 'PreLoad';
  static const String preLoadWithReturnApiValue = 'PreLoadWithReturn';
  static const String interCompanyUnloadApiValue = 'InterCompanyUnload';
  static const String emptyContainerApiValue = 'EmptyContainer';
  static const String pullAndReturnType2ApiValue = 'PullAndReturnType2';
  static const String maintenanceApiValue = 'Maintenance';

  // JobStatus API value constants
  static const String pendingApiValue = 'Pending';
  static const String schedulingApiValue = 'Scheduling';
  static const String scheduledApiValue = 'Scheduled';
  static const String abandonedApiValue = 'Abandoned';
  static const String completedApiValue = 'Completed';
  static const String deletedApiValue = 'Deleted';
  static const String startedApiValue = 'Started';
  static const String unassignedLoadsApiValue = 'Unassigned Loads';
  static const String assignedLoadsApiValue = 'Assigned Loads';

  // JobStatus display constants
  static const String pendingDisplay = 'pending';
  static const String schedulingDisplay = 'scheduling';
  static const String scheduledDisplay = 'scheduled';
  static const String abandonedDisplay = 'abandoned';
  static const String completedDisplay = 'completed';
  static const String deletedDisplay = 'deleted';
  static const String startedDisplay = 'started';

  // JobTypes Abbreviation constants
  static const String swapAbbreviation = 'SW';
  static const String dropOffAbbreviation = 'DO';
  static const String pickUpAbbreviation = 'PU';
  static const String liveLoadAbbreviation = 'LL';
  static const String yardWorkAbbreviation = 'YW';
  static const String pullAndReturnAbbreviation = 'P&R';
  static const String salesAbbreviation = 'SS';
  static const String preLoadAbbreviation = 'PL';
  static const String preLoadWithReturnAbbreviation = 'PWR';
  static const String interCompanyUnloadAbbreviation = 'ICU';
  static const String emptyContainerAbbreviation = 'EC';
  static const String pullAndReturnType2Abbreviation = 'P&R2';
  static const String maintenanceAbbreviation = 'MT';

  // JobSource Display constants
  static const String standardDisplay = 'Standard';
  static const String standingOrderDisplay = 'Standing Order';
  static const String standingOrder = 'StandingOrder';
  static const String planDisplay = 'Plan';

  // HaulierType Display constants
  static const String internalDisplay = 'Internal';
  static const String managedDisplay = 'Managed';
  static const String thirdPartyDisplay = 'ThirdParty';

  // Settings screen constants
  // Display constants

  static const String showYardsonScheduler =
      'Show Selected Yards On Scheduler Screen';
  static const String showOnScheduler = 'Show on Scheduler Screen';
  static const String myDispatchYards = 'My Dispatch Yards';
  static const String dispatchYards = 'dispatchyards';
  static const String dispatchYardsDisplay = 'Dispatch Yards';
  static const String dispatchYardDisplay = 'Dispatch Yard';
  static const String hauliersDisplay = 'Hauliers';
  static const String my3PhauliersDisplay = 'My Third Party Hauliers';
  static const String myManaged3PhauliersDisplay =
      'My Managed Third Party Hauliers';
  static const String selectionReflectNote =
      '*This selection will reflect on scheduler & job screens';
  static const String managedThirdPartyHauliers =
      'Managed Third Party Hauliers';
  static const String thirdPartyHauliers = 'Third Party Hauliers';
  static const String externalHauliersDisplay = 'External Hauliers';
  static const String includeInternal = 'includeInternal';

  // Save button display
  static const String save = 'Save';

  // Saved display message
  static const String preferencessavedSuccessfully =
      'Preferences Saved Successfully';
  static const String jobsDeletedSuccessfully = 'Jobs deleted successfully';
  static const String jobsMovedSuccessfully = 'Jobs moved successfully';
  static const String jobsCreatedSuccessfully = 'Job created successfully';
  static const String jobUpdatedSuccessfully = 'Job updated successfully';
  static const String jobClonedSuccessfully = 'Job cloned successfully';
  static const String jobsScheduledSuccessfully = 'Jobs scheduled successfully';
  static const String standingOrderCreatedSuccessfully =
      'Standing Order Created Successfully';
  static const String standingOrderUpdatedSuccessfully =
      'Standing Order Updated Successfully';
  static const String standingOrderDeletedSuccessfully =
      'Standing Order Deleted Successfully';
  static const String error = 'An error occurred! \nPlease try again later!';
  static const String yardSavedSuccessfully = 'Yard saved successfully';

  static const String jobNumberFollowsMsg = 'The job number is as follows';
  static const String jobNumbersFollowsMsg = 'The job numbers are as follows';
  static const String orderNumberFollowsMsg = 'The order number is as follows';
  static const String planNumberFollowsMsg = 'The plan number is as follows';

  // Job List Screen display constants
  static const String createJob = 'Create Job';
  static const String showMenu = 'Show Menu';
  static const String exportToCSV = 'Export To CSV';
  static const String favouriteFilters = 'Favourite Filters';
  static const String convertTo = 'Convert to';
  static const String quickScheduleJob = 'Quick Schedule Job';
  static const String quick = 'Quick';
  static const String schedule = 'Schedule';
  static const String quickSchedule = 'Quick Schedule';
  static const String locate = 'Locate';
  static const String track = 'Track';
  static const String print = 'Print';
  static const String deleteJobsHeader = 'Following job(s) will be deleted';
  static const String delete = 'Delete';
  static const String lockedJob = 'Locked Job';
  static const String unlockedJob = 'Unlocked Job';
  static const String clone = 'Clone';
  static const String quickClone = 'Quick Clone';
  static const String cloneJob = 'Clone Job';
  static const String quickClonejob = 'Quick Clone Job';
  static const String ymdTimeFormat = 'yyyy-MM-dd   HH:mm';
  static const String dateFormatyyyyMMdd = 'yyyy-MM-dd';
  static const String modifiedDate = 'ModifiedDate';
  static const String scheduledDate = 'ScheduledDate';
  static const String scheduleddatedisplay = 'Scheduled Date';
  static const String createdDateSort = 'CreatedDate';
  static const String createdDate = 'Created Date';
  static const String jobList = 'JobList';
  static const String cardview = 'Card View';
  static const String listview = 'List View';
  static const String jobdetailsDisplay = 'Job Details';
  static const String containerDetails = 'Container Details';
  static const String numberofjobtobecloned = 'Number of jobs to be cloned';
  static const String scheduleFortruckHaulier = 'Schedule for truck/haulier';
  static const String scheduleForHaulier = 'Schedule for haulier';
  static const String noRatesAvailable = 'No rates are available';
  static const String rateMandatory =
      'Rate selection is mandatory when haulier is selected';

  static const String thirdPartyHaulierDisplay = 'Third Party Haulier';
  static const String thirdPartyHauliersDisplay = 'Third Party Hauliers';
  static const String managedthirdPartyHaulierDisplay =
      'Managed Third Party Haulier';
  static const String managedthirdPartyHauliersDisplay =
      'managed Third Party Hauliers';
  static const String internalHaulierDisplay = 'Internal Haulier';
  static const String cancel = 'Cancel';
  static const String basicDetails = 'Basic Details';
  static const String containers = 'Containers';
  static const String trailers = 'Trailers';
  static const String ratesandcosts = 'Rates & Costs';
  static const String notes = 'Notes';
  static const String typeofJob = 'Type of Job';
  static const String productType = 'Product Family';
  static const String products = 'Products';
  static const String containerReqWarningMsg = 'A container needs to be added';
  static const String quantity = 'Quantity';
  static const String remove = 'Remove';
  static const String trailerType = 'Trailer Type';
  static const String trailerModel = 'Trailer Model';
  static const String trailerAssetNumber = 'Trailer Asset Number';
  static const String dueDate = 'Due Date';
  static const String jobDuration = 'Job Duration';
  static const String haulageRate = 'Haulage Rate';
  static const String provisionalRate = 'Provisional Rate';
  static const String createPriceMatrix = 'Create Price Matrix';
  static const String additionalNotes = 'Additional Notes';
  static const String shownToDriver = 'will be shown to driver';
  static const String visibleToDispatchers =
      'This is visible to dispatchers only.';
  static const String addedContainers = 'Added Containers';
  static const String unlockJobToScheduleDate =
      'Unlock job from scheduled date';
  static const String lockJobToScheduleDate = 'Lock job to scheduled date';
  static const String pickDisplay = 'Pick';
  static const String dropDisplay = 'Drop';
  static const String progressDisplay = 'Progress';
  static const String sicCodeDisplay = 'SIC Code';
  static const String minutes = 'minutes';

  static const String deleteReason = 'Delete Reason';
  static const String deleteComments = 'Delete Comments';
  static const String other = 'Other';
  static const String otherReasonCode = 'OTHR';
  static const String startlocationcodes = 'startlocationcodes';
  static const String endlocationcodes = 'endlocationcodes';
  static const String customerlocationcodes = 'customerlocationcodes';
  static const String yesterdayjobs = "Yesterday's Job";
  static const String todayJobs = "Today's Job";
  static const String tomorrowsJobs = "Tomorrow's Job";
  static const String previousweekJobs = "Previous Week's Jobs";
  static const String thisweekJobs = "This Week's Jobs";
  static const String nextweekJobs = "Next Week's Jobs";
  static const String lastOneMonthJobs = "Last Month's Job";
  static const String lastthreeMonthJobs = "Last 3 Month's Job";
  static const String lastsixMonthJobs = "Last 6 Month's Job";
  static const String lasttwelweMonthJobs = "Last 12 Month's Job";
  static const String lasteighteenMonthJobs = "Last 18 Month's Job";

  static const String noData = '-';
  static const String no = 'No';
  static const String yes = 'Yes';

  // Job List Grid Columns Display
  static const String jobNumber = 'JobNumber';
  static const String jobnumberDisplay = 'Job Number';
  static const String jobid = 'jobId';
  static const String jobTypes = 'jobtypes';
  static const String jobTypeDisplay = 'Job Type';
  static const String jobStatuses = 'jobstatuses';
  static const String jobStatusDisplay = 'Job Status';
  static const String jobSourceDisplay = 'Job Source';
  static const String lastActionedModified = 'Last Updated';
  static const String containerTypes = 'containertypes';
  static const String trailerTypes = 'trailertypes';
  static const String startDate = 'startdate';
  static const String endDate = 'enddate';
  static const String startScheduleDateUtc = 'startscheduledateutc';
  static const String endScheduleDateUtc = 'endscheduledateutc';
  static const String containerTypeDisplay = 'Container Type';
  static const String reset = 'Reset';
  static const String type = 'type';

  static const String desc = 'desc';
  static const String asc = 'asc';

  static const String scheduledOnDisplay = 'Scheduled On';
  static const String haulierDisplay = 'Haulier';
  static const String vrmDisplay = 'VRM';
  static const String createdOn = 'Created Date';
  static const String startLocation = 'Start Location';
  static const String endLocation = 'End Location';
  static const String containerPickDisplay = 'Container (Pick)';
  static const String containerDropDisplay = 'Container (Drop)';
  static const String officeNotes = 'Office Notes';
  static const String dispatcherNotes = 'Dispatcher Notes';
  static const String customerDisplay = 'Customer';
  static const String customerLocation = 'Customer Location';

  static const String getAllRecords = 'getAllRecords';
  static const String searchQuery = 'searchQuery';
  static const String searchTerm = 'searchTerm';
  static const String start = 'start';
  static const String end = 'end';
  static const String action = 'action';
  static const String deletereasons = 'deletereasons';
  static const String productFamily = 'productFamily';
  static const String trueString = 'true';
  static const String falseString = 'false';

  static const String updateAssetNoDisplay = 'Please update Asset No.:';
  static const String remainingContainersDisplay = 'Containers Left to Update:';
  static const String fixValidationDisplay =
      'Please correct the validation error(s).';
  static const String noDataDisplay = 'No data available.';
  static const String sortByDisplay = 'Sort By';
  static const String backButtonDisplay = 'Back';
  static const String skipButtonDisplay = 'Skip';
  static const String saveButtonDisplay = 'Save and Go to Next Container';

  static const String sortBy = 'JobCompletedAt';

  //Common Labels
  static const String assetCode = 'Asset Code';
  static const String friendlyName = 'Friendly Name';
  static const String vrm = 'VRM';
  static const String yard = 'Yard';
  static const String dispatchYard = 'Dispatch Yard';
  static const String haulier = 'Haulier';
  static const String assetType = 'Asset Type';
  static const String haulierType = 'Haulier Type';
  static const String locationType = 'Location Type';
  static const String costCenter = 'Cost Center';
  static const String condition = 'Condition';
  static const String serialNumber = 'Serial Number';
  static const String description = 'Description';
  static const String make = 'Make';
  static const String model = 'Model';
  static const String printLabels = 'Print Labels';
  static const String exportAsCSV = 'Export As CSV';
  static const String status = 'Status';
  static const String showQRCode = 'Show QR Code';
  static const String download = 'Download';
  static const String changeYard = 'Change Yard';
  static const String createdDateDisplay = 'Created Date';
  static const String haulierCodeKey = 'HaulierCode';
  static const String currentLocationStatus = 'Current Location Status';
  static const String currentLocationCode = 'Current Location';
  static const String timeDisplay = 'Time';

  // Container Location Status Constants
  static const String containerLocationStatusYard = 'YARD';
  static const String containerLocationStatusCustomer = 'CUSTOMER';
  static const String containerLocationStatusCustomerSITE = 'CUSTOMERSITE';
  static const String containerLocationStatusTruck = 'TRUCK';

  // Container labels
  static const String confirmDelete = 'Confirm Delete';
  static const String containerBasicDetails = 'Basic Details';
  static const String containerPhysicalDetails = 'Physical Details';
  static const String containerLocation = 'Location';
  static const String containerAdditionalDetails = 'Additional Details';

  static const String containerVolume = 'Volume';
  static const String containerLength = 'Length';
  static const String containerWeight = 'Weight';
  static const String containerCondition = 'Condition';
  static const String containerYardCode = 'Owning Yard';
  static const String containerComments = 'Comments';
  static const String containerValidTill = 'Valid Till';
  static const String containerCost = 'Cost';
  static const String containerManufacturer = 'Manufacturer';
  static const String addContainer = 'Add Container';
  static const String facetContainerLifeCycleStatusDisplay = 'Lifecycle status';
  static const String containerCreatedSuccessfully =
      'Container Created Successfully';
  static const String containerUpdatedSuccessfully =
      'Container Updated Successfully';
  static const String containerDeletedSuccessfully =
      'Container Deleted Successfully';
  static const String assetAlreadyExistNewGenerated =
      'Asset number already in use. The system has generated a new one. '
      'Please check the asset number and try again.';
  static const String assetAlreadyExist = 'Asset number already in use. ';
  static const String yesterdayContainers = "Yesterday's Containers";
  static const String todayContainers = "Today's Containers";
  static const String tomorrowsContainers = "Tomorrow's Containers";
  static const String previousWeekContainers = "Previous Week's Containers";
  static const String thisWeekContainers = "This Week's Containers";
  static const String nextWeekContainers = "Next Week's Containers";
  static const String lastThreeMonthContainers = "Last 3 Month's Containers";
  static const String lastSixMonthContainers = "Last 6 Month's Containers";
  static const String lastTwelweMonthContainers = "Last 12 Month's Containers";
  static const String lastEighteenMonthContainers =
      "Last 18 Month's Containers";

  // Common URLS
  static String kGetListDetails = 'api/List';

  // Container URLS
  static String kContainerUrl = 'api/Container';
  static String kContainerNextAssetNumber = 'api/Container/new-asset-number';
  static String kContainerAssetNumberUsed =
      'api/Container/asset-number-used-for';
  static String kContainerSearch = 'api/Container/search';
  static String kContainersWillExpireInXDays =
      'api/Container/containersWillExpireInXDays';
  static String kContainerCreate = 'api/Container/create';
  static String kContainerUpdate = 'api/Container/update';
  static String kContainerDeleteUrl = 'api/Container/delete-by-ids';
  static String kContainerLatestXJobs = 'api/Job/latestXJobsWithContainers';

  static String getQrCodesApiPath = 'api/QRCode/generateqrcodes';
  static const String qrCodeImageFileName = 'QRCode.png';
  static const String qrCodesPdfFileName = 'container-label.pdf';
  static const String qrCodesTrailerPdfFileName = 'trailer-label.pdf';
  static String getLast10JobsTitle(String assetNumber) =>
      'Last 10 Jobs Involving $assetNumber Container';

  static String kReportsList = 'api/Report/bi-reports';

  // Trailer labels
  static const String trailerDetails = 'Trailer Details';
  static const String trailerBasicDetails = 'Basic Details';

  // Trailer URLS
  static String kTrailerUrl = 'api/Trailer';
  static String kTrailerSearch = 'api/Trailer/search';

  // Truck labels
  static const String truck = 'Truck';
  static const String truckDetails = 'Truck Details';
  static const String truckBasicDetails = 'Basic Details';
  static const String truckAdd = 'Add Truck';
  static const String truckEdit = 'Update Truck';
  static const String truckHaulier = 'Haulier';
  static const String vrmAlreadyExist =
      'VRM already in use. Please change the VRM and try again.';

  static const String truckMaxAllowedContainers = 'Max Allowed Container';

  static const String addTruck = 'Add Truck';
  static const String resetTruck = 'Reset';
  static const String deleteTruck = 'Delete';
  static const String truckCreatedSuccessfully = 'Truck created successfully';
  static const String truckUpdatedSuccessfully = 'Truck updated successfully';
  static const String truckDeletedSuccessfully = 'Truck deleted successfully';
  // Truck labels
  static const String vorSchedule = 'VOR Schedules';
  static const String vorCreate = 'Add VOR Schedule';
  static const String vorUpdate = 'Update VOR Schedule';
  static const String vorCreatedSuccessfully =
      'VOR Schedule Created successfully';
  static const String vorUpatedSuccessfully =
      'VOR Schedule Updated successfully';
  static const String vorDeletedSuccessfully =
      'VOR Schedule Deleted successfully';
  static const String vorStartDateTime = 'Start Date';
  static const String vorEndDateTime = 'End Date';
  static const String vorReason = 'Reasons';
  static const String vorNote = 'Notes';

  // Truck URLS
  static const String kTruckUrl = 'api/Truck';
  static const kTruckNextAssetNumber = 'api/truck/new-asset-number';
  static const String kUpdateDispatchYard =
      'api/Truck/internal/dispatchyard?encodedTruckId=';
  static const String kTruckIsVrmUnique = 'api/Truck/is-vrm-unique';
  // VOR Urls
  static const String kVORUrl = 'api/VORSchedule';
  static const String kVorByDateUrl = 'api/VORSchedule/{vrm}/vorByDate';

  // HaulierURLs
  static const String kHaulierList = 'api/Haulier/list';
  static const String kHaulierCreatePriceMatrixUrl = 'pricematrix';

  //Facet labels
  static const String typeFacet = 'Type';
  static const String dispatchYardFacet = 'Dispatch Yard';
  static const String yardFacet = 'Yard';
  static const String conditionFacet = 'Condition';
  static const String statusFacet = 'Status';
  static const String modelFacet = 'Model';

  //Filter labels
  static const String dispatchYardFilter = 'DispatchYard';
  static const String trailerTypeFilter = 'TrailerType';
  static const String truckTypeFilter = 'Truck Type';
  static const String truckType = 'trucktype';
  static const String lifeCycleStatusFilter = 'LifeCycleStatus';
  static const String lifeCycleStatus = 'lifecyclestatus';
  static const String statusFilter = 'Status';
  static const String containerTypeFilter = 'ContainerType';
  static const String yardFilter = 'Yard';
  static const String conditionFilter = 'condition';
  static const String haulierCodeFilter = 'HaulierCode';
  static const String haulierTypeFilter = 'HaulierType';
  static const String favFilterSchedulerModuleName = 'Transport.Scheduler';
  static const String searchJobNumberText = 'Search job number';
  static const String yardText = 'Yard';
  static const String haulierCodeText = 'Haulier Code';
  static const String yardFilterKey = 'yard';
  static const String managedThirdPartyFilterKey = 'managedThirdParty';
  static const String thirdPartyFilterKey = 'thirdParty';
  static const String assetTypesFilter = 'Asset Type';
  static const String hauliertype = 'hauliertype';

  static const String errorMsgForReassignment =
      'Job type does not support reassignment.';
  static const String errorMsgForThirdPertyScheduling =
      'Unexpected job type for third-party scheduling.';
  static const String errorMsgTimeRequired =
      'Time must not be null for internal/managed hauliers.';
  static const String errorMsgHaulierDoesNotSupport =
      'Type is not supported for internal/managed hauliers.';
  static const String titleScheduleThirdParty =
      'Reschedule Third Party Haulier Jobs';

  static const String thirdPartyJobSelectionMsg =
      'Select the jobs you would like to assign to';
  static const String selectedText = 'Selected';
  static const String partyDisplay = 'Party';

  // Customer Screen Display Constants
  static const String locationCode = 'Location Code';
  static const String customerCode = 'Customer Code';
  static const String addressDisplay = 'Address';
  static const String postCode = 'Post Code';
  static const String country = 'Country';
  static const String export = 'Export';
  static const String pdfExtension = 'pdf';

  /// Standing Order Display Constants
  static const String effectiveDateDisplay = 'Effective Date';
  static const String expiryDateDisplay = 'Expiry Date';
  static const String effectiveDate = 'EffectiveDate';
  static const String expiryDate = 'ExpiryDate';
  static const String frequencyDisplay = 'Frequency';
  static const String createStandingOrder = 'Create Standing Order';
  static const String active = 'Active';
  static const String expired = 'Expired';
  static const String statuses = 'statuses';
  static const String editDisplay = 'Edit';
  static const String standingOrderId = 'standingOrderId';
  static const String standingOrderNumberDisplay = 'Order Number';
  static const String standingOrderNumber = 'standingOrderNumber';

  static const String pickADateRangeDisplay = 'Date Range';
  static const String yardsDisplay = 'Yards';
  static const String pickTimePeriodDisplay = 'Time Period';
  static const String notAvailable = 'Not Available';
  static const String daily = 'Daily';
  static const String weekly = 'Weekly';
  static const String monthly = 'Monthly';
  static const String biWeekly = 'BiWeekly';
  static const String onceADay = 'Once a day';
  static const String twiceADay = 'Twice a day';
  static const String thriceADay = 'Thrice a day';
  static const String fourTimesADay = 'Four Times a day';
  static const String fiveTimesADay = 'Five Times a day';
  static const String monday = 'Monday';
  static const String tuesday = 'Tuesday';
  static const String wednesday = 'Wednesday';
  static const String thursday = 'Thursday';
  static const String friday = 'Friday';
  static const String weekdays = 'Weekdays';
  static const String advanceDaysDisplay = 'Days in Advance to Generate Jobs';
  static const String repeatsPerDayDisplay = 'Job Repetitions per Day';
  static const String reccuringFrequencyDisplay = 'Recurring Frequency';
  static const String reccuranceDetails = 'Recurrence Details';
  static const String dateRangeDisplay = 'Date Range';
  static const String dateRangeInvalidMsg = 'Date Range values are invalid';
  static const String confirmSTODeletion = 'Confirm Standing Order Deletion';
  static const String confirmSTODeletionMsg =
      'Do you want to delete Standing Order';
  static const String confirmSTOUpdationMsg =
      'Do you want to update Standing Order';
  static const String validationErrorMsg =
      'Please correct the validation error(s).';
  static const String sTOdeletionWithJobs =
      'Delete pending and scheduled jobs as well';

  static const String sTOUpdationWithJobsDeletion =
      'Recreate future Jobs as per new schedule';

  static const String jobsTransportModule = 'Transport.Jobs';
  static const String standingOrderTransportModule = 'Transport.StandingOrder';

  static const String dateWithTime = 'MMMM d, h:mm a';
  static const String dateWithYear = 'd MMMM yyyy';

  static const String chooseReason = 'Choose a reason';
  static const String move = 'Move';
  static const String moveOutstandingJobs = 'Move Outstanding Jobs';
  static const String cloneJobsForward = 'Clone Jobs Forward';
  static const String addEditVOR = 'Add/Edit VOR';
  static const String openJobs = 'Open Jobs';
  static const String reports = 'Reports';
  static const String send = 'Send';
  static const String editJob = 'Edit Job';
  static const String updateDriverEvents = 'Update Driver Events';
  static const String startDisplay = 'Start';
  static const String unassignJob = 'Unassign Job';
  static const String deleteJob = 'Delete Job';
  static const String abandonJob = 'Abandon Job';
  static const String haulierReport = 'Haulier Report';
  static const String updateStandingOrder = 'Update Standing Order';
  static const String rearrangeTrucks = 'Rearrange Trucks';
  static const String reason = 'Reason';
  static const String fromDateTime = 'From Date Time';
  static const String toDateTime = 'To Date Time';
  static const String cloneFromDateTime = 'Clone From Date';
  static const String cloneToDateTime = 'Clone To Date';
  static const String includeHaulageRates = 'Include Haulage Rates';
  static const String includeFuelSurcharge = 'Include Fuel Surcharge';
  static const String reportType = 'Report Type';
  static const String startDateDisplay = 'Start Date';
  static const String additionalEmail = 'Additional emails';
  static const String additionalEmailHint =
      'Multiple email addresses must be separated by a semicolon (‘;’)';
  static const String endDateDisplay = 'End Date';
  static const String region = 'Region';
  static const String emailReportTo = 'Email To';
  static const String source = 'Source';
  static const String dateTime = 'Date Time';
  static const String container = 'Container';
  static const String inspections = 'Inspections';
  static const String durationInMins = 'Duration (Mins)';
  static const String assignJobsToWhichDriver =
      'Select the truck to assign jobs';
  static const String repeat = 'Repeat';
  static const String fromThisJob = 'from this job';
  static const String createHowManyJobs = 'Number of Jobs to Create';
  static const String driverNotes = 'Driver Notes';
  static const String printDispatchSlip = 'Download Dispatch Slip';
  static const String dispatchSlip = 'dispatch slip';
  static const String copyVrm = 'Copy Vrm to Clipboard';
  static const String copyHaulierCode = 'Copy Haulier Code to Clipboard';
  static const String yardReportDisplay = 'Yard Report';
  static const String dispatchSlipFileName = 'Dispatch Slip';
  static const String haulierReportFileName = 'Haulier Report';
  static const String yardReportFileName = 'Yard Report';
  static const String openJobsReportFileName = 'Open-jobs report';
  static const String alreadyLoadedEvent = 'AlreadyLoaded';
  static const String alreadyLoadedMessage = 'Loaded';
  static const String keepContainerEvent = 'KeepContainer';
  static const String containerPickedEvent = 'ContainerPicked';
  static const String containerPickedMessage = 'Picked Container';
  static const String containerDroppedEvent = 'ContainerDropped';
  static const String containerDroppedMessage = 'Dropped Container';
  static const String jobCreatedEvent = 'JobCreated';
  static const String jobCreatedMessage = 'Job created';
  static const String jobStartedEvent = 'JobStarted';
  static const String jobStartedMessage = 'Job started';
  static const String jobFinishedEvent = 'JobFinished';
  static const String jobFinishedMessage = 'Finished the Job';
  static const String driverDelayEvent = 'DriverDelay';
  static const String driverDelayMessage = 'Delay';
  static const String reachedLocationEvent = 'ReachedLocation';
  static const String mileageEvent = 'Mileage';
  static const String contentEvent = 'Content';
  static const String arrivedEvent = 'Arrived';
  static const String departedEvent = 'Departed';
  static const String incidentEvent = 'Incident';
  static const String unAssignEvent = 'UnAssign';
  static const String jobDeletedEvent = 'JobDelete';
  static const String jobDeletedMessage = 'Deleted the job';
  static const String abandonEvent = 'Abandon';
  static const String assignEvent = 'Assign';
  static const String assignMessage = 'Assigned';
  static const String unassignMessage = 'UnAssigned';

  //List Details Constants
  static const String assetConditions = 'assetconditions';
  static const String truckTrailerStatuses = 'truckTrailerStatuses';
  static const String truckTypes = 'truckTypes';
  static const String vorScheduleReasons = 'vorScheduleReasons';
  static const String kunassignReasonKey = 'UnAssignReasons';
  static const String kDeleteReasonKey = 'DeleteReasons';
  static const String kAbandonReasonKey = 'AbandonReasons';
  static const String kDelayTypes = 'DelayTypes';
  static const String kAssetReviewSkipReasons =
      'transport/assetReviewSkipReasons';
  static const String kAssetReviewSkip = 'api/container/skip-asset-review';
  // Messages
  static const String vorSelectionMessage =
      '*The VOR will be applied to selected ';
  static const String failedToLoadQR = 'Failed to load QR code';
  static const String deleteVorConfirmation =
      'Are you sure you want to delete the VOR schedule?';
  static const String deleteVorErrorMsg = 'Failed to delete VOR Schedule.';
  static const String deleteSelectionMsg =
      'Are you sure you want to delete the selected';

  // Assets Screen Identifiers (used as keys in initilize(), not display text)
  static const String internalTrucks = 'Internal Trucks';
  static const String managedTrucks = 'Managed Third Party Trucks';

  // Truck Tracking Unit/Format Constants
  static const String truckTrackingSpeed1x = '1x';
  static const String truckTrackingSpeed2x = '2x';
  static const String truckTrackingSpeed4x = '4x';
  static const String truckTrackingSecondsUnit = 's';
  static const String truckTrackingKmhUnit = ' km/h';
  static const String truckTrackingDegreeUnit = '°';

  // Date Formats
  static const String dateFormatDdMmmHhmm = 'dd MMM HH:mm';
  static const String dateFormatDdMmmYyyyHhmm = 'dd MMM yyyy HH:mm';

  // Asset Locator Marker Color Categories
  static const String assetLocatorMarkerColorCustomer = 'green';
  static const String assetLocatorMarkerColorYard = 'blue';

  // Asset Locator Status Count Categories
  static const String assetLocatorStatusYard = 'yard';
  static const String assetLocatorStatusTruck = 'truck';
  static const String assetLocatorStatusCustomer = 'customer';

  static const String maintenance = 'Maintenance';
  static const String missing = 'Missing';
  static const String stolen = 'Stolen';
  static const String scrapped = 'Scrapped';
  static const String notInUse = 'NotInUse';

  static const String inUseDisplay = 'In Use';
  static const String inUseApiValue = 'INUSE';
  static const String notInUseDisplay = 'Not In Use';
  static const String notInUseApiValue = 'NOTINUSE';

  static const String groupWithNextJob = 'Group the Job with Next Job';
  static const String groupWithPreviousJob = 'Group the Job with Previous job';
  static const String ungroupJob = 'Ungroup Jobs';
  static const String startJob = 'Start the Job';

  static const String yesterdaysPlan = "Yesterday's Plan";
  static const String todaysPlan = "Today's Plan";
  static const String tomorrowsPlan = "Tomorrow's Plan";
  static const String previousWeekPlans = "Previous Week's Plans";
  static const String thisWeekPlans = "This Week's Plans";
  static const String nextWeekPlans = "Next Week's Plans";
  static const String lastThreeMonthPlans = "Last 3 Month's Plans";
  static const String lastSixMonthPlans = "Last 6 Month's Plans";
  static const String lastTwelveMonthPlans = "Last 12 Month's Plans";
  static const String lastEighteenMonthPlans = "Last 18 Month's Plans";

  static const String planNumberSortType = 'plannumber';
  static const String planTypes = 'plantypes';
  static const String planningYard = 'Planning Yard';
  static const String plantypeDisplay = 'Plan Type';
  static const String hauliers = 'hauliers';
  static const String productFamilyFilter = 'productfamily';
  static const String productFamilyDisplay = 'Product Family';

  static const String planDetails = 'Plan Details';
  static const String planIdRoute = 'planId';

  static const String planDeletedSuccessfully = 'Plan deleted successfully';
  static const String planCreatedSuccessfully = 'Plan created successfully';
  static const String planUpdatedSuccessfully = 'Plan updated successfully';
  static const String planClonedSuccessfully = 'Plan cloned successfully';

  static const String updateSuccess = 'Updated successfully';
  static const String updateFailure = 'Updated failed';

  static const String overviewDisplay = 'Overview';
  static const String createPlanDisplay = 'Create Plan';
  static const String clonePlanDisplay = 'Clone Plan';
  static const String cloneTooltipDisplay = 'Clone';
  static const String quickSchedulePlanDisplay = 'Quick Schedule Plan';
  static const String quickScheduleTooltipDisplay = 'Quick Schedule';
  static const String editTooltipDisplay = 'Edit';
  static const String planNoDisplay = 'Plan Number';
  static const String planTypeDisplay = 'Plan Type';
  static const String planDateDisplay = 'Plan Date';
  static const String planDate = 'plandate';
  static const String startLocationDisplay = 'Start Location';
  static const String endLocationDisplay = 'End Location';
  static const String planningYardDisplay = 'Planning Yard';
  static const String loadsDisplay = 'Loads';
  static const String totalLoadsDisplay = 'Total Loads';
  static const String productDisplay = 'Product';
  static const String containerCustomerDisplay =
      'Containers at Customer Location';
  static const String containerStartDisplay = 'Containers at Start Location';
  static const String dispatcherNotesDisplay = 'Dispatcher Notes';
  static const String totalJobsDisplay = 'Total Jobs';
  static const String totalPlansDisplay = 'Total Plans';
  static const String overdueDisplay = 'Overdue';
  static const String viewDisplay = 'View';
  static const String downloadDisplay = 'Download';
  static const String sendOrDownloadDisplay = 'Send/Download';
  static const String searchHaulierDisplay = 'Search Haulier';
  static const String addedHaulierDisplay = 'Added Haulier';
  static const String selectHaulierDisplay = 'Please select a Haulier';
  static const String cloneDisplay = 'Clone Plan (Weekdays)';
  static const String dueDisplay = 'Due';
  static const String totalLoadDisplay = 'Total Loads';
  static const String availableLoads = 'Available loads';
  static const String weightPerLoadDisplay = 'Weight Per Load';
  static const String uomDisplay = 'UOM';
  static const String selectedHaulierDisplay = 'Select Haulier:';
  static const String selectTruckDisplay = 'Select Truck:';

  static const String planIdFilter = 'planids';
  static const String dueDateFilter = 'duedate';
  static const String jobStatusFilter = 'jobstatuses';
  static const String planIdDisplay = 'Plan Id';
  static const String jobNoDisplay = 'Job No';

  static const String completedJobDisplay = 'Completed';
  static const String startedJobDisplay = 'Started';
  static const String scheduledJobDisplay = 'Scheduled';
  static const String fromToKey = 'FromTo';
  static const String dateRangeKey = 'DateRange';
  static const Map<String, String> clonePlanDays = {
    'Monday': 'Monday',
    'Tuesday': 'Tuesday',
    'Wednesday': 'Wednesday',
    'Thursday': 'Thursday',
    'Friday': 'Friday',
    'Saturday': 'Saturday',
  };
  static const String lastThreeMonthPlansValue = 'LastThreeMonths';
  static const String outboundSalesDisplay = 'Outbound Sales';
  static const String customerCollectionsDisplay = 'Customer Collections';
  static const String interDepotDisplay = 'Inter-Depot';
  static const String brokerageDisplay = 'Brokerage';

  static const String outboundSales = 'outboundsales';
  static const String customerCollections = 'customercollections';
  static const String interDepot = 'interdepotmovements';
  static const String brokerage = 'brokerage';
  static const String internal = 'internal';

  static const String importPlans = 'Import Plans';

  static const String importDisplay = 'Import';
  static const String downloadTemplate = 'Download Template';
  static const String ymdFormat = 'yyyy-MM-dd';
  static const String kjobTypeAbbreviation = 'Job type Abbreviation';
  static const String kscheduleBulkJobs = 'Schedule Bulk Flow Jobs';
  static const String kjobHasBeenStarted = 'Job has been started';

  static const String jobNumberText = 'Job No.';
  static const String assetNumberText = 'Asset No.';
  static const String jobTypeText = 'Job Type:';
  static const String customerLocationText = 'Customer Location:';
  static const String startLocationText = 'Start Location:';
  static const String partyText = 'Party:';
  static const String endLocationText = 'End Location:';
  static const String dispatcherNotesText = 'Dispatcher Notes:';
  static const String vrmText = 'VRM:';
  static const String scheduledDateText = 'Scheduled Date:';
  static const String totalTimeTakenText = 'Total Time Taken:';

  static const String containerImageText = 'Container Image Gallery';
  static const String imageText = 'Images';

  static const String confirmPlanDeletionMsg =
      'Are you sure you want to delete?';

  static const String confirmStartJobHeader = 'Confirm Job Start';

  static const String confirmStartJobMsg =
      'Are you sure you want to start this job?';

  static const String containerToExpireInNext = 'Containers to expire in next';
  static const String days = 'days';
  static const String success = 'Success';
  static const String operationCompletedSuccessfully =
      'Operation completed successfully!';
  static const String requiredErrorMsg = 'Please fill in all required fields !';
  static const String required = 'Required';
  static const String containerAlreadyScannedMsg =
      "Container cannot be removed !\n As it's already scanned by driver";
  static const String endDateValidationMsg =
      'EndDate must be greater or equal to StartDate';
  static const String endDateTimeValidationMsg =
      'End Time must be greater than Start Time';
  static const String enforceJobSequence = 'Enforce Job Sequence';
  static const String ignoreJobSequence = 'Ignore Job Sequence';
  static const String enforceJobSequenceToolTip =
      'Job sequence enforced on this truck';
  static const String progressBarInfoPanel = 'Progress bar color';

  static const String greenProgressBarInfoPanel = 'Job execution as expected';
  static const String yellowProgressBarInfoPanel = 'Job has been delayed';
  static const String mistRoseProgressBarInfoPanel =
      'Job has passed its scheduled time';
  static const String icons = 'Icons';
  static const String jobHasBeenStarted = 'Job has been started';
  static const String lockIconInfoPanel = 'Lock has been applied on job';
  static const String delayIconInfoPanel = 'Driver has applied delay';
  static const String groupJobInfoPanel = 'Jobs are grouped';
  static const String needsContainerInfoPanel =
      'Asset number needs to be updated';

  static const String assignedLoads = 'Assigned Loads';
  static const String unassignedLoads = 'Unassigned Loads';
  static const String planLoadsError =
      'The combined loads assigned to hauliers'
      ' exceed the total number of loads available.';
  static const String timeMinutes = 'TimeMinutes';
  static const String noAddedContainerMsg = 'No Added Container Found !';
  static const String totalLoads = 'Total loads';
  static const String remainingLoads = 'Remaining loads';
  static const String map = 'Map';
  static const String timeline = 'Timeline';
  static const String job = 'Job';
  static const String normalMapView = 'Normal View';
  static const String satelliteMapView = 'Satellite View';
  static const String enlarge = 'Enlarge';
  static const String retainContainer = 'Retain container';
  static const String assetNumberUsed = 'Asset number used';
  static const String delays = 'Delays';
  static const String addDelay = 'Add delay';
  static const String dispatcher = 'Dispatcher';
  static const String driver = 'Driver';
  static const String formDisabledHint =
      'This section is disabled until job is completed, '
      'to prevent conflicts with mobile devices.';
  static const String planImportTemplateFileName = 'PlanImportTemplate';
  static const String mustBeOneOrGreaterValidationMsg = 'Must be 1 or greater';
  static const String scheduleLoadsValidationMsg =
      'Loads to be scheduled must be less than'
      ' the remaining loads of selected haulier';
  static const String errorDisplay = 'Error';
  static const String copyDisplay = 'Copy';

  static const String jobSourcesFilter = 'jobsources';
  static const String selectYard = 'Select yard';
  static const String confirmDeleteHaulier =
      'Do you want to remove this haulier?';
  static const String confirm = 'Confirm';
  static const String cantDeleteHaulier =
      'Jobs are in Started/Completed State.';
  static const String followingJobsDeleted =
      'Following job(s) needs to be deleted';
  static const String hasJobContainerImagesFilter = 'hasjobcontainerimages';
  static const String hasJobContainerImagesDisplay = 'Has Job Container Images';
  static const String haulierDeleteHintOnPlanner =
      'All the jobs created for this haulier will be deleted';
  static const String invalidIds = "Invalid id's";
  static const String jobs = 'Jobs';
  static const String report = 'Report';
  static const String truckUtilization = 'Truck Utilization';

  static const String schedulerTabInternal = 'Internal Hauliers';
  static const String schedulerTabManagedHaulier =
      'Managed Third Party Hauliers';
  static const String schedulerTabThirdPartyHaulier = 'Third Party Hauliers';
  static const String noReportsAvailable = 'No reports available';
  static const String driverComments = 'Driver Comments';
  static const String explortPlanFileName = 'BulkJobs.xlsx';
  static const String flowType = 'flowType';
}
