abstract class FormAppAssetsPath {
  static const String homeIcon = 'assets/home.svg';
  static const String templateIcon = 'assets/template.svg';
  static const String allocateIcon = 'assets/allocate.svg';
  static const String viewPdfIcon = 'assets/viewPdf.svg';
  static const String add = 'assets/add.svg';
  static const String delete = 'assets/delete.svg';
  static const String preview = 'assets/preview.svg';
  static const String remove = 'assets/remove.svg';
  static const String completedJobs = 'assets/completedJobs.svg';
  static const String workRequests = 'assets/workRequests.svg';
  static const String search = 'assets/search.svg';
  static const String video = 'assets/video.jpg';
  static const String barcode = 'assets/barcode.svg';
  static const String low = 'assets/low.svg';
  static const String medium = 'assets/medium.svg';
  static const String high = 'assets/high.svg';
  static const String critical = 'assets/critical.svg';
  static const String urgent = 'assets/urgent.svg';
}

abstract class FormAppApiPath {
  static const String closestYard = '/api/Location/closestYard';
  static const String newWorkRequest = '/api/CMMS/addWorkRequest';
  static const String newWorkRequestMedia = '/api/CMMS/uploadWorkRequestMedia';
  static const String validateBySignature = '/api/instance/validateBySignature';
  static const String resetForm = '/api/instance/reset';
  static const String workOrder = '/api/CMMS/workOrder';
  static const String assignWorkOrderToUser = '/api/CMMS/assignWorkOrderToUser';
  static const String createAdhocWorkOrder = '/api/CMMS/template';
  static const String schedule = '/api/CMMS/schedule';
  static const String deleteWorkOrder = '/api/CMMS/workorder';
  static const String fetchAdhocTemplateJson =
      '/api/CMMS/fetchAdhocTemplateJson';
  static const String reassignWorkOrderToUser =
      '/api/CMMS/reassignworkordertouserandresetjob';
  static const String importTemplate = '/templates/import';
  static const String downloadTemplate = '/templates/download';
  static const String downloadMedia = '/view/media';
  static const String saveClient = '/api/instance/saveClient';
  static const String createFormList = '/api/instance/createFormList';
  static const String updateFormList = '/api/instance/updateFormList';
  static const String deleteFormList = '/api/instance/deleteFormList';
  static const String patchTemplate = '/api/CMMS/template';
  static const String refreshAssets = '/api/instance/refreshAssets';
  static const String teams = '/api/teams';
  static const String unassignWorkOrders =
      '/api/CMMS/unallocateuserteamfromjob';
  static const String reProcess = '/api/instance/ForceComplete';
  static const String updated365 = '/api/instance/ForceUpdateD365';
}

abstract class FormsRoutingPath {
  static const String inForms = '/inform';
  static const String yardSelection = 'Inform_Yard_Selection';
  static const String manageTasks = 'Inform_Manage_Tasks';
  static const String allocateUserToWorkOrder =
      'Inform_Allocate_User_To_Work_Orders';
  static const String createWorkOrder = 'Inform_Create_Work_Order';
  static const String createAdhocTemplate = 'Inform_Create_Adhoc_Template';
  static const String createAdhocTemplateNew =
      'Inform_Create_Adhoc_Template_New';
  static const String previewTemplate = 'Informs_Preview_Template';
  static const String createWorkOrderRequest = 'Inform_Create_Work_Request';
  static const String completedJobs = 'Inform_Completed_Jobs';
  static const String completedJobsPdf =
      'completedWorkOrder/:companyCode/:workOrderId';
  static const String jobsAssigedToMe = 'Inform_Jobs_Assigned_To_Me';
  static const String jobPage = 'Inform_Job_Page';
  static const String jobsAssignedToYard = 'Inform_Jobs_Assigned_To_Yard';
  static const String mediaCapture = 'Inform_Media_Capture';
  static const String questionMediaCapture = 'Inform_Question_Media_Capture';
  static const String viewWorkRequest = 'Inform_View_Work_Request';
  static const String manageCmms = 'Informs_Manage_CMMS';
  static const String createTaskCmmsRequest =
      'Informs_Create_Task_CMMS_Request';
  static const String templateLibrary = 'Informs_Template_Library';
  static const String importTemplate = 'import-template';
  static const String diagnostic = 'diagnostic';
  static const String clientDiagnostic = 'clientDiagnostic';
  static const String audit = 'audit';
  static const String downloadTemplate = 'download-template';
  static const String mediaSearch = 'media-search';
  static const String diagnsoticMedia = 'diagnsotic-media';
  static const String mediaItems =
      'maintenanceRequestMedia/:cmpCode/:workRequestId';
  static const String scannedAsset = 'asset';
  static const String scheduler = 'scheduler';
  static const String editScheduler = 'edit-scheduler';
  static const String menu = 'menu';
  static const String clients = 'clients';
  static const String addClient = 'addclient';
  static const String lists = 'lists';
  static const String addList = 'addlist';
  static const String teams = 'teams';
  static const String addTeam = 'addteam';
  static const String myCalendar = 'myCalendar';
  static const String companyPreference = 'companyPreference';
  static const String help = 'help';
}

abstract class FormsRoutingName {
  static const String inForms = 'Inform';
  static const String yardSelection = 'Inform_Yard_Selection';
  static const String manageTasks = 'Inform_Manage_Tasks';
  static const String allocateUserToWorkOrder =
      'Inform_Allocate_User_To_Work_Orders';
  static const String createWorkOrder = 'Inform_Create_Work_Order';
  static const String createAdhocTemplate = 'Inform_Create_Adhoc_Template';
  static const String createAdhocTemplateNew =
      'Inform_Create_Adhoc_Template_New';
  static const String previewTemplate = 'Informs_Preview_Template';
  static const String createWorkOrderRequest = 'Inform_Create_Work_Request';
  static const String completedJobs = 'Inform_Completed_Jobs';
  static const String completedJobsPdf = 'Inform_Completed_Jobs_PDF';
  static const String jobsAssignedToMe = 'Inform_Jobs_Assigned_To_Me';
  static const String jobPage = 'Inform_Job_Page';
  static const String jobsAssignedToYard = 'Inform_Jobs_Assigned_To_Yard';
  static const String mediaCapture = 'Inform_Media_Capture';
  static const String questionMediaCapture = 'Inform_Question_Media_Capture';
  static const String viewWorkRequest = 'Inform_View_Work_Request';
  static const String manageCmms = 'Informs_Manage_CMMS';
  static const String createTaskCmmsRequest =
      'Informs_Create_Task_CMMS_Request';
  static const String templateLibrary = 'Informs_Template_Library';
  static const String importTemplate = 'import-template';
  static const String diagnostic = 'diagnostic';
  static const String clientDiagnostic = 'clientDiagnostic';
  static const String audit = 'audit';
  static const String downloadTemplate = 'download-template';
  static const String mediaSearch = 'media-search';
  static const String mediaItems = 'media-items';
  static const String diagnosticMedia = 'diagnostic-media';
  static const String scannedAsset = 'asset';
  static const String scheduler = 'scheduler';
  static const String editScheduler = 'edit-scheduler';
  static const String menu = 'menu';
  static const String clients = 'clients';
  static const String addClient = 'addclient';
  static const String lists = 'lists';
  static const String addList = 'addlist';
  static const String teams = 'teams';
  static const String addTeam = 'addteam';
  static const String myCalendar = 'myCalendar';
  static const String companyPreference = 'companyPreference';
  static const String help = 'help';
}

abstract class FormsRoutingDisplayNames {
  static const String inForms = 'InForm';
  static const String yardSelection = 'Yard Selection';
  static const String manageTasks = 'Manage Tasks';
  static const String allocateUserToWorkOrder = 'Allocate User To Work Orders';
  static const String createWorkOrder = 'Create Work Order';
  static const String createAdhocTemplate = 'Create Adhoc Template';
  static const String createAdhocTemplateNew = 'Create Adhoc Template New';
  static const String previewTemplate = 'Preview Template';
  static const String createWorkOrderRequest = 'Create Work Request';
  static const String completedJobs = 'Completed Jobs';
  static const String completedJobsPdf = 'Completed Jobs PDF';
  static const String jobsAssigedToMe = 'Jobs Assigned To Me';
  static const String jobPage = 'Job Page';
  static const String jobsAssignedToYard = 'Jobs Assigned To Yard';
  static const String mediaCapture = 'Media Capture';
  static const String questionMediaCapture = 'Question Media Capture';
  static const String importTemplate = 'Import Template';
  static const String diagnostic = 'Diagnostic';
  static const String clientDiagnostic = 'Client Diagnostic Tool';
  static const String audit = 'Audit Logs';
  static const String downloadTemplate = 'Download Template';
  static const String mediaSearch = 'Media Search';
  static const String mediaItems = 'Media Items';
  static const String diagnosticmedia = 'Diagnostic Media';
  static const String scannedAsset = 'Asset';
  static const String scheduler = 'Scheduler';
  static const String editScheduler = 'Edit cheduler';
  static const String menu = 'menu';
  static const String clients = 'Clients';
  static const String addClient = 'Add Client';
  static const String lists = 'Lists';
  static const String addList = 'Add List';
  static const String teams = 'Teams';
  static const String addTeam = 'Add Team';
  static const String myCalendar = 'My Calendar';
  static const String companyPreference = 'Company Preference';
  static const String help = 'Help';
}

enum MessageTypes { information, warning, error, success }

enum UnallocateType { user, team }
