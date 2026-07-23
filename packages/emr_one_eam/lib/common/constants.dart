abstract class DisposalFilters {
  static const live = 'LIVE';
  static const all = 'ALL';
  static const disposed = 'DISPOSED';
}

abstract class ApprovalStatus {
  static const approved = 'Approved';
  static const rejected = 'Rejected';
}

abstract class ApprovalType {
  static const transfer = 'TransferOut';
  static const dispose = 'Disposal';
}

abstract class AssetGridColumns {
  static const depo = 'Depot';
  static const assetCode = 'Asset Code';
  static const assetType = 'Asset Type';
  static const make = 'Make';
  static const model = 'Model';
  static const serialNo = 'Serial Number';
  static const name = 'Asset Name';
  static const status = 'Status';
  static const checkbox = 'checkbox';
}

abstract class AssetGridSortTypes {
  static const depotNo = 'depotNo';
  static const code = 'code';
  static const assetType = 'assetType';
  static const make = 'make';
  static const model = 'model';
  static const name = 'name';
  static const serialNumber = 'serialNumber';
  static const status = 'status';
}

abstract class ApprovalGridColumns {
  static const assetCode = 'Asset Code';
  static const assetName = 'Asset Name';
  static const assetType = 'Asset Type';
  static const status = 'Status';
  static const disposalStatus = 'Disposal Status';
  static const approvalType = 'Approval Type';
  static const effectiveFrom = 'Effective From';
  static const depoFrom = 'Depot From';
  static const depoTo = 'Depot To';
  static const reason = 'Reason';
  static const requestedBy = 'Requested By';
  static const functionalLocation = 'FunctionalLocation';
  static const checkbox = 'checkbox';
}

abstract class ShiftWeek {
  static const monday = 'Monday';
  static const tuesday = 'Tuesday';
  static const wednesday = 'Wednesday';
  static const thursday = 'Thursday';
  static const friday = 'Friday';
  static const saturday = 'Saturday';
  static const sunday = 'Sunday';
}

abstract class AssetSearch {
  static const assetCode = 'Asset Code';
  static const friendlyName = 'Friendly Name';
  static const status = 'Status';
  static const assetType = 'Asset Type';
  static const make = 'Make';
  static const model = 'Model';
  static const serialNumber = 'Serial Number';
  static const counter = 'Counter';
  static const freeText = 'freeText';
}

abstract class DepotSearch {
  static const depot = 'Depot';
  static const territory = 'Territory';
  static const freeText = 'freeText';
}

abstract class EAMSearch {
  static const assetTemplates = 'Asset Templates';
  static const showAssets = 'Show Assets';
  static const category = 'Category';
  static const freeText = 'freeText';
}

abstract class FacetKey {
  static const depot = 'DepotNo';
  static const assetCode = 'Code';
  static const assetName = 'Name';
  static const status = 'Status';
  static const disposalStatus = 'DisposalStatus';
  static const assetTemplates = 'AssetTemplate';
  static const assetType = 'AssetType';
  static const make = 'Make';
  static const model = 'Model';
  static const serialNumber = 'SerialNumber';
  static const category = 'Category';
  static const territory = 'Territory';
}

abstract class ActionTypes {
  static const assetSearch = 'Asset Search';
  static const mroSearch = 'EAM Search';
  static const depotSearch = 'Depot Search';
  static const propertySearch = 'Property Search';
  static const filter = 'Filter';
}

abstract class DataType {
  static const boolean = 'Boolean';
  static const date = 'Date';
  static const dateTime = 'Date/Time';
  static const text = 'Text';
  static const numeric = 'Numeric';
  static const yesNo = 'Yes/No';
  static const list = 'List';
}

abstract class SyncTarget {
  static const d365 = 'D365';
  static const trade2 = 'TRADE2';
}

abstract class CounterType {
  static const monitoring = 'Monitoring';
  static const incrementing = 'Incrementing';
}

abstract class EamConstants {
  static const dateFormat = 'yyyy-MM-dd';
  static const assetType = 'Asset Type';
  static const warrentyStartDate = 'Warranty Start Date';
  static const warrentyPeriod = 'Warranty Period';
  static const trueText = 'true';
  static const falseText = 'false';
  static const list = 'List';
  static const sold = 'SOLD';
}

abstract class ConstantLists {
  static const List<String> weeks = [
    ShiftWeek.monday,
    ShiftWeek.tuesday,
    ShiftWeek.wednesday,
    ShiftWeek.thursday,
    ShiftWeek.friday,
    ShiftWeek.saturday,
    ShiftWeek.sunday,
  ];

  static const List<String> gridColumns = [
    AssetGridColumns.checkbox,
    AssetGridColumns.depo,
    AssetGridColumns.assetCode,
    AssetGridColumns.assetType,
    AssetGridColumns.make,
    AssetGridColumns.model,
    AssetGridColumns.name,
    AssetGridColumns.serialNo,
    AssetGridColumns.status,
  ];

  static const List<String> transferColumns = [
    AssetGridColumns.depo,
    AssetGridColumns.assetCode,
    AssetGridColumns.name,
    AssetGridColumns.assetType,
    AssetGridColumns.status,
  ];

  static const List<String> transferApprovalColumns = [
    ApprovalGridColumns.checkbox,
    ApprovalGridColumns.assetCode,
    ApprovalGridColumns.assetName,
    ApprovalGridColumns.approvalType,
    ApprovalGridColumns.effectiveFrom,
    ApprovalGridColumns.depoFrom,
    ApprovalGridColumns.depoTo,
    ApprovalGridColumns.reason,
    ApprovalGridColumns.requestedBy,
    ApprovalGridColumns.functionalLocation,
  ];

  static const List<String> disposalDisposalColumns = [
    ApprovalGridColumns.checkbox,
    ApprovalGridColumns.assetCode,
    ApprovalGridColumns.assetName,
    ApprovalGridColumns.approvalType,
    ApprovalGridColumns.effectiveFrom,
    ApprovalGridColumns.status,
    ApprovalGridColumns.disposalStatus,
    ApprovalGridColumns.reason,
    ApprovalGridColumns.requestedBy,
  ];
  static const List<String> eamSearchList = [
    EAMSearch.showAssets,
    EAMSearch.assetTemplates,
    EAMSearch.category,
  ];

  static const List<String> depotSearchList = [
    DepotSearch.depot,
    DepotSearch.territory,
  ];

  static const List<String> assetSearchList = [
    DepotSearch.depot,
    DepotSearch.territory,
    EAMSearch.assetTemplates,
    AssetSearch.assetType,
    EAMSearch.category,
    AssetSearch.status,
    AssetSearch.assetCode,
    AssetSearch.friendlyName,
    AssetSearch.make,
    AssetSearch.model,
    AssetSearch.serialNumber,
  ];

  static const List<String> assetFacets = [
    DepotSearch.depot,
    DepotSearch.territory,
    EAMSearch.assetTemplates,
    AssetSearch.assetType,
    EAMSearch.category,
    AssetSearch.status,
    AssetSearch.make,
    AssetSearch.model,
    AssetSearch.serialNumber,
  ];

  static const List<String> assetSearchActions = [
    ActionTypes.mroSearch,
    ActionTypes.propertySearch,
    ActionTypes.filter,
  ];

  static const List<String> staticDataTypes = [
    DataType.text,
    DataType.boolean,
    DataType.date,
    DataType.dateTime,
    DataType.numeric,
    DataType.yesNo,
    DataType.list,
  ];

  static const List<String> counterTypeList = [
    CounterType.incrementing,
    CounterType.monitoring,
  ];

  static const List<String> blockedListsNames = [
    'AssetHierarchyPositionPrefixes',
    'AssetTemplateDataTypes',
    'AssetTypes',
    'Conditions',
    'DisposalFilter',
    'DisposalStatuses',
    'FarLeasedExpensed',
    'Statuses',
    'TemplateCategories',
  ];
  static const Map<String, String> assetTemplateOtherProperties = {
    'Category': 'Category',
    'Hierarchy': 'Hierarchy',
    'Location': 'Location',
    'NotifyChanges': 'Notify Changes',
    'ParentAssetRequired': 'Parent Asset Required',
    'PermittedHours': 'Permitted Hours',
    'ReviewAttributes': 'Review Attributes',
    'ShiftHours': 'Shift Hours',
    'SyncAssetToCMMS': 'SyncAssetToCMMS',
    'SyncProjectToCMMS': 'SyncProjectToCMMS',
    'SyncResouceToCMMS': 'SyncResouceToCMMS',
    'Telematics': 'Telematics',
  };
}

abstract class ImportAssetEdit {
  static const Map<String, Map<String, dynamic>> importAssetEditProperties = {
    'Id': {
      'propertyName': 'id',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string',
    },
    'Parent Id': {
      'propertyName': 'parentAssetId',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string?',
    },
    'Code': {
      'propertyName': 'code',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string?',
    },
    'Friendly Name [known as]': {
      'propertyName': 'name',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string?',
    },
    'Make': {
      'propertyName': 'make',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string',
    },
    'Model': {
      'propertyName': 'model',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string',
    },
    'Serial Number': {
      'propertyName': 'serialNumber',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string?',
    },
    'Coda Analysis Code': {
      'propertyName': 'codaAnalysisCode',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string?',
    },
    'Depot No': {
      'propertyName': 'depotNo',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string?',
    },
    'Date of Aquisition': {
      'propertyName': 'dateOfAcquisition',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'datetimeepoch?',
    },
    'Date of Disposal': {
      'propertyName': 'dateOfDisposal',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'datetimeepoch?',
    },
    'FAR/Leased/Expensed': {
      'propertyName': 'farLeasedExpensed',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string',
    },
    'Year of Manufacture': {
      'propertyName': 'yearOfManufacture',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'number?',
    },
    'Condition': {
      'propertyName': 'condition',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string',
    },
    'Status': {
      'propertyName': 'status',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string',
    },
    'Statutory Inspection': {
      'propertyName': 'statutoryInspection',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'boolean',
    },
    'Date of Last Statutory Inspection': {
      'propertyName': 'lastStatutoryInspectionDate',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'datetimeepoch?',
    },
    'Statutory Inspection Interval [Months]': {
      'propertyName': 'statutoryInspectionIntervalMonths',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'datetimeepoch?',
    },
    'Approved': {
      'propertyName': 'approved',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'boolean',
    },
    'Functional Location': {
      'propertyName': 'functionalLocationCode',
      'xslxToJsonProcessor': 'CellValue',
      'valueType': 'string',
    },
  };
}

enum MessageTypes { information, warning, error, success }

enum CreatePageView { templateSelection, assetDetails, created }

enum AttributeTypes { assetProperty, counter, shiftHour, permittedHour }

enum AssetActions { transfer, dispose, approve }

enum AssetTemplateShowType { attributes, counters, others }
