class Input$AssetFilterInput {
  factory Input$AssetFilterInput({
    List<Input$AssetFilterInput>? and,
    List<Input$AssetFilterInput>? or,
    Input$BooleanOperationFilterInput? active,
    Input$BooleanOperationFilterInput? approved,
    Input$StringOperationFilterInput? parentAssetId,
    Input$StringOperationFilterInput? code,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? make,
    Input$StringOperationFilterInput? model,
    Input$StringOperationFilterInput? serialNumber,
    Input$StringOperationFilterInput? depotNo,
    Input$StringOperationFilterInput? functionalLocationCode,
    Input$StringOperationFilterInput? transferToDepotNo,
    Input$StringOperationFilterInput? transferDisposeReason,
    Input$LongOperationFilterInput? transferToDepotNoEffectiveFrom,
    Input$IntOperationFilterInput? transferToDepotNoAssetApprovalId,
    Input$FloatOperationFilterInput? latitude,
    Input$FloatOperationFilterInput? longitude,
    Input$StringOperationFilterInput? templateId,
    Input$LongOperationFilterInput? dateOfAcquisition,
    Input$LongOperationFilterInput? dateOfDisposal,
    Input$StringOperationFilterInput? farLeasedExpensed,
    Input$IntOperationFilterInput? yearOfManufacture,
    Input$StringOperationFilterInput? condition,
    Input$StringOperationFilterInput? status,
    Input$StringOperationFilterInput? disposalStatus,
    Input$UuidOperationFilterInput? transferDisposeRequestedBy,
    Input$LongOperationFilterInput? disposalEffectiveFrom,
    Input$IntOperationFilterInput? disposalApprovalId,
    Input$BooleanOperationFilterInput? statutoryInspection,
    Input$StringOperationFilterInput? salesInvoiceNo,
    Input$ListFilterInputTypeOfAssetPropertyFilterInput? assetProperties,
    Input$ListFilterInputTypeOfAssetCounterFilterInput? assetCounters,
    Input$ListFilterInputTypeOfAssetImageFilterInput? assetImages,
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?
        permittedHours,
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?
        shiftHours,
    Input$ListStringOperationFilterInput? parentAssetCodes,
    Input$BooleanOperationFilterInput? hasSubAssets,
    Input$StringOperationFilterInput? codaAnalysisCode,
    Input$StringOperationFilterInput? assetHierarchyId,
    Input$StringOperationFilterInput? displayName,
    Input$DateTimeOperationFilterInput? needsReview,
    Input$LongOperationFilterInput? lastReviewed,
    Input$StringOperationFilterInput? lastReviewedBy,
    Input$DateTimeOperationFilterInput? lastAudited,
    Input$StringOperationFilterInput? lastAuditedBy,
    Input$StringOperationFilterInput? lastStatutoryInspectionDate,
    Input$StringOperationFilterInput? statutoryInspectionIntervalMonths,
    Input$StringOperationFilterInput? markerColour,
    Input$StringOperationFilterInput? id,
    Input$DateTimeOperationFilterInput? created,
    Input$DateTimeOperationFilterInput? modified,
    Input$UuidOperationFilterInput? modifiedBy,
    Input$UuidOperationFilterInput? createdBy,
  }) =>
      Input$AssetFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (active != null) r'active': active,
        if (approved != null) r'approved': approved,
        if (parentAssetId != null) r'parentAssetId': parentAssetId,
        if (code != null) r'code': code,
        if (name != null) r'name': name,
        if (make != null) r'make': make,
        if (model != null) r'model': model,
        if (serialNumber != null) r'serialNumber': serialNumber,
        if (depotNo != null) r'depotNo': depotNo,
        if (functionalLocationCode != null)
          r'functionalLocationCode': functionalLocationCode,
        if (transferToDepotNo != null) r'transferToDepotNo': transferToDepotNo,
        if (transferDisposeReason != null)
          r'transferDisposeReason': transferDisposeReason,
        if (transferToDepotNoEffectiveFrom != null)
          r'transferToDepotNoEffectiveFrom': transferToDepotNoEffectiveFrom,
        if (transferToDepotNoAssetApprovalId != null)
          r'transferToDepotNoAssetApprovalId': transferToDepotNoAssetApprovalId,
        if (latitude != null) r'latitude': latitude,
        if (longitude != null) r'longitude': longitude,
        if (templateId != null) r'templateId': templateId,
        if (dateOfAcquisition != null) r'dateOfAcquisition': dateOfAcquisition,
        if (dateOfDisposal != null) r'dateOfDisposal': dateOfDisposal,
        if (farLeasedExpensed != null) r'farLeasedExpensed': farLeasedExpensed,
        if (yearOfManufacture != null) r'yearOfManufacture': yearOfManufacture,
        if (condition != null) r'condition': condition,
        if (status != null) r'status': status,
        if (disposalStatus != null) r'disposalStatus': disposalStatus,
        if (transferDisposeRequestedBy != null)
          r'transferDisposeRequestedBy': transferDisposeRequestedBy,
        if (disposalEffectiveFrom != null)
          r'disposalEffectiveFrom': disposalEffectiveFrom,
        if (disposalApprovalId != null)
          r'disposalApprovalId': disposalApprovalId,
        if (statutoryInspection != null)
          r'statutoryInspection': statutoryInspection,
        if (salesInvoiceNo != null) r'salesInvoiceNo': salesInvoiceNo,
        if (assetProperties != null) r'assetProperties': assetProperties,
        if (assetCounters != null) r'assetCounters': assetCounters,
        if (assetImages != null) r'assetImages': assetImages,
        if (permittedHours != null) r'permittedHours': permittedHours,
        if (shiftHours != null) r'shiftHours': shiftHours,
        if (parentAssetCodes != null) r'parentAssetCodes': parentAssetCodes,
        if (hasSubAssets != null) r'hasSubAssets': hasSubAssets,
        if (codaAnalysisCode != null) r'codaAnalysisCode': codaAnalysisCode,
        if (assetHierarchyId != null) r'assetHierarchyId': assetHierarchyId,
        if (displayName != null) r'displayName': displayName,
        if (needsReview != null) r'needsReview': needsReview,
        if (lastReviewed != null) r'lastReviewed': lastReviewed,
        if (lastReviewedBy != null) r'lastReviewedBy': lastReviewedBy,
        if (lastAudited != null) r'lastAudited': lastAudited,
        if (lastAuditedBy != null) r'lastAuditedBy': lastAuditedBy,
        if (lastStatutoryInspectionDate != null)
          r'lastStatutoryInspectionDate': lastStatutoryInspectionDate,
        if (statutoryInspectionIntervalMonths != null)
          r'statutoryInspectionIntervalMonths':
              statutoryInspectionIntervalMonths,
        if (markerColour != null) r'markerColour': markerColour,
        if (id != null) r'id': id,
        if (created != null) r'created': created,
        if (modified != null) r'modified': modified,
        if (modifiedBy != null) r'modifiedBy': modifiedBy,
        if (createdBy != null) r'createdBy': createdBy,
      });

  Input$AssetFilterInput._(this._$data);

  factory Input$AssetFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$AssetFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$AssetFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('approved')) {
      final l$approved = data['approved'];
      result$data['approved'] = l$approved == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$approved as Map<String, dynamic>));
    }
    if (data.containsKey('parentAssetId')) {
      final l$parentAssetId = data['parentAssetId'];
      result$data['parentAssetId'] = l$parentAssetId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$parentAssetId as Map<String, dynamic>));
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$code as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('make')) {
      final l$make = data['make'];
      result$data['make'] = l$make == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$make as Map<String, dynamic>));
    }
    if (data.containsKey('model')) {
      final l$model = data['model'];
      result$data['model'] = l$model == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$model as Map<String, dynamic>));
    }
    if (data.containsKey('serialNumber')) {
      final l$serialNumber = data['serialNumber'];
      result$data['serialNumber'] = l$serialNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$serialNumber as Map<String, dynamic>));
    }
    if (data.containsKey('depotNo')) {
      final l$depotNo = data['depotNo'];
      result$data['depotNo'] = l$depotNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$depotNo as Map<String, dynamic>));
    }
    if (data.containsKey('functionalLocationCode')) {
      final l$functionalLocationCode = data['functionalLocationCode'];
      result$data['functionalLocationCode'] = l$functionalLocationCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$functionalLocationCode as Map<String, dynamic>));
    }
    if (data.containsKey('transferToDepotNo')) {
      final l$transferToDepotNo = data['transferToDepotNo'];
      result$data['transferToDepotNo'] = l$transferToDepotNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$transferToDepotNo as Map<String, dynamic>));
    }
    if (data.containsKey('transferDisposeReason')) {
      final l$transferDisposeReason = data['transferDisposeReason'];
      result$data['transferDisposeReason'] = l$transferDisposeReason == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$transferDisposeReason as Map<String, dynamic>));
    }
    if (data.containsKey('transferToDepotNoEffectiveFrom')) {
      final l$transferToDepotNoEffectiveFrom =
          data['transferToDepotNoEffectiveFrom'];
      result$data['transferToDepotNoEffectiveFrom'] =
          l$transferToDepotNoEffectiveFrom == null
              ? null
              : Input$LongOperationFilterInput.fromJson(
                  (l$transferToDepotNoEffectiveFrom as Map<String, dynamic>));
    }
    if (data.containsKey('transferToDepotNoAssetApprovalId')) {
      final l$transferToDepotNoAssetApprovalId =
          data['transferToDepotNoAssetApprovalId'];
      result$data['transferToDepotNoAssetApprovalId'] =
          l$transferToDepotNoAssetApprovalId == null
              ? null
              : Input$IntOperationFilterInput.fromJson(
                  (l$transferToDepotNoAssetApprovalId as Map<String, dynamic>));
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = l$latitude == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$latitude as Map<String, dynamic>));
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = l$longitude == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$longitude as Map<String, dynamic>));
    }
    if (data.containsKey('templateId')) {
      final l$templateId = data['templateId'];
      result$data['templateId'] = l$templateId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$templateId as Map<String, dynamic>));
    }
    if (data.containsKey('dateOfAcquisition')) {
      final l$dateOfAcquisition = data['dateOfAcquisition'];
      result$data['dateOfAcquisition'] = l$dateOfAcquisition == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$dateOfAcquisition as Map<String, dynamic>));
    }
    if (data.containsKey('dateOfDisposal')) {
      final l$dateOfDisposal = data['dateOfDisposal'];
      result$data['dateOfDisposal'] = l$dateOfDisposal == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$dateOfDisposal as Map<String, dynamic>));
    }
    if (data.containsKey('farLeasedExpensed')) {
      final l$farLeasedExpensed = data['farLeasedExpensed'];
      result$data['farLeasedExpensed'] = l$farLeasedExpensed == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$farLeasedExpensed as Map<String, dynamic>));
    }
    if (data.containsKey('yearOfManufacture')) {
      final l$yearOfManufacture = data['yearOfManufacture'];
      result$data['yearOfManufacture'] = l$yearOfManufacture == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$yearOfManufacture as Map<String, dynamic>));
    }
    if (data.containsKey('condition')) {
      final l$condition = data['condition'];
      result$data['condition'] = l$condition == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$condition as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('disposalStatus')) {
      final l$disposalStatus = data['disposalStatus'];
      result$data['disposalStatus'] = l$disposalStatus == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$disposalStatus as Map<String, dynamic>));
    }
    if (data.containsKey('transferDisposeRequestedBy')) {
      final l$transferDisposeRequestedBy = data['transferDisposeRequestedBy'];
      result$data['transferDisposeRequestedBy'] =
          l$transferDisposeRequestedBy == null
              ? null
              : Input$UuidOperationFilterInput.fromJson(
                  (l$transferDisposeRequestedBy as Map<String, dynamic>));
    }
    if (data.containsKey('disposalEffectiveFrom')) {
      final l$disposalEffectiveFrom = data['disposalEffectiveFrom'];
      result$data['disposalEffectiveFrom'] = l$disposalEffectiveFrom == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$disposalEffectiveFrom as Map<String, dynamic>));
    }
    if (data.containsKey('disposalApprovalId')) {
      final l$disposalApprovalId = data['disposalApprovalId'];
      result$data['disposalApprovalId'] = l$disposalApprovalId == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$disposalApprovalId as Map<String, dynamic>));
    }
    if (data.containsKey('statutoryInspection')) {
      final l$statutoryInspection = data['statutoryInspection'];
      result$data['statutoryInspection'] = l$statutoryInspection == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$statutoryInspection as Map<String, dynamic>));
    }
    if (data.containsKey('salesInvoiceNo')) {
      final l$salesInvoiceNo = data['salesInvoiceNo'];
      result$data['salesInvoiceNo'] = l$salesInvoiceNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$salesInvoiceNo as Map<String, dynamic>));
    }
    if (data.containsKey('assetProperties')) {
      final l$assetProperties = data['assetProperties'];
      result$data['assetProperties'] = l$assetProperties == null
          ? null
          : Input$ListFilterInputTypeOfAssetPropertyFilterInput.fromJson(
              (l$assetProperties as Map<String, dynamic>));
    }
    if (data.containsKey('assetCounters')) {
      final l$assetCounters = data['assetCounters'];
      result$data['assetCounters'] = l$assetCounters == null
          ? null
          : Input$ListFilterInputTypeOfAssetCounterFilterInput.fromJson(
              (l$assetCounters as Map<String, dynamic>));
    }
    if (data.containsKey('assetImages')) {
      final l$assetImages = data['assetImages'];
      result$data['assetImages'] = l$assetImages == null
          ? null
          : Input$ListFilterInputTypeOfAssetImageFilterInput.fromJson(
              (l$assetImages as Map<String, dynamic>));
    }
    if (data.containsKey('permittedHours')) {
      final l$permittedHours = data['permittedHours'];
      result$data['permittedHours'] = l$permittedHours == null
          ? null
          : Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
              .fromJson((l$permittedHours as Map<String, dynamic>));
    }
    if (data.containsKey('shiftHours')) {
      final l$shiftHours = data['shiftHours'];
      result$data['shiftHours'] = l$shiftHours == null
          ? null
          : Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
              .fromJson((l$shiftHours as Map<String, dynamic>));
    }
    if (data.containsKey('parentAssetCodes')) {
      final l$parentAssetCodes = data['parentAssetCodes'];
      result$data['parentAssetCodes'] = l$parentAssetCodes == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$parentAssetCodes as Map<String, dynamic>));
    }
    if (data.containsKey('hasSubAssets')) {
      final l$hasSubAssets = data['hasSubAssets'];
      result$data['hasSubAssets'] = l$hasSubAssets == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasSubAssets as Map<String, dynamic>));
    }
    if (data.containsKey('codaAnalysisCode')) {
      final l$codaAnalysisCode = data['codaAnalysisCode'];
      result$data['codaAnalysisCode'] = l$codaAnalysisCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$codaAnalysisCode as Map<String, dynamic>));
    }
    if (data.containsKey('assetHierarchyId')) {
      final l$assetHierarchyId = data['assetHierarchyId'];
      result$data['assetHierarchyId'] = l$assetHierarchyId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$assetHierarchyId as Map<String, dynamic>));
    }
    if (data.containsKey('displayName')) {
      final l$displayName = data['displayName'];
      result$data['displayName'] = l$displayName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$displayName as Map<String, dynamic>));
    }
    if (data.containsKey('needsReview')) {
      final l$needsReview = data['needsReview'];
      result$data['needsReview'] = l$needsReview == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$needsReview as Map<String, dynamic>));
    }
    if (data.containsKey('lastReviewed')) {
      final l$lastReviewed = data['lastReviewed'];
      result$data['lastReviewed'] = l$lastReviewed == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$lastReviewed as Map<String, dynamic>));
    }
    if (data.containsKey('lastReviewedBy')) {
      final l$lastReviewedBy = data['lastReviewedBy'];
      result$data['lastReviewedBy'] = l$lastReviewedBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$lastReviewedBy as Map<String, dynamic>));
    }
    if (data.containsKey('lastAudited')) {
      final l$lastAudited = data['lastAudited'];
      result$data['lastAudited'] = l$lastAudited == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$lastAudited as Map<String, dynamic>));
    }
    if (data.containsKey('lastAuditedBy')) {
      final l$lastAuditedBy = data['lastAuditedBy'];
      result$data['lastAuditedBy'] = l$lastAuditedBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$lastAuditedBy as Map<String, dynamic>));
    }
    if (data.containsKey('lastStatutoryInspectionDate')) {
      final l$lastStatutoryInspectionDate = data['lastStatutoryInspectionDate'];
      result$data['lastStatutoryInspectionDate'] =
          l$lastStatutoryInspectionDate == null
              ? null
              : Input$StringOperationFilterInput.fromJson(
                  (l$lastStatutoryInspectionDate as Map<String, dynamic>));
    }
    if (data.containsKey('statutoryInspectionIntervalMonths')) {
      final l$statutoryInspectionIntervalMonths =
          data['statutoryInspectionIntervalMonths'];
      result$data['statutoryInspectionIntervalMonths'] =
          l$statutoryInspectionIntervalMonths == null
              ? null
              : Input$StringOperationFilterInput.fromJson(
                  (l$statutoryInspectionIntervalMonths
                      as Map<String, dynamic>));
    }
    if (data.containsKey('markerColour')) {
      final l$markerColour = data['markerColour'];
      result$data['markerColour'] = l$markerColour == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$markerColour as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('created')) {
      final l$created = data['created'];
      result$data['created'] = l$created == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$created as Map<String, dynamic>));
    }
    if (data.containsKey('modified')) {
      final l$modified = data['modified'];
      result$data['modified'] = l$modified == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$modified as Map<String, dynamic>));
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : Input$UuidOperationFilterInput.fromJson(
              (l$modifiedBy as Map<String, dynamic>));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$UuidOperationFilterInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    return Input$AssetFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetFilterInput>?);

  List<Input$AssetFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetFilterInput>?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get approved =>
      (_$data['approved'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get parentAssetId =>
      (_$data['parentAssetId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get code =>
      (_$data['code'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get make =>
      (_$data['make'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get model =>
      (_$data['model'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get serialNumber =>
      (_$data['serialNumber'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get depotNo =>
      (_$data['depotNo'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get functionalLocationCode =>
      (_$data['functionalLocationCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get transferToDepotNo =>
      (_$data['transferToDepotNo'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get transferDisposeReason =>
      (_$data['transferDisposeReason'] as Input$StringOperationFilterInput?);

  Input$LongOperationFilterInput? get transferToDepotNoEffectiveFrom =>
      (_$data['transferToDepotNoEffectiveFrom']
          as Input$LongOperationFilterInput?);

  Input$IntOperationFilterInput? get transferToDepotNoAssetApprovalId =>
      (_$data['transferToDepotNoAssetApprovalId']
          as Input$IntOperationFilterInput?);

  Input$FloatOperationFilterInput? get latitude =>
      (_$data['latitude'] as Input$FloatOperationFilterInput?);

  Input$FloatOperationFilterInput? get longitude =>
      (_$data['longitude'] as Input$FloatOperationFilterInput?);

  Input$StringOperationFilterInput? get templateId =>
      (_$data['templateId'] as Input$StringOperationFilterInput?);

  Input$LongOperationFilterInput? get dateOfAcquisition =>
      (_$data['dateOfAcquisition'] as Input$LongOperationFilterInput?);

  Input$LongOperationFilterInput? get dateOfDisposal =>
      (_$data['dateOfDisposal'] as Input$LongOperationFilterInput?);

  Input$StringOperationFilterInput? get farLeasedExpensed =>
      (_$data['farLeasedExpensed'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get yearOfManufacture =>
      (_$data['yearOfManufacture'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get condition =>
      (_$data['condition'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get status =>
      (_$data['status'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get disposalStatus =>
      (_$data['disposalStatus'] as Input$StringOperationFilterInput?);

  Input$UuidOperationFilterInput? get transferDisposeRequestedBy =>
      (_$data['transferDisposeRequestedBy'] as Input$UuidOperationFilterInput?);

  Input$LongOperationFilterInput? get disposalEffectiveFrom =>
      (_$data['disposalEffectiveFrom'] as Input$LongOperationFilterInput?);

  Input$IntOperationFilterInput? get disposalApprovalId =>
      (_$data['disposalApprovalId'] as Input$IntOperationFilterInput?);

  Input$BooleanOperationFilterInput? get statutoryInspection =>
      (_$data['statutoryInspection'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get salesInvoiceNo =>
      (_$data['salesInvoiceNo'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfAssetPropertyFilterInput? get assetProperties =>
      (_$data['assetProperties']
          as Input$ListFilterInputTypeOfAssetPropertyFilterInput?);

  Input$ListFilterInputTypeOfAssetCounterFilterInput? get assetCounters =>
      (_$data['assetCounters']
          as Input$ListFilterInputTypeOfAssetCounterFilterInput?);

  Input$ListFilterInputTypeOfAssetImageFilterInput? get assetImages =>
      (_$data['assetImages']
          as Input$ListFilterInputTypeOfAssetImageFilterInput?);

  Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?
      get permittedHours => (_$data['permittedHours']
          as Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?);

  Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?
      get shiftHours => (_$data['shiftHours']
          as Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?);

  Input$ListStringOperationFilterInput? get parentAssetCodes =>
      (_$data['parentAssetCodes'] as Input$ListStringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasSubAssets =>
      (_$data['hasSubAssets'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get codaAnalysisCode =>
      (_$data['codaAnalysisCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get assetHierarchyId =>
      (_$data['assetHierarchyId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get displayName =>
      (_$data['displayName'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get needsReview =>
      (_$data['needsReview'] as Input$DateTimeOperationFilterInput?);

  Input$LongOperationFilterInput? get lastReviewed =>
      (_$data['lastReviewed'] as Input$LongOperationFilterInput?);

  Input$StringOperationFilterInput? get lastReviewedBy =>
      (_$data['lastReviewedBy'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get lastAudited =>
      (_$data['lastAudited'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get lastAuditedBy =>
      (_$data['lastAuditedBy'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get lastStatutoryInspectionDate =>
      (_$data['lastStatutoryInspectionDate']
          as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get statutoryInspectionIntervalMonths =>
      (_$data['statutoryInspectionIntervalMonths']
          as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get markerColour =>
      (_$data['markerColour'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get created =>
      (_$data['created'] as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get modified =>
      (_$data['modified'] as Input$DateTimeOperationFilterInput?);

  Input$UuidOperationFilterInput? get modifiedBy =>
      (_$data['modifiedBy'] as Input$UuidOperationFilterInput?);

  Input$UuidOperationFilterInput? get createdBy =>
      (_$data['createdBy'] as Input$UuidOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('approved')) {
      final l$approved = approved;
      result$data['approved'] = l$approved?.toJson();
    }
    if (_$data.containsKey('parentAssetId')) {
      final l$parentAssetId = parentAssetId;
      result$data['parentAssetId'] = l$parentAssetId?.toJson();
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('make')) {
      final l$make = make;
      result$data['make'] = l$make?.toJson();
    }
    if (_$data.containsKey('model')) {
      final l$model = model;
      result$data['model'] = l$model?.toJson();
    }
    if (_$data.containsKey('serialNumber')) {
      final l$serialNumber = serialNumber;
      result$data['serialNumber'] = l$serialNumber?.toJson();
    }
    if (_$data.containsKey('depotNo')) {
      final l$depotNo = depotNo;
      result$data['depotNo'] = l$depotNo?.toJson();
    }
    if (_$data.containsKey('functionalLocationCode')) {
      final l$functionalLocationCode = functionalLocationCode;
      result$data['functionalLocationCode'] =
          l$functionalLocationCode?.toJson();
    }
    if (_$data.containsKey('transferToDepotNo')) {
      final l$transferToDepotNo = transferToDepotNo;
      result$data['transferToDepotNo'] = l$transferToDepotNo?.toJson();
    }
    if (_$data.containsKey('transferDisposeReason')) {
      final l$transferDisposeReason = transferDisposeReason;
      result$data['transferDisposeReason'] = l$transferDisposeReason?.toJson();
    }
    if (_$data.containsKey('transferToDepotNoEffectiveFrom')) {
      final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
      result$data['transferToDepotNoEffectiveFrom'] =
          l$transferToDepotNoEffectiveFrom?.toJson();
    }
    if (_$data.containsKey('transferToDepotNoAssetApprovalId')) {
      final l$transferToDepotNoAssetApprovalId =
          transferToDepotNoAssetApprovalId;
      result$data['transferToDepotNoAssetApprovalId'] =
          l$transferToDepotNoAssetApprovalId?.toJson();
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude?.toJson();
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude?.toJson();
    }
    if (_$data.containsKey('templateId')) {
      final l$templateId = templateId;
      result$data['templateId'] = l$templateId?.toJson();
    }
    if (_$data.containsKey('dateOfAcquisition')) {
      final l$dateOfAcquisition = dateOfAcquisition;
      result$data['dateOfAcquisition'] = l$dateOfAcquisition?.toJson();
    }
    if (_$data.containsKey('dateOfDisposal')) {
      final l$dateOfDisposal = dateOfDisposal;
      result$data['dateOfDisposal'] = l$dateOfDisposal?.toJson();
    }
    if (_$data.containsKey('farLeasedExpensed')) {
      final l$farLeasedExpensed = farLeasedExpensed;
      result$data['farLeasedExpensed'] = l$farLeasedExpensed?.toJson();
    }
    if (_$data.containsKey('yearOfManufacture')) {
      final l$yearOfManufacture = yearOfManufacture;
      result$data['yearOfManufacture'] = l$yearOfManufacture?.toJson();
    }
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('disposalStatus')) {
      final l$disposalStatus = disposalStatus;
      result$data['disposalStatus'] = l$disposalStatus?.toJson();
    }
    if (_$data.containsKey('transferDisposeRequestedBy')) {
      final l$transferDisposeRequestedBy = transferDisposeRequestedBy;
      result$data['transferDisposeRequestedBy'] =
          l$transferDisposeRequestedBy?.toJson();
    }
    if (_$data.containsKey('disposalEffectiveFrom')) {
      final l$disposalEffectiveFrom = disposalEffectiveFrom;
      result$data['disposalEffectiveFrom'] = l$disposalEffectiveFrom?.toJson();
    }
    if (_$data.containsKey('disposalApprovalId')) {
      final l$disposalApprovalId = disposalApprovalId;
      result$data['disposalApprovalId'] = l$disposalApprovalId?.toJson();
    }
    if (_$data.containsKey('statutoryInspection')) {
      final l$statutoryInspection = statutoryInspection;
      result$data['statutoryInspection'] = l$statutoryInspection?.toJson();
    }
    if (_$data.containsKey('salesInvoiceNo')) {
      final l$salesInvoiceNo = salesInvoiceNo;
      result$data['salesInvoiceNo'] = l$salesInvoiceNo?.toJson();
    }
    if (_$data.containsKey('assetProperties')) {
      final l$assetProperties = assetProperties;
      result$data['assetProperties'] = l$assetProperties?.toJson();
    }
    if (_$data.containsKey('assetCounters')) {
      final l$assetCounters = assetCounters;
      result$data['assetCounters'] = l$assetCounters?.toJson();
    }
    if (_$data.containsKey('assetImages')) {
      final l$assetImages = assetImages;
      result$data['assetImages'] = l$assetImages?.toJson();
    }
    if (_$data.containsKey('permittedHours')) {
      final l$permittedHours = permittedHours;
      result$data['permittedHours'] = l$permittedHours?.toJson();
    }
    if (_$data.containsKey('shiftHours')) {
      final l$shiftHours = shiftHours;
      result$data['shiftHours'] = l$shiftHours?.toJson();
    }
    if (_$data.containsKey('parentAssetCodes')) {
      final l$parentAssetCodes = parentAssetCodes;
      result$data['parentAssetCodes'] = l$parentAssetCodes?.toJson();
    }
    if (_$data.containsKey('hasSubAssets')) {
      final l$hasSubAssets = hasSubAssets;
      result$data['hasSubAssets'] = l$hasSubAssets?.toJson();
    }
    if (_$data.containsKey('codaAnalysisCode')) {
      final l$codaAnalysisCode = codaAnalysisCode;
      result$data['codaAnalysisCode'] = l$codaAnalysisCode?.toJson();
    }
    if (_$data.containsKey('assetHierarchyId')) {
      final l$assetHierarchyId = assetHierarchyId;
      result$data['assetHierarchyId'] = l$assetHierarchyId?.toJson();
    }
    if (_$data.containsKey('displayName')) {
      final l$displayName = displayName;
      result$data['displayName'] = l$displayName?.toJson();
    }
    if (_$data.containsKey('needsReview')) {
      final l$needsReview = needsReview;
      result$data['needsReview'] = l$needsReview?.toJson();
    }
    if (_$data.containsKey('lastReviewed')) {
      final l$lastReviewed = lastReviewed;
      result$data['lastReviewed'] = l$lastReviewed?.toJson();
    }
    if (_$data.containsKey('lastReviewedBy')) {
      final l$lastReviewedBy = lastReviewedBy;
      result$data['lastReviewedBy'] = l$lastReviewedBy?.toJson();
    }
    if (_$data.containsKey('lastAudited')) {
      final l$lastAudited = lastAudited;
      result$data['lastAudited'] = l$lastAudited?.toJson();
    }
    if (_$data.containsKey('lastAuditedBy')) {
      final l$lastAuditedBy = lastAuditedBy;
      result$data['lastAuditedBy'] = l$lastAuditedBy?.toJson();
    }
    if (_$data.containsKey('lastStatutoryInspectionDate')) {
      final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
      result$data['lastStatutoryInspectionDate'] =
          l$lastStatutoryInspectionDate?.toJson();
    }
    if (_$data.containsKey('statutoryInspectionIntervalMonths')) {
      final l$statutoryInspectionIntervalMonths =
          statutoryInspectionIntervalMonths;
      result$data['statutoryInspectionIntervalMonths'] =
          l$statutoryInspectionIntervalMonths?.toJson();
    }
    if (_$data.containsKey('markerColour')) {
      final l$markerColour = markerColour;
      result$data['markerColour'] = l$markerColour?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('created')) {
      final l$created = created;
      result$data['created'] = l$created?.toJson();
    }
    if (_$data.containsKey('modified')) {
      final l$modified = modified;
      result$data['modified'] = l$modified?.toJson();
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetFilterInput<Input$AssetFilterInput> get copyWith =>
      CopyWith$Input$AssetFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (_$data.containsKey('approved') !=
        other._$data.containsKey('approved')) {
      return false;
    }
    if (l$approved != lOther$approved) {
      return false;
    }
    final l$parentAssetId = parentAssetId;
    final lOther$parentAssetId = other.parentAssetId;
    if (_$data.containsKey('parentAssetId') !=
        other._$data.containsKey('parentAssetId')) {
      return false;
    }
    if (l$parentAssetId != lOther$parentAssetId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (_$data.containsKey('make') != other._$data.containsKey('make')) {
      return false;
    }
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (_$data.containsKey('model') != other._$data.containsKey('model')) {
      return false;
    }
    if (l$model != lOther$model) {
      return false;
    }
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (_$data.containsKey('serialNumber') !=
        other._$data.containsKey('serialNumber')) {
      return false;
    }
    if (l$serialNumber != lOther$serialNumber) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (_$data.containsKey('depotNo') != other._$data.containsKey('depotNo')) {
      return false;
    }
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$functionalLocationCode = functionalLocationCode;
    final lOther$functionalLocationCode = other.functionalLocationCode;
    if (_$data.containsKey('functionalLocationCode') !=
        other._$data.containsKey('functionalLocationCode')) {
      return false;
    }
    if (l$functionalLocationCode != lOther$functionalLocationCode) {
      return false;
    }
    final l$transferToDepotNo = transferToDepotNo;
    final lOther$transferToDepotNo = other.transferToDepotNo;
    if (_$data.containsKey('transferToDepotNo') !=
        other._$data.containsKey('transferToDepotNo')) {
      return false;
    }
    if (l$transferToDepotNo != lOther$transferToDepotNo) {
      return false;
    }
    final l$transferDisposeReason = transferDisposeReason;
    final lOther$transferDisposeReason = other.transferDisposeReason;
    if (_$data.containsKey('transferDisposeReason') !=
        other._$data.containsKey('transferDisposeReason')) {
      return false;
    }
    if (l$transferDisposeReason != lOther$transferDisposeReason) {
      return false;
    }
    final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
    final lOther$transferToDepotNoEffectiveFrom =
        other.transferToDepotNoEffectiveFrom;
    if (_$data.containsKey('transferToDepotNoEffectiveFrom') !=
        other._$data.containsKey('transferToDepotNoEffectiveFrom')) {
      return false;
    }
    if (l$transferToDepotNoEffectiveFrom !=
        lOther$transferToDepotNoEffectiveFrom) {
      return false;
    }
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final lOther$transferToDepotNoAssetApprovalId =
        other.transferToDepotNoAssetApprovalId;
    if (_$data.containsKey('transferToDepotNoAssetApprovalId') !=
        other._$data.containsKey('transferToDepotNoAssetApprovalId')) {
      return false;
    }
    if (l$transferToDepotNoAssetApprovalId !=
        lOther$transferToDepotNoAssetApprovalId) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (_$data.containsKey('templateId') !=
        other._$data.containsKey('templateId')) {
      return false;
    }
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$dateOfAcquisition = dateOfAcquisition;
    final lOther$dateOfAcquisition = other.dateOfAcquisition;
    if (_$data.containsKey('dateOfAcquisition') !=
        other._$data.containsKey('dateOfAcquisition')) {
      return false;
    }
    if (l$dateOfAcquisition != lOther$dateOfAcquisition) {
      return false;
    }
    final l$dateOfDisposal = dateOfDisposal;
    final lOther$dateOfDisposal = other.dateOfDisposal;
    if (_$data.containsKey('dateOfDisposal') !=
        other._$data.containsKey('dateOfDisposal')) {
      return false;
    }
    if (l$dateOfDisposal != lOther$dateOfDisposal) {
      return false;
    }
    final l$farLeasedExpensed = farLeasedExpensed;
    final lOther$farLeasedExpensed = other.farLeasedExpensed;
    if (_$data.containsKey('farLeasedExpensed') !=
        other._$data.containsKey('farLeasedExpensed')) {
      return false;
    }
    if (l$farLeasedExpensed != lOther$farLeasedExpensed) {
      return false;
    }
    final l$yearOfManufacture = yearOfManufacture;
    final lOther$yearOfManufacture = other.yearOfManufacture;
    if (_$data.containsKey('yearOfManufacture') !=
        other._$data.containsKey('yearOfManufacture')) {
      return false;
    }
    if (l$yearOfManufacture != lOther$yearOfManufacture) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (_$data.containsKey('condition') !=
        other._$data.containsKey('condition')) {
      return false;
    }
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$disposalStatus = disposalStatus;
    final lOther$disposalStatus = other.disposalStatus;
    if (_$data.containsKey('disposalStatus') !=
        other._$data.containsKey('disposalStatus')) {
      return false;
    }
    if (l$disposalStatus != lOther$disposalStatus) {
      return false;
    }
    final l$transferDisposeRequestedBy = transferDisposeRequestedBy;
    final lOther$transferDisposeRequestedBy = other.transferDisposeRequestedBy;
    if (_$data.containsKey('transferDisposeRequestedBy') !=
        other._$data.containsKey('transferDisposeRequestedBy')) {
      return false;
    }
    if (l$transferDisposeRequestedBy != lOther$transferDisposeRequestedBy) {
      return false;
    }
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    final lOther$disposalEffectiveFrom = other.disposalEffectiveFrom;
    if (_$data.containsKey('disposalEffectiveFrom') !=
        other._$data.containsKey('disposalEffectiveFrom')) {
      return false;
    }
    if (l$disposalEffectiveFrom != lOther$disposalEffectiveFrom) {
      return false;
    }
    final l$disposalApprovalId = disposalApprovalId;
    final lOther$disposalApprovalId = other.disposalApprovalId;
    if (_$data.containsKey('disposalApprovalId') !=
        other._$data.containsKey('disposalApprovalId')) {
      return false;
    }
    if (l$disposalApprovalId != lOther$disposalApprovalId) {
      return false;
    }
    final l$statutoryInspection = statutoryInspection;
    final lOther$statutoryInspection = other.statutoryInspection;
    if (_$data.containsKey('statutoryInspection') !=
        other._$data.containsKey('statutoryInspection')) {
      return false;
    }
    if (l$statutoryInspection != lOther$statutoryInspection) {
      return false;
    }
    final l$salesInvoiceNo = salesInvoiceNo;
    final lOther$salesInvoiceNo = other.salesInvoiceNo;
    if (_$data.containsKey('salesInvoiceNo') !=
        other._$data.containsKey('salesInvoiceNo')) {
      return false;
    }
    if (l$salesInvoiceNo != lOther$salesInvoiceNo) {
      return false;
    }
    final l$assetProperties = assetProperties;
    final lOther$assetProperties = other.assetProperties;
    if (_$data.containsKey('assetProperties') !=
        other._$data.containsKey('assetProperties')) {
      return false;
    }
    if (l$assetProperties != lOther$assetProperties) {
      return false;
    }
    final l$assetCounters = assetCounters;
    final lOther$assetCounters = other.assetCounters;
    if (_$data.containsKey('assetCounters') !=
        other._$data.containsKey('assetCounters')) {
      return false;
    }
    if (l$assetCounters != lOther$assetCounters) {
      return false;
    }
    final l$assetImages = assetImages;
    final lOther$assetImages = other.assetImages;
    if (_$data.containsKey('assetImages') !=
        other._$data.containsKey('assetImages')) {
      return false;
    }
    if (l$assetImages != lOther$assetImages) {
      return false;
    }
    final l$permittedHours = permittedHours;
    final lOther$permittedHours = other.permittedHours;
    if (_$data.containsKey('permittedHours') !=
        other._$data.containsKey('permittedHours')) {
      return false;
    }
    if (l$permittedHours != lOther$permittedHours) {
      return false;
    }
    final l$shiftHours = shiftHours;
    final lOther$shiftHours = other.shiftHours;
    if (_$data.containsKey('shiftHours') !=
        other._$data.containsKey('shiftHours')) {
      return false;
    }
    if (l$shiftHours != lOther$shiftHours) {
      return false;
    }
    final l$parentAssetCodes = parentAssetCodes;
    final lOther$parentAssetCodes = other.parentAssetCodes;
    if (_$data.containsKey('parentAssetCodes') !=
        other._$data.containsKey('parentAssetCodes')) {
      return false;
    }
    if (l$parentAssetCodes != lOther$parentAssetCodes) {
      return false;
    }
    final l$hasSubAssets = hasSubAssets;
    final lOther$hasSubAssets = other.hasSubAssets;
    if (_$data.containsKey('hasSubAssets') !=
        other._$data.containsKey('hasSubAssets')) {
      return false;
    }
    if (l$hasSubAssets != lOther$hasSubAssets) {
      return false;
    }
    final l$codaAnalysisCode = codaAnalysisCode;
    final lOther$codaAnalysisCode = other.codaAnalysisCode;
    if (_$data.containsKey('codaAnalysisCode') !=
        other._$data.containsKey('codaAnalysisCode')) {
      return false;
    }
    if (l$codaAnalysisCode != lOther$codaAnalysisCode) {
      return false;
    }
    final l$assetHierarchyId = assetHierarchyId;
    final lOther$assetHierarchyId = other.assetHierarchyId;
    if (_$data.containsKey('assetHierarchyId') !=
        other._$data.containsKey('assetHierarchyId')) {
      return false;
    }
    if (l$assetHierarchyId != lOther$assetHierarchyId) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (_$data.containsKey('displayName') !=
        other._$data.containsKey('displayName')) {
      return false;
    }
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$needsReview = needsReview;
    final lOther$needsReview = other.needsReview;
    if (_$data.containsKey('needsReview') !=
        other._$data.containsKey('needsReview')) {
      return false;
    }
    if (l$needsReview != lOther$needsReview) {
      return false;
    }
    final l$lastReviewed = lastReviewed;
    final lOther$lastReviewed = other.lastReviewed;
    if (_$data.containsKey('lastReviewed') !=
        other._$data.containsKey('lastReviewed')) {
      return false;
    }
    if (l$lastReviewed != lOther$lastReviewed) {
      return false;
    }
    final l$lastReviewedBy = lastReviewedBy;
    final lOther$lastReviewedBy = other.lastReviewedBy;
    if (_$data.containsKey('lastReviewedBy') !=
        other._$data.containsKey('lastReviewedBy')) {
      return false;
    }
    if (l$lastReviewedBy != lOther$lastReviewedBy) {
      return false;
    }
    final l$lastAudited = lastAudited;
    final lOther$lastAudited = other.lastAudited;
    if (_$data.containsKey('lastAudited') !=
        other._$data.containsKey('lastAudited')) {
      return false;
    }
    if (l$lastAudited != lOther$lastAudited) {
      return false;
    }
    final l$lastAuditedBy = lastAuditedBy;
    final lOther$lastAuditedBy = other.lastAuditedBy;
    if (_$data.containsKey('lastAuditedBy') !=
        other._$data.containsKey('lastAuditedBy')) {
      return false;
    }
    if (l$lastAuditedBy != lOther$lastAuditedBy) {
      return false;
    }
    final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
    final lOther$lastStatutoryInspectionDate =
        other.lastStatutoryInspectionDate;
    if (_$data.containsKey('lastStatutoryInspectionDate') !=
        other._$data.containsKey('lastStatutoryInspectionDate')) {
      return false;
    }
    if (l$lastStatutoryInspectionDate != lOther$lastStatutoryInspectionDate) {
      return false;
    }
    final l$statutoryInspectionIntervalMonths =
        statutoryInspectionIntervalMonths;
    final lOther$statutoryInspectionIntervalMonths =
        other.statutoryInspectionIntervalMonths;
    if (_$data.containsKey('statutoryInspectionIntervalMonths') !=
        other._$data.containsKey('statutoryInspectionIntervalMonths')) {
      return false;
    }
    if (l$statutoryInspectionIntervalMonths !=
        lOther$statutoryInspectionIntervalMonths) {
      return false;
    }
    final l$markerColour = markerColour;
    final lOther$markerColour = other.markerColour;
    if (_$data.containsKey('markerColour') !=
        other._$data.containsKey('markerColour')) {
      return false;
    }
    if (l$markerColour != lOther$markerColour) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (_$data.containsKey('created') != other._$data.containsKey('created')) {
      return false;
    }
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (_$data.containsKey('modified') !=
        other._$data.containsKey('modified')) {
      return false;
    }
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$active = active;
    final l$approved = approved;
    final l$parentAssetId = parentAssetId;
    final l$code = code;
    final l$name = name;
    final l$make = make;
    final l$model = model;
    final l$serialNumber = serialNumber;
    final l$depotNo = depotNo;
    final l$functionalLocationCode = functionalLocationCode;
    final l$transferToDepotNo = transferToDepotNo;
    final l$transferDisposeReason = transferDisposeReason;
    final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$templateId = templateId;
    final l$dateOfAcquisition = dateOfAcquisition;
    final l$dateOfDisposal = dateOfDisposal;
    final l$farLeasedExpensed = farLeasedExpensed;
    final l$yearOfManufacture = yearOfManufacture;
    final l$condition = condition;
    final l$status = status;
    final l$disposalStatus = disposalStatus;
    final l$transferDisposeRequestedBy = transferDisposeRequestedBy;
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    final l$disposalApprovalId = disposalApprovalId;
    final l$statutoryInspection = statutoryInspection;
    final l$salesInvoiceNo = salesInvoiceNo;
    final l$assetProperties = assetProperties;
    final l$assetCounters = assetCounters;
    final l$assetImages = assetImages;
    final l$permittedHours = permittedHours;
    final l$shiftHours = shiftHours;
    final l$parentAssetCodes = parentAssetCodes;
    final l$hasSubAssets = hasSubAssets;
    final l$codaAnalysisCode = codaAnalysisCode;
    final l$assetHierarchyId = assetHierarchyId;
    final l$displayName = displayName;
    final l$needsReview = needsReview;
    final l$lastReviewed = lastReviewed;
    final l$lastReviewedBy = lastReviewedBy;
    final l$lastAudited = lastAudited;
    final l$lastAuditedBy = lastAuditedBy;
    final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
    final l$statutoryInspectionIntervalMonths =
        statutoryInspectionIntervalMonths;
    final l$markerColour = markerColour;
    final l$id = id;
    final l$created = created;
    final l$modified = modified;
    final l$modifiedBy = modifiedBy;
    final l$createdBy = createdBy;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('approved') ? l$approved : const {},
      _$data.containsKey('parentAssetId') ? l$parentAssetId : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('make') ? l$make : const {},
      _$data.containsKey('model') ? l$model : const {},
      _$data.containsKey('serialNumber') ? l$serialNumber : const {},
      _$data.containsKey('depotNo') ? l$depotNo : const {},
      _$data.containsKey('functionalLocationCode')
          ? l$functionalLocationCode
          : const {},
      _$data.containsKey('transferToDepotNo') ? l$transferToDepotNo : const {},
      _$data.containsKey('transferDisposeReason')
          ? l$transferDisposeReason
          : const {},
      _$data.containsKey('transferToDepotNoEffectiveFrom')
          ? l$transferToDepotNoEffectiveFrom
          : const {},
      _$data.containsKey('transferToDepotNoAssetApprovalId')
          ? l$transferToDepotNoAssetApprovalId
          : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
      _$data.containsKey('templateId') ? l$templateId : const {},
      _$data.containsKey('dateOfAcquisition') ? l$dateOfAcquisition : const {},
      _$data.containsKey('dateOfDisposal') ? l$dateOfDisposal : const {},
      _$data.containsKey('farLeasedExpensed') ? l$farLeasedExpensed : const {},
      _$data.containsKey('yearOfManufacture') ? l$yearOfManufacture : const {},
      _$data.containsKey('condition') ? l$condition : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('disposalStatus') ? l$disposalStatus : const {},
      _$data.containsKey('transferDisposeRequestedBy')
          ? l$transferDisposeRequestedBy
          : const {},
      _$data.containsKey('disposalEffectiveFrom')
          ? l$disposalEffectiveFrom
          : const {},
      _$data.containsKey('disposalApprovalId')
          ? l$disposalApprovalId
          : const {},
      _$data.containsKey('statutoryInspection')
          ? l$statutoryInspection
          : const {},
      _$data.containsKey('salesInvoiceNo') ? l$salesInvoiceNo : const {},
      _$data.containsKey('assetProperties') ? l$assetProperties : const {},
      _$data.containsKey('assetCounters') ? l$assetCounters : const {},
      _$data.containsKey('assetImages') ? l$assetImages : const {},
      _$data.containsKey('permittedHours') ? l$permittedHours : const {},
      _$data.containsKey('shiftHours') ? l$shiftHours : const {},
      _$data.containsKey('parentAssetCodes') ? l$parentAssetCodes : const {},
      _$data.containsKey('hasSubAssets') ? l$hasSubAssets : const {},
      _$data.containsKey('codaAnalysisCode') ? l$codaAnalysisCode : const {},
      _$data.containsKey('assetHierarchyId') ? l$assetHierarchyId : const {},
      _$data.containsKey('displayName') ? l$displayName : const {},
      _$data.containsKey('needsReview') ? l$needsReview : const {},
      _$data.containsKey('lastReviewed') ? l$lastReviewed : const {},
      _$data.containsKey('lastReviewedBy') ? l$lastReviewedBy : const {},
      _$data.containsKey('lastAudited') ? l$lastAudited : const {},
      _$data.containsKey('lastAuditedBy') ? l$lastAuditedBy : const {},
      _$data.containsKey('lastStatutoryInspectionDate')
          ? l$lastStatutoryInspectionDate
          : const {},
      _$data.containsKey('statutoryInspectionIntervalMonths')
          ? l$statutoryInspectionIntervalMonths
          : const {},
      _$data.containsKey('markerColour') ? l$markerColour : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('created') ? l$created : const {},
      _$data.containsKey('modified') ? l$modified : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetFilterInput<TRes> {
  factory CopyWith$Input$AssetFilterInput(
    Input$AssetFilterInput instance,
    TRes Function(Input$AssetFilterInput) then,
  ) = _CopyWithImpl$Input$AssetFilterInput;

  factory CopyWith$Input$AssetFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetFilterInput;

  TRes call({
    List<Input$AssetFilterInput>? and,
    List<Input$AssetFilterInput>? or,
    Input$BooleanOperationFilterInput? active,
    Input$BooleanOperationFilterInput? approved,
    Input$StringOperationFilterInput? parentAssetId,
    Input$StringOperationFilterInput? code,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? make,
    Input$StringOperationFilterInput? model,
    Input$StringOperationFilterInput? serialNumber,
    Input$StringOperationFilterInput? depotNo,
    Input$StringOperationFilterInput? functionalLocationCode,
    Input$StringOperationFilterInput? transferToDepotNo,
    Input$StringOperationFilterInput? transferDisposeReason,
    Input$LongOperationFilterInput? transferToDepotNoEffectiveFrom,
    Input$IntOperationFilterInput? transferToDepotNoAssetApprovalId,
    Input$FloatOperationFilterInput? latitude,
    Input$FloatOperationFilterInput? longitude,
    Input$StringOperationFilterInput? templateId,
    Input$LongOperationFilterInput? dateOfAcquisition,
    Input$LongOperationFilterInput? dateOfDisposal,
    Input$StringOperationFilterInput? farLeasedExpensed,
    Input$IntOperationFilterInput? yearOfManufacture,
    Input$StringOperationFilterInput? condition,
    Input$StringOperationFilterInput? status,
    Input$StringOperationFilterInput? disposalStatus,
    Input$UuidOperationFilterInput? transferDisposeRequestedBy,
    Input$LongOperationFilterInput? disposalEffectiveFrom,
    Input$IntOperationFilterInput? disposalApprovalId,
    Input$BooleanOperationFilterInput? statutoryInspection,
    Input$StringOperationFilterInput? salesInvoiceNo,
    Input$ListFilterInputTypeOfAssetPropertyFilterInput? assetProperties,
    Input$ListFilterInputTypeOfAssetCounterFilterInput? assetCounters,
    Input$ListFilterInputTypeOfAssetImageFilterInput? assetImages,
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?
        permittedHours,
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?
        shiftHours,
    Input$ListStringOperationFilterInput? parentAssetCodes,
    Input$BooleanOperationFilterInput? hasSubAssets,
    Input$StringOperationFilterInput? codaAnalysisCode,
    Input$StringOperationFilterInput? assetHierarchyId,
    Input$StringOperationFilterInput? displayName,
    Input$DateTimeOperationFilterInput? needsReview,
    Input$LongOperationFilterInput? lastReviewed,
    Input$StringOperationFilterInput? lastReviewedBy,
    Input$DateTimeOperationFilterInput? lastAudited,
    Input$StringOperationFilterInput? lastAuditedBy,
    Input$StringOperationFilterInput? lastStatutoryInspectionDate,
    Input$StringOperationFilterInput? statutoryInspectionIntervalMonths,
    Input$StringOperationFilterInput? markerColour,
    Input$StringOperationFilterInput? id,
    Input$DateTimeOperationFilterInput? created,
    Input$DateTimeOperationFilterInput? modified,
    Input$UuidOperationFilterInput? modifiedBy,
    Input$UuidOperationFilterInput? createdBy,
  });
  TRes and(
      Iterable<Input$AssetFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetFilterInput<Input$AssetFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetFilterInput<Input$AssetFilterInput>>?)
          _fn);
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get approved;
  CopyWith$Input$StringOperationFilterInput<TRes> get parentAssetId;
  CopyWith$Input$StringOperationFilterInput<TRes> get code;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get make;
  CopyWith$Input$StringOperationFilterInput<TRes> get model;
  CopyWith$Input$StringOperationFilterInput<TRes> get serialNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get depotNo;
  CopyWith$Input$StringOperationFilterInput<TRes> get functionalLocationCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get transferToDepotNo;
  CopyWith$Input$StringOperationFilterInput<TRes> get transferDisposeReason;
  CopyWith$Input$LongOperationFilterInput<TRes>
      get transferToDepotNoEffectiveFrom;
  CopyWith$Input$IntOperationFilterInput<TRes>
      get transferToDepotNoAssetApprovalId;
  CopyWith$Input$FloatOperationFilterInput<TRes> get latitude;
  CopyWith$Input$FloatOperationFilterInput<TRes> get longitude;
  CopyWith$Input$StringOperationFilterInput<TRes> get templateId;
  CopyWith$Input$LongOperationFilterInput<TRes> get dateOfAcquisition;
  CopyWith$Input$LongOperationFilterInput<TRes> get dateOfDisposal;
  CopyWith$Input$StringOperationFilterInput<TRes> get farLeasedExpensed;
  CopyWith$Input$IntOperationFilterInput<TRes> get yearOfManufacture;
  CopyWith$Input$StringOperationFilterInput<TRes> get condition;
  CopyWith$Input$StringOperationFilterInput<TRes> get status;
  CopyWith$Input$StringOperationFilterInput<TRes> get disposalStatus;
  CopyWith$Input$UuidOperationFilterInput<TRes> get transferDisposeRequestedBy;
  CopyWith$Input$LongOperationFilterInput<TRes> get disposalEffectiveFrom;
  CopyWith$Input$IntOperationFilterInput<TRes> get disposalApprovalId;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get statutoryInspection;
  CopyWith$Input$StringOperationFilterInput<TRes> get salesInvoiceNo;
  CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput<TRes>
      get assetProperties;
  CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput<TRes>
      get assetCounters;
  CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput<TRes>
      get assetImages;
  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
      TRes> get permittedHours;
  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
      TRes> get shiftHours;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get parentAssetCodes;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasSubAssets;
  CopyWith$Input$StringOperationFilterInput<TRes> get codaAnalysisCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get assetHierarchyId;
  CopyWith$Input$StringOperationFilterInput<TRes> get displayName;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get needsReview;
  CopyWith$Input$LongOperationFilterInput<TRes> get lastReviewed;
  CopyWith$Input$StringOperationFilterInput<TRes> get lastReviewedBy;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get lastAudited;
  CopyWith$Input$StringOperationFilterInput<TRes> get lastAuditedBy;
  CopyWith$Input$StringOperationFilterInput<TRes>
      get lastStatutoryInspectionDate;
  CopyWith$Input$StringOperationFilterInput<TRes>
      get statutoryInspectionIntervalMonths;
  CopyWith$Input$StringOperationFilterInput<TRes> get markerColour;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get created;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modified;
  CopyWith$Input$UuidOperationFilterInput<TRes> get modifiedBy;
  CopyWith$Input$UuidOperationFilterInput<TRes> get createdBy;
}

class _CopyWithImpl$Input$AssetFilterInput<TRes>
    implements CopyWith$Input$AssetFilterInput<TRes> {
  _CopyWithImpl$Input$AssetFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetFilterInput _instance;

  final TRes Function(Input$AssetFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? active = _undefined,
    Object? approved = _undefined,
    Object? parentAssetId = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? serialNumber = _undefined,
    Object? depotNo = _undefined,
    Object? functionalLocationCode = _undefined,
    Object? transferToDepotNo = _undefined,
    Object? transferDisposeReason = _undefined,
    Object? transferToDepotNoEffectiveFrom = _undefined,
    Object? transferToDepotNoAssetApprovalId = _undefined,
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? templateId = _undefined,
    Object? dateOfAcquisition = _undefined,
    Object? dateOfDisposal = _undefined,
    Object? farLeasedExpensed = _undefined,
    Object? yearOfManufacture = _undefined,
    Object? condition = _undefined,
    Object? status = _undefined,
    Object? disposalStatus = _undefined,
    Object? transferDisposeRequestedBy = _undefined,
    Object? disposalEffectiveFrom = _undefined,
    Object? disposalApprovalId = _undefined,
    Object? statutoryInspection = _undefined,
    Object? salesInvoiceNo = _undefined,
    Object? assetProperties = _undefined,
    Object? assetCounters = _undefined,
    Object? assetImages = _undefined,
    Object? permittedHours = _undefined,
    Object? shiftHours = _undefined,
    Object? parentAssetCodes = _undefined,
    Object? hasSubAssets = _undefined,
    Object? codaAnalysisCode = _undefined,
    Object? assetHierarchyId = _undefined,
    Object? displayName = _undefined,
    Object? needsReview = _undefined,
    Object? lastReviewed = _undefined,
    Object? lastReviewedBy = _undefined,
    Object? lastAudited = _undefined,
    Object? lastAuditedBy = _undefined,
    Object? lastStatutoryInspectionDate = _undefined,
    Object? statutoryInspectionIntervalMonths = _undefined,
    Object? markerColour = _undefined,
    Object? id = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? modifiedBy = _undefined,
    Object? createdBy = _undefined,
  }) =>
      _then(Input$AssetFilterInput._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$AssetFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$AssetFilterInput>?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (approved != _undefined)
          'approved': (approved as Input$BooleanOperationFilterInput?),
        if (parentAssetId != _undefined)
          'parentAssetId': (parentAssetId as Input$StringOperationFilterInput?),
        if (code != _undefined)
          'code': (code as Input$StringOperationFilterInput?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (make != _undefined)
          'make': (make as Input$StringOperationFilterInput?),
        if (model != _undefined)
          'model': (model as Input$StringOperationFilterInput?),
        if (serialNumber != _undefined)
          'serialNumber': (serialNumber as Input$StringOperationFilterInput?),
        if (depotNo != _undefined)
          'depotNo': (depotNo as Input$StringOperationFilterInput?),
        if (functionalLocationCode != _undefined)
          'functionalLocationCode':
              (functionalLocationCode as Input$StringOperationFilterInput?),
        if (transferToDepotNo != _undefined)
          'transferToDepotNo':
              (transferToDepotNo as Input$StringOperationFilterInput?),
        if (transferDisposeReason != _undefined)
          'transferDisposeReason':
              (transferDisposeReason as Input$StringOperationFilterInput?),
        if (transferToDepotNoEffectiveFrom != _undefined)
          'transferToDepotNoEffectiveFrom': (transferToDepotNoEffectiveFrom
              as Input$LongOperationFilterInput?),
        if (transferToDepotNoAssetApprovalId != _undefined)
          'transferToDepotNoAssetApprovalId': (transferToDepotNoAssetApprovalId
              as Input$IntOperationFilterInput?),
        if (latitude != _undefined)
          'latitude': (latitude as Input$FloatOperationFilterInput?),
        if (longitude != _undefined)
          'longitude': (longitude as Input$FloatOperationFilterInput?),
        if (templateId != _undefined)
          'templateId': (templateId as Input$StringOperationFilterInput?),
        if (dateOfAcquisition != _undefined)
          'dateOfAcquisition':
              (dateOfAcquisition as Input$LongOperationFilterInput?),
        if (dateOfDisposal != _undefined)
          'dateOfDisposal': (dateOfDisposal as Input$LongOperationFilterInput?),
        if (farLeasedExpensed != _undefined)
          'farLeasedExpensed':
              (farLeasedExpensed as Input$StringOperationFilterInput?),
        if (yearOfManufacture != _undefined)
          'yearOfManufacture':
              (yearOfManufacture as Input$IntOperationFilterInput?),
        if (condition != _undefined)
          'condition': (condition as Input$StringOperationFilterInput?),
        if (status != _undefined)
          'status': (status as Input$StringOperationFilterInput?),
        if (disposalStatus != _undefined)
          'disposalStatus':
              (disposalStatus as Input$StringOperationFilterInput?),
        if (transferDisposeRequestedBy != _undefined)
          'transferDisposeRequestedBy':
              (transferDisposeRequestedBy as Input$UuidOperationFilterInput?),
        if (disposalEffectiveFrom != _undefined)
          'disposalEffectiveFrom':
              (disposalEffectiveFrom as Input$LongOperationFilterInput?),
        if (disposalApprovalId != _undefined)
          'disposalApprovalId':
              (disposalApprovalId as Input$IntOperationFilterInput?),
        if (statutoryInspection != _undefined)
          'statutoryInspection':
              (statutoryInspection as Input$BooleanOperationFilterInput?),
        if (salesInvoiceNo != _undefined)
          'salesInvoiceNo':
              (salesInvoiceNo as Input$StringOperationFilterInput?),
        if (assetProperties != _undefined)
          'assetProperties': (assetProperties
              as Input$ListFilterInputTypeOfAssetPropertyFilterInput?),
        if (assetCounters != _undefined)
          'assetCounters': (assetCounters
              as Input$ListFilterInputTypeOfAssetCounterFilterInput?),
        if (assetImages != _undefined)
          'assetImages': (assetImages
              as Input$ListFilterInputTypeOfAssetImageFilterInput?),
        if (permittedHours != _undefined)
          'permittedHours': (permittedHours
              as Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?),
        if (shiftHours != _undefined)
          'shiftHours': (shiftHours
              as Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?),
        if (parentAssetCodes != _undefined)
          'parentAssetCodes':
              (parentAssetCodes as Input$ListStringOperationFilterInput?),
        if (hasSubAssets != _undefined)
          'hasSubAssets': (hasSubAssets as Input$BooleanOperationFilterInput?),
        if (codaAnalysisCode != _undefined)
          'codaAnalysisCode':
              (codaAnalysisCode as Input$StringOperationFilterInput?),
        if (assetHierarchyId != _undefined)
          'assetHierarchyId':
              (assetHierarchyId as Input$StringOperationFilterInput?),
        if (displayName != _undefined)
          'displayName': (displayName as Input$StringOperationFilterInput?),
        if (needsReview != _undefined)
          'needsReview': (needsReview as Input$DateTimeOperationFilterInput?),
        if (lastReviewed != _undefined)
          'lastReviewed': (lastReviewed as Input$LongOperationFilterInput?),
        if (lastReviewedBy != _undefined)
          'lastReviewedBy':
              (lastReviewedBy as Input$StringOperationFilterInput?),
        if (lastAudited != _undefined)
          'lastAudited': (lastAudited as Input$DateTimeOperationFilterInput?),
        if (lastAuditedBy != _undefined)
          'lastAuditedBy': (lastAuditedBy as Input$StringOperationFilterInput?),
        if (lastStatutoryInspectionDate != _undefined)
          'lastStatutoryInspectionDate': (lastStatutoryInspectionDate
              as Input$StringOperationFilterInput?),
        if (statutoryInspectionIntervalMonths != _undefined)
          'statutoryInspectionIntervalMonths':
              (statutoryInspectionIntervalMonths
                  as Input$StringOperationFilterInput?),
        if (markerColour != _undefined)
          'markerColour': (markerColour as Input$StringOperationFilterInput?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (created != _undefined)
          'created': (created as Input$DateTimeOperationFilterInput?),
        if (modified != _undefined)
          'modified': (modified as Input$DateTimeOperationFilterInput?),
        if (modifiedBy != _undefined)
          'modifiedBy': (modifiedBy as Input$UuidOperationFilterInput?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$UuidOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetFilterInput<Input$AssetFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$AssetFilterInput(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$AssetFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetFilterInput<Input$AssetFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$AssetFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get approved {
    final local$approved = _instance.approved;
    return local$approved == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$approved, (e) => call(approved: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get parentAssetId {
    final local$parentAssetId = _instance.parentAssetId;
    return local$parentAssetId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$parentAssetId, (e) => call(parentAssetId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get code {
    final local$code = _instance.code;
    return local$code == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$code, (e) => call(code: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get make {
    final local$make = _instance.make;
    return local$make == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$make, (e) => call(make: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get model {
    final local$model = _instance.model;
    return local$model == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$model, (e) => call(model: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get serialNumber {
    final local$serialNumber = _instance.serialNumber;
    return local$serialNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$serialNumber, (e) => call(serialNumber: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get depotNo {
    final local$depotNo = _instance.depotNo;
    return local$depotNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$depotNo, (e) => call(depotNo: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get functionalLocationCode {
    final local$functionalLocationCode = _instance.functionalLocationCode;
    return local$functionalLocationCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$functionalLocationCode,
            (e) => call(functionalLocationCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get transferToDepotNo {
    final local$transferToDepotNo = _instance.transferToDepotNo;
    return local$transferToDepotNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$transferToDepotNo, (e) => call(transferToDepotNo: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get transferDisposeReason {
    final local$transferDisposeReason = _instance.transferDisposeReason;
    return local$transferDisposeReason == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$transferDisposeReason, (e) => call(transferDisposeReason: e));
  }

  CopyWith$Input$LongOperationFilterInput<TRes>
      get transferToDepotNoEffectiveFrom {
    final local$transferToDepotNoEffectiveFrom =
        _instance.transferToDepotNoEffectiveFrom;
    return local$transferToDepotNoEffectiveFrom == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$transferToDepotNoEffectiveFrom,
            (e) => call(transferToDepotNoEffectiveFrom: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes>
      get transferToDepotNoAssetApprovalId {
    final local$transferToDepotNoAssetApprovalId =
        _instance.transferToDepotNoAssetApprovalId;
    return local$transferToDepotNoAssetApprovalId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$transferToDepotNoAssetApprovalId,
            (e) => call(transferToDepotNoAssetApprovalId: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get latitude {
    final local$latitude = _instance.latitude;
    return local$latitude == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$latitude, (e) => call(latitude: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get longitude {
    final local$longitude = _instance.longitude;
    return local$longitude == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$longitude, (e) => call(longitude: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get templateId {
    final local$templateId = _instance.templateId;
    return local$templateId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$templateId, (e) => call(templateId: e));
  }

  CopyWith$Input$LongOperationFilterInput<TRes> get dateOfAcquisition {
    final local$dateOfAcquisition = _instance.dateOfAcquisition;
    return local$dateOfAcquisition == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$dateOfAcquisition, (e) => call(dateOfAcquisition: e));
  }

  CopyWith$Input$LongOperationFilterInput<TRes> get dateOfDisposal {
    final local$dateOfDisposal = _instance.dateOfDisposal;
    return local$dateOfDisposal == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$dateOfDisposal, (e) => call(dateOfDisposal: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get farLeasedExpensed {
    final local$farLeasedExpensed = _instance.farLeasedExpensed;
    return local$farLeasedExpensed == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$farLeasedExpensed, (e) => call(farLeasedExpensed: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get yearOfManufacture {
    final local$yearOfManufacture = _instance.yearOfManufacture;
    return local$yearOfManufacture == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$yearOfManufacture, (e) => call(yearOfManufacture: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get condition {
    final local$condition = _instance.condition;
    return local$condition == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$condition, (e) => call(condition: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get disposalStatus {
    final local$disposalStatus = _instance.disposalStatus;
    return local$disposalStatus == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$disposalStatus, (e) => call(disposalStatus: e));
  }

  CopyWith$Input$UuidOperationFilterInput<TRes> get transferDisposeRequestedBy {
    final local$transferDisposeRequestedBy =
        _instance.transferDisposeRequestedBy;
    return local$transferDisposeRequestedBy == null
        ? CopyWith$Input$UuidOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$UuidOperationFilterInput(
            local$transferDisposeRequestedBy,
            (e) => call(transferDisposeRequestedBy: e));
  }

  CopyWith$Input$LongOperationFilterInput<TRes> get disposalEffectiveFrom {
    final local$disposalEffectiveFrom = _instance.disposalEffectiveFrom;
    return local$disposalEffectiveFrom == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$disposalEffectiveFrom, (e) => call(disposalEffectiveFrom: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get disposalApprovalId {
    final local$disposalApprovalId = _instance.disposalApprovalId;
    return local$disposalApprovalId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$disposalApprovalId, (e) => call(disposalApprovalId: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get statutoryInspection {
    final local$statutoryInspection = _instance.statutoryInspection;
    return local$statutoryInspection == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$statutoryInspection, (e) => call(statutoryInspection: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get salesInvoiceNo {
    final local$salesInvoiceNo = _instance.salesInvoiceNo;
    return local$salesInvoiceNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$salesInvoiceNo, (e) => call(salesInvoiceNo: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput<TRes>
      get assetProperties {
    final local$assetProperties = _instance.assetProperties;
    return local$assetProperties == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput(
            local$assetProperties, (e) => call(assetProperties: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput<TRes>
      get assetCounters {
    final local$assetCounters = _instance.assetCounters;
    return local$assetCounters == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput(
            local$assetCounters, (e) => call(assetCounters: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput<TRes>
      get assetImages {
    final local$assetImages = _instance.assetImages;
    return local$assetImages == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput(
            local$assetImages, (e) => call(assetImages: e));
  }

  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
      TRes> get permittedHours {
    final local$permittedHours = _instance.permittedHours;
    return local$permittedHours == null
        ? CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput(
            local$permittedHours, (e) => call(permittedHours: e));
  }

  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
      TRes> get shiftHours {
    final local$shiftHours = _instance.shiftHours;
    return local$shiftHours == null
        ? CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput(
            local$shiftHours, (e) => call(shiftHours: e));
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get parentAssetCodes {
    final local$parentAssetCodes = _instance.parentAssetCodes;
    return local$parentAssetCodes == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$parentAssetCodes, (e) => call(parentAssetCodes: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasSubAssets {
    final local$hasSubAssets = _instance.hasSubAssets;
    return local$hasSubAssets == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasSubAssets, (e) => call(hasSubAssets: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get codaAnalysisCode {
    final local$codaAnalysisCode = _instance.codaAnalysisCode;
    return local$codaAnalysisCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$codaAnalysisCode, (e) => call(codaAnalysisCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get assetHierarchyId {
    final local$assetHierarchyId = _instance.assetHierarchyId;
    return local$assetHierarchyId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$assetHierarchyId, (e) => call(assetHierarchyId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get displayName {
    final local$displayName = _instance.displayName;
    return local$displayName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$displayName, (e) => call(displayName: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get needsReview {
    final local$needsReview = _instance.needsReview;
    return local$needsReview == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$needsReview, (e) => call(needsReview: e));
  }

  CopyWith$Input$LongOperationFilterInput<TRes> get lastReviewed {
    final local$lastReviewed = _instance.lastReviewed;
    return local$lastReviewed == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$lastReviewed, (e) => call(lastReviewed: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get lastReviewedBy {
    final local$lastReviewedBy = _instance.lastReviewedBy;
    return local$lastReviewedBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$lastReviewedBy, (e) => call(lastReviewedBy: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get lastAudited {
    final local$lastAudited = _instance.lastAudited;
    return local$lastAudited == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$lastAudited, (e) => call(lastAudited: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get lastAuditedBy {
    final local$lastAuditedBy = _instance.lastAuditedBy;
    return local$lastAuditedBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$lastAuditedBy, (e) => call(lastAuditedBy: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes>
      get lastStatutoryInspectionDate {
    final local$lastStatutoryInspectionDate =
        _instance.lastStatutoryInspectionDate;
    return local$lastStatutoryInspectionDate == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$lastStatutoryInspectionDate,
            (e) => call(lastStatutoryInspectionDate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes>
      get statutoryInspectionIntervalMonths {
    final local$statutoryInspectionIntervalMonths =
        _instance.statutoryInspectionIntervalMonths;
    return local$statutoryInspectionIntervalMonths == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$statutoryInspectionIntervalMonths,
            (e) => call(statutoryInspectionIntervalMonths: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get markerColour {
    final local$markerColour = _instance.markerColour;
    return local$markerColour == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$markerColour, (e) => call(markerColour: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get created {
    final local$created = _instance.created;
    return local$created == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$created, (e) => call(created: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modified {
    final local$modified = _instance.modified;
    return local$modified == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$modified, (e) => call(modified: e));
  }

  CopyWith$Input$UuidOperationFilterInput<TRes> get modifiedBy {
    final local$modifiedBy = _instance.modifiedBy;
    return local$modifiedBy == null
        ? CopyWith$Input$UuidOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$UuidOperationFilterInput(
            local$modifiedBy, (e) => call(modifiedBy: e));
  }

  CopyWith$Input$UuidOperationFilterInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$UuidOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$UuidOperationFilterInput(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Input$AssetFilterInput<TRes>
    implements CopyWith$Input$AssetFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetFilterInput>? and,
    List<Input$AssetFilterInput>? or,
    Input$BooleanOperationFilterInput? active,
    Input$BooleanOperationFilterInput? approved,
    Input$StringOperationFilterInput? parentAssetId,
    Input$StringOperationFilterInput? code,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? make,
    Input$StringOperationFilterInput? model,
    Input$StringOperationFilterInput? serialNumber,
    Input$StringOperationFilterInput? depotNo,
    Input$StringOperationFilterInput? functionalLocationCode,
    Input$StringOperationFilterInput? transferToDepotNo,
    Input$StringOperationFilterInput? transferDisposeReason,
    Input$LongOperationFilterInput? transferToDepotNoEffectiveFrom,
    Input$IntOperationFilterInput? transferToDepotNoAssetApprovalId,
    Input$FloatOperationFilterInput? latitude,
    Input$FloatOperationFilterInput? longitude,
    Input$StringOperationFilterInput? templateId,
    Input$LongOperationFilterInput? dateOfAcquisition,
    Input$LongOperationFilterInput? dateOfDisposal,
    Input$StringOperationFilterInput? farLeasedExpensed,
    Input$IntOperationFilterInput? yearOfManufacture,
    Input$StringOperationFilterInput? condition,
    Input$StringOperationFilterInput? status,
    Input$StringOperationFilterInput? disposalStatus,
    Input$UuidOperationFilterInput? transferDisposeRequestedBy,
    Input$LongOperationFilterInput? disposalEffectiveFrom,
    Input$IntOperationFilterInput? disposalApprovalId,
    Input$BooleanOperationFilterInput? statutoryInspection,
    Input$StringOperationFilterInput? salesInvoiceNo,
    Input$ListFilterInputTypeOfAssetPropertyFilterInput? assetProperties,
    Input$ListFilterInputTypeOfAssetCounterFilterInput? assetCounters,
    Input$ListFilterInputTypeOfAssetImageFilterInput? assetImages,
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?
        permittedHours,
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput?
        shiftHours,
    Input$ListStringOperationFilterInput? parentAssetCodes,
    Input$BooleanOperationFilterInput? hasSubAssets,
    Input$StringOperationFilterInput? codaAnalysisCode,
    Input$StringOperationFilterInput? assetHierarchyId,
    Input$StringOperationFilterInput? displayName,
    Input$DateTimeOperationFilterInput? needsReview,
    Input$LongOperationFilterInput? lastReviewed,
    Input$StringOperationFilterInput? lastReviewedBy,
    Input$DateTimeOperationFilterInput? lastAudited,
    Input$StringOperationFilterInput? lastAuditedBy,
    Input$StringOperationFilterInput? lastStatutoryInspectionDate,
    Input$StringOperationFilterInput? statutoryInspectionIntervalMonths,
    Input$StringOperationFilterInput? markerColour,
    Input$StringOperationFilterInput? id,
    Input$DateTimeOperationFilterInput? created,
    Input$DateTimeOperationFilterInput? modified,
    Input$UuidOperationFilterInput? modifiedBy,
    Input$UuidOperationFilterInput? createdBy,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get approved =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get parentAssetId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get code =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get make =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get model =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get serialNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get depotNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get functionalLocationCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get transferToDepotNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get transferDisposeReason =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes>
      get transferToDepotNoEffectiveFrom =>
          CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes>
      get transferToDepotNoAssetApprovalId =>
          CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get latitude =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get longitude =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get templateId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes> get dateOfAcquisition =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes> get dateOfDisposal =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get farLeasedExpensed =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get yearOfManufacture =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get condition =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get status =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get disposalStatus =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$UuidOperationFilterInput<TRes>
      get transferDisposeRequestedBy =>
          CopyWith$Input$UuidOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes> get disposalEffectiveFrom =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get disposalApprovalId =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get statutoryInspection =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get salesInvoiceNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput<TRes>
      get assetProperties =>
          CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput.stub(
              _res);

  CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput<TRes>
      get assetCounters =>
          CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput.stub(
              _res);

  CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput<TRes>
      get assetImages =>
          CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
          TRes>
      get permittedHours =>
          CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
              .stub(_res);

  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
          TRes>
      get shiftHours =>
          CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
              .stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get parentAssetCodes =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasSubAssets =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get codaAnalysisCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get assetHierarchyId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get displayName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get needsReview =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes> get lastReviewed =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get lastReviewedBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get lastAudited =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get lastAuditedBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes>
      get lastStatutoryInspectionDate =>
          CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes>
      get statutoryInspectionIntervalMonths =>
          CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get markerColour =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get created =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modified =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$UuidOperationFilterInput<TRes> get modifiedBy =>
      CopyWith$Input$UuidOperationFilterInput.stub(_res);

  CopyWith$Input$UuidOperationFilterInput<TRes> get createdBy =>
      CopyWith$Input$UuidOperationFilterInput.stub(_res);
}

class Input$AssetSortInput {
  factory Input$AssetSortInput({
    Enum$SortEnumType? active,
    Enum$SortEnumType? approved,
    Enum$SortEnumType? parentAssetId,
    Enum$SortEnumType? code,
    Enum$SortEnumType? name,
    Enum$SortEnumType? make,
    Enum$SortEnumType? model,
    Enum$SortEnumType? serialNumber,
    Enum$SortEnumType? depotNo,
    Enum$SortEnumType? functionalLocationCode,
    Enum$SortEnumType? transferToDepotNo,
    Enum$SortEnumType? transferDisposeReason,
    Enum$SortEnumType? transferToDepotNoEffectiveFrom,
    Enum$SortEnumType? transferToDepotNoAssetApprovalId,
    Enum$SortEnumType? latitude,
    Enum$SortEnumType? longitude,
    Enum$SortEnumType? templateId,
    Enum$SortEnumType? dateOfAcquisition,
    Enum$SortEnumType? dateOfDisposal,
    Enum$SortEnumType? farLeasedExpensed,
    Enum$SortEnumType? yearOfManufacture,
    Enum$SortEnumType? condition,
    Enum$SortEnumType? status,
    Enum$SortEnumType? disposalStatus,
    Enum$SortEnumType? transferDisposeRequestedBy,
    Enum$SortEnumType? disposalEffectiveFrom,
    Enum$SortEnumType? disposalApprovalId,
    Enum$SortEnumType? statutoryInspection,
    Enum$SortEnumType? salesInvoiceNo,
    Enum$SortEnumType? hasSubAssets,
    Enum$SortEnumType? codaAnalysisCode,
    Enum$SortEnumType? assetHierarchyId,
    Enum$SortEnumType? displayName,
    Enum$SortEnumType? needsReview,
    Enum$SortEnumType? lastReviewed,
    Enum$SortEnumType? lastReviewedBy,
    Enum$SortEnumType? lastAudited,
    Enum$SortEnumType? lastAuditedBy,
    Enum$SortEnumType? lastStatutoryInspectionDate,
    Enum$SortEnumType? statutoryInspectionIntervalMonths,
    Enum$SortEnumType? markerColour,
    Enum$SortEnumType? id,
    Enum$SortEnumType? created,
    Enum$SortEnumType? modified,
    Enum$SortEnumType? modifiedBy,
    Enum$SortEnumType? createdBy,
  }) =>
      Input$AssetSortInput._({
        if (active != null) r'active': active,
        if (approved != null) r'approved': approved,
        if (parentAssetId != null) r'parentAssetId': parentAssetId,
        if (code != null) r'code': code,
        if (name != null) r'name': name,
        if (make != null) r'make': make,
        if (model != null) r'model': model,
        if (serialNumber != null) r'serialNumber': serialNumber,
        if (depotNo != null) r'depotNo': depotNo,
        if (functionalLocationCode != null)
          r'functionalLocationCode': functionalLocationCode,
        if (transferToDepotNo != null) r'transferToDepotNo': transferToDepotNo,
        if (transferDisposeReason != null)
          r'transferDisposeReason': transferDisposeReason,
        if (transferToDepotNoEffectiveFrom != null)
          r'transferToDepotNoEffectiveFrom': transferToDepotNoEffectiveFrom,
        if (transferToDepotNoAssetApprovalId != null)
          r'transferToDepotNoAssetApprovalId': transferToDepotNoAssetApprovalId,
        if (latitude != null) r'latitude': latitude,
        if (longitude != null) r'longitude': longitude,
        if (templateId != null) r'templateId': templateId,
        if (dateOfAcquisition != null) r'dateOfAcquisition': dateOfAcquisition,
        if (dateOfDisposal != null) r'dateOfDisposal': dateOfDisposal,
        if (farLeasedExpensed != null) r'farLeasedExpensed': farLeasedExpensed,
        if (yearOfManufacture != null) r'yearOfManufacture': yearOfManufacture,
        if (condition != null) r'condition': condition,
        if (status != null) r'status': status,
        if (disposalStatus != null) r'disposalStatus': disposalStatus,
        if (transferDisposeRequestedBy != null)
          r'transferDisposeRequestedBy': transferDisposeRequestedBy,
        if (disposalEffectiveFrom != null)
          r'disposalEffectiveFrom': disposalEffectiveFrom,
        if (disposalApprovalId != null)
          r'disposalApprovalId': disposalApprovalId,
        if (statutoryInspection != null)
          r'statutoryInspection': statutoryInspection,
        if (salesInvoiceNo != null) r'salesInvoiceNo': salesInvoiceNo,
        if (hasSubAssets != null) r'hasSubAssets': hasSubAssets,
        if (codaAnalysisCode != null) r'codaAnalysisCode': codaAnalysisCode,
        if (assetHierarchyId != null) r'assetHierarchyId': assetHierarchyId,
        if (displayName != null) r'displayName': displayName,
        if (needsReview != null) r'needsReview': needsReview,
        if (lastReviewed != null) r'lastReviewed': lastReviewed,
        if (lastReviewedBy != null) r'lastReviewedBy': lastReviewedBy,
        if (lastAudited != null) r'lastAudited': lastAudited,
        if (lastAuditedBy != null) r'lastAuditedBy': lastAuditedBy,
        if (lastStatutoryInspectionDate != null)
          r'lastStatutoryInspectionDate': lastStatutoryInspectionDate,
        if (statutoryInspectionIntervalMonths != null)
          r'statutoryInspectionIntervalMonths':
              statutoryInspectionIntervalMonths,
        if (markerColour != null) r'markerColour': markerColour,
        if (id != null) r'id': id,
        if (created != null) r'created': created,
        if (modified != null) r'modified': modified,
        if (modifiedBy != null) r'modifiedBy': modifiedBy,
        if (createdBy != null) r'createdBy': createdBy,
      });

  Input$AssetSortInput._(this._$data);

  factory Input$AssetSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('approved')) {
      final l$approved = data['approved'];
      result$data['approved'] = l$approved == null
          ? null
          : fromJson$Enum$SortEnumType((l$approved as String));
    }
    if (data.containsKey('parentAssetId')) {
      final l$parentAssetId = data['parentAssetId'];
      result$data['parentAssetId'] = l$parentAssetId == null
          ? null
          : fromJson$Enum$SortEnumType((l$parentAssetId as String));
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : fromJson$Enum$SortEnumType((l$code as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('make')) {
      final l$make = data['make'];
      result$data['make'] = l$make == null
          ? null
          : fromJson$Enum$SortEnumType((l$make as String));
    }
    if (data.containsKey('model')) {
      final l$model = data['model'];
      result$data['model'] = l$model == null
          ? null
          : fromJson$Enum$SortEnumType((l$model as String));
    }
    if (data.containsKey('serialNumber')) {
      final l$serialNumber = data['serialNumber'];
      result$data['serialNumber'] = l$serialNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$serialNumber as String));
    }
    if (data.containsKey('depotNo')) {
      final l$depotNo = data['depotNo'];
      result$data['depotNo'] = l$depotNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$depotNo as String));
    }
    if (data.containsKey('functionalLocationCode')) {
      final l$functionalLocationCode = data['functionalLocationCode'];
      result$data['functionalLocationCode'] = l$functionalLocationCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$functionalLocationCode as String));
    }
    if (data.containsKey('transferToDepotNo')) {
      final l$transferToDepotNo = data['transferToDepotNo'];
      result$data['transferToDepotNo'] = l$transferToDepotNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$transferToDepotNo as String));
    }
    if (data.containsKey('transferDisposeReason')) {
      final l$transferDisposeReason = data['transferDisposeReason'];
      result$data['transferDisposeReason'] = l$transferDisposeReason == null
          ? null
          : fromJson$Enum$SortEnumType((l$transferDisposeReason as String));
    }
    if (data.containsKey('transferToDepotNoEffectiveFrom')) {
      final l$transferToDepotNoEffectiveFrom =
          data['transferToDepotNoEffectiveFrom'];
      result$data['transferToDepotNoEffectiveFrom'] =
          l$transferToDepotNoEffectiveFrom == null
              ? null
              : fromJson$Enum$SortEnumType(
                  (l$transferToDepotNoEffectiveFrom as String));
    }
    if (data.containsKey('transferToDepotNoAssetApprovalId')) {
      final l$transferToDepotNoAssetApprovalId =
          data['transferToDepotNoAssetApprovalId'];
      result$data['transferToDepotNoAssetApprovalId'] =
          l$transferToDepotNoAssetApprovalId == null
              ? null
              : fromJson$Enum$SortEnumType(
                  (l$transferToDepotNoAssetApprovalId as String));
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = l$latitude == null
          ? null
          : fromJson$Enum$SortEnumType((l$latitude as String));
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = l$longitude == null
          ? null
          : fromJson$Enum$SortEnumType((l$longitude as String));
    }
    if (data.containsKey('templateId')) {
      final l$templateId = data['templateId'];
      result$data['templateId'] = l$templateId == null
          ? null
          : fromJson$Enum$SortEnumType((l$templateId as String));
    }
    if (data.containsKey('dateOfAcquisition')) {
      final l$dateOfAcquisition = data['dateOfAcquisition'];
      result$data['dateOfAcquisition'] = l$dateOfAcquisition == null
          ? null
          : fromJson$Enum$SortEnumType((l$dateOfAcquisition as String));
    }
    if (data.containsKey('dateOfDisposal')) {
      final l$dateOfDisposal = data['dateOfDisposal'];
      result$data['dateOfDisposal'] = l$dateOfDisposal == null
          ? null
          : fromJson$Enum$SortEnumType((l$dateOfDisposal as String));
    }
    if (data.containsKey('farLeasedExpensed')) {
      final l$farLeasedExpensed = data['farLeasedExpensed'];
      result$data['farLeasedExpensed'] = l$farLeasedExpensed == null
          ? null
          : fromJson$Enum$SortEnumType((l$farLeasedExpensed as String));
    }
    if (data.containsKey('yearOfManufacture')) {
      final l$yearOfManufacture = data['yearOfManufacture'];
      result$data['yearOfManufacture'] = l$yearOfManufacture == null
          ? null
          : fromJson$Enum$SortEnumType((l$yearOfManufacture as String));
    }
    if (data.containsKey('condition')) {
      final l$condition = data['condition'];
      result$data['condition'] = l$condition == null
          ? null
          : fromJson$Enum$SortEnumType((l$condition as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$SortEnumType((l$status as String));
    }
    if (data.containsKey('disposalStatus')) {
      final l$disposalStatus = data['disposalStatus'];
      result$data['disposalStatus'] = l$disposalStatus == null
          ? null
          : fromJson$Enum$SortEnumType((l$disposalStatus as String));
    }
    if (data.containsKey('transferDisposeRequestedBy')) {
      final l$transferDisposeRequestedBy = data['transferDisposeRequestedBy'];
      result$data['transferDisposeRequestedBy'] =
          l$transferDisposeRequestedBy == null
              ? null
              : fromJson$Enum$SortEnumType(
                  (l$transferDisposeRequestedBy as String));
    }
    if (data.containsKey('disposalEffectiveFrom')) {
      final l$disposalEffectiveFrom = data['disposalEffectiveFrom'];
      result$data['disposalEffectiveFrom'] = l$disposalEffectiveFrom == null
          ? null
          : fromJson$Enum$SortEnumType((l$disposalEffectiveFrom as String));
    }
    if (data.containsKey('disposalApprovalId')) {
      final l$disposalApprovalId = data['disposalApprovalId'];
      result$data['disposalApprovalId'] = l$disposalApprovalId == null
          ? null
          : fromJson$Enum$SortEnumType((l$disposalApprovalId as String));
    }
    if (data.containsKey('statutoryInspection')) {
      final l$statutoryInspection = data['statutoryInspection'];
      result$data['statutoryInspection'] = l$statutoryInspection == null
          ? null
          : fromJson$Enum$SortEnumType((l$statutoryInspection as String));
    }
    if (data.containsKey('salesInvoiceNo')) {
      final l$salesInvoiceNo = data['salesInvoiceNo'];
      result$data['salesInvoiceNo'] = l$salesInvoiceNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$salesInvoiceNo as String));
    }
    if (data.containsKey('hasSubAssets')) {
      final l$hasSubAssets = data['hasSubAssets'];
      result$data['hasSubAssets'] = l$hasSubAssets == null
          ? null
          : fromJson$Enum$SortEnumType((l$hasSubAssets as String));
    }
    if (data.containsKey('codaAnalysisCode')) {
      final l$codaAnalysisCode = data['codaAnalysisCode'];
      result$data['codaAnalysisCode'] = l$codaAnalysisCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$codaAnalysisCode as String));
    }
    if (data.containsKey('assetHierarchyId')) {
      final l$assetHierarchyId = data['assetHierarchyId'];
      result$data['assetHierarchyId'] = l$assetHierarchyId == null
          ? null
          : fromJson$Enum$SortEnumType((l$assetHierarchyId as String));
    }
    if (data.containsKey('displayName')) {
      final l$displayName = data['displayName'];
      result$data['displayName'] = l$displayName == null
          ? null
          : fromJson$Enum$SortEnumType((l$displayName as String));
    }
    if (data.containsKey('needsReview')) {
      final l$needsReview = data['needsReview'];
      result$data['needsReview'] = l$needsReview == null
          ? null
          : fromJson$Enum$SortEnumType((l$needsReview as String));
    }
    if (data.containsKey('lastReviewed')) {
      final l$lastReviewed = data['lastReviewed'];
      result$data['lastReviewed'] = l$lastReviewed == null
          ? null
          : fromJson$Enum$SortEnumType((l$lastReviewed as String));
    }
    if (data.containsKey('lastReviewedBy')) {
      final l$lastReviewedBy = data['lastReviewedBy'];
      result$data['lastReviewedBy'] = l$lastReviewedBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$lastReviewedBy as String));
    }
    if (data.containsKey('lastAudited')) {
      final l$lastAudited = data['lastAudited'];
      result$data['lastAudited'] = l$lastAudited == null
          ? null
          : fromJson$Enum$SortEnumType((l$lastAudited as String));
    }
    if (data.containsKey('lastAuditedBy')) {
      final l$lastAuditedBy = data['lastAuditedBy'];
      result$data['lastAuditedBy'] = l$lastAuditedBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$lastAuditedBy as String));
    }
    if (data.containsKey('lastStatutoryInspectionDate')) {
      final l$lastStatutoryInspectionDate = data['lastStatutoryInspectionDate'];
      result$data['lastStatutoryInspectionDate'] =
          l$lastStatutoryInspectionDate == null
              ? null
              : fromJson$Enum$SortEnumType(
                  (l$lastStatutoryInspectionDate as String));
    }
    if (data.containsKey('statutoryInspectionIntervalMonths')) {
      final l$statutoryInspectionIntervalMonths =
          data['statutoryInspectionIntervalMonths'];
      result$data['statutoryInspectionIntervalMonths'] =
          l$statutoryInspectionIntervalMonths == null
              ? null
              : fromJson$Enum$SortEnumType(
                  (l$statutoryInspectionIntervalMonths as String));
    }
    if (data.containsKey('markerColour')) {
      final l$markerColour = data['markerColour'];
      result$data['markerColour'] = l$markerColour == null
          ? null
          : fromJson$Enum$SortEnumType((l$markerColour as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('created')) {
      final l$created = data['created'];
      result$data['created'] = l$created == null
          ? null
          : fromJson$Enum$SortEnumType((l$created as String));
    }
    if (data.containsKey('modified')) {
      final l$modified = data['modified'];
      result$data['modified'] = l$modified == null
          ? null
          : fromJson$Enum$SortEnumType((l$modified as String));
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedBy as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdBy as String));
    }
    return Input$AssetSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get approved => (_$data['approved'] as Enum$SortEnumType?);

  Enum$SortEnumType? get parentAssetId =>
      (_$data['parentAssetId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get code => (_$data['code'] as Enum$SortEnumType?);

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get make => (_$data['make'] as Enum$SortEnumType?);

  Enum$SortEnumType? get model => (_$data['model'] as Enum$SortEnumType?);

  Enum$SortEnumType? get serialNumber =>
      (_$data['serialNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get depotNo => (_$data['depotNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get functionalLocationCode =>
      (_$data['functionalLocationCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get transferToDepotNo =>
      (_$data['transferToDepotNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get transferDisposeReason =>
      (_$data['transferDisposeReason'] as Enum$SortEnumType?);

  Enum$SortEnumType? get transferToDepotNoEffectiveFrom =>
      (_$data['transferToDepotNoEffectiveFrom'] as Enum$SortEnumType?);

  Enum$SortEnumType? get transferToDepotNoAssetApprovalId =>
      (_$data['transferToDepotNoAssetApprovalId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get latitude => (_$data['latitude'] as Enum$SortEnumType?);

  Enum$SortEnumType? get longitude =>
      (_$data['longitude'] as Enum$SortEnumType?);

  Enum$SortEnumType? get templateId =>
      (_$data['templateId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get dateOfAcquisition =>
      (_$data['dateOfAcquisition'] as Enum$SortEnumType?);

  Enum$SortEnumType? get dateOfDisposal =>
      (_$data['dateOfDisposal'] as Enum$SortEnumType?);

  Enum$SortEnumType? get farLeasedExpensed =>
      (_$data['farLeasedExpensed'] as Enum$SortEnumType?);

  Enum$SortEnumType? get yearOfManufacture =>
      (_$data['yearOfManufacture'] as Enum$SortEnumType?);

  Enum$SortEnumType? get condition =>
      (_$data['condition'] as Enum$SortEnumType?);

  Enum$SortEnumType? get status => (_$data['status'] as Enum$SortEnumType?);

  Enum$SortEnumType? get disposalStatus =>
      (_$data['disposalStatus'] as Enum$SortEnumType?);

  Enum$SortEnumType? get transferDisposeRequestedBy =>
      (_$data['transferDisposeRequestedBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get disposalEffectiveFrom =>
      (_$data['disposalEffectiveFrom'] as Enum$SortEnumType?);

  Enum$SortEnumType? get disposalApprovalId =>
      (_$data['disposalApprovalId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get statutoryInspection =>
      (_$data['statutoryInspection'] as Enum$SortEnumType?);

  Enum$SortEnumType? get salesInvoiceNo =>
      (_$data['salesInvoiceNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get hasSubAssets =>
      (_$data['hasSubAssets'] as Enum$SortEnumType?);

  Enum$SortEnumType? get codaAnalysisCode =>
      (_$data['codaAnalysisCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get assetHierarchyId =>
      (_$data['assetHierarchyId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get displayName =>
      (_$data['displayName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get needsReview =>
      (_$data['needsReview'] as Enum$SortEnumType?);

  Enum$SortEnumType? get lastReviewed =>
      (_$data['lastReviewed'] as Enum$SortEnumType?);

  Enum$SortEnumType? get lastReviewedBy =>
      (_$data['lastReviewedBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get lastAudited =>
      (_$data['lastAudited'] as Enum$SortEnumType?);

  Enum$SortEnumType? get lastAuditedBy =>
      (_$data['lastAuditedBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get lastStatutoryInspectionDate =>
      (_$data['lastStatutoryInspectionDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get statutoryInspectionIntervalMonths =>
      (_$data['statutoryInspectionIntervalMonths'] as Enum$SortEnumType?);

  Enum$SortEnumType? get markerColour =>
      (_$data['markerColour'] as Enum$SortEnumType?);

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get created => (_$data['created'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modified => (_$data['modified'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedBy =>
      (_$data['modifiedBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdBy =>
      (_$data['createdBy'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] =
          l$active == null ? null : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('approved')) {
      final l$approved = approved;
      result$data['approved'] =
          l$approved == null ? null : toJson$Enum$SortEnumType(l$approved);
    }
    if (_$data.containsKey('parentAssetId')) {
      final l$parentAssetId = parentAssetId;
      result$data['parentAssetId'] = l$parentAssetId == null
          ? null
          : toJson$Enum$SortEnumType(l$parentAssetId);
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] =
          l$code == null ? null : toJson$Enum$SortEnumType(l$code);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('make')) {
      final l$make = make;
      result$data['make'] =
          l$make == null ? null : toJson$Enum$SortEnumType(l$make);
    }
    if (_$data.containsKey('model')) {
      final l$model = model;
      result$data['model'] =
          l$model == null ? null : toJson$Enum$SortEnumType(l$model);
    }
    if (_$data.containsKey('serialNumber')) {
      final l$serialNumber = serialNumber;
      result$data['serialNumber'] = l$serialNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$serialNumber);
    }
    if (_$data.containsKey('depotNo')) {
      final l$depotNo = depotNo;
      result$data['depotNo'] =
          l$depotNo == null ? null : toJson$Enum$SortEnumType(l$depotNo);
    }
    if (_$data.containsKey('functionalLocationCode')) {
      final l$functionalLocationCode = functionalLocationCode;
      result$data['functionalLocationCode'] = l$functionalLocationCode == null
          ? null
          : toJson$Enum$SortEnumType(l$functionalLocationCode);
    }
    if (_$data.containsKey('transferToDepotNo')) {
      final l$transferToDepotNo = transferToDepotNo;
      result$data['transferToDepotNo'] = l$transferToDepotNo == null
          ? null
          : toJson$Enum$SortEnumType(l$transferToDepotNo);
    }
    if (_$data.containsKey('transferDisposeReason')) {
      final l$transferDisposeReason = transferDisposeReason;
      result$data['transferDisposeReason'] = l$transferDisposeReason == null
          ? null
          : toJson$Enum$SortEnumType(l$transferDisposeReason);
    }
    if (_$data.containsKey('transferToDepotNoEffectiveFrom')) {
      final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
      result$data['transferToDepotNoEffectiveFrom'] =
          l$transferToDepotNoEffectiveFrom == null
              ? null
              : toJson$Enum$SortEnumType(l$transferToDepotNoEffectiveFrom);
    }
    if (_$data.containsKey('transferToDepotNoAssetApprovalId')) {
      final l$transferToDepotNoAssetApprovalId =
          transferToDepotNoAssetApprovalId;
      result$data['transferToDepotNoAssetApprovalId'] =
          l$transferToDepotNoAssetApprovalId == null
              ? null
              : toJson$Enum$SortEnumType(l$transferToDepotNoAssetApprovalId);
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] =
          l$latitude == null ? null : toJson$Enum$SortEnumType(l$latitude);
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] =
          l$longitude == null ? null : toJson$Enum$SortEnumType(l$longitude);
    }
    if (_$data.containsKey('templateId')) {
      final l$templateId = templateId;
      result$data['templateId'] =
          l$templateId == null ? null : toJson$Enum$SortEnumType(l$templateId);
    }
    if (_$data.containsKey('dateOfAcquisition')) {
      final l$dateOfAcquisition = dateOfAcquisition;
      result$data['dateOfAcquisition'] = l$dateOfAcquisition == null
          ? null
          : toJson$Enum$SortEnumType(l$dateOfAcquisition);
    }
    if (_$data.containsKey('dateOfDisposal')) {
      final l$dateOfDisposal = dateOfDisposal;
      result$data['dateOfDisposal'] = l$dateOfDisposal == null
          ? null
          : toJson$Enum$SortEnumType(l$dateOfDisposal);
    }
    if (_$data.containsKey('farLeasedExpensed')) {
      final l$farLeasedExpensed = farLeasedExpensed;
      result$data['farLeasedExpensed'] = l$farLeasedExpensed == null
          ? null
          : toJson$Enum$SortEnumType(l$farLeasedExpensed);
    }
    if (_$data.containsKey('yearOfManufacture')) {
      final l$yearOfManufacture = yearOfManufacture;
      result$data['yearOfManufacture'] = l$yearOfManufacture == null
          ? null
          : toJson$Enum$SortEnumType(l$yearOfManufacture);
    }
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] =
          l$condition == null ? null : toJson$Enum$SortEnumType(l$condition);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$SortEnumType(l$status);
    }
    if (_$data.containsKey('disposalStatus')) {
      final l$disposalStatus = disposalStatus;
      result$data['disposalStatus'] = l$disposalStatus == null
          ? null
          : toJson$Enum$SortEnumType(l$disposalStatus);
    }
    if (_$data.containsKey('transferDisposeRequestedBy')) {
      final l$transferDisposeRequestedBy = transferDisposeRequestedBy;
      result$data['transferDisposeRequestedBy'] =
          l$transferDisposeRequestedBy == null
              ? null
              : toJson$Enum$SortEnumType(l$transferDisposeRequestedBy);
    }
    if (_$data.containsKey('disposalEffectiveFrom')) {
      final l$disposalEffectiveFrom = disposalEffectiveFrom;
      result$data['disposalEffectiveFrom'] = l$disposalEffectiveFrom == null
          ? null
          : toJson$Enum$SortEnumType(l$disposalEffectiveFrom);
    }
    if (_$data.containsKey('disposalApprovalId')) {
      final l$disposalApprovalId = disposalApprovalId;
      result$data['disposalApprovalId'] = l$disposalApprovalId == null
          ? null
          : toJson$Enum$SortEnumType(l$disposalApprovalId);
    }
    if (_$data.containsKey('statutoryInspection')) {
      final l$statutoryInspection = statutoryInspection;
      result$data['statutoryInspection'] = l$statutoryInspection == null
          ? null
          : toJson$Enum$SortEnumType(l$statutoryInspection);
    }
    if (_$data.containsKey('salesInvoiceNo')) {
      final l$salesInvoiceNo = salesInvoiceNo;
      result$data['salesInvoiceNo'] = l$salesInvoiceNo == null
          ? null
          : toJson$Enum$SortEnumType(l$salesInvoiceNo);
    }
    if (_$data.containsKey('hasSubAssets')) {
      final l$hasSubAssets = hasSubAssets;
      result$data['hasSubAssets'] = l$hasSubAssets == null
          ? null
          : toJson$Enum$SortEnumType(l$hasSubAssets);
    }
    if (_$data.containsKey('codaAnalysisCode')) {
      final l$codaAnalysisCode = codaAnalysisCode;
      result$data['codaAnalysisCode'] = l$codaAnalysisCode == null
          ? null
          : toJson$Enum$SortEnumType(l$codaAnalysisCode);
    }
    if (_$data.containsKey('assetHierarchyId')) {
      final l$assetHierarchyId = assetHierarchyId;
      result$data['assetHierarchyId'] = l$assetHierarchyId == null
          ? null
          : toJson$Enum$SortEnumType(l$assetHierarchyId);
    }
    if (_$data.containsKey('displayName')) {
      final l$displayName = displayName;
      result$data['displayName'] = l$displayName == null
          ? null
          : toJson$Enum$SortEnumType(l$displayName);
    }
    if (_$data.containsKey('needsReview')) {
      final l$needsReview = needsReview;
      result$data['needsReview'] = l$needsReview == null
          ? null
          : toJson$Enum$SortEnumType(l$needsReview);
    }
    if (_$data.containsKey('lastReviewed')) {
      final l$lastReviewed = lastReviewed;
      result$data['lastReviewed'] = l$lastReviewed == null
          ? null
          : toJson$Enum$SortEnumType(l$lastReviewed);
    }
    if (_$data.containsKey('lastReviewedBy')) {
      final l$lastReviewedBy = lastReviewedBy;
      result$data['lastReviewedBy'] = l$lastReviewedBy == null
          ? null
          : toJson$Enum$SortEnumType(l$lastReviewedBy);
    }
    if (_$data.containsKey('lastAudited')) {
      final l$lastAudited = lastAudited;
      result$data['lastAudited'] = l$lastAudited == null
          ? null
          : toJson$Enum$SortEnumType(l$lastAudited);
    }
    if (_$data.containsKey('lastAuditedBy')) {
      final l$lastAuditedBy = lastAuditedBy;
      result$data['lastAuditedBy'] = l$lastAuditedBy == null
          ? null
          : toJson$Enum$SortEnumType(l$lastAuditedBy);
    }
    if (_$data.containsKey('lastStatutoryInspectionDate')) {
      final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
      result$data['lastStatutoryInspectionDate'] =
          l$lastStatutoryInspectionDate == null
              ? null
              : toJson$Enum$SortEnumType(l$lastStatutoryInspectionDate);
    }
    if (_$data.containsKey('statutoryInspectionIntervalMonths')) {
      final l$statutoryInspectionIntervalMonths =
          statutoryInspectionIntervalMonths;
      result$data['statutoryInspectionIntervalMonths'] =
          l$statutoryInspectionIntervalMonths == null
              ? null
              : toJson$Enum$SortEnumType(l$statutoryInspectionIntervalMonths);
    }
    if (_$data.containsKey('markerColour')) {
      final l$markerColour = markerColour;
      result$data['markerColour'] = l$markerColour == null
          ? null
          : toJson$Enum$SortEnumType(l$markerColour);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('created')) {
      final l$created = created;
      result$data['created'] =
          l$created == null ? null : toJson$Enum$SortEnumType(l$created);
    }
    if (_$data.containsKey('modified')) {
      final l$modified = modified;
      result$data['modified'] =
          l$modified == null ? null : toJson$Enum$SortEnumType(l$modified);
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] =
          l$modifiedBy == null ? null : toJson$Enum$SortEnumType(l$modifiedBy);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] =
          l$createdBy == null ? null : toJson$Enum$SortEnumType(l$createdBy);
    }
    return result$data;
  }

  CopyWith$Input$AssetSortInput<Input$AssetSortInput> get copyWith =>
      CopyWith$Input$AssetSortInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetSortInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (_$data.containsKey('approved') !=
        other._$data.containsKey('approved')) {
      return false;
    }
    if (l$approved != lOther$approved) {
      return false;
    }
    final l$parentAssetId = parentAssetId;
    final lOther$parentAssetId = other.parentAssetId;
    if (_$data.containsKey('parentAssetId') !=
        other._$data.containsKey('parentAssetId')) {
      return false;
    }
    if (l$parentAssetId != lOther$parentAssetId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (_$data.containsKey('make') != other._$data.containsKey('make')) {
      return false;
    }
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (_$data.containsKey('model') != other._$data.containsKey('model')) {
      return false;
    }
    if (l$model != lOther$model) {
      return false;
    }
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (_$data.containsKey('serialNumber') !=
        other._$data.containsKey('serialNumber')) {
      return false;
    }
    if (l$serialNumber != lOther$serialNumber) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (_$data.containsKey('depotNo') != other._$data.containsKey('depotNo')) {
      return false;
    }
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$functionalLocationCode = functionalLocationCode;
    final lOther$functionalLocationCode = other.functionalLocationCode;
    if (_$data.containsKey('functionalLocationCode') !=
        other._$data.containsKey('functionalLocationCode')) {
      return false;
    }
    if (l$functionalLocationCode != lOther$functionalLocationCode) {
      return false;
    }
    final l$transferToDepotNo = transferToDepotNo;
    final lOther$transferToDepotNo = other.transferToDepotNo;
    if (_$data.containsKey('transferToDepotNo') !=
        other._$data.containsKey('transferToDepotNo')) {
      return false;
    }
    if (l$transferToDepotNo != lOther$transferToDepotNo) {
      return false;
    }
    final l$transferDisposeReason = transferDisposeReason;
    final lOther$transferDisposeReason = other.transferDisposeReason;
    if (_$data.containsKey('transferDisposeReason') !=
        other._$data.containsKey('transferDisposeReason')) {
      return false;
    }
    if (l$transferDisposeReason != lOther$transferDisposeReason) {
      return false;
    }
    final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
    final lOther$transferToDepotNoEffectiveFrom =
        other.transferToDepotNoEffectiveFrom;
    if (_$data.containsKey('transferToDepotNoEffectiveFrom') !=
        other._$data.containsKey('transferToDepotNoEffectiveFrom')) {
      return false;
    }
    if (l$transferToDepotNoEffectiveFrom !=
        lOther$transferToDepotNoEffectiveFrom) {
      return false;
    }
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final lOther$transferToDepotNoAssetApprovalId =
        other.transferToDepotNoAssetApprovalId;
    if (_$data.containsKey('transferToDepotNoAssetApprovalId') !=
        other._$data.containsKey('transferToDepotNoAssetApprovalId')) {
      return false;
    }
    if (l$transferToDepotNoAssetApprovalId !=
        lOther$transferToDepotNoAssetApprovalId) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (_$data.containsKey('templateId') !=
        other._$data.containsKey('templateId')) {
      return false;
    }
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$dateOfAcquisition = dateOfAcquisition;
    final lOther$dateOfAcquisition = other.dateOfAcquisition;
    if (_$data.containsKey('dateOfAcquisition') !=
        other._$data.containsKey('dateOfAcquisition')) {
      return false;
    }
    if (l$dateOfAcquisition != lOther$dateOfAcquisition) {
      return false;
    }
    final l$dateOfDisposal = dateOfDisposal;
    final lOther$dateOfDisposal = other.dateOfDisposal;
    if (_$data.containsKey('dateOfDisposal') !=
        other._$data.containsKey('dateOfDisposal')) {
      return false;
    }
    if (l$dateOfDisposal != lOther$dateOfDisposal) {
      return false;
    }
    final l$farLeasedExpensed = farLeasedExpensed;
    final lOther$farLeasedExpensed = other.farLeasedExpensed;
    if (_$data.containsKey('farLeasedExpensed') !=
        other._$data.containsKey('farLeasedExpensed')) {
      return false;
    }
    if (l$farLeasedExpensed != lOther$farLeasedExpensed) {
      return false;
    }
    final l$yearOfManufacture = yearOfManufacture;
    final lOther$yearOfManufacture = other.yearOfManufacture;
    if (_$data.containsKey('yearOfManufacture') !=
        other._$data.containsKey('yearOfManufacture')) {
      return false;
    }
    if (l$yearOfManufacture != lOther$yearOfManufacture) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (_$data.containsKey('condition') !=
        other._$data.containsKey('condition')) {
      return false;
    }
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$disposalStatus = disposalStatus;
    final lOther$disposalStatus = other.disposalStatus;
    if (_$data.containsKey('disposalStatus') !=
        other._$data.containsKey('disposalStatus')) {
      return false;
    }
    if (l$disposalStatus != lOther$disposalStatus) {
      return false;
    }
    final l$transferDisposeRequestedBy = transferDisposeRequestedBy;
    final lOther$transferDisposeRequestedBy = other.transferDisposeRequestedBy;
    if (_$data.containsKey('transferDisposeRequestedBy') !=
        other._$data.containsKey('transferDisposeRequestedBy')) {
      return false;
    }
    if (l$transferDisposeRequestedBy != lOther$transferDisposeRequestedBy) {
      return false;
    }
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    final lOther$disposalEffectiveFrom = other.disposalEffectiveFrom;
    if (_$data.containsKey('disposalEffectiveFrom') !=
        other._$data.containsKey('disposalEffectiveFrom')) {
      return false;
    }
    if (l$disposalEffectiveFrom != lOther$disposalEffectiveFrom) {
      return false;
    }
    final l$disposalApprovalId = disposalApprovalId;
    final lOther$disposalApprovalId = other.disposalApprovalId;
    if (_$data.containsKey('disposalApprovalId') !=
        other._$data.containsKey('disposalApprovalId')) {
      return false;
    }
    if (l$disposalApprovalId != lOther$disposalApprovalId) {
      return false;
    }
    final l$statutoryInspection = statutoryInspection;
    final lOther$statutoryInspection = other.statutoryInspection;
    if (_$data.containsKey('statutoryInspection') !=
        other._$data.containsKey('statutoryInspection')) {
      return false;
    }
    if (l$statutoryInspection != lOther$statutoryInspection) {
      return false;
    }
    final l$salesInvoiceNo = salesInvoiceNo;
    final lOther$salesInvoiceNo = other.salesInvoiceNo;
    if (_$data.containsKey('salesInvoiceNo') !=
        other._$data.containsKey('salesInvoiceNo')) {
      return false;
    }
    if (l$salesInvoiceNo != lOther$salesInvoiceNo) {
      return false;
    }
    final l$hasSubAssets = hasSubAssets;
    final lOther$hasSubAssets = other.hasSubAssets;
    if (_$data.containsKey('hasSubAssets') !=
        other._$data.containsKey('hasSubAssets')) {
      return false;
    }
    if (l$hasSubAssets != lOther$hasSubAssets) {
      return false;
    }
    final l$codaAnalysisCode = codaAnalysisCode;
    final lOther$codaAnalysisCode = other.codaAnalysisCode;
    if (_$data.containsKey('codaAnalysisCode') !=
        other._$data.containsKey('codaAnalysisCode')) {
      return false;
    }
    if (l$codaAnalysisCode != lOther$codaAnalysisCode) {
      return false;
    }
    final l$assetHierarchyId = assetHierarchyId;
    final lOther$assetHierarchyId = other.assetHierarchyId;
    if (_$data.containsKey('assetHierarchyId') !=
        other._$data.containsKey('assetHierarchyId')) {
      return false;
    }
    if (l$assetHierarchyId != lOther$assetHierarchyId) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (_$data.containsKey('displayName') !=
        other._$data.containsKey('displayName')) {
      return false;
    }
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$needsReview = needsReview;
    final lOther$needsReview = other.needsReview;
    if (_$data.containsKey('needsReview') !=
        other._$data.containsKey('needsReview')) {
      return false;
    }
    if (l$needsReview != lOther$needsReview) {
      return false;
    }
    final l$lastReviewed = lastReviewed;
    final lOther$lastReviewed = other.lastReviewed;
    if (_$data.containsKey('lastReviewed') !=
        other._$data.containsKey('lastReviewed')) {
      return false;
    }
    if (l$lastReviewed != lOther$lastReviewed) {
      return false;
    }
    final l$lastReviewedBy = lastReviewedBy;
    final lOther$lastReviewedBy = other.lastReviewedBy;
    if (_$data.containsKey('lastReviewedBy') !=
        other._$data.containsKey('lastReviewedBy')) {
      return false;
    }
    if (l$lastReviewedBy != lOther$lastReviewedBy) {
      return false;
    }
    final l$lastAudited = lastAudited;
    final lOther$lastAudited = other.lastAudited;
    if (_$data.containsKey('lastAudited') !=
        other._$data.containsKey('lastAudited')) {
      return false;
    }
    if (l$lastAudited != lOther$lastAudited) {
      return false;
    }
    final l$lastAuditedBy = lastAuditedBy;
    final lOther$lastAuditedBy = other.lastAuditedBy;
    if (_$data.containsKey('lastAuditedBy') !=
        other._$data.containsKey('lastAuditedBy')) {
      return false;
    }
    if (l$lastAuditedBy != lOther$lastAuditedBy) {
      return false;
    }
    final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
    final lOther$lastStatutoryInspectionDate =
        other.lastStatutoryInspectionDate;
    if (_$data.containsKey('lastStatutoryInspectionDate') !=
        other._$data.containsKey('lastStatutoryInspectionDate')) {
      return false;
    }
    if (l$lastStatutoryInspectionDate != lOther$lastStatutoryInspectionDate) {
      return false;
    }
    final l$statutoryInspectionIntervalMonths =
        statutoryInspectionIntervalMonths;
    final lOther$statutoryInspectionIntervalMonths =
        other.statutoryInspectionIntervalMonths;
    if (_$data.containsKey('statutoryInspectionIntervalMonths') !=
        other._$data.containsKey('statutoryInspectionIntervalMonths')) {
      return false;
    }
    if (l$statutoryInspectionIntervalMonths !=
        lOther$statutoryInspectionIntervalMonths) {
      return false;
    }
    final l$markerColour = markerColour;
    final lOther$markerColour = other.markerColour;
    if (_$data.containsKey('markerColour') !=
        other._$data.containsKey('markerColour')) {
      return false;
    }
    if (l$markerColour != lOther$markerColour) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (_$data.containsKey('created') != other._$data.containsKey('created')) {
      return false;
    }
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (_$data.containsKey('modified') !=
        other._$data.containsKey('modified')) {
      return false;
    }
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$approved = approved;
    final l$parentAssetId = parentAssetId;
    final l$code = code;
    final l$name = name;
    final l$make = make;
    final l$model = model;
    final l$serialNumber = serialNumber;
    final l$depotNo = depotNo;
    final l$functionalLocationCode = functionalLocationCode;
    final l$transferToDepotNo = transferToDepotNo;
    final l$transferDisposeReason = transferDisposeReason;
    final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$templateId = templateId;
    final l$dateOfAcquisition = dateOfAcquisition;
    final l$dateOfDisposal = dateOfDisposal;
    final l$farLeasedExpensed = farLeasedExpensed;
    final l$yearOfManufacture = yearOfManufacture;
    final l$condition = condition;
    final l$status = status;
    final l$disposalStatus = disposalStatus;
    final l$transferDisposeRequestedBy = transferDisposeRequestedBy;
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    final l$disposalApprovalId = disposalApprovalId;
    final l$statutoryInspection = statutoryInspection;
    final l$salesInvoiceNo = salesInvoiceNo;
    final l$hasSubAssets = hasSubAssets;
    final l$codaAnalysisCode = codaAnalysisCode;
    final l$assetHierarchyId = assetHierarchyId;
    final l$displayName = displayName;
    final l$needsReview = needsReview;
    final l$lastReviewed = lastReviewed;
    final l$lastReviewedBy = lastReviewedBy;
    final l$lastAudited = lastAudited;
    final l$lastAuditedBy = lastAuditedBy;
    final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
    final l$statutoryInspectionIntervalMonths =
        statutoryInspectionIntervalMonths;
    final l$markerColour = markerColour;
    final l$id = id;
    final l$created = created;
    final l$modified = modified;
    final l$modifiedBy = modifiedBy;
    final l$createdBy = createdBy;
    return Object.hashAll([
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('approved') ? l$approved : const {},
      _$data.containsKey('parentAssetId') ? l$parentAssetId : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('make') ? l$make : const {},
      _$data.containsKey('model') ? l$model : const {},
      _$data.containsKey('serialNumber') ? l$serialNumber : const {},
      _$data.containsKey('depotNo') ? l$depotNo : const {},
      _$data.containsKey('functionalLocationCode')
          ? l$functionalLocationCode
          : const {},
      _$data.containsKey('transferToDepotNo') ? l$transferToDepotNo : const {},
      _$data.containsKey('transferDisposeReason')
          ? l$transferDisposeReason
          : const {},
      _$data.containsKey('transferToDepotNoEffectiveFrom')
          ? l$transferToDepotNoEffectiveFrom
          : const {},
      _$data.containsKey('transferToDepotNoAssetApprovalId')
          ? l$transferToDepotNoAssetApprovalId
          : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
      _$data.containsKey('templateId') ? l$templateId : const {},
      _$data.containsKey('dateOfAcquisition') ? l$dateOfAcquisition : const {},
      _$data.containsKey('dateOfDisposal') ? l$dateOfDisposal : const {},
      _$data.containsKey('farLeasedExpensed') ? l$farLeasedExpensed : const {},
      _$data.containsKey('yearOfManufacture') ? l$yearOfManufacture : const {},
      _$data.containsKey('condition') ? l$condition : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('disposalStatus') ? l$disposalStatus : const {},
      _$data.containsKey('transferDisposeRequestedBy')
          ? l$transferDisposeRequestedBy
          : const {},
      _$data.containsKey('disposalEffectiveFrom')
          ? l$disposalEffectiveFrom
          : const {},
      _$data.containsKey('disposalApprovalId')
          ? l$disposalApprovalId
          : const {},
      _$data.containsKey('statutoryInspection')
          ? l$statutoryInspection
          : const {},
      _$data.containsKey('salesInvoiceNo') ? l$salesInvoiceNo : const {},
      _$data.containsKey('hasSubAssets') ? l$hasSubAssets : const {},
      _$data.containsKey('codaAnalysisCode') ? l$codaAnalysisCode : const {},
      _$data.containsKey('assetHierarchyId') ? l$assetHierarchyId : const {},
      _$data.containsKey('displayName') ? l$displayName : const {},
      _$data.containsKey('needsReview') ? l$needsReview : const {},
      _$data.containsKey('lastReviewed') ? l$lastReviewed : const {},
      _$data.containsKey('lastReviewedBy') ? l$lastReviewedBy : const {},
      _$data.containsKey('lastAudited') ? l$lastAudited : const {},
      _$data.containsKey('lastAuditedBy') ? l$lastAuditedBy : const {},
      _$data.containsKey('lastStatutoryInspectionDate')
          ? l$lastStatutoryInspectionDate
          : const {},
      _$data.containsKey('statutoryInspectionIntervalMonths')
          ? l$statutoryInspectionIntervalMonths
          : const {},
      _$data.containsKey('markerColour') ? l$markerColour : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('created') ? l$created : const {},
      _$data.containsKey('modified') ? l$modified : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetSortInput<TRes> {
  factory CopyWith$Input$AssetSortInput(
    Input$AssetSortInput instance,
    TRes Function(Input$AssetSortInput) then,
  ) = _CopyWithImpl$Input$AssetSortInput;

  factory CopyWith$Input$AssetSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetSortInput;

  TRes call({
    Enum$SortEnumType? active,
    Enum$SortEnumType? approved,
    Enum$SortEnumType? parentAssetId,
    Enum$SortEnumType? code,
    Enum$SortEnumType? name,
    Enum$SortEnumType? make,
    Enum$SortEnumType? model,
    Enum$SortEnumType? serialNumber,
    Enum$SortEnumType? depotNo,
    Enum$SortEnumType? functionalLocationCode,
    Enum$SortEnumType? transferToDepotNo,
    Enum$SortEnumType? transferDisposeReason,
    Enum$SortEnumType? transferToDepotNoEffectiveFrom,
    Enum$SortEnumType? transferToDepotNoAssetApprovalId,
    Enum$SortEnumType? latitude,
    Enum$SortEnumType? longitude,
    Enum$SortEnumType? templateId,
    Enum$SortEnumType? dateOfAcquisition,
    Enum$SortEnumType? dateOfDisposal,
    Enum$SortEnumType? farLeasedExpensed,
    Enum$SortEnumType? yearOfManufacture,
    Enum$SortEnumType? condition,
    Enum$SortEnumType? status,
    Enum$SortEnumType? disposalStatus,
    Enum$SortEnumType? transferDisposeRequestedBy,
    Enum$SortEnumType? disposalEffectiveFrom,
    Enum$SortEnumType? disposalApprovalId,
    Enum$SortEnumType? statutoryInspection,
    Enum$SortEnumType? salesInvoiceNo,
    Enum$SortEnumType? hasSubAssets,
    Enum$SortEnumType? codaAnalysisCode,
    Enum$SortEnumType? assetHierarchyId,
    Enum$SortEnumType? displayName,
    Enum$SortEnumType? needsReview,
    Enum$SortEnumType? lastReviewed,
    Enum$SortEnumType? lastReviewedBy,
    Enum$SortEnumType? lastAudited,
    Enum$SortEnumType? lastAuditedBy,
    Enum$SortEnumType? lastStatutoryInspectionDate,
    Enum$SortEnumType? statutoryInspectionIntervalMonths,
    Enum$SortEnumType? markerColour,
    Enum$SortEnumType? id,
    Enum$SortEnumType? created,
    Enum$SortEnumType? modified,
    Enum$SortEnumType? modifiedBy,
    Enum$SortEnumType? createdBy,
  });
}

class _CopyWithImpl$Input$AssetSortInput<TRes>
    implements CopyWith$Input$AssetSortInput<TRes> {
  _CopyWithImpl$Input$AssetSortInput(
    this._instance,
    this._then,
  );

  final Input$AssetSortInput _instance;

  final TRes Function(Input$AssetSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? approved = _undefined,
    Object? parentAssetId = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? serialNumber = _undefined,
    Object? depotNo = _undefined,
    Object? functionalLocationCode = _undefined,
    Object? transferToDepotNo = _undefined,
    Object? transferDisposeReason = _undefined,
    Object? transferToDepotNoEffectiveFrom = _undefined,
    Object? transferToDepotNoAssetApprovalId = _undefined,
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? templateId = _undefined,
    Object? dateOfAcquisition = _undefined,
    Object? dateOfDisposal = _undefined,
    Object? farLeasedExpensed = _undefined,
    Object? yearOfManufacture = _undefined,
    Object? condition = _undefined,
    Object? status = _undefined,
    Object? disposalStatus = _undefined,
    Object? transferDisposeRequestedBy = _undefined,
    Object? disposalEffectiveFrom = _undefined,
    Object? disposalApprovalId = _undefined,
    Object? statutoryInspection = _undefined,
    Object? salesInvoiceNo = _undefined,
    Object? hasSubAssets = _undefined,
    Object? codaAnalysisCode = _undefined,
    Object? assetHierarchyId = _undefined,
    Object? displayName = _undefined,
    Object? needsReview = _undefined,
    Object? lastReviewed = _undefined,
    Object? lastReviewedBy = _undefined,
    Object? lastAudited = _undefined,
    Object? lastAuditedBy = _undefined,
    Object? lastStatutoryInspectionDate = _undefined,
    Object? statutoryInspectionIntervalMonths = _undefined,
    Object? markerColour = _undefined,
    Object? id = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? modifiedBy = _undefined,
    Object? createdBy = _undefined,
  }) =>
      _then(Input$AssetSortInput._({
        ..._instance._$data,
        if (active != _undefined) 'active': (active as Enum$SortEnumType?),
        if (approved != _undefined)
          'approved': (approved as Enum$SortEnumType?),
        if (parentAssetId != _undefined)
          'parentAssetId': (parentAssetId as Enum$SortEnumType?),
        if (code != _undefined) 'code': (code as Enum$SortEnumType?),
        if (name != _undefined) 'name': (name as Enum$SortEnumType?),
        if (make != _undefined) 'make': (make as Enum$SortEnumType?),
        if (model != _undefined) 'model': (model as Enum$SortEnumType?),
        if (serialNumber != _undefined)
          'serialNumber': (serialNumber as Enum$SortEnumType?),
        if (depotNo != _undefined) 'depotNo': (depotNo as Enum$SortEnumType?),
        if (functionalLocationCode != _undefined)
          'functionalLocationCode':
              (functionalLocationCode as Enum$SortEnumType?),
        if (transferToDepotNo != _undefined)
          'transferToDepotNo': (transferToDepotNo as Enum$SortEnumType?),
        if (transferDisposeReason != _undefined)
          'transferDisposeReason':
              (transferDisposeReason as Enum$SortEnumType?),
        if (transferToDepotNoEffectiveFrom != _undefined)
          'transferToDepotNoEffectiveFrom':
              (transferToDepotNoEffectiveFrom as Enum$SortEnumType?),
        if (transferToDepotNoAssetApprovalId != _undefined)
          'transferToDepotNoAssetApprovalId':
              (transferToDepotNoAssetApprovalId as Enum$SortEnumType?),
        if (latitude != _undefined)
          'latitude': (latitude as Enum$SortEnumType?),
        if (longitude != _undefined)
          'longitude': (longitude as Enum$SortEnumType?),
        if (templateId != _undefined)
          'templateId': (templateId as Enum$SortEnumType?),
        if (dateOfAcquisition != _undefined)
          'dateOfAcquisition': (dateOfAcquisition as Enum$SortEnumType?),
        if (dateOfDisposal != _undefined)
          'dateOfDisposal': (dateOfDisposal as Enum$SortEnumType?),
        if (farLeasedExpensed != _undefined)
          'farLeasedExpensed': (farLeasedExpensed as Enum$SortEnumType?),
        if (yearOfManufacture != _undefined)
          'yearOfManufacture': (yearOfManufacture as Enum$SortEnumType?),
        if (condition != _undefined)
          'condition': (condition as Enum$SortEnumType?),
        if (status != _undefined) 'status': (status as Enum$SortEnumType?),
        if (disposalStatus != _undefined)
          'disposalStatus': (disposalStatus as Enum$SortEnumType?),
        if (transferDisposeRequestedBy != _undefined)
          'transferDisposeRequestedBy':
              (transferDisposeRequestedBy as Enum$SortEnumType?),
        if (disposalEffectiveFrom != _undefined)
          'disposalEffectiveFrom':
              (disposalEffectiveFrom as Enum$SortEnumType?),
        if (disposalApprovalId != _undefined)
          'disposalApprovalId': (disposalApprovalId as Enum$SortEnumType?),
        if (statutoryInspection != _undefined)
          'statutoryInspection': (statutoryInspection as Enum$SortEnumType?),
        if (salesInvoiceNo != _undefined)
          'salesInvoiceNo': (salesInvoiceNo as Enum$SortEnumType?),
        if (hasSubAssets != _undefined)
          'hasSubAssets': (hasSubAssets as Enum$SortEnumType?),
        if (codaAnalysisCode != _undefined)
          'codaAnalysisCode': (codaAnalysisCode as Enum$SortEnumType?),
        if (assetHierarchyId != _undefined)
          'assetHierarchyId': (assetHierarchyId as Enum$SortEnumType?),
        if (displayName != _undefined)
          'displayName': (displayName as Enum$SortEnumType?),
        if (needsReview != _undefined)
          'needsReview': (needsReview as Enum$SortEnumType?),
        if (lastReviewed != _undefined)
          'lastReviewed': (lastReviewed as Enum$SortEnumType?),
        if (lastReviewedBy != _undefined)
          'lastReviewedBy': (lastReviewedBy as Enum$SortEnumType?),
        if (lastAudited != _undefined)
          'lastAudited': (lastAudited as Enum$SortEnumType?),
        if (lastAuditedBy != _undefined)
          'lastAuditedBy': (lastAuditedBy as Enum$SortEnumType?),
        if (lastStatutoryInspectionDate != _undefined)
          'lastStatutoryInspectionDate':
              (lastStatutoryInspectionDate as Enum$SortEnumType?),
        if (statutoryInspectionIntervalMonths != _undefined)
          'statutoryInspectionIntervalMonths':
              (statutoryInspectionIntervalMonths as Enum$SortEnumType?),
        if (markerColour != _undefined)
          'markerColour': (markerColour as Enum$SortEnumType?),
        if (id != _undefined) 'id': (id as Enum$SortEnumType?),
        if (created != _undefined) 'created': (created as Enum$SortEnumType?),
        if (modified != _undefined)
          'modified': (modified as Enum$SortEnumType?),
        if (modifiedBy != _undefined)
          'modifiedBy': (modifiedBy as Enum$SortEnumType?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$AssetSortInput<TRes>
    implements CopyWith$Input$AssetSortInput<TRes> {
  _CopyWithStubImpl$Input$AssetSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? active,
    Enum$SortEnumType? approved,
    Enum$SortEnumType? parentAssetId,
    Enum$SortEnumType? code,
    Enum$SortEnumType? name,
    Enum$SortEnumType? make,
    Enum$SortEnumType? model,
    Enum$SortEnumType? serialNumber,
    Enum$SortEnumType? depotNo,
    Enum$SortEnumType? functionalLocationCode,
    Enum$SortEnumType? transferToDepotNo,
    Enum$SortEnumType? transferDisposeReason,
    Enum$SortEnumType? transferToDepotNoEffectiveFrom,
    Enum$SortEnumType? transferToDepotNoAssetApprovalId,
    Enum$SortEnumType? latitude,
    Enum$SortEnumType? longitude,
    Enum$SortEnumType? templateId,
    Enum$SortEnumType? dateOfAcquisition,
    Enum$SortEnumType? dateOfDisposal,
    Enum$SortEnumType? farLeasedExpensed,
    Enum$SortEnumType? yearOfManufacture,
    Enum$SortEnumType? condition,
    Enum$SortEnumType? status,
    Enum$SortEnumType? disposalStatus,
    Enum$SortEnumType? transferDisposeRequestedBy,
    Enum$SortEnumType? disposalEffectiveFrom,
    Enum$SortEnumType? disposalApprovalId,
    Enum$SortEnumType? statutoryInspection,
    Enum$SortEnumType? salesInvoiceNo,
    Enum$SortEnumType? hasSubAssets,
    Enum$SortEnumType? codaAnalysisCode,
    Enum$SortEnumType? assetHierarchyId,
    Enum$SortEnumType? displayName,
    Enum$SortEnumType? needsReview,
    Enum$SortEnumType? lastReviewed,
    Enum$SortEnumType? lastReviewedBy,
    Enum$SortEnumType? lastAudited,
    Enum$SortEnumType? lastAuditedBy,
    Enum$SortEnumType? lastStatutoryInspectionDate,
    Enum$SortEnumType? statutoryInspectionIntervalMonths,
    Enum$SortEnumType? markerColour,
    Enum$SortEnumType? id,
    Enum$SortEnumType? created,
    Enum$SortEnumType? modified,
    Enum$SortEnumType? modifiedBy,
    Enum$SortEnumType? createdBy,
  }) =>
      _res;
}

class Input$AssetSearchResultSortInput {
  factory Input$AssetSearchResultSortInput({
    Enum$SortEnumType? id,
    Enum$SortEnumType? code,
    Enum$SortEnumType? name,
    Enum$SortEnumType? make,
    Enum$SortEnumType? model,
    Enum$SortEnumType? serialNumber,
    Enum$SortEnumType? depotNo,
    Enum$SortEnumType? status,
    Enum$SortEnumType? assetType,
    Enum$SortEnumType? transferToDepotNo,
    Enum$SortEnumType? transferToDepotNoAssetApprovalId,
    Enum$SortEnumType? disposalStatus,
    Enum$SortEnumType? disposalApprovalId,
    Enum$SortEnumType? approved,
  }) =>
      Input$AssetSearchResultSortInput._({
        if (id != null) r'id': id,
        if (code != null) r'code': code,
        if (name != null) r'name': name,
        if (make != null) r'make': make,
        if (model != null) r'model': model,
        if (serialNumber != null) r'serialNumber': serialNumber,
        if (depotNo != null) r'depotNo': depotNo,
        if (status != null) r'status': status,
        if (assetType != null) r'assetType': assetType,
        if (transferToDepotNo != null) r'transferToDepotNo': transferToDepotNo,
        if (transferToDepotNoAssetApprovalId != null)
          r'transferToDepotNoAssetApprovalId': transferToDepotNoAssetApprovalId,
        if (disposalStatus != null) r'disposalStatus': disposalStatus,
        if (disposalApprovalId != null)
          r'disposalApprovalId': disposalApprovalId,
        if (approved != null) r'approved': approved,
      });

  Input$AssetSearchResultSortInput._(this._$data);

  factory Input$AssetSearchResultSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : fromJson$Enum$SortEnumType((l$code as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('make')) {
      final l$make = data['make'];
      result$data['make'] = l$make == null
          ? null
          : fromJson$Enum$SortEnumType((l$make as String));
    }
    if (data.containsKey('model')) {
      final l$model = data['model'];
      result$data['model'] = l$model == null
          ? null
          : fromJson$Enum$SortEnumType((l$model as String));
    }
    if (data.containsKey('serialNumber')) {
      final l$serialNumber = data['serialNumber'];
      result$data['serialNumber'] = l$serialNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$serialNumber as String));
    }
    if (data.containsKey('depotNo')) {
      final l$depotNo = data['depotNo'];
      result$data['depotNo'] = l$depotNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$depotNo as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$SortEnumType((l$status as String));
    }
    if (data.containsKey('assetType')) {
      final l$assetType = data['assetType'];
      result$data['assetType'] = l$assetType == null
          ? null
          : fromJson$Enum$SortEnumType((l$assetType as String));
    }
    if (data.containsKey('transferToDepotNo')) {
      final l$transferToDepotNo = data['transferToDepotNo'];
      result$data['transferToDepotNo'] = l$transferToDepotNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$transferToDepotNo as String));
    }
    if (data.containsKey('transferToDepotNoAssetApprovalId')) {
      final l$transferToDepotNoAssetApprovalId =
          data['transferToDepotNoAssetApprovalId'];
      result$data['transferToDepotNoAssetApprovalId'] =
          l$transferToDepotNoAssetApprovalId == null
              ? null
              : fromJson$Enum$SortEnumType(
                  (l$transferToDepotNoAssetApprovalId as String));
    }
    if (data.containsKey('disposalStatus')) {
      final l$disposalStatus = data['disposalStatus'];
      result$data['disposalStatus'] = l$disposalStatus == null
          ? null
          : fromJson$Enum$SortEnumType((l$disposalStatus as String));
    }
    if (data.containsKey('disposalApprovalId')) {
      final l$disposalApprovalId = data['disposalApprovalId'];
      result$data['disposalApprovalId'] = l$disposalApprovalId == null
          ? null
          : fromJson$Enum$SortEnumType((l$disposalApprovalId as String));
    }
    if (data.containsKey('approved')) {
      final l$approved = data['approved'];
      result$data['approved'] = l$approved == null
          ? null
          : fromJson$Enum$SortEnumType((l$approved as String));
    }
    return Input$AssetSearchResultSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get code => (_$data['code'] as Enum$SortEnumType?);

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get make => (_$data['make'] as Enum$SortEnumType?);

  Enum$SortEnumType? get model => (_$data['model'] as Enum$SortEnumType?);

  Enum$SortEnumType? get serialNumber =>
      (_$data['serialNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get depotNo => (_$data['depotNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get status => (_$data['status'] as Enum$SortEnumType?);

  Enum$SortEnumType? get assetType =>
      (_$data['assetType'] as Enum$SortEnumType?);

  Enum$SortEnumType? get transferToDepotNo =>
      (_$data['transferToDepotNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get transferToDepotNoAssetApprovalId =>
      (_$data['transferToDepotNoAssetApprovalId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get disposalStatus =>
      (_$data['disposalStatus'] as Enum$SortEnumType?);

  Enum$SortEnumType? get disposalApprovalId =>
      (_$data['disposalApprovalId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get approved => (_$data['approved'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] =
          l$code == null ? null : toJson$Enum$SortEnumType(l$code);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('make')) {
      final l$make = make;
      result$data['make'] =
          l$make == null ? null : toJson$Enum$SortEnumType(l$make);
    }
    if (_$data.containsKey('model')) {
      final l$model = model;
      result$data['model'] =
          l$model == null ? null : toJson$Enum$SortEnumType(l$model);
    }
    if (_$data.containsKey('serialNumber')) {
      final l$serialNumber = serialNumber;
      result$data['serialNumber'] = l$serialNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$serialNumber);
    }
    if (_$data.containsKey('depotNo')) {
      final l$depotNo = depotNo;
      result$data['depotNo'] =
          l$depotNo == null ? null : toJson$Enum$SortEnumType(l$depotNo);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$SortEnumType(l$status);
    }
    if (_$data.containsKey('assetType')) {
      final l$assetType = assetType;
      result$data['assetType'] =
          l$assetType == null ? null : toJson$Enum$SortEnumType(l$assetType);
    }
    if (_$data.containsKey('transferToDepotNo')) {
      final l$transferToDepotNo = transferToDepotNo;
      result$data['transferToDepotNo'] = l$transferToDepotNo == null
          ? null
          : toJson$Enum$SortEnumType(l$transferToDepotNo);
    }
    if (_$data.containsKey('transferToDepotNoAssetApprovalId')) {
      final l$transferToDepotNoAssetApprovalId =
          transferToDepotNoAssetApprovalId;
      result$data['transferToDepotNoAssetApprovalId'] =
          l$transferToDepotNoAssetApprovalId == null
              ? null
              : toJson$Enum$SortEnumType(l$transferToDepotNoAssetApprovalId);
    }
    if (_$data.containsKey('disposalStatus')) {
      final l$disposalStatus = disposalStatus;
      result$data['disposalStatus'] = l$disposalStatus == null
          ? null
          : toJson$Enum$SortEnumType(l$disposalStatus);
    }
    if (_$data.containsKey('disposalApprovalId')) {
      final l$disposalApprovalId = disposalApprovalId;
      result$data['disposalApprovalId'] = l$disposalApprovalId == null
          ? null
          : toJson$Enum$SortEnumType(l$disposalApprovalId);
    }
    if (_$data.containsKey('approved')) {
      final l$approved = approved;
      result$data['approved'] =
          l$approved == null ? null : toJson$Enum$SortEnumType(l$approved);
    }
    return result$data;
  }

  CopyWith$Input$AssetSearchResultSortInput<Input$AssetSearchResultSortInput>
      get copyWith => CopyWith$Input$AssetSearchResultSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetSearchResultSortInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (_$data.containsKey('make') != other._$data.containsKey('make')) {
      return false;
    }
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (_$data.containsKey('model') != other._$data.containsKey('model')) {
      return false;
    }
    if (l$model != lOther$model) {
      return false;
    }
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (_$data.containsKey('serialNumber') !=
        other._$data.containsKey('serialNumber')) {
      return false;
    }
    if (l$serialNumber != lOther$serialNumber) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (_$data.containsKey('depotNo') != other._$data.containsKey('depotNo')) {
      return false;
    }
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$assetType = assetType;
    final lOther$assetType = other.assetType;
    if (_$data.containsKey('assetType') !=
        other._$data.containsKey('assetType')) {
      return false;
    }
    if (l$assetType != lOther$assetType) {
      return false;
    }
    final l$transferToDepotNo = transferToDepotNo;
    final lOther$transferToDepotNo = other.transferToDepotNo;
    if (_$data.containsKey('transferToDepotNo') !=
        other._$data.containsKey('transferToDepotNo')) {
      return false;
    }
    if (l$transferToDepotNo != lOther$transferToDepotNo) {
      return false;
    }
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final lOther$transferToDepotNoAssetApprovalId =
        other.transferToDepotNoAssetApprovalId;
    if (_$data.containsKey('transferToDepotNoAssetApprovalId') !=
        other._$data.containsKey('transferToDepotNoAssetApprovalId')) {
      return false;
    }
    if (l$transferToDepotNoAssetApprovalId !=
        lOther$transferToDepotNoAssetApprovalId) {
      return false;
    }
    final l$disposalStatus = disposalStatus;
    final lOther$disposalStatus = other.disposalStatus;
    if (_$data.containsKey('disposalStatus') !=
        other._$data.containsKey('disposalStatus')) {
      return false;
    }
    if (l$disposalStatus != lOther$disposalStatus) {
      return false;
    }
    final l$disposalApprovalId = disposalApprovalId;
    final lOther$disposalApprovalId = other.disposalApprovalId;
    if (_$data.containsKey('disposalApprovalId') !=
        other._$data.containsKey('disposalApprovalId')) {
      return false;
    }
    if (l$disposalApprovalId != lOther$disposalApprovalId) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (_$data.containsKey('approved') !=
        other._$data.containsKey('approved')) {
      return false;
    }
    if (l$approved != lOther$approved) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$make = make;
    final l$model = model;
    final l$serialNumber = serialNumber;
    final l$depotNo = depotNo;
    final l$status = status;
    final l$assetType = assetType;
    final l$transferToDepotNo = transferToDepotNo;
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final l$disposalStatus = disposalStatus;
    final l$disposalApprovalId = disposalApprovalId;
    final l$approved = approved;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('make') ? l$make : const {},
      _$data.containsKey('model') ? l$model : const {},
      _$data.containsKey('serialNumber') ? l$serialNumber : const {},
      _$data.containsKey('depotNo') ? l$depotNo : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('assetType') ? l$assetType : const {},
      _$data.containsKey('transferToDepotNo') ? l$transferToDepotNo : const {},
      _$data.containsKey('transferToDepotNoAssetApprovalId')
          ? l$transferToDepotNoAssetApprovalId
          : const {},
      _$data.containsKey('disposalStatus') ? l$disposalStatus : const {},
      _$data.containsKey('disposalApprovalId')
          ? l$disposalApprovalId
          : const {},
      _$data.containsKey('approved') ? l$approved : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetSearchResultSortInput<TRes> {
  factory CopyWith$Input$AssetSearchResultSortInput(
    Input$AssetSearchResultSortInput instance,
    TRes Function(Input$AssetSearchResultSortInput) then,
  ) = _CopyWithImpl$Input$AssetSearchResultSortInput;

  factory CopyWith$Input$AssetSearchResultSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetSearchResultSortInput;

  TRes call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? code,
    Enum$SortEnumType? name,
    Enum$SortEnumType? make,
    Enum$SortEnumType? model,
    Enum$SortEnumType? serialNumber,
    Enum$SortEnumType? depotNo,
    Enum$SortEnumType? status,
    Enum$SortEnumType? assetType,
    Enum$SortEnumType? transferToDepotNo,
    Enum$SortEnumType? transferToDepotNoAssetApprovalId,
    Enum$SortEnumType? disposalStatus,
    Enum$SortEnumType? disposalApprovalId,
    Enum$SortEnumType? approved,
  });
}

class _CopyWithImpl$Input$AssetSearchResultSortInput<TRes>
    implements CopyWith$Input$AssetSearchResultSortInput<TRes> {
  _CopyWithImpl$Input$AssetSearchResultSortInput(
    this._instance,
    this._then,
  );

  final Input$AssetSearchResultSortInput _instance;

  final TRes Function(Input$AssetSearchResultSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? serialNumber = _undefined,
    Object? depotNo = _undefined,
    Object? status = _undefined,
    Object? assetType = _undefined,
    Object? transferToDepotNo = _undefined,
    Object? transferToDepotNoAssetApprovalId = _undefined,
    Object? disposalStatus = _undefined,
    Object? disposalApprovalId = _undefined,
    Object? approved = _undefined,
  }) =>
      _then(Input$AssetSearchResultSortInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortEnumType?),
        if (code != _undefined) 'code': (code as Enum$SortEnumType?),
        if (name != _undefined) 'name': (name as Enum$SortEnumType?),
        if (make != _undefined) 'make': (make as Enum$SortEnumType?),
        if (model != _undefined) 'model': (model as Enum$SortEnumType?),
        if (serialNumber != _undefined)
          'serialNumber': (serialNumber as Enum$SortEnumType?),
        if (depotNo != _undefined) 'depotNo': (depotNo as Enum$SortEnumType?),
        if (status != _undefined) 'status': (status as Enum$SortEnumType?),
        if (assetType != _undefined)
          'assetType': (assetType as Enum$SortEnumType?),
        if (transferToDepotNo != _undefined)
          'transferToDepotNo': (transferToDepotNo as Enum$SortEnumType?),
        if (transferToDepotNoAssetApprovalId != _undefined)
          'transferToDepotNoAssetApprovalId':
              (transferToDepotNoAssetApprovalId as Enum$SortEnumType?),
        if (disposalStatus != _undefined)
          'disposalStatus': (disposalStatus as Enum$SortEnumType?),
        if (disposalApprovalId != _undefined)
          'disposalApprovalId': (disposalApprovalId as Enum$SortEnumType?),
        if (approved != _undefined)
          'approved': (approved as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$AssetSearchResultSortInput<TRes>
    implements CopyWith$Input$AssetSearchResultSortInput<TRes> {
  _CopyWithStubImpl$Input$AssetSearchResultSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? code,
    Enum$SortEnumType? name,
    Enum$SortEnumType? make,
    Enum$SortEnumType? model,
    Enum$SortEnumType? serialNumber,
    Enum$SortEnumType? depotNo,
    Enum$SortEnumType? status,
    Enum$SortEnumType? assetType,
    Enum$SortEnumType? transferToDepotNo,
    Enum$SortEnumType? transferToDepotNoAssetApprovalId,
    Enum$SortEnumType? disposalStatus,
    Enum$SortEnumType? disposalApprovalId,
    Enum$SortEnumType? approved,
  }) =>
      _res;
}

class Input$AssetManagementListSearchResultFilterInput {
  factory Input$AssetManagementListSearchResultFilterInput({
    List<Input$AssetManagementListSearchResultFilterInput>? and,
    List<Input$AssetManagementListSearchResultFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? listName,
    Input$BooleanOperationFilterInput? active,
    Input$BooleanOperationFilterInput? isUsedByAssetTemplates,
    Input$ListFilterInputTypeOfListValueFilterInput? listValue,
  }) =>
      Input$AssetManagementListSearchResultFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (listName != null) r'listName': listName,
        if (active != null) r'active': active,
        if (isUsedByAssetTemplates != null)
          r'isUsedByAssetTemplates': isUsedByAssetTemplates,
        if (listValue != null) r'listValue': listValue,
      });

  Input$AssetManagementListSearchResultFilterInput._(this._$data);

  factory Input$AssetManagementListSearchResultFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$AssetManagementListSearchResultFilterInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$AssetManagementListSearchResultFilterInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('listName')) {
      final l$listName = data['listName'];
      result$data['listName'] = l$listName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$listName as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('isUsedByAssetTemplates')) {
      final l$isUsedByAssetTemplates = data['isUsedByAssetTemplates'];
      result$data['isUsedByAssetTemplates'] = l$isUsedByAssetTemplates == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$isUsedByAssetTemplates as Map<String, dynamic>));
    }
    if (data.containsKey('listValue')) {
      final l$listValue = data['listValue'];
      result$data['listValue'] = l$listValue == null
          ? null
          : Input$ListFilterInputTypeOfListValueFilterInput.fromJson(
              (l$listValue as Map<String, dynamic>));
    }
    return Input$AssetManagementListSearchResultFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetManagementListSearchResultFilterInput>? get and =>
      (_$data['and']
          as List<Input$AssetManagementListSearchResultFilterInput>?);

  List<Input$AssetManagementListSearchResultFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetManagementListSearchResultFilterInput>?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get listName =>
      (_$data['listName'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get isUsedByAssetTemplates =>
      (_$data['isUsedByAssetTemplates'] as Input$BooleanOperationFilterInput?);

  Input$ListFilterInputTypeOfListValueFilterInput? get listValue =>
      (_$data['listValue'] as Input$ListFilterInputTypeOfListValueFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('listName')) {
      final l$listName = listName;
      result$data['listName'] = l$listName?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('isUsedByAssetTemplates')) {
      final l$isUsedByAssetTemplates = isUsedByAssetTemplates;
      result$data['isUsedByAssetTemplates'] =
          l$isUsedByAssetTemplates?.toJson();
    }
    if (_$data.containsKey('listValue')) {
      final l$listValue = listValue;
      result$data['listValue'] = l$listValue?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetManagementListSearchResultFilterInput<
          Input$AssetManagementListSearchResultFilterInput>
      get copyWith => CopyWith$Input$AssetManagementListSearchResultFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetManagementListSearchResultFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$listName = listName;
    final lOther$listName = other.listName;
    if (_$data.containsKey('listName') !=
        other._$data.containsKey('listName')) {
      return false;
    }
    if (l$listName != lOther$listName) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$isUsedByAssetTemplates = isUsedByAssetTemplates;
    final lOther$isUsedByAssetTemplates = other.isUsedByAssetTemplates;
    if (_$data.containsKey('isUsedByAssetTemplates') !=
        other._$data.containsKey('isUsedByAssetTemplates')) {
      return false;
    }
    if (l$isUsedByAssetTemplates != lOther$isUsedByAssetTemplates) {
      return false;
    }
    final l$listValue = listValue;
    final lOther$listValue = other.listValue;
    if (_$data.containsKey('listValue') !=
        other._$data.containsKey('listValue')) {
      return false;
    }
    if (l$listValue != lOther$listValue) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$listName = listName;
    final l$active = active;
    final l$isUsedByAssetTemplates = isUsedByAssetTemplates;
    final l$listValue = listValue;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('listName') ? l$listName : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('isUsedByAssetTemplates')
          ? l$isUsedByAssetTemplates
          : const {},
      _$data.containsKey('listValue') ? l$listValue : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetManagementListSearchResultFilterInput<TRes> {
  factory CopyWith$Input$AssetManagementListSearchResultFilterInput(
    Input$AssetManagementListSearchResultFilterInput instance,
    TRes Function(Input$AssetManagementListSearchResultFilterInput) then,
  ) = _CopyWithImpl$Input$AssetManagementListSearchResultFilterInput;

  factory CopyWith$Input$AssetManagementListSearchResultFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$AssetManagementListSearchResultFilterInput;

  TRes call({
    List<Input$AssetManagementListSearchResultFilterInput>? and,
    List<Input$AssetManagementListSearchResultFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? listName,
    Input$BooleanOperationFilterInput? active,
    Input$BooleanOperationFilterInput? isUsedByAssetTemplates,
    Input$ListFilterInputTypeOfListValueFilterInput? listValue,
  });
  TRes and(
      Iterable<Input$AssetManagementListSearchResultFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetManagementListSearchResultFilterInput<
                      Input$AssetManagementListSearchResultFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetManagementListSearchResultFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetManagementListSearchResultFilterInput<
                      Input$AssetManagementListSearchResultFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get listName;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get isUsedByAssetTemplates;
  CopyWith$Input$ListFilterInputTypeOfListValueFilterInput<TRes> get listValue;
}

class _CopyWithImpl$Input$AssetManagementListSearchResultFilterInput<TRes>
    implements CopyWith$Input$AssetManagementListSearchResultFilterInput<TRes> {
  _CopyWithImpl$Input$AssetManagementListSearchResultFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetManagementListSearchResultFilterInput _instance;

  final TRes Function(Input$AssetManagementListSearchResultFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? listName = _undefined,
    Object? active = _undefined,
    Object? isUsedByAssetTemplates = _undefined,
    Object? listValue = _undefined,
  }) =>
      _then(Input$AssetManagementListSearchResultFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and':
              (and as List<Input$AssetManagementListSearchResultFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AssetManagementListSearchResultFilterInput>?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (listName != _undefined)
          'listName': (listName as Input$StringOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (isUsedByAssetTemplates != _undefined)
          'isUsedByAssetTemplates':
              (isUsedByAssetTemplates as Input$BooleanOperationFilterInput?),
        if (listValue != _undefined)
          'listValue':
              (listValue as Input$ListFilterInputTypeOfListValueFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetManagementListSearchResultFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetManagementListSearchResultFilterInput<
                          Input$AssetManagementListSearchResultFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map(
              (e) => CopyWith$Input$AssetManagementListSearchResultFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetManagementListSearchResultFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetManagementListSearchResultFilterInput<
                          Input$AssetManagementListSearchResultFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map(
              (e) => CopyWith$Input$AssetManagementListSearchResultFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get listName {
    final local$listName = _instance.listName;
    return local$listName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$listName, (e) => call(listName: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get isUsedByAssetTemplates {
    final local$isUsedByAssetTemplates = _instance.isUsedByAssetTemplates;
    return local$isUsedByAssetTemplates == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$isUsedByAssetTemplates,
            (e) => call(isUsedByAssetTemplates: e));
  }

  CopyWith$Input$ListFilterInputTypeOfListValueFilterInput<TRes> get listValue {
    final local$listValue = _instance.listValue;
    return local$listValue == null
        ? CopyWith$Input$ListFilterInputTypeOfListValueFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfListValueFilterInput(
            local$listValue, (e) => call(listValue: e));
  }
}

class _CopyWithStubImpl$Input$AssetManagementListSearchResultFilterInput<TRes>
    implements CopyWith$Input$AssetManagementListSearchResultFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetManagementListSearchResultFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetManagementListSearchResultFilterInput>? and,
    List<Input$AssetManagementListSearchResultFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? listName,
    Input$BooleanOperationFilterInput? active,
    Input$BooleanOperationFilterInput? isUsedByAssetTemplates,
    Input$ListFilterInputTypeOfListValueFilterInput? listValue,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get listName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get isUsedByAssetTemplates =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfListValueFilterInput<TRes>
      get listValue =>
          CopyWith$Input$ListFilterInputTypeOfListValueFilterInput.stub(_res);
}

class Input$AssetManagementListSearchResultSortInput {
  factory Input$AssetManagementListSearchResultSortInput({
    Enum$SortEnumType? id,
    Enum$SortEnumType? listName,
    Enum$SortEnumType? active,
    Enum$SortEnumType? isUsedByAssetTemplates,
  }) =>
      Input$AssetManagementListSearchResultSortInput._({
        if (id != null) r'id': id,
        if (listName != null) r'listName': listName,
        if (active != null) r'active': active,
        if (isUsedByAssetTemplates != null)
          r'isUsedByAssetTemplates': isUsedByAssetTemplates,
      });

  Input$AssetManagementListSearchResultSortInput._(this._$data);

  factory Input$AssetManagementListSearchResultSortInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('listName')) {
      final l$listName = data['listName'];
      result$data['listName'] = l$listName == null
          ? null
          : fromJson$Enum$SortEnumType((l$listName as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('isUsedByAssetTemplates')) {
      final l$isUsedByAssetTemplates = data['isUsedByAssetTemplates'];
      result$data['isUsedByAssetTemplates'] = l$isUsedByAssetTemplates == null
          ? null
          : fromJson$Enum$SortEnumType((l$isUsedByAssetTemplates as String));
    }
    return Input$AssetManagementListSearchResultSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get listName => (_$data['listName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get isUsedByAssetTemplates =>
      (_$data['isUsedByAssetTemplates'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('listName')) {
      final l$listName = listName;
      result$data['listName'] =
          l$listName == null ? null : toJson$Enum$SortEnumType(l$listName);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] =
          l$active == null ? null : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('isUsedByAssetTemplates')) {
      final l$isUsedByAssetTemplates = isUsedByAssetTemplates;
      result$data['isUsedByAssetTemplates'] = l$isUsedByAssetTemplates == null
          ? null
          : toJson$Enum$SortEnumType(l$isUsedByAssetTemplates);
    }
    return result$data;
  }

  CopyWith$Input$AssetManagementListSearchResultSortInput<
          Input$AssetManagementListSearchResultSortInput>
      get copyWith => CopyWith$Input$AssetManagementListSearchResultSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetManagementListSearchResultSortInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$listName = listName;
    final lOther$listName = other.listName;
    if (_$data.containsKey('listName') !=
        other._$data.containsKey('listName')) {
      return false;
    }
    if (l$listName != lOther$listName) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$isUsedByAssetTemplates = isUsedByAssetTemplates;
    final lOther$isUsedByAssetTemplates = other.isUsedByAssetTemplates;
    if (_$data.containsKey('isUsedByAssetTemplates') !=
        other._$data.containsKey('isUsedByAssetTemplates')) {
      return false;
    }
    if (l$isUsedByAssetTemplates != lOther$isUsedByAssetTemplates) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$listName = listName;
    final l$active = active;
    final l$isUsedByAssetTemplates = isUsedByAssetTemplates;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('listName') ? l$listName : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('isUsedByAssetTemplates')
          ? l$isUsedByAssetTemplates
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetManagementListSearchResultSortInput<TRes> {
  factory CopyWith$Input$AssetManagementListSearchResultSortInput(
    Input$AssetManagementListSearchResultSortInput instance,
    TRes Function(Input$AssetManagementListSearchResultSortInput) then,
  ) = _CopyWithImpl$Input$AssetManagementListSearchResultSortInput;

  factory CopyWith$Input$AssetManagementListSearchResultSortInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$AssetManagementListSearchResultSortInput;

  TRes call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? listName,
    Enum$SortEnumType? active,
    Enum$SortEnumType? isUsedByAssetTemplates,
  });
}

class _CopyWithImpl$Input$AssetManagementListSearchResultSortInput<TRes>
    implements CopyWith$Input$AssetManagementListSearchResultSortInput<TRes> {
  _CopyWithImpl$Input$AssetManagementListSearchResultSortInput(
    this._instance,
    this._then,
  );

  final Input$AssetManagementListSearchResultSortInput _instance;

  final TRes Function(Input$AssetManagementListSearchResultSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? listName = _undefined,
    Object? active = _undefined,
    Object? isUsedByAssetTemplates = _undefined,
  }) =>
      _then(Input$AssetManagementListSearchResultSortInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortEnumType?),
        if (listName != _undefined)
          'listName': (listName as Enum$SortEnumType?),
        if (active != _undefined) 'active': (active as Enum$SortEnumType?),
        if (isUsedByAssetTemplates != _undefined)
          'isUsedByAssetTemplates':
              (isUsedByAssetTemplates as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$AssetManagementListSearchResultSortInput<TRes>
    implements CopyWith$Input$AssetManagementListSearchResultSortInput<TRes> {
  _CopyWithStubImpl$Input$AssetManagementListSearchResultSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? listName,
    Enum$SortEnumType? active,
    Enum$SortEnumType? isUsedByAssetTemplates,
  }) =>
      _res;
}

class Input$AssetTemplateFilterInput {
  factory Input$AssetTemplateFilterInput({
    List<Input$AssetTemplateFilterInput>? and,
    List<Input$AssetTemplateFilterInput>? or,
    Input$BooleanOperationFilterInput? active,
    Input$StringOperationFilterInput? codeFormat,
    Input$StringOperationFilterInput? name,
    Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput?
        templateProperties,
    Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?
        assetTemplateCounters,
    Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput? syncTargets,
    Input$BooleanOperationFilterInput? permittedHours,
    Input$BooleanOperationFilterInput? shiftHours,
    Input$BooleanOperationFilterInput? hierarchy,
    Input$BooleanOperationFilterInput? parentAssetRequired,
    Input$StringOperationFilterInput? category,
    Input$ListStringOperationFilterInput? reviewAttributes,
    Input$BooleanOperationFilterInput? location,
    Input$BooleanOperationFilterInput? telematics,
    Input$BooleanOperationFilterInput? notifyChanges,
    Input$BooleanOperationFilterInput? syncAssetToCMMS,
    Input$BooleanOperationFilterInput? syncProjectToCMMS,
    Input$BooleanOperationFilterInput? syncResouceToCMMS,
    Input$StringOperationFilterInput? id,
    Input$DateTimeOperationFilterInput? created,
    Input$DateTimeOperationFilterInput? modified,
    Input$UuidOperationFilterInput? modifiedBy,
    Input$UuidOperationFilterInput? createdBy,
  }) =>
      Input$AssetTemplateFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (active != null) r'active': active,
        if (codeFormat != null) r'codeFormat': codeFormat,
        if (name != null) r'name': name,
        if (templateProperties != null)
          r'templateProperties': templateProperties,
        if (assetTemplateCounters != null)
          r'assetTemplateCounters': assetTemplateCounters,
        if (syncTargets != null) r'syncTargets': syncTargets,
        if (permittedHours != null) r'permittedHours': permittedHours,
        if (shiftHours != null) r'shiftHours': shiftHours,
        if (hierarchy != null) r'hierarchy': hierarchy,
        if (parentAssetRequired != null)
          r'parentAssetRequired': parentAssetRequired,
        if (category != null) r'category': category,
        if (reviewAttributes != null) r'reviewAttributes': reviewAttributes,
        if (location != null) r'location': location,
        if (telematics != null) r'telematics': telematics,
        if (notifyChanges != null) r'notifyChanges': notifyChanges,
        if (syncAssetToCMMS != null) r'syncAssetToCMMS': syncAssetToCMMS,
        if (syncProjectToCMMS != null) r'syncProjectToCMMS': syncProjectToCMMS,
        if (syncResouceToCMMS != null) r'syncResouceToCMMS': syncResouceToCMMS,
        if (id != null) r'id': id,
        if (created != null) r'created': created,
        if (modified != null) r'modified': modified,
        if (modifiedBy != null) r'modifiedBy': modifiedBy,
        if (createdBy != null) r'createdBy': createdBy,
      });

  Input$AssetTemplateFilterInput._(this._$data);

  factory Input$AssetTemplateFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AssetTemplateFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AssetTemplateFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('codeFormat')) {
      final l$codeFormat = data['codeFormat'];
      result$data['codeFormat'] = l$codeFormat == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$codeFormat as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('templateProperties')) {
      final l$templateProperties = data['templateProperties'];
      result$data['templateProperties'] = l$templateProperties == null
          ? null
          : Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput
              .fromJson((l$templateProperties as Map<String, dynamic>));
    }
    if (data.containsKey('assetTemplateCounters')) {
      final l$assetTemplateCounters = data['assetTemplateCounters'];
      result$data['assetTemplateCounters'] = l$assetTemplateCounters == null
          ? null
          : Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
              .fromJson((l$assetTemplateCounters as Map<String, dynamic>));
    }
    if (data.containsKey('syncTargets')) {
      final l$syncTargets = data['syncTargets'];
      result$data['syncTargets'] = l$syncTargets == null
          ? null
          : Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput
              .fromJson((l$syncTargets as Map<String, dynamic>));
    }
    if (data.containsKey('permittedHours')) {
      final l$permittedHours = data['permittedHours'];
      result$data['permittedHours'] = l$permittedHours == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$permittedHours as Map<String, dynamic>));
    }
    if (data.containsKey('shiftHours')) {
      final l$shiftHours = data['shiftHours'];
      result$data['shiftHours'] = l$shiftHours == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$shiftHours as Map<String, dynamic>));
    }
    if (data.containsKey('hierarchy')) {
      final l$hierarchy = data['hierarchy'];
      result$data['hierarchy'] = l$hierarchy == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hierarchy as Map<String, dynamic>));
    }
    if (data.containsKey('parentAssetRequired')) {
      final l$parentAssetRequired = data['parentAssetRequired'];
      result$data['parentAssetRequired'] = l$parentAssetRequired == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$parentAssetRequired as Map<String, dynamic>));
    }
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = l$category == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$category as Map<String, dynamic>));
    }
    if (data.containsKey('reviewAttributes')) {
      final l$reviewAttributes = data['reviewAttributes'];
      result$data['reviewAttributes'] = l$reviewAttributes == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$reviewAttributes as Map<String, dynamic>));
    }
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = l$location == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$location as Map<String, dynamic>));
    }
    if (data.containsKey('telematics')) {
      final l$telematics = data['telematics'];
      result$data['telematics'] = l$telematics == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$telematics as Map<String, dynamic>));
    }
    if (data.containsKey('notifyChanges')) {
      final l$notifyChanges = data['notifyChanges'];
      result$data['notifyChanges'] = l$notifyChanges == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$notifyChanges as Map<String, dynamic>));
    }
    if (data.containsKey('syncAssetToCMMS')) {
      final l$syncAssetToCMMS = data['syncAssetToCMMS'];
      result$data['syncAssetToCMMS'] = l$syncAssetToCMMS == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$syncAssetToCMMS as Map<String, dynamic>));
    }
    if (data.containsKey('syncProjectToCMMS')) {
      final l$syncProjectToCMMS = data['syncProjectToCMMS'];
      result$data['syncProjectToCMMS'] = l$syncProjectToCMMS == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$syncProjectToCMMS as Map<String, dynamic>));
    }
    if (data.containsKey('syncResouceToCMMS')) {
      final l$syncResouceToCMMS = data['syncResouceToCMMS'];
      result$data['syncResouceToCMMS'] = l$syncResouceToCMMS == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$syncResouceToCMMS as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('created')) {
      final l$created = data['created'];
      result$data['created'] = l$created == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$created as Map<String, dynamic>));
    }
    if (data.containsKey('modified')) {
      final l$modified = data['modified'];
      result$data['modified'] = l$modified == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$modified as Map<String, dynamic>));
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : Input$UuidOperationFilterInput.fromJson(
              (l$modifiedBy as Map<String, dynamic>));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$UuidOperationFilterInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    return Input$AssetTemplateFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetTemplateFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetTemplateFilterInput>?);

  List<Input$AssetTemplateFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetTemplateFilterInput>?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get codeFormat =>
      (_$data['codeFormat'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput?
      get templateProperties => (_$data['templateProperties']
          as Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput?);

  Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?
      get assetTemplateCounters => (_$data['assetTemplateCounters']
          as Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?);

  Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput?
      get syncTargets => (_$data['syncTargets']
          as Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput?);

  Input$BooleanOperationFilterInput? get permittedHours =>
      (_$data['permittedHours'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get shiftHours =>
      (_$data['shiftHours'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hierarchy =>
      (_$data['hierarchy'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get parentAssetRequired =>
      (_$data['parentAssetRequired'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get category =>
      (_$data['category'] as Input$StringOperationFilterInput?);

  Input$ListStringOperationFilterInput? get reviewAttributes =>
      (_$data['reviewAttributes'] as Input$ListStringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get location =>
      (_$data['location'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get telematics =>
      (_$data['telematics'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get notifyChanges =>
      (_$data['notifyChanges'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get syncAssetToCMMS =>
      (_$data['syncAssetToCMMS'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get syncProjectToCMMS =>
      (_$data['syncProjectToCMMS'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get syncResouceToCMMS =>
      (_$data['syncResouceToCMMS'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get created =>
      (_$data['created'] as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get modified =>
      (_$data['modified'] as Input$DateTimeOperationFilterInput?);

  Input$UuidOperationFilterInput? get modifiedBy =>
      (_$data['modifiedBy'] as Input$UuidOperationFilterInput?);

  Input$UuidOperationFilterInput? get createdBy =>
      (_$data['createdBy'] as Input$UuidOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('codeFormat')) {
      final l$codeFormat = codeFormat;
      result$data['codeFormat'] = l$codeFormat?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('templateProperties')) {
      final l$templateProperties = templateProperties;
      result$data['templateProperties'] = l$templateProperties?.toJson();
    }
    if (_$data.containsKey('assetTemplateCounters')) {
      final l$assetTemplateCounters = assetTemplateCounters;
      result$data['assetTemplateCounters'] = l$assetTemplateCounters?.toJson();
    }
    if (_$data.containsKey('syncTargets')) {
      final l$syncTargets = syncTargets;
      result$data['syncTargets'] = l$syncTargets?.toJson();
    }
    if (_$data.containsKey('permittedHours')) {
      final l$permittedHours = permittedHours;
      result$data['permittedHours'] = l$permittedHours?.toJson();
    }
    if (_$data.containsKey('shiftHours')) {
      final l$shiftHours = shiftHours;
      result$data['shiftHours'] = l$shiftHours?.toJson();
    }
    if (_$data.containsKey('hierarchy')) {
      final l$hierarchy = hierarchy;
      result$data['hierarchy'] = l$hierarchy?.toJson();
    }
    if (_$data.containsKey('parentAssetRequired')) {
      final l$parentAssetRequired = parentAssetRequired;
      result$data['parentAssetRequired'] = l$parentAssetRequired?.toJson();
    }
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category?.toJson();
    }
    if (_$data.containsKey('reviewAttributes')) {
      final l$reviewAttributes = reviewAttributes;
      result$data['reviewAttributes'] = l$reviewAttributes?.toJson();
    }
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location?.toJson();
    }
    if (_$data.containsKey('telematics')) {
      final l$telematics = telematics;
      result$data['telematics'] = l$telematics?.toJson();
    }
    if (_$data.containsKey('notifyChanges')) {
      final l$notifyChanges = notifyChanges;
      result$data['notifyChanges'] = l$notifyChanges?.toJson();
    }
    if (_$data.containsKey('syncAssetToCMMS')) {
      final l$syncAssetToCMMS = syncAssetToCMMS;
      result$data['syncAssetToCMMS'] = l$syncAssetToCMMS?.toJson();
    }
    if (_$data.containsKey('syncProjectToCMMS')) {
      final l$syncProjectToCMMS = syncProjectToCMMS;
      result$data['syncProjectToCMMS'] = l$syncProjectToCMMS?.toJson();
    }
    if (_$data.containsKey('syncResouceToCMMS')) {
      final l$syncResouceToCMMS = syncResouceToCMMS;
      result$data['syncResouceToCMMS'] = l$syncResouceToCMMS?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('created')) {
      final l$created = created;
      result$data['created'] = l$created?.toJson();
    }
    if (_$data.containsKey('modified')) {
      final l$modified = modified;
      result$data['modified'] = l$modified?.toJson();
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetTemplateFilterInput<Input$AssetTemplateFilterInput>
      get copyWith => CopyWith$Input$AssetTemplateFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetTemplateFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$codeFormat = codeFormat;
    final lOther$codeFormat = other.codeFormat;
    if (_$data.containsKey('codeFormat') !=
        other._$data.containsKey('codeFormat')) {
      return false;
    }
    if (l$codeFormat != lOther$codeFormat) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$templateProperties = templateProperties;
    final lOther$templateProperties = other.templateProperties;
    if (_$data.containsKey('templateProperties') !=
        other._$data.containsKey('templateProperties')) {
      return false;
    }
    if (l$templateProperties != lOther$templateProperties) {
      return false;
    }
    final l$assetTemplateCounters = assetTemplateCounters;
    final lOther$assetTemplateCounters = other.assetTemplateCounters;
    if (_$data.containsKey('assetTemplateCounters') !=
        other._$data.containsKey('assetTemplateCounters')) {
      return false;
    }
    if (l$assetTemplateCounters != lOther$assetTemplateCounters) {
      return false;
    }
    final l$syncTargets = syncTargets;
    final lOther$syncTargets = other.syncTargets;
    if (_$data.containsKey('syncTargets') !=
        other._$data.containsKey('syncTargets')) {
      return false;
    }
    if (l$syncTargets != lOther$syncTargets) {
      return false;
    }
    final l$permittedHours = permittedHours;
    final lOther$permittedHours = other.permittedHours;
    if (_$data.containsKey('permittedHours') !=
        other._$data.containsKey('permittedHours')) {
      return false;
    }
    if (l$permittedHours != lOther$permittedHours) {
      return false;
    }
    final l$shiftHours = shiftHours;
    final lOther$shiftHours = other.shiftHours;
    if (_$data.containsKey('shiftHours') !=
        other._$data.containsKey('shiftHours')) {
      return false;
    }
    if (l$shiftHours != lOther$shiftHours) {
      return false;
    }
    final l$hierarchy = hierarchy;
    final lOther$hierarchy = other.hierarchy;
    if (_$data.containsKey('hierarchy') !=
        other._$data.containsKey('hierarchy')) {
      return false;
    }
    if (l$hierarchy != lOther$hierarchy) {
      return false;
    }
    final l$parentAssetRequired = parentAssetRequired;
    final lOther$parentAssetRequired = other.parentAssetRequired;
    if (_$data.containsKey('parentAssetRequired') !=
        other._$data.containsKey('parentAssetRequired')) {
      return false;
    }
    if (l$parentAssetRequired != lOther$parentAssetRequired) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$reviewAttributes = reviewAttributes;
    final lOther$reviewAttributes = other.reviewAttributes;
    if (_$data.containsKey('reviewAttributes') !=
        other._$data.containsKey('reviewAttributes')) {
      return false;
    }
    if (l$reviewAttributes != lOther$reviewAttributes) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    final l$telematics = telematics;
    final lOther$telematics = other.telematics;
    if (_$data.containsKey('telematics') !=
        other._$data.containsKey('telematics')) {
      return false;
    }
    if (l$telematics != lOther$telematics) {
      return false;
    }
    final l$notifyChanges = notifyChanges;
    final lOther$notifyChanges = other.notifyChanges;
    if (_$data.containsKey('notifyChanges') !=
        other._$data.containsKey('notifyChanges')) {
      return false;
    }
    if (l$notifyChanges != lOther$notifyChanges) {
      return false;
    }
    final l$syncAssetToCMMS = syncAssetToCMMS;
    final lOther$syncAssetToCMMS = other.syncAssetToCMMS;
    if (_$data.containsKey('syncAssetToCMMS') !=
        other._$data.containsKey('syncAssetToCMMS')) {
      return false;
    }
    if (l$syncAssetToCMMS != lOther$syncAssetToCMMS) {
      return false;
    }
    final l$syncProjectToCMMS = syncProjectToCMMS;
    final lOther$syncProjectToCMMS = other.syncProjectToCMMS;
    if (_$data.containsKey('syncProjectToCMMS') !=
        other._$data.containsKey('syncProjectToCMMS')) {
      return false;
    }
    if (l$syncProjectToCMMS != lOther$syncProjectToCMMS) {
      return false;
    }
    final l$syncResouceToCMMS = syncResouceToCMMS;
    final lOther$syncResouceToCMMS = other.syncResouceToCMMS;
    if (_$data.containsKey('syncResouceToCMMS') !=
        other._$data.containsKey('syncResouceToCMMS')) {
      return false;
    }
    if (l$syncResouceToCMMS != lOther$syncResouceToCMMS) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (_$data.containsKey('created') != other._$data.containsKey('created')) {
      return false;
    }
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (_$data.containsKey('modified') !=
        other._$data.containsKey('modified')) {
      return false;
    }
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$active = active;
    final l$codeFormat = codeFormat;
    final l$name = name;
    final l$templateProperties = templateProperties;
    final l$assetTemplateCounters = assetTemplateCounters;
    final l$syncTargets = syncTargets;
    final l$permittedHours = permittedHours;
    final l$shiftHours = shiftHours;
    final l$hierarchy = hierarchy;
    final l$parentAssetRequired = parentAssetRequired;
    final l$category = category;
    final l$reviewAttributes = reviewAttributes;
    final l$location = location;
    final l$telematics = telematics;
    final l$notifyChanges = notifyChanges;
    final l$syncAssetToCMMS = syncAssetToCMMS;
    final l$syncProjectToCMMS = syncProjectToCMMS;
    final l$syncResouceToCMMS = syncResouceToCMMS;
    final l$id = id;
    final l$created = created;
    final l$modified = modified;
    final l$modifiedBy = modifiedBy;
    final l$createdBy = createdBy;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('codeFormat') ? l$codeFormat : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('templateProperties')
          ? l$templateProperties
          : const {},
      _$data.containsKey('assetTemplateCounters')
          ? l$assetTemplateCounters
          : const {},
      _$data.containsKey('syncTargets') ? l$syncTargets : const {},
      _$data.containsKey('permittedHours') ? l$permittedHours : const {},
      _$data.containsKey('shiftHours') ? l$shiftHours : const {},
      _$data.containsKey('hierarchy') ? l$hierarchy : const {},
      _$data.containsKey('parentAssetRequired')
          ? l$parentAssetRequired
          : const {},
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('reviewAttributes') ? l$reviewAttributes : const {},
      _$data.containsKey('location') ? l$location : const {},
      _$data.containsKey('telematics') ? l$telematics : const {},
      _$data.containsKey('notifyChanges') ? l$notifyChanges : const {},
      _$data.containsKey('syncAssetToCMMS') ? l$syncAssetToCMMS : const {},
      _$data.containsKey('syncProjectToCMMS') ? l$syncProjectToCMMS : const {},
      _$data.containsKey('syncResouceToCMMS') ? l$syncResouceToCMMS : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('created') ? l$created : const {},
      _$data.containsKey('modified') ? l$modified : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetTemplateFilterInput<TRes> {
  factory CopyWith$Input$AssetTemplateFilterInput(
    Input$AssetTemplateFilterInput instance,
    TRes Function(Input$AssetTemplateFilterInput) then,
  ) = _CopyWithImpl$Input$AssetTemplateFilterInput;

  factory CopyWith$Input$AssetTemplateFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetTemplateFilterInput;

  TRes call({
    List<Input$AssetTemplateFilterInput>? and,
    List<Input$AssetTemplateFilterInput>? or,
    Input$BooleanOperationFilterInput? active,
    Input$StringOperationFilterInput? codeFormat,
    Input$StringOperationFilterInput? name,
    Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput?
        templateProperties,
    Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?
        assetTemplateCounters,
    Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput? syncTargets,
    Input$BooleanOperationFilterInput? permittedHours,
    Input$BooleanOperationFilterInput? shiftHours,
    Input$BooleanOperationFilterInput? hierarchy,
    Input$BooleanOperationFilterInput? parentAssetRequired,
    Input$StringOperationFilterInput? category,
    Input$ListStringOperationFilterInput? reviewAttributes,
    Input$BooleanOperationFilterInput? location,
    Input$BooleanOperationFilterInput? telematics,
    Input$BooleanOperationFilterInput? notifyChanges,
    Input$BooleanOperationFilterInput? syncAssetToCMMS,
    Input$BooleanOperationFilterInput? syncProjectToCMMS,
    Input$BooleanOperationFilterInput? syncResouceToCMMS,
    Input$StringOperationFilterInput? id,
    Input$DateTimeOperationFilterInput? created,
    Input$DateTimeOperationFilterInput? modified,
    Input$UuidOperationFilterInput? modifiedBy,
    Input$UuidOperationFilterInput? createdBy,
  });
  TRes and(
      Iterable<Input$AssetTemplateFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateFilterInput<
                      Input$AssetTemplateFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetTemplateFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateFilterInput<
                      Input$AssetTemplateFilterInput>>?)
          _fn);
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$StringOperationFilterInput<TRes> get codeFormat;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput<TRes>
      get templateProperties;
  CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
      TRes> get assetTemplateCounters;
  CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput<TRes>
      get syncTargets;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get permittedHours;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get shiftHours;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hierarchy;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get parentAssetRequired;
  CopyWith$Input$StringOperationFilterInput<TRes> get category;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get reviewAttributes;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get location;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get telematics;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get notifyChanges;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get syncAssetToCMMS;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get syncProjectToCMMS;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get syncResouceToCMMS;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get created;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modified;
  CopyWith$Input$UuidOperationFilterInput<TRes> get modifiedBy;
  CopyWith$Input$UuidOperationFilterInput<TRes> get createdBy;
}

class _CopyWithImpl$Input$AssetTemplateFilterInput<TRes>
    implements CopyWith$Input$AssetTemplateFilterInput<TRes> {
  _CopyWithImpl$Input$AssetTemplateFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetTemplateFilterInput _instance;

  final TRes Function(Input$AssetTemplateFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? active = _undefined,
    Object? codeFormat = _undefined,
    Object? name = _undefined,
    Object? templateProperties = _undefined,
    Object? assetTemplateCounters = _undefined,
    Object? syncTargets = _undefined,
    Object? permittedHours = _undefined,
    Object? shiftHours = _undefined,
    Object? hierarchy = _undefined,
    Object? parentAssetRequired = _undefined,
    Object? category = _undefined,
    Object? reviewAttributes = _undefined,
    Object? location = _undefined,
    Object? telematics = _undefined,
    Object? notifyChanges = _undefined,
    Object? syncAssetToCMMS = _undefined,
    Object? syncProjectToCMMS = _undefined,
    Object? syncResouceToCMMS = _undefined,
    Object? id = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? modifiedBy = _undefined,
    Object? createdBy = _undefined,
  }) =>
      _then(Input$AssetTemplateFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AssetTemplateFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AssetTemplateFilterInput>?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (codeFormat != _undefined)
          'codeFormat': (codeFormat as Input$StringOperationFilterInput?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (templateProperties != _undefined)
          'templateProperties': (templateProperties
              as Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput?),
        if (assetTemplateCounters != _undefined)
          'assetTemplateCounters': (assetTemplateCounters
              as Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?),
        if (syncTargets != _undefined)
          'syncTargets': (syncTargets
              as Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput?),
        if (permittedHours != _undefined)
          'permittedHours':
              (permittedHours as Input$BooleanOperationFilterInput?),
        if (shiftHours != _undefined)
          'shiftHours': (shiftHours as Input$BooleanOperationFilterInput?),
        if (hierarchy != _undefined)
          'hierarchy': (hierarchy as Input$BooleanOperationFilterInput?),
        if (parentAssetRequired != _undefined)
          'parentAssetRequired':
              (parentAssetRequired as Input$BooleanOperationFilterInput?),
        if (category != _undefined)
          'category': (category as Input$StringOperationFilterInput?),
        if (reviewAttributes != _undefined)
          'reviewAttributes':
              (reviewAttributes as Input$ListStringOperationFilterInput?),
        if (location != _undefined)
          'location': (location as Input$BooleanOperationFilterInput?),
        if (telematics != _undefined)
          'telematics': (telematics as Input$BooleanOperationFilterInput?),
        if (notifyChanges != _undefined)
          'notifyChanges':
              (notifyChanges as Input$BooleanOperationFilterInput?),
        if (syncAssetToCMMS != _undefined)
          'syncAssetToCMMS':
              (syncAssetToCMMS as Input$BooleanOperationFilterInput?),
        if (syncProjectToCMMS != _undefined)
          'syncProjectToCMMS':
              (syncProjectToCMMS as Input$BooleanOperationFilterInput?),
        if (syncResouceToCMMS != _undefined)
          'syncResouceToCMMS':
              (syncResouceToCMMS as Input$BooleanOperationFilterInput?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (created != _undefined)
          'created': (created as Input$DateTimeOperationFilterInput?),
        if (modified != _undefined)
          'modified': (modified as Input$DateTimeOperationFilterInput?),
        if (modifiedBy != _undefined)
          'modifiedBy': (modifiedBy as Input$UuidOperationFilterInput?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$UuidOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetTemplateFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateFilterInput<
                          Input$AssetTemplateFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$AssetTemplateFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetTemplateFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateFilterInput<
                          Input$AssetTemplateFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$AssetTemplateFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get codeFormat {
    final local$codeFormat = _instance.codeFormat;
    return local$codeFormat == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$codeFormat, (e) => call(codeFormat: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput<TRes>
      get templateProperties {
    final local$templateProperties = _instance.templateProperties;
    return local$templateProperties == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput(
            local$templateProperties, (e) => call(templateProperties: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
      TRes> get assetTemplateCounters {
    final local$assetTemplateCounters = _instance.assetTemplateCounters;
    return local$assetTemplateCounters == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
            local$assetTemplateCounters, (e) => call(assetTemplateCounters: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput<TRes>
      get syncTargets {
    final local$syncTargets = _instance.syncTargets;
    return local$syncTargets == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput(
            local$syncTargets, (e) => call(syncTargets: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get permittedHours {
    final local$permittedHours = _instance.permittedHours;
    return local$permittedHours == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$permittedHours, (e) => call(permittedHours: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get shiftHours {
    final local$shiftHours = _instance.shiftHours;
    return local$shiftHours == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$shiftHours, (e) => call(shiftHours: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hierarchy {
    final local$hierarchy = _instance.hierarchy;
    return local$hierarchy == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hierarchy, (e) => call(hierarchy: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get parentAssetRequired {
    final local$parentAssetRequired = _instance.parentAssetRequired;
    return local$parentAssetRequired == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$parentAssetRequired, (e) => call(parentAssetRequired: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$category, (e) => call(category: e));
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get reviewAttributes {
    final local$reviewAttributes = _instance.reviewAttributes;
    return local$reviewAttributes == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$reviewAttributes, (e) => call(reviewAttributes: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$location, (e) => call(location: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get telematics {
    final local$telematics = _instance.telematics;
    return local$telematics == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$telematics, (e) => call(telematics: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get notifyChanges {
    final local$notifyChanges = _instance.notifyChanges;
    return local$notifyChanges == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$notifyChanges, (e) => call(notifyChanges: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get syncAssetToCMMS {
    final local$syncAssetToCMMS = _instance.syncAssetToCMMS;
    return local$syncAssetToCMMS == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$syncAssetToCMMS, (e) => call(syncAssetToCMMS: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get syncProjectToCMMS {
    final local$syncProjectToCMMS = _instance.syncProjectToCMMS;
    return local$syncProjectToCMMS == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$syncProjectToCMMS, (e) => call(syncProjectToCMMS: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get syncResouceToCMMS {
    final local$syncResouceToCMMS = _instance.syncResouceToCMMS;
    return local$syncResouceToCMMS == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$syncResouceToCMMS, (e) => call(syncResouceToCMMS: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get created {
    final local$created = _instance.created;
    return local$created == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$created, (e) => call(created: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modified {
    final local$modified = _instance.modified;
    return local$modified == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$modified, (e) => call(modified: e));
  }

  CopyWith$Input$UuidOperationFilterInput<TRes> get modifiedBy {
    final local$modifiedBy = _instance.modifiedBy;
    return local$modifiedBy == null
        ? CopyWith$Input$UuidOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$UuidOperationFilterInput(
            local$modifiedBy, (e) => call(modifiedBy: e));
  }

  CopyWith$Input$UuidOperationFilterInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$UuidOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$UuidOperationFilterInput(
            local$createdBy, (e) => call(createdBy: e));
  }
}

class _CopyWithStubImpl$Input$AssetTemplateFilterInput<TRes>
    implements CopyWith$Input$AssetTemplateFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetTemplateFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetTemplateFilterInput>? and,
    List<Input$AssetTemplateFilterInput>? or,
    Input$BooleanOperationFilterInput? active,
    Input$StringOperationFilterInput? codeFormat,
    Input$StringOperationFilterInput? name,
    Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput?
        templateProperties,
    Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?
        assetTemplateCounters,
    Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput? syncTargets,
    Input$BooleanOperationFilterInput? permittedHours,
    Input$BooleanOperationFilterInput? shiftHours,
    Input$BooleanOperationFilterInput? hierarchy,
    Input$BooleanOperationFilterInput? parentAssetRequired,
    Input$StringOperationFilterInput? category,
    Input$ListStringOperationFilterInput? reviewAttributes,
    Input$BooleanOperationFilterInput? location,
    Input$BooleanOperationFilterInput? telematics,
    Input$BooleanOperationFilterInput? notifyChanges,
    Input$BooleanOperationFilterInput? syncAssetToCMMS,
    Input$BooleanOperationFilterInput? syncProjectToCMMS,
    Input$BooleanOperationFilterInput? syncResouceToCMMS,
    Input$StringOperationFilterInput? id,
    Input$DateTimeOperationFilterInput? created,
    Input$DateTimeOperationFilterInput? modified,
    Input$UuidOperationFilterInput? modifiedBy,
    Input$UuidOperationFilterInput? createdBy,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get codeFormat =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput<TRes>
      get templateProperties =>
          CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput
              .stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
          TRes>
      get assetTemplateCounters =>
          CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
              .stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput<TRes>
      get syncTargets =>
          CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput
              .stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get permittedHours =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get shiftHours =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hierarchy =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get parentAssetRequired =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get category =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get reviewAttributes =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get location =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get telematics =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get notifyChanges =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get syncAssetToCMMS =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get syncProjectToCMMS =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get syncResouceToCMMS =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get created =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modified =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$UuidOperationFilterInput<TRes> get modifiedBy =>
      CopyWith$Input$UuidOperationFilterInput.stub(_res);

  CopyWith$Input$UuidOperationFilterInput<TRes> get createdBy =>
      CopyWith$Input$UuidOperationFilterInput.stub(_res);
}

class Input$AssetTemplateSortInput {
  factory Input$AssetTemplateSortInput({
    Enum$SortEnumType? active,
    Enum$SortEnumType? codeFormat,
    Enum$SortEnumType? name,
    Enum$SortEnumType? permittedHours,
    Enum$SortEnumType? shiftHours,
    Enum$SortEnumType? hierarchy,
    Enum$SortEnumType? parentAssetRequired,
    Enum$SortEnumType? category,
    Enum$SortEnumType? location,
    Enum$SortEnumType? telematics,
    Enum$SortEnumType? notifyChanges,
    Enum$SortEnumType? syncAssetToCMMS,
    Enum$SortEnumType? syncProjectToCMMS,
    Enum$SortEnumType? syncResouceToCMMS,
    Enum$SortEnumType? id,
    Enum$SortEnumType? created,
    Enum$SortEnumType? modified,
    Enum$SortEnumType? modifiedBy,
    Enum$SortEnumType? createdBy,
  }) =>
      Input$AssetTemplateSortInput._({
        if (active != null) r'active': active,
        if (codeFormat != null) r'codeFormat': codeFormat,
        if (name != null) r'name': name,
        if (permittedHours != null) r'permittedHours': permittedHours,
        if (shiftHours != null) r'shiftHours': shiftHours,
        if (hierarchy != null) r'hierarchy': hierarchy,
        if (parentAssetRequired != null)
          r'parentAssetRequired': parentAssetRequired,
        if (category != null) r'category': category,
        if (location != null) r'location': location,
        if (telematics != null) r'telematics': telematics,
        if (notifyChanges != null) r'notifyChanges': notifyChanges,
        if (syncAssetToCMMS != null) r'syncAssetToCMMS': syncAssetToCMMS,
        if (syncProjectToCMMS != null) r'syncProjectToCMMS': syncProjectToCMMS,
        if (syncResouceToCMMS != null) r'syncResouceToCMMS': syncResouceToCMMS,
        if (id != null) r'id': id,
        if (created != null) r'created': created,
        if (modified != null) r'modified': modified,
        if (modifiedBy != null) r'modifiedBy': modifiedBy,
        if (createdBy != null) r'createdBy': createdBy,
      });

  Input$AssetTemplateSortInput._(this._$data);

  factory Input$AssetTemplateSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('codeFormat')) {
      final l$codeFormat = data['codeFormat'];
      result$data['codeFormat'] = l$codeFormat == null
          ? null
          : fromJson$Enum$SortEnumType((l$codeFormat as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('permittedHours')) {
      final l$permittedHours = data['permittedHours'];
      result$data['permittedHours'] = l$permittedHours == null
          ? null
          : fromJson$Enum$SortEnumType((l$permittedHours as String));
    }
    if (data.containsKey('shiftHours')) {
      final l$shiftHours = data['shiftHours'];
      result$data['shiftHours'] = l$shiftHours == null
          ? null
          : fromJson$Enum$SortEnumType((l$shiftHours as String));
    }
    if (data.containsKey('hierarchy')) {
      final l$hierarchy = data['hierarchy'];
      result$data['hierarchy'] = l$hierarchy == null
          ? null
          : fromJson$Enum$SortEnumType((l$hierarchy as String));
    }
    if (data.containsKey('parentAssetRequired')) {
      final l$parentAssetRequired = data['parentAssetRequired'];
      result$data['parentAssetRequired'] = l$parentAssetRequired == null
          ? null
          : fromJson$Enum$SortEnumType((l$parentAssetRequired as String));
    }
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = l$category == null
          ? null
          : fromJson$Enum$SortEnumType((l$category as String));
    }
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = l$location == null
          ? null
          : fromJson$Enum$SortEnumType((l$location as String));
    }
    if (data.containsKey('telematics')) {
      final l$telematics = data['telematics'];
      result$data['telematics'] = l$telematics == null
          ? null
          : fromJson$Enum$SortEnumType((l$telematics as String));
    }
    if (data.containsKey('notifyChanges')) {
      final l$notifyChanges = data['notifyChanges'];
      result$data['notifyChanges'] = l$notifyChanges == null
          ? null
          : fromJson$Enum$SortEnumType((l$notifyChanges as String));
    }
    if (data.containsKey('syncAssetToCMMS')) {
      final l$syncAssetToCMMS = data['syncAssetToCMMS'];
      result$data['syncAssetToCMMS'] = l$syncAssetToCMMS == null
          ? null
          : fromJson$Enum$SortEnumType((l$syncAssetToCMMS as String));
    }
    if (data.containsKey('syncProjectToCMMS')) {
      final l$syncProjectToCMMS = data['syncProjectToCMMS'];
      result$data['syncProjectToCMMS'] = l$syncProjectToCMMS == null
          ? null
          : fromJson$Enum$SortEnumType((l$syncProjectToCMMS as String));
    }
    if (data.containsKey('syncResouceToCMMS')) {
      final l$syncResouceToCMMS = data['syncResouceToCMMS'];
      result$data['syncResouceToCMMS'] = l$syncResouceToCMMS == null
          ? null
          : fromJson$Enum$SortEnumType((l$syncResouceToCMMS as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('created')) {
      final l$created = data['created'];
      result$data['created'] = l$created == null
          ? null
          : fromJson$Enum$SortEnumType((l$created as String));
    }
    if (data.containsKey('modified')) {
      final l$modified = data['modified'];
      result$data['modified'] = l$modified == null
          ? null
          : fromJson$Enum$SortEnumType((l$modified as String));
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedBy as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdBy as String));
    }
    return Input$AssetTemplateSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get codeFormat =>
      (_$data['codeFormat'] as Enum$SortEnumType?);

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get permittedHours =>
      (_$data['permittedHours'] as Enum$SortEnumType?);

  Enum$SortEnumType? get shiftHours =>
      (_$data['shiftHours'] as Enum$SortEnumType?);

  Enum$SortEnumType? get hierarchy =>
      (_$data['hierarchy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get parentAssetRequired =>
      (_$data['parentAssetRequired'] as Enum$SortEnumType?);

  Enum$SortEnumType? get category => (_$data['category'] as Enum$SortEnumType?);

  Enum$SortEnumType? get location => (_$data['location'] as Enum$SortEnumType?);

  Enum$SortEnumType? get telematics =>
      (_$data['telematics'] as Enum$SortEnumType?);

  Enum$SortEnumType? get notifyChanges =>
      (_$data['notifyChanges'] as Enum$SortEnumType?);

  Enum$SortEnumType? get syncAssetToCMMS =>
      (_$data['syncAssetToCMMS'] as Enum$SortEnumType?);

  Enum$SortEnumType? get syncProjectToCMMS =>
      (_$data['syncProjectToCMMS'] as Enum$SortEnumType?);

  Enum$SortEnumType? get syncResouceToCMMS =>
      (_$data['syncResouceToCMMS'] as Enum$SortEnumType?);

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get created => (_$data['created'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modified => (_$data['modified'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedBy =>
      (_$data['modifiedBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdBy =>
      (_$data['createdBy'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] =
          l$active == null ? null : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('codeFormat')) {
      final l$codeFormat = codeFormat;
      result$data['codeFormat'] =
          l$codeFormat == null ? null : toJson$Enum$SortEnumType(l$codeFormat);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('permittedHours')) {
      final l$permittedHours = permittedHours;
      result$data['permittedHours'] = l$permittedHours == null
          ? null
          : toJson$Enum$SortEnumType(l$permittedHours);
    }
    if (_$data.containsKey('shiftHours')) {
      final l$shiftHours = shiftHours;
      result$data['shiftHours'] =
          l$shiftHours == null ? null : toJson$Enum$SortEnumType(l$shiftHours);
    }
    if (_$data.containsKey('hierarchy')) {
      final l$hierarchy = hierarchy;
      result$data['hierarchy'] =
          l$hierarchy == null ? null : toJson$Enum$SortEnumType(l$hierarchy);
    }
    if (_$data.containsKey('parentAssetRequired')) {
      final l$parentAssetRequired = parentAssetRequired;
      result$data['parentAssetRequired'] = l$parentAssetRequired == null
          ? null
          : toJson$Enum$SortEnumType(l$parentAssetRequired);
    }
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] =
          l$category == null ? null : toJson$Enum$SortEnumType(l$category);
    }
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] =
          l$location == null ? null : toJson$Enum$SortEnumType(l$location);
    }
    if (_$data.containsKey('telematics')) {
      final l$telematics = telematics;
      result$data['telematics'] =
          l$telematics == null ? null : toJson$Enum$SortEnumType(l$telematics);
    }
    if (_$data.containsKey('notifyChanges')) {
      final l$notifyChanges = notifyChanges;
      result$data['notifyChanges'] = l$notifyChanges == null
          ? null
          : toJson$Enum$SortEnumType(l$notifyChanges);
    }
    if (_$data.containsKey('syncAssetToCMMS')) {
      final l$syncAssetToCMMS = syncAssetToCMMS;
      result$data['syncAssetToCMMS'] = l$syncAssetToCMMS == null
          ? null
          : toJson$Enum$SortEnumType(l$syncAssetToCMMS);
    }
    if (_$data.containsKey('syncProjectToCMMS')) {
      final l$syncProjectToCMMS = syncProjectToCMMS;
      result$data['syncProjectToCMMS'] = l$syncProjectToCMMS == null
          ? null
          : toJson$Enum$SortEnumType(l$syncProjectToCMMS);
    }
    if (_$data.containsKey('syncResouceToCMMS')) {
      final l$syncResouceToCMMS = syncResouceToCMMS;
      result$data['syncResouceToCMMS'] = l$syncResouceToCMMS == null
          ? null
          : toJson$Enum$SortEnumType(l$syncResouceToCMMS);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('created')) {
      final l$created = created;
      result$data['created'] =
          l$created == null ? null : toJson$Enum$SortEnumType(l$created);
    }
    if (_$data.containsKey('modified')) {
      final l$modified = modified;
      result$data['modified'] =
          l$modified == null ? null : toJson$Enum$SortEnumType(l$modified);
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] =
          l$modifiedBy == null ? null : toJson$Enum$SortEnumType(l$modifiedBy);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] =
          l$createdBy == null ? null : toJson$Enum$SortEnumType(l$createdBy);
    }
    return result$data;
  }

  CopyWith$Input$AssetTemplateSortInput<Input$AssetTemplateSortInput>
      get copyWith => CopyWith$Input$AssetTemplateSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetTemplateSortInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$codeFormat = codeFormat;
    final lOther$codeFormat = other.codeFormat;
    if (_$data.containsKey('codeFormat') !=
        other._$data.containsKey('codeFormat')) {
      return false;
    }
    if (l$codeFormat != lOther$codeFormat) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$permittedHours = permittedHours;
    final lOther$permittedHours = other.permittedHours;
    if (_$data.containsKey('permittedHours') !=
        other._$data.containsKey('permittedHours')) {
      return false;
    }
    if (l$permittedHours != lOther$permittedHours) {
      return false;
    }
    final l$shiftHours = shiftHours;
    final lOther$shiftHours = other.shiftHours;
    if (_$data.containsKey('shiftHours') !=
        other._$data.containsKey('shiftHours')) {
      return false;
    }
    if (l$shiftHours != lOther$shiftHours) {
      return false;
    }
    final l$hierarchy = hierarchy;
    final lOther$hierarchy = other.hierarchy;
    if (_$data.containsKey('hierarchy') !=
        other._$data.containsKey('hierarchy')) {
      return false;
    }
    if (l$hierarchy != lOther$hierarchy) {
      return false;
    }
    final l$parentAssetRequired = parentAssetRequired;
    final lOther$parentAssetRequired = other.parentAssetRequired;
    if (_$data.containsKey('parentAssetRequired') !=
        other._$data.containsKey('parentAssetRequired')) {
      return false;
    }
    if (l$parentAssetRequired != lOther$parentAssetRequired) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    final l$telematics = telematics;
    final lOther$telematics = other.telematics;
    if (_$data.containsKey('telematics') !=
        other._$data.containsKey('telematics')) {
      return false;
    }
    if (l$telematics != lOther$telematics) {
      return false;
    }
    final l$notifyChanges = notifyChanges;
    final lOther$notifyChanges = other.notifyChanges;
    if (_$data.containsKey('notifyChanges') !=
        other._$data.containsKey('notifyChanges')) {
      return false;
    }
    if (l$notifyChanges != lOther$notifyChanges) {
      return false;
    }
    final l$syncAssetToCMMS = syncAssetToCMMS;
    final lOther$syncAssetToCMMS = other.syncAssetToCMMS;
    if (_$data.containsKey('syncAssetToCMMS') !=
        other._$data.containsKey('syncAssetToCMMS')) {
      return false;
    }
    if (l$syncAssetToCMMS != lOther$syncAssetToCMMS) {
      return false;
    }
    final l$syncProjectToCMMS = syncProjectToCMMS;
    final lOther$syncProjectToCMMS = other.syncProjectToCMMS;
    if (_$data.containsKey('syncProjectToCMMS') !=
        other._$data.containsKey('syncProjectToCMMS')) {
      return false;
    }
    if (l$syncProjectToCMMS != lOther$syncProjectToCMMS) {
      return false;
    }
    final l$syncResouceToCMMS = syncResouceToCMMS;
    final lOther$syncResouceToCMMS = other.syncResouceToCMMS;
    if (_$data.containsKey('syncResouceToCMMS') !=
        other._$data.containsKey('syncResouceToCMMS')) {
      return false;
    }
    if (l$syncResouceToCMMS != lOther$syncResouceToCMMS) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (_$data.containsKey('created') != other._$data.containsKey('created')) {
      return false;
    }
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (_$data.containsKey('modified') !=
        other._$data.containsKey('modified')) {
      return false;
    }
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$codeFormat = codeFormat;
    final l$name = name;
    final l$permittedHours = permittedHours;
    final l$shiftHours = shiftHours;
    final l$hierarchy = hierarchy;
    final l$parentAssetRequired = parentAssetRequired;
    final l$category = category;
    final l$location = location;
    final l$telematics = telematics;
    final l$notifyChanges = notifyChanges;
    final l$syncAssetToCMMS = syncAssetToCMMS;
    final l$syncProjectToCMMS = syncProjectToCMMS;
    final l$syncResouceToCMMS = syncResouceToCMMS;
    final l$id = id;
    final l$created = created;
    final l$modified = modified;
    final l$modifiedBy = modifiedBy;
    final l$createdBy = createdBy;
    return Object.hashAll([
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('codeFormat') ? l$codeFormat : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('permittedHours') ? l$permittedHours : const {},
      _$data.containsKey('shiftHours') ? l$shiftHours : const {},
      _$data.containsKey('hierarchy') ? l$hierarchy : const {},
      _$data.containsKey('parentAssetRequired')
          ? l$parentAssetRequired
          : const {},
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('location') ? l$location : const {},
      _$data.containsKey('telematics') ? l$telematics : const {},
      _$data.containsKey('notifyChanges') ? l$notifyChanges : const {},
      _$data.containsKey('syncAssetToCMMS') ? l$syncAssetToCMMS : const {},
      _$data.containsKey('syncProjectToCMMS') ? l$syncProjectToCMMS : const {},
      _$data.containsKey('syncResouceToCMMS') ? l$syncResouceToCMMS : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('created') ? l$created : const {},
      _$data.containsKey('modified') ? l$modified : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetTemplateSortInput<TRes> {
  factory CopyWith$Input$AssetTemplateSortInput(
    Input$AssetTemplateSortInput instance,
    TRes Function(Input$AssetTemplateSortInput) then,
  ) = _CopyWithImpl$Input$AssetTemplateSortInput;

  factory CopyWith$Input$AssetTemplateSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetTemplateSortInput;

  TRes call({
    Enum$SortEnumType? active,
    Enum$SortEnumType? codeFormat,
    Enum$SortEnumType? name,
    Enum$SortEnumType? permittedHours,
    Enum$SortEnumType? shiftHours,
    Enum$SortEnumType? hierarchy,
    Enum$SortEnumType? parentAssetRequired,
    Enum$SortEnumType? category,
    Enum$SortEnumType? location,
    Enum$SortEnumType? telematics,
    Enum$SortEnumType? notifyChanges,
    Enum$SortEnumType? syncAssetToCMMS,
    Enum$SortEnumType? syncProjectToCMMS,
    Enum$SortEnumType? syncResouceToCMMS,
    Enum$SortEnumType? id,
    Enum$SortEnumType? created,
    Enum$SortEnumType? modified,
    Enum$SortEnumType? modifiedBy,
    Enum$SortEnumType? createdBy,
  });
}

class _CopyWithImpl$Input$AssetTemplateSortInput<TRes>
    implements CopyWith$Input$AssetTemplateSortInput<TRes> {
  _CopyWithImpl$Input$AssetTemplateSortInput(
    this._instance,
    this._then,
  );

  final Input$AssetTemplateSortInput _instance;

  final TRes Function(Input$AssetTemplateSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? codeFormat = _undefined,
    Object? name = _undefined,
    Object? permittedHours = _undefined,
    Object? shiftHours = _undefined,
    Object? hierarchy = _undefined,
    Object? parentAssetRequired = _undefined,
    Object? category = _undefined,
    Object? location = _undefined,
    Object? telematics = _undefined,
    Object? notifyChanges = _undefined,
    Object? syncAssetToCMMS = _undefined,
    Object? syncProjectToCMMS = _undefined,
    Object? syncResouceToCMMS = _undefined,
    Object? id = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? modifiedBy = _undefined,
    Object? createdBy = _undefined,
  }) =>
      _then(Input$AssetTemplateSortInput._({
        ..._instance._$data,
        if (active != _undefined) 'active': (active as Enum$SortEnumType?),
        if (codeFormat != _undefined)
          'codeFormat': (codeFormat as Enum$SortEnumType?),
        if (name != _undefined) 'name': (name as Enum$SortEnumType?),
        if (permittedHours != _undefined)
          'permittedHours': (permittedHours as Enum$SortEnumType?),
        if (shiftHours != _undefined)
          'shiftHours': (shiftHours as Enum$SortEnumType?),
        if (hierarchy != _undefined)
          'hierarchy': (hierarchy as Enum$SortEnumType?),
        if (parentAssetRequired != _undefined)
          'parentAssetRequired': (parentAssetRequired as Enum$SortEnumType?),
        if (category != _undefined)
          'category': (category as Enum$SortEnumType?),
        if (location != _undefined)
          'location': (location as Enum$SortEnumType?),
        if (telematics != _undefined)
          'telematics': (telematics as Enum$SortEnumType?),
        if (notifyChanges != _undefined)
          'notifyChanges': (notifyChanges as Enum$SortEnumType?),
        if (syncAssetToCMMS != _undefined)
          'syncAssetToCMMS': (syncAssetToCMMS as Enum$SortEnumType?),
        if (syncProjectToCMMS != _undefined)
          'syncProjectToCMMS': (syncProjectToCMMS as Enum$SortEnumType?),
        if (syncResouceToCMMS != _undefined)
          'syncResouceToCMMS': (syncResouceToCMMS as Enum$SortEnumType?),
        if (id != _undefined) 'id': (id as Enum$SortEnumType?),
        if (created != _undefined) 'created': (created as Enum$SortEnumType?),
        if (modified != _undefined)
          'modified': (modified as Enum$SortEnumType?),
        if (modifiedBy != _undefined)
          'modifiedBy': (modifiedBy as Enum$SortEnumType?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$AssetTemplateSortInput<TRes>
    implements CopyWith$Input$AssetTemplateSortInput<TRes> {
  _CopyWithStubImpl$Input$AssetTemplateSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? active,
    Enum$SortEnumType? codeFormat,
    Enum$SortEnumType? name,
    Enum$SortEnumType? permittedHours,
    Enum$SortEnumType? shiftHours,
    Enum$SortEnumType? hierarchy,
    Enum$SortEnumType? parentAssetRequired,
    Enum$SortEnumType? category,
    Enum$SortEnumType? location,
    Enum$SortEnumType? telematics,
    Enum$SortEnumType? notifyChanges,
    Enum$SortEnumType? syncAssetToCMMS,
    Enum$SortEnumType? syncProjectToCMMS,
    Enum$SortEnumType? syncResouceToCMMS,
    Enum$SortEnumType? id,
    Enum$SortEnumType? created,
    Enum$SortEnumType? modified,
    Enum$SortEnumType? modifiedBy,
    Enum$SortEnumType? createdBy,
  }) =>
      _res;
}

class Input$BooleanOperationFilterInput {
  factory Input$BooleanOperationFilterInput({
    bool? eq,
    bool? neq,
  }) =>
      Input$BooleanOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
      });

  Input$BooleanOperationFilterInput._(this._$data);

  factory Input$BooleanOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as bool?);
    }
    return Input$BooleanOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get eq => (_$data['eq'] as bool?);

  bool? get neq => (_$data['neq'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    return result$data;
  }

  CopyWith$Input$BooleanOperationFilterInput<Input$BooleanOperationFilterInput>
      get copyWith => CopyWith$Input$BooleanOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BooleanOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
    ]);
  }
}

abstract class CopyWith$Input$BooleanOperationFilterInput<TRes> {
  factory CopyWith$Input$BooleanOperationFilterInput(
    Input$BooleanOperationFilterInput instance,
    TRes Function(Input$BooleanOperationFilterInput) then,
  ) = _CopyWithImpl$Input$BooleanOperationFilterInput;

  factory CopyWith$Input$BooleanOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanOperationFilterInput;

  TRes call({
    bool? eq,
    bool? neq,
  });
}

class _CopyWithImpl$Input$BooleanOperationFilterInput<TRes>
    implements CopyWith$Input$BooleanOperationFilterInput<TRes> {
  _CopyWithImpl$Input$BooleanOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$BooleanOperationFilterInput _instance;

  final TRes Function(Input$BooleanOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
  }) =>
      _then(Input$BooleanOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as bool?),
        if (neq != _undefined) 'neq': (neq as bool?),
      }));
}

class _CopyWithStubImpl$Input$BooleanOperationFilterInput<TRes>
    implements CopyWith$Input$BooleanOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$BooleanOperationFilterInput(this._res);

  TRes _res;

  call({
    bool? eq,
    bool? neq,
  }) =>
      _res;
}

class Input$StringOperationFilterInput {
  factory Input$StringOperationFilterInput({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  }) =>
      Input$StringOperationFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (contains != null) r'contains': contains,
        if (ncontains != null) r'ncontains': ncontains,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (startsWith != null) r'startsWith': startsWith,
        if (nstartsWith != null) r'nstartsWith': nstartsWith,
        if (endsWith != null) r'endsWith': endsWith,
        if (nendsWith != null) r'nendsWith': nendsWith,
      });

  Input$StringOperationFilterInput._(this._$data);

  factory Input$StringOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$StringOperationFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$StringOperationFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('ncontains')) {
      final l$ncontains = data['ncontains'];
      result$data['ncontains'] = (l$ncontains as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('startsWith')) {
      final l$startsWith = data['startsWith'];
      result$data['startsWith'] = (l$startsWith as String?);
    }
    if (data.containsKey('nstartsWith')) {
      final l$nstartsWith = data['nstartsWith'];
      result$data['nstartsWith'] = (l$nstartsWith as String?);
    }
    if (data.containsKey('endsWith')) {
      final l$endsWith = data['endsWith'];
      result$data['endsWith'] = (l$endsWith as String?);
    }
    if (data.containsKey('nendsWith')) {
      final l$nendsWith = data['nendsWith'];
      result$data['nendsWith'] = (l$nendsWith as String?);
    }
    return Input$StringOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$StringOperationFilterInput>? get and =>
      (_$data['and'] as List<Input$StringOperationFilterInput>?);

  List<Input$StringOperationFilterInput>? get or =>
      (_$data['or'] as List<Input$StringOperationFilterInput>?);

  String? get eq => (_$data['eq'] as String?);

  String? get neq => (_$data['neq'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get ncontains => (_$data['ncontains'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  List<String?>? get nin => (_$data['nin'] as List<String?>?);

  String? get startsWith => (_$data['startsWith'] as String?);

  String? get nstartsWith => (_$data['nstartsWith'] as String?);

  String? get endsWith => (_$data['endsWith'] as String?);

  String? get nendsWith => (_$data['nendsWith'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('ncontains')) {
      final l$ncontains = ncontains;
      result$data['ncontains'] = l$ncontains;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('startsWith')) {
      final l$startsWith = startsWith;
      result$data['startsWith'] = l$startsWith;
    }
    if (_$data.containsKey('nstartsWith')) {
      final l$nstartsWith = nstartsWith;
      result$data['nstartsWith'] = l$nstartsWith;
    }
    if (_$data.containsKey('endsWith')) {
      final l$endsWith = endsWith;
      result$data['endsWith'] = l$endsWith;
    }
    if (_$data.containsKey('nendsWith')) {
      final l$nendsWith = nendsWith;
      result$data['nendsWith'] = l$nendsWith;
    }
    return result$data;
  }

  CopyWith$Input$StringOperationFilterInput<Input$StringOperationFilterInput>
      get copyWith => CopyWith$Input$StringOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$ncontains = ncontains;
    final lOther$ncontains = other.ncontains;
    if (_$data.containsKey('ncontains') !=
        other._$data.containsKey('ncontains')) {
      return false;
    }
    if (l$ncontains != lOther$ncontains) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$startsWith = startsWith;
    final lOther$startsWith = other.startsWith;
    if (_$data.containsKey('startsWith') !=
        other._$data.containsKey('startsWith')) {
      return false;
    }
    if (l$startsWith != lOther$startsWith) {
      return false;
    }
    final l$nstartsWith = nstartsWith;
    final lOther$nstartsWith = other.nstartsWith;
    if (_$data.containsKey('nstartsWith') !=
        other._$data.containsKey('nstartsWith')) {
      return false;
    }
    if (l$nstartsWith != lOther$nstartsWith) {
      return false;
    }
    final l$endsWith = endsWith;
    final lOther$endsWith = other.endsWith;
    if (_$data.containsKey('endsWith') !=
        other._$data.containsKey('endsWith')) {
      return false;
    }
    if (l$endsWith != lOther$endsWith) {
      return false;
    }
    final l$nendsWith = nendsWith;
    final lOther$nendsWith = other.nendsWith;
    if (_$data.containsKey('nendsWith') !=
        other._$data.containsKey('nendsWith')) {
      return false;
    }
    if (l$nendsWith != lOther$nendsWith) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$eq = eq;
    final l$neq = neq;
    final l$contains = contains;
    final l$ncontains = ncontains;
    final l$$in = $in;
    final l$nin = nin;
    final l$startsWith = startsWith;
    final l$nstartsWith = nstartsWith;
    final l$endsWith = endsWith;
    final l$nendsWith = nendsWith;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('ncontains') ? l$ncontains : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('startsWith') ? l$startsWith : const {},
      _$data.containsKey('nstartsWith') ? l$nstartsWith : const {},
      _$data.containsKey('endsWith') ? l$endsWith : const {},
      _$data.containsKey('nendsWith') ? l$nendsWith : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringOperationFilterInput<TRes> {
  factory CopyWith$Input$StringOperationFilterInput(
    Input$StringOperationFilterInput instance,
    TRes Function(Input$StringOperationFilterInput) then,
  ) = _CopyWithImpl$Input$StringOperationFilterInput;

  factory CopyWith$Input$StringOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StringOperationFilterInput;

  TRes call({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  });
  TRes and(
      Iterable<Input$StringOperationFilterInput>? Function(
              Iterable<
                  CopyWith$Input$StringOperationFilterInput<
                      Input$StringOperationFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$StringOperationFilterInput>? Function(
              Iterable<
                  CopyWith$Input$StringOperationFilterInput<
                      Input$StringOperationFilterInput>>?)
          _fn);
}

class _CopyWithImpl$Input$StringOperationFilterInput<TRes>
    implements CopyWith$Input$StringOperationFilterInput<TRes> {
  _CopyWithImpl$Input$StringOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$StringOperationFilterInput _instance;

  final TRes Function(Input$StringOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? contains = _undefined,
    Object? ncontains = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? startsWith = _undefined,
    Object? nstartsWith = _undefined,
    Object? endsWith = _undefined,
    Object? nendsWith = _undefined,
  }) =>
      _then(Input$StringOperationFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$StringOperationFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$StringOperationFilterInput>?),
        if (eq != _undefined) 'eq': (eq as String?),
        if (neq != _undefined) 'neq': (neq as String?),
        if (contains != _undefined) 'contains': (contains as String?),
        if (ncontains != _undefined) 'ncontains': (ncontains as String?),
        if ($in != _undefined) 'in': ($in as List<String?>?),
        if (nin != _undefined) 'nin': (nin as List<String?>?),
        if (startsWith != _undefined) 'startsWith': (startsWith as String?),
        if (nstartsWith != _undefined) 'nstartsWith': (nstartsWith as String?),
        if (endsWith != _undefined) 'endsWith': (endsWith as String?),
        if (nendsWith != _undefined) 'nendsWith': (nendsWith as String?),
      }));

  TRes and(
          Iterable<Input$StringOperationFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$StringOperationFilterInput<
                          Input$StringOperationFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$StringOperationFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$StringOperationFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$StringOperationFilterInput<
                          Input$StringOperationFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$StringOperationFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$StringOperationFilterInput<TRes>
    implements CopyWith$Input$StringOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$StringOperationFilterInput(this._res);

  TRes _res;

  call({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;
}

class Input$LongOperationFilterInput {
  factory Input$LongOperationFilterInput({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      Input$LongOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$LongOperationFilterInput._(this._$data);

  factory Input$LongOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as int?);
    }
    return Input$LongOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  int? get neq => (_$data['neq'] as int?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  List<int?>? get nin => (_$data['nin'] as List<int?>?);

  int? get gt => (_$data['gt'] as int?);

  int? get ngt => (_$data['ngt'] as int?);

  int? get gte => (_$data['gte'] as int?);

  int? get ngte => (_$data['ngte'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get nlt => (_$data['nlt'] as int?);

  int? get lte => (_$data['lte'] as int?);

  int? get nlte => (_$data['nlte'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$LongOperationFilterInput<Input$LongOperationFilterInput>
      get copyWith => CopyWith$Input$LongOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LongOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$LongOperationFilterInput<TRes> {
  factory CopyWith$Input$LongOperationFilterInput(
    Input$LongOperationFilterInput instance,
    TRes Function(Input$LongOperationFilterInput) then,
  ) = _CopyWithImpl$Input$LongOperationFilterInput;

  factory CopyWith$Input$LongOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LongOperationFilterInput;

  TRes call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  });
}

class _CopyWithImpl$Input$LongOperationFilterInput<TRes>
    implements CopyWith$Input$LongOperationFilterInput<TRes> {
  _CopyWithImpl$Input$LongOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$LongOperationFilterInput _instance;

  final TRes Function(Input$LongOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$LongOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as int?),
        if (neq != _undefined) 'neq': (neq as int?),
        if ($in != _undefined) 'in': ($in as List<int?>?),
        if (nin != _undefined) 'nin': (nin as List<int?>?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (ngt != _undefined) 'ngt': (ngt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (ngte != _undefined) 'ngte': (ngte as int?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (nlt != _undefined) 'nlt': (nlt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if (nlte != _undefined) 'nlte': (nlte as int?),
      }));
}

class _CopyWithStubImpl$Input$LongOperationFilterInput<TRes>
    implements CopyWith$Input$LongOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$LongOperationFilterInput(this._res);

  TRes _res;

  call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      _res;
}

class Input$IntOperationFilterInput {
  factory Input$IntOperationFilterInput({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      Input$IntOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$IntOperationFilterInput._(this._$data);

  factory Input$IntOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as int?);
    }
    return Input$IntOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  int? get neq => (_$data['neq'] as int?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  List<int?>? get nin => (_$data['nin'] as List<int?>?);

  int? get gt => (_$data['gt'] as int?);

  int? get ngt => (_$data['ngt'] as int?);

  int? get gte => (_$data['gte'] as int?);

  int? get ngte => (_$data['ngte'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get nlt => (_$data['nlt'] as int?);

  int? get lte => (_$data['lte'] as int?);

  int? get nlte => (_$data['nlte'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$IntOperationFilterInput<Input$IntOperationFilterInput>
      get copyWith => CopyWith$Input$IntOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$IntOperationFilterInput<TRes> {
  factory CopyWith$Input$IntOperationFilterInput(
    Input$IntOperationFilterInput instance,
    TRes Function(Input$IntOperationFilterInput) then,
  ) = _CopyWithImpl$Input$IntOperationFilterInput;

  factory CopyWith$Input$IntOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$IntOperationFilterInput;

  TRes call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  });
}

class _CopyWithImpl$Input$IntOperationFilterInput<TRes>
    implements CopyWith$Input$IntOperationFilterInput<TRes> {
  _CopyWithImpl$Input$IntOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$IntOperationFilterInput _instance;

  final TRes Function(Input$IntOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$IntOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as int?),
        if (neq != _undefined) 'neq': (neq as int?),
        if ($in != _undefined) 'in': ($in as List<int?>?),
        if (nin != _undefined) 'nin': (nin as List<int?>?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (ngt != _undefined) 'ngt': (ngt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (ngte != _undefined) 'ngte': (ngte as int?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (nlt != _undefined) 'nlt': (nlt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if (nlte != _undefined) 'nlte': (nlte as int?),
      }));
}

class _CopyWithStubImpl$Input$IntOperationFilterInput<TRes>
    implements CopyWith$Input$IntOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$IntOperationFilterInput(this._res);

  TRes _res;

  call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      _res;
}

class Input$FloatOperationFilterInput {
  factory Input$FloatOperationFilterInput({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      Input$FloatOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$FloatOperationFilterInput._(this._$data);

  factory Input$FloatOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as num?)?.toDouble();
    }
    return Input$FloatOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get eq => (_$data['eq'] as double?);

  double? get neq => (_$data['neq'] as double?);

  List<double?>? get $in => (_$data['in'] as List<double?>?);

  List<double?>? get nin => (_$data['nin'] as List<double?>?);

  double? get gt => (_$data['gt'] as double?);

  double? get ngt => (_$data['ngt'] as double?);

  double? get gte => (_$data['gte'] as double?);

  double? get ngte => (_$data['ngte'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get nlt => (_$data['nlt'] as double?);

  double? get lte => (_$data['lte'] as double?);

  double? get nlte => (_$data['nlte'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$FloatOperationFilterInput<Input$FloatOperationFilterInput>
      get copyWith => CopyWith$Input$FloatOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FloatOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$FloatOperationFilterInput<TRes> {
  factory CopyWith$Input$FloatOperationFilterInput(
    Input$FloatOperationFilterInput instance,
    TRes Function(Input$FloatOperationFilterInput) then,
  ) = _CopyWithImpl$Input$FloatOperationFilterInput;

  factory CopyWith$Input$FloatOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatOperationFilterInput;

  TRes call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  });
}

class _CopyWithImpl$Input$FloatOperationFilterInput<TRes>
    implements CopyWith$Input$FloatOperationFilterInput<TRes> {
  _CopyWithImpl$Input$FloatOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$FloatOperationFilterInput _instance;

  final TRes Function(Input$FloatOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$FloatOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as double?),
        if (neq != _undefined) 'neq': (neq as double?),
        if ($in != _undefined) 'in': ($in as List<double?>?),
        if (nin != _undefined) 'nin': (nin as List<double?>?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (ngt != _undefined) 'ngt': (ngt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (ngte != _undefined) 'ngte': (ngte as double?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (nlt != _undefined) 'nlt': (nlt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if (nlte != _undefined) 'nlte': (nlte as double?),
      }));
}

class _CopyWithStubImpl$Input$FloatOperationFilterInput<TRes>
    implements CopyWith$Input$FloatOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$FloatOperationFilterInput(this._res);

  TRes _res;

  call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      _res;
}

class Input$UuidOperationFilterInput {
  factory Input$UuidOperationFilterInput({
    String? eq,
    String? neq,
    List<String?>? $in,
    List<String?>? nin,
    String? gt,
    String? ngt,
    String? gte,
    String? ngte,
    String? lt,
    String? nlt,
    String? lte,
    String? nlte,
  }) =>
      Input$UuidOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$UuidOperationFilterInput._(this._$data);

  factory Input$UuidOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as String?);
    }
    return Input$UuidOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get eq => (_$data['eq'] as String?);

  String? get neq => (_$data['neq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  List<String?>? get nin => (_$data['nin'] as List<String?>?);

  String? get gt => (_$data['gt'] as String?);

  String? get ngt => (_$data['ngt'] as String?);

  String? get gte => (_$data['gte'] as String?);

  String? get ngte => (_$data['ngte'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get nlt => (_$data['nlt'] as String?);

  String? get lte => (_$data['lte'] as String?);

  String? get nlte => (_$data['nlte'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$UuidOperationFilterInput<Input$UuidOperationFilterInput>
      get copyWith => CopyWith$Input$UuidOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UuidOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$UuidOperationFilterInput<TRes> {
  factory CopyWith$Input$UuidOperationFilterInput(
    Input$UuidOperationFilterInput instance,
    TRes Function(Input$UuidOperationFilterInput) then,
  ) = _CopyWithImpl$Input$UuidOperationFilterInput;

  factory CopyWith$Input$UuidOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UuidOperationFilterInput;

  TRes call({
    String? eq,
    String? neq,
    List<String?>? $in,
    List<String?>? nin,
    String? gt,
    String? ngt,
    String? gte,
    String? ngte,
    String? lt,
    String? nlt,
    String? lte,
    String? nlte,
  });
}

class _CopyWithImpl$Input$UuidOperationFilterInput<TRes>
    implements CopyWith$Input$UuidOperationFilterInput<TRes> {
  _CopyWithImpl$Input$UuidOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$UuidOperationFilterInput _instance;

  final TRes Function(Input$UuidOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$UuidOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as String?),
        if (neq != _undefined) 'neq': (neq as String?),
        if ($in != _undefined) 'in': ($in as List<String?>?),
        if (nin != _undefined) 'nin': (nin as List<String?>?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (ngt != _undefined) 'ngt': (ngt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (ngte != _undefined) 'ngte': (ngte as String?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (nlt != _undefined) 'nlt': (nlt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (nlte != _undefined) 'nlte': (nlte as String?),
      }));
}

class _CopyWithStubImpl$Input$UuidOperationFilterInput<TRes>
    implements CopyWith$Input$UuidOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$UuidOperationFilterInput(this._res);

  TRes _res;

  call({
    String? eq,
    String? neq,
    List<String?>? $in,
    List<String?>? nin,
    String? gt,
    String? ngt,
    String? gte,
    String? ngte,
    String? lt,
    String? nlt,
    String? lte,
    String? nlte,
  }) =>
      _res;
}

class Input$ListFilterInputTypeOfAssetPropertyFilterInput {
  factory Input$ListFilterInputTypeOfAssetPropertyFilterInput({
    Input$AssetPropertyFilterInput? none,
    Input$AssetPropertyFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetPropertyFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetPropertyFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfAssetPropertyFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetPropertyFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetPropertyFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetPropertyFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetPropertyFilterInput? get none =>
      (_$data['none'] as Input$AssetPropertyFilterInput?);

  Input$AssetPropertyFilterInput? get some =>
      (_$data['some'] as Input$AssetPropertyFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput<
          Input$ListFilterInputTypeOfAssetPropertyFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListFilterInputTypeOfAssetPropertyFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput(
    Input$ListFilterInputTypeOfAssetPropertyFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfAssetPropertyFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetPropertyFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetPropertyFilterInput;

  TRes call({
    Input$AssetPropertyFilterInput? none,
    Input$AssetPropertyFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetPropertyFilterInput<TRes> get none;
  CopyWith$Input$AssetPropertyFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetPropertyFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetPropertyFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetPropertyFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfAssetPropertyFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfAssetPropertyFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$AssetPropertyFilterInput?),
        if (some != _undefined)
          'some': (some as Input$AssetPropertyFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetPropertyFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetPropertyFilterInput.stub(_then(_instance))
        : CopyWith$Input$AssetPropertyFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetPropertyFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetPropertyFilterInput.stub(_then(_instance))
        : CopyWith$Input$AssetPropertyFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetPropertyFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetPropertyFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetPropertyFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AssetPropertyFilterInput? none,
    Input$AssetPropertyFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetPropertyFilterInput<TRes> get none =>
      CopyWith$Input$AssetPropertyFilterInput.stub(_res);

  CopyWith$Input$AssetPropertyFilterInput<TRes> get some =>
      CopyWith$Input$AssetPropertyFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfAssetCounterFilterInput {
  factory Input$ListFilterInputTypeOfAssetCounterFilterInput({
    Input$AssetCounterFilterInput? none,
    Input$AssetCounterFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetCounterFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetCounterFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfAssetCounterFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetCounterFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetCounterFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetCounterFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetCounterFilterInput? get none =>
      (_$data['none'] as Input$AssetCounterFilterInput?);

  Input$AssetCounterFilterInput? get some =>
      (_$data['some'] as Input$AssetCounterFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput<
          Input$ListFilterInputTypeOfAssetCounterFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListFilterInputTypeOfAssetCounterFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput(
    Input$ListFilterInputTypeOfAssetCounterFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfAssetCounterFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterFilterInput;

  TRes call({
    Input$AssetCounterFilterInput? none,
    Input$AssetCounterFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetCounterFilterInput<TRes> get none;
  CopyWith$Input$AssetCounterFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetCounterFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfAssetCounterFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfAssetCounterFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$AssetCounterFilterInput?),
        if (some != _undefined)
          'some': (some as Input$AssetCounterFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetCounterFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetCounterFilterInput.stub(_then(_instance))
        : CopyWith$Input$AssetCounterFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetCounterFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetCounterFilterInput.stub(_then(_instance))
        : CopyWith$Input$AssetCounterFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetCounterFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AssetCounterFilterInput? none,
    Input$AssetCounterFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetCounterFilterInput<TRes> get none =>
      CopyWith$Input$AssetCounterFilterInput.stub(_res);

  CopyWith$Input$AssetCounterFilterInput<TRes> get some =>
      CopyWith$Input$AssetCounterFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfAssetImageFilterInput {
  factory Input$ListFilterInputTypeOfAssetImageFilterInput({
    Input$AssetImageFilterInput? none,
    Input$AssetImageFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetImageFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetImageFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfAssetImageFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetImageFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetImageFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetImageFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetImageFilterInput? get none =>
      (_$data['none'] as Input$AssetImageFilterInput?);

  Input$AssetImageFilterInput? get some =>
      (_$data['some'] as Input$AssetImageFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput<
          Input$ListFilterInputTypeOfAssetImageFilterInput>
      get copyWith => CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListFilterInputTypeOfAssetImageFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput<TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput(
    Input$ListFilterInputTypeOfAssetImageFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfAssetImageFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetImageFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetImageFilterInput;

  TRes call({
    Input$AssetImageFilterInput? none,
    Input$AssetImageFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetImageFilterInput<TRes> get none;
  CopyWith$Input$AssetImageFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetImageFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetImageFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetImageFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfAssetImageFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfAssetImageFilterInput._({
        ..._instance._$data,
        if (none != _undefined) 'none': (none as Input$AssetImageFilterInput?),
        if (some != _undefined) 'some': (some as Input$AssetImageFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetImageFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetImageFilterInput.stub(_then(_instance))
        : CopyWith$Input$AssetImageFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetImageFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetImageFilterInput.stub(_then(_instance))
        : CopyWith$Input$AssetImageFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetImageFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfAssetImageFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetImageFilterInput(this._res);

  TRes _res;

  call({
    Input$AssetImageFilterInput? none,
    Input$AssetImageFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetImageFilterInput<TRes> get none =>
      CopyWith$Input$AssetImageFilterInput.stub(_res);

  CopyWith$Input$AssetImageFilterInput<TRes> get some =>
      CopyWith$Input$AssetImageFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput {
  factory Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput({
    Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput? none,
    Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
          ._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput._(
      this._$data);

  factory Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
        ._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput? get none =>
      (_$data['none']
          as Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput?);

  Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput? get some =>
      (_$data['some']
          as Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
          Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput(
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
        instance,
    TRes Function(
            Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput;

  TRes call({
    Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput? none,
    Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput? some,
    bool? any,
  });
  CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<TRes>
      get none;
  CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<TRes>
      get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
      _instance;

  final TRes Function(
          Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(
          Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput
              ._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none
              as Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput?),
        if (some != _undefined)
          'some': (some
              as Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<TRes>
      get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<TRes>
      get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndStartAndEndTimeFilterInput(
      this._res);

  TRes _res;

  call({
    Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput? none,
    Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<TRes>
      get none =>
          CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.stub(
              _res);

  CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<TRes>
      get some =>
          CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.stub(
              _res);
}

class Input$ListStringOperationFilterInput {
  factory Input$ListStringOperationFilterInput({
    Input$StringOperationFilterInput? none,
    Input$StringOperationFilterInput? some,
    bool? any,
  }) =>
      Input$ListStringOperationFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListStringOperationFilterInput._(this._$data);

  factory Input$ListStringOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListStringOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringOperationFilterInput? get none =>
      (_$data['none'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get some =>
      (_$data['some'] as Input$StringOperationFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListStringOperationFilterInput<
          Input$ListStringOperationFilterInput>
      get copyWith => CopyWith$Input$ListStringOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListStringOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListStringOperationFilterInput<TRes> {
  factory CopyWith$Input$ListStringOperationFilterInput(
    Input$ListStringOperationFilterInput instance,
    TRes Function(Input$ListStringOperationFilterInput) then,
  ) = _CopyWithImpl$Input$ListStringOperationFilterInput;

  factory CopyWith$Input$ListStringOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ListStringOperationFilterInput;

  TRes call({
    Input$StringOperationFilterInput? none,
    Input$StringOperationFilterInput? some,
    bool? any,
  });
  CopyWith$Input$StringOperationFilterInput<TRes> get none;
  CopyWith$Input$StringOperationFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListStringOperationFilterInput<TRes>
    implements CopyWith$Input$ListStringOperationFilterInput<TRes> {
  _CopyWithImpl$Input$ListStringOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListStringOperationFilterInput _instance;

  final TRes Function(Input$ListStringOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListStringOperationFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$StringOperationFilterInput?),
        if (some != _undefined)
          'some': (some as Input$StringOperationFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$StringOperationFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListStringOperationFilterInput<TRes>
    implements CopyWith$Input$ListStringOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListStringOperationFilterInput(this._res);

  TRes _res;

  call({
    Input$StringOperationFilterInput? none,
    Input$StringOperationFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get none =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get some =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$DateTimeOperationFilterInput {
  factory Input$DateTimeOperationFilterInput({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  }) =>
      Input$DateTimeOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$DateTimeOperationFilterInput._(this._$data);

  factory Input$DateTimeOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : DateTime.parse((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : DateTime.parse((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => e == null ? null : DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => e == null ? null : DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : DateTime.parse((l$gt as String));
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] =
          l$ngt == null ? null : DateTime.parse((l$ngt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : DateTime.parse((l$gte as String));
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] =
          l$ngte == null ? null : DateTime.parse((l$ngte as String));
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : DateTime.parse((l$lt as String));
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] =
          l$nlt == null ? null : DateTime.parse((l$nlt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : DateTime.parse((l$lte as String));
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] =
          l$nlte == null ? null : DateTime.parse((l$nlte as String));
    }
    return Input$DateTimeOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get neq => (_$data['neq'] as DateTime?);

  List<DateTime?>? get $in => (_$data['in'] as List<DateTime?>?);

  List<DateTime?>? get nin => (_$data['nin'] as List<DateTime?>?);

  DateTime? get gt => (_$data['gt'] as DateTime?);

  DateTime? get ngt => (_$data['ngt'] as DateTime?);

  DateTime? get gte => (_$data['gte'] as DateTime?);

  DateTime? get ngte => (_$data['ngte'] as DateTime?);

  DateTime? get lt => (_$data['lt'] as DateTime?);

  DateTime? get nlt => (_$data['nlt'] as DateTime?);

  DateTime? get lte => (_$data['lte'] as DateTime?);

  DateTime? get nlte => (_$data['nlte'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq?.toIso8601String();
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq?.toIso8601String();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e?.toIso8601String()).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e?.toIso8601String()).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt?.toIso8601String();
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt?.toIso8601String();
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte?.toIso8601String();
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte?.toIso8601String();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt?.toIso8601String();
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt?.toIso8601String();
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte?.toIso8601String();
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$DateTimeOperationFilterInput<
          Input$DateTimeOperationFilterInput>
      get copyWith => CopyWith$Input$DateTimeOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateTimeOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  factory CopyWith$Input$DateTimeOperationFilterInput(
    Input$DateTimeOperationFilterInput instance,
    TRes Function(Input$DateTimeOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DateTimeOperationFilterInput;

  factory CopyWith$Input$DateTimeOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeOperationFilterInput;

  TRes call({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  });
}

class _CopyWithImpl$Input$DateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DateTimeOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DateTimeOperationFilterInput _instance;

  final TRes Function(Input$DateTimeOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$DateTimeOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as DateTime?),
        if (neq != _undefined) 'neq': (neq as DateTime?),
        if ($in != _undefined) 'in': ($in as List<DateTime?>?),
        if (nin != _undefined) 'nin': (nin as List<DateTime?>?),
        if (gt != _undefined) 'gt': (gt as DateTime?),
        if (ngt != _undefined) 'ngt': (ngt as DateTime?),
        if (gte != _undefined) 'gte': (gte as DateTime?),
        if (ngte != _undefined) 'ngte': (ngte as DateTime?),
        if (lt != _undefined) 'lt': (lt as DateTime?),
        if (nlt != _undefined) 'nlt': (nlt as DateTime?),
        if (lte != _undefined) 'lte': (lte as DateTime?),
        if (nlte != _undefined) 'nlte': (nlte as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$DateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DateTimeOperationFilterInput(this._res);

  TRes _res;

  call({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  }) =>
      _res;
}

class Input$ListFilterInputTypeOfListValueFilterInput {
  factory Input$ListFilterInputTypeOfListValueFilterInput({
    Input$ListValueFilterInput? none,
    Input$ListValueFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfListValueFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfListValueFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfListValueFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$ListValueFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$ListValueFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfListValueFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ListValueFilterInput? get none =>
      (_$data['none'] as Input$ListValueFilterInput?);

  Input$ListValueFilterInput? get some =>
      (_$data['some'] as Input$ListValueFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfListValueFilterInput<
          Input$ListFilterInputTypeOfListValueFilterInput>
      get copyWith => CopyWith$Input$ListFilterInputTypeOfListValueFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListFilterInputTypeOfListValueFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfListValueFilterInput<TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfListValueFilterInput(
    Input$ListFilterInputTypeOfListValueFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfListValueFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfListValueFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfListValueFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfListValueFilterInput;

  TRes call({
    Input$ListValueFilterInput? none,
    Input$ListValueFilterInput? some,
    bool? any,
  });
  CopyWith$Input$ListValueFilterInput<TRes> get none;
  CopyWith$Input$ListValueFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfListValueFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfListValueFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfListValueFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfListValueFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfListValueFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfListValueFilterInput._({
        ..._instance._$data,
        if (none != _undefined) 'none': (none as Input$ListValueFilterInput?),
        if (some != _undefined) 'some': (some as Input$ListValueFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$ListValueFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$ListValueFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListValueFilterInput(local$none, (e) => call(none: e));
  }

  CopyWith$Input$ListValueFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$ListValueFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListValueFilterInput(local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfListValueFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfListValueFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfListValueFilterInput(this._res);

  TRes _res;

  call({
    Input$ListValueFilterInput? none,
    Input$ListValueFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$ListValueFilterInput<TRes> get none =>
      CopyWith$Input$ListValueFilterInput.stub(_res);

  CopyWith$Input$ListValueFilterInput<TRes> get some =>
      CopyWith$Input$ListValueFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput {
  factory Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput({
    Input$AssetTemplatePropertyQueryFilterInput? none,
    Input$AssetTemplatePropertyQueryFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetTemplatePropertyQueryFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetTemplatePropertyQueryFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetTemplatePropertyQueryFilterInput? get none =>
      (_$data['none'] as Input$AssetTemplatePropertyQueryFilterInput?);

  Input$AssetTemplatePropertyQueryFilterInput? get some =>
      (_$data['some'] as Input$AssetTemplatePropertyQueryFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput<
          Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput(
    Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput;

  TRes call({
    Input$AssetTemplatePropertyQueryFilterInput? none,
    Input$AssetTemplatePropertyQueryFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetTemplatePropertyQueryFilterInput<TRes> get none;
  CopyWith$Input$AssetTemplatePropertyQueryFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput _instance;

  final TRes Function(
      Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$AssetTemplatePropertyQueryFilterInput?),
        if (some != _undefined)
          'some': (some as Input$AssetTemplatePropertyQueryFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetTemplatePropertyQueryFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetTemplatePropertyQueryFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetTemplatePropertyQueryFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetTemplatePropertyQueryFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetTemplatePropertyQueryFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetTemplatePropertyQueryFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplatePropertyFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AssetTemplatePropertyQueryFilterInput? none,
    Input$AssetTemplatePropertyQueryFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetTemplatePropertyQueryFilterInput<TRes> get none =>
      CopyWith$Input$AssetTemplatePropertyQueryFilterInput.stub(_res);

  CopyWith$Input$AssetTemplatePropertyQueryFilterInput<TRes> get some =>
      CopyWith$Input$AssetTemplatePropertyQueryFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput {
  factory Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput({
    Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput? none,
    Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
          ._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput._(
      this._$data);

  factory Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
              .fromJson((l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
              .fromJson((l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
        ._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?
      get none => (_$data['none']
          as Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?);

  Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?
      get some => (_$data['some']
          as Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
          Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
    Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
        instance,
    TRes Function(
            Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput;

  TRes call({
    Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput? none,
    Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
      TRes> get none;
  CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
      TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
      _instance;

  final TRes Function(
          Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(
          Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
              ._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none
              as Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?),
        if (some != _undefined)
          'some': (some
              as Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
      TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
      TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput? none,
    Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
          TRes>
      get none =>
          CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
              .stub(_res);

  CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
          TRes>
      get some =>
          CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
              .stub(_res);
}

class Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput {
  factory Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput({
    Input$AssetTemplateSyncTargetFilterInput? none,
    Input$AssetTemplateSyncTargetFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetTemplateSyncTargetFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetTemplateSyncTargetFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetTemplateSyncTargetFilterInput? get none =>
      (_$data['none'] as Input$AssetTemplateSyncTargetFilterInput?);

  Input$AssetTemplateSyncTargetFilterInput? get some =>
      (_$data['some'] as Input$AssetTemplateSyncTargetFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput<
          Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput(
    Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput;

  TRes call({
    Input$AssetTemplateSyncTargetFilterInput? none,
    Input$AssetTemplateSyncTargetFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetTemplateSyncTargetFilterInput<TRes> get none;
  CopyWith$Input$AssetTemplateSyncTargetFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput _instance;

  final TRes Function(
      Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$AssetTemplateSyncTargetFilterInput?),
        if (some != _undefined)
          'some': (some as Input$AssetTemplateSyncTargetFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetTemplateSyncTargetFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetTemplateSyncTargetFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetTemplateSyncTargetFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetTemplateSyncTargetFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetTemplateSyncTargetFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetTemplateSyncTargetFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplateSyncTargetFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AssetTemplateSyncTargetFilterInput? none,
    Input$AssetTemplateSyncTargetFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetTemplateSyncTargetFilterInput<TRes> get none =>
      CopyWith$Input$AssetTemplateSyncTargetFilterInput.stub(_res);

  CopyWith$Input$AssetTemplateSyncTargetFilterInput<TRes> get some =>
      CopyWith$Input$AssetTemplateSyncTargetFilterInput.stub(_res);
}

class Input$AssetPropertyFilterInput {
  factory Input$AssetPropertyFilterInput({
    List<Input$AssetPropertyFilterInput>? and,
    List<Input$AssetPropertyFilterInput>? or,
    Input$StringOperationFilterInput? templatePropertyId,
    Input$StringOperationFilterInput? propertyValue,
    Input$FloatOperationFilterInput? propertyValueNumber,
    Input$BooleanOperationFilterInput? userCanView,
    Input$BooleanOperationFilterInput? userCanUpdate,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$BooleanOperationFilterInput? isMandatory,
    Input$BooleanOperationFilterInput? active,
    Input$IntOperationFilterInput? sequence,
    Input$ListStringOperationFilterInput? viewerGroupIds,
    Input$ListStringOperationFilterInput? updaterGroupIds,
  }) =>
      Input$AssetPropertyFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (templatePropertyId != null)
          r'templatePropertyId': templatePropertyId,
        if (propertyValue != null) r'propertyValue': propertyValue,
        if (propertyValueNumber != null)
          r'propertyValueNumber': propertyValueNumber,
        if (userCanView != null) r'userCanView': userCanView,
        if (userCanUpdate != null) r'userCanUpdate': userCanUpdate,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (dataType != null) r'dataType': dataType,
        if (isMandatory != null) r'isMandatory': isMandatory,
        if (active != null) r'active': active,
        if (sequence != null) r'sequence': sequence,
        if (viewerGroupIds != null) r'viewerGroupIds': viewerGroupIds,
        if (updaterGroupIds != null) r'updaterGroupIds': updaterGroupIds,
      });

  Input$AssetPropertyFilterInput._(this._$data);

  factory Input$AssetPropertyFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AssetPropertyFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AssetPropertyFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('templatePropertyId')) {
      final l$templatePropertyId = data['templatePropertyId'];
      result$data['templatePropertyId'] = l$templatePropertyId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$templatePropertyId as Map<String, dynamic>));
    }
    if (data.containsKey('propertyValue')) {
      final l$propertyValue = data['propertyValue'];
      result$data['propertyValue'] = l$propertyValue == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$propertyValue as Map<String, dynamic>));
    }
    if (data.containsKey('propertyValueNumber')) {
      final l$propertyValueNumber = data['propertyValueNumber'];
      result$data['propertyValueNumber'] = l$propertyValueNumber == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$propertyValueNumber as Map<String, dynamic>));
    }
    if (data.containsKey('userCanView')) {
      final l$userCanView = data['userCanView'];
      result$data['userCanView'] = l$userCanView == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$userCanView as Map<String, dynamic>));
    }
    if (data.containsKey('userCanUpdate')) {
      final l$userCanUpdate = data['userCanUpdate'];
      result$data['userCanUpdate'] = l$userCanUpdate == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$userCanUpdate as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('dataType')) {
      final l$dataType = data['dataType'];
      result$data['dataType'] = l$dataType == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$dataType as Map<String, dynamic>));
    }
    if (data.containsKey('isMandatory')) {
      final l$isMandatory = data['isMandatory'];
      result$data['isMandatory'] = l$isMandatory == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$isMandatory as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('sequence')) {
      final l$sequence = data['sequence'];
      result$data['sequence'] = l$sequence == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$sequence as Map<String, dynamic>));
    }
    if (data.containsKey('viewerGroupIds')) {
      final l$viewerGroupIds = data['viewerGroupIds'];
      result$data['viewerGroupIds'] = l$viewerGroupIds == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$viewerGroupIds as Map<String, dynamic>));
    }
    if (data.containsKey('updaterGroupIds')) {
      final l$updaterGroupIds = data['updaterGroupIds'];
      result$data['updaterGroupIds'] = l$updaterGroupIds == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$updaterGroupIds as Map<String, dynamic>));
    }
    return Input$AssetPropertyFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetPropertyFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetPropertyFilterInput>?);

  List<Input$AssetPropertyFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetPropertyFilterInput>?);

  Input$StringOperationFilterInput? get templatePropertyId =>
      (_$data['templatePropertyId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get propertyValue =>
      (_$data['propertyValue'] as Input$StringOperationFilterInput?);

  Input$FloatOperationFilterInput? get propertyValueNumber =>
      (_$data['propertyValueNumber'] as Input$FloatOperationFilterInput?);

  Input$BooleanOperationFilterInput? get userCanView =>
      (_$data['userCanView'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get userCanUpdate =>
      (_$data['userCanUpdate'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get dataType =>
      (_$data['dataType'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get isMandatory =>
      (_$data['isMandatory'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$IntOperationFilterInput? get sequence =>
      (_$data['sequence'] as Input$IntOperationFilterInput?);

  Input$ListStringOperationFilterInput? get viewerGroupIds =>
      (_$data['viewerGroupIds'] as Input$ListStringOperationFilterInput?);

  Input$ListStringOperationFilterInput? get updaterGroupIds =>
      (_$data['updaterGroupIds'] as Input$ListStringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('templatePropertyId')) {
      final l$templatePropertyId = templatePropertyId;
      result$data['templatePropertyId'] = l$templatePropertyId?.toJson();
    }
    if (_$data.containsKey('propertyValue')) {
      final l$propertyValue = propertyValue;
      result$data['propertyValue'] = l$propertyValue?.toJson();
    }
    if (_$data.containsKey('propertyValueNumber')) {
      final l$propertyValueNumber = propertyValueNumber;
      result$data['propertyValueNumber'] = l$propertyValueNumber?.toJson();
    }
    if (_$data.containsKey('userCanView')) {
      final l$userCanView = userCanView;
      result$data['userCanView'] = l$userCanView?.toJson();
    }
    if (_$data.containsKey('userCanUpdate')) {
      final l$userCanUpdate = userCanUpdate;
      result$data['userCanUpdate'] = l$userCanUpdate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('dataType')) {
      final l$dataType = dataType;
      result$data['dataType'] = l$dataType?.toJson();
    }
    if (_$data.containsKey('isMandatory')) {
      final l$isMandatory = isMandatory;
      result$data['isMandatory'] = l$isMandatory?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('sequence')) {
      final l$sequence = sequence;
      result$data['sequence'] = l$sequence?.toJson();
    }
    if (_$data.containsKey('viewerGroupIds')) {
      final l$viewerGroupIds = viewerGroupIds;
      result$data['viewerGroupIds'] = l$viewerGroupIds?.toJson();
    }
    if (_$data.containsKey('updaterGroupIds')) {
      final l$updaterGroupIds = updaterGroupIds;
      result$data['updaterGroupIds'] = l$updaterGroupIds?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetPropertyFilterInput<Input$AssetPropertyFilterInput>
      get copyWith => CopyWith$Input$AssetPropertyFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetPropertyFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$templatePropertyId = templatePropertyId;
    final lOther$templatePropertyId = other.templatePropertyId;
    if (_$data.containsKey('templatePropertyId') !=
        other._$data.containsKey('templatePropertyId')) {
      return false;
    }
    if (l$templatePropertyId != lOther$templatePropertyId) {
      return false;
    }
    final l$propertyValue = propertyValue;
    final lOther$propertyValue = other.propertyValue;
    if (_$data.containsKey('propertyValue') !=
        other._$data.containsKey('propertyValue')) {
      return false;
    }
    if (l$propertyValue != lOther$propertyValue) {
      return false;
    }
    final l$propertyValueNumber = propertyValueNumber;
    final lOther$propertyValueNumber = other.propertyValueNumber;
    if (_$data.containsKey('propertyValueNumber') !=
        other._$data.containsKey('propertyValueNumber')) {
      return false;
    }
    if (l$propertyValueNumber != lOther$propertyValueNumber) {
      return false;
    }
    final l$userCanView = userCanView;
    final lOther$userCanView = other.userCanView;
    if (_$data.containsKey('userCanView') !=
        other._$data.containsKey('userCanView')) {
      return false;
    }
    if (l$userCanView != lOther$userCanView) {
      return false;
    }
    final l$userCanUpdate = userCanUpdate;
    final lOther$userCanUpdate = other.userCanUpdate;
    if (_$data.containsKey('userCanUpdate') !=
        other._$data.containsKey('userCanUpdate')) {
      return false;
    }
    if (l$userCanUpdate != lOther$userCanUpdate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (_$data.containsKey('dataType') !=
        other._$data.containsKey('dataType')) {
      return false;
    }
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$isMandatory = isMandatory;
    final lOther$isMandatory = other.isMandatory;
    if (_$data.containsKey('isMandatory') !=
        other._$data.containsKey('isMandatory')) {
      return false;
    }
    if (l$isMandatory != lOther$isMandatory) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (_$data.containsKey('sequence') !=
        other._$data.containsKey('sequence')) {
      return false;
    }
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$viewerGroupIds = viewerGroupIds;
    final lOther$viewerGroupIds = other.viewerGroupIds;
    if (_$data.containsKey('viewerGroupIds') !=
        other._$data.containsKey('viewerGroupIds')) {
      return false;
    }
    if (l$viewerGroupIds != lOther$viewerGroupIds) {
      return false;
    }
    final l$updaterGroupIds = updaterGroupIds;
    final lOther$updaterGroupIds = other.updaterGroupIds;
    if (_$data.containsKey('updaterGroupIds') !=
        other._$data.containsKey('updaterGroupIds')) {
      return false;
    }
    if (l$updaterGroupIds != lOther$updaterGroupIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$templatePropertyId = templatePropertyId;
    final l$propertyValue = propertyValue;
    final l$propertyValueNumber = propertyValueNumber;
    final l$userCanView = userCanView;
    final l$userCanUpdate = userCanUpdate;
    final l$id = id;
    final l$name = name;
    final l$dataType = dataType;
    final l$isMandatory = isMandatory;
    final l$active = active;
    final l$sequence = sequence;
    final l$viewerGroupIds = viewerGroupIds;
    final l$updaterGroupIds = updaterGroupIds;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('templatePropertyId')
          ? l$templatePropertyId
          : const {},
      _$data.containsKey('propertyValue') ? l$propertyValue : const {},
      _$data.containsKey('propertyValueNumber')
          ? l$propertyValueNumber
          : const {},
      _$data.containsKey('userCanView') ? l$userCanView : const {},
      _$data.containsKey('userCanUpdate') ? l$userCanUpdate : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('dataType') ? l$dataType : const {},
      _$data.containsKey('isMandatory') ? l$isMandatory : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('sequence') ? l$sequence : const {},
      _$data.containsKey('viewerGroupIds') ? l$viewerGroupIds : const {},
      _$data.containsKey('updaterGroupIds') ? l$updaterGroupIds : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetPropertyFilterInput<TRes> {
  factory CopyWith$Input$AssetPropertyFilterInput(
    Input$AssetPropertyFilterInput instance,
    TRes Function(Input$AssetPropertyFilterInput) then,
  ) = _CopyWithImpl$Input$AssetPropertyFilterInput;

  factory CopyWith$Input$AssetPropertyFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetPropertyFilterInput;

  TRes call({
    List<Input$AssetPropertyFilterInput>? and,
    List<Input$AssetPropertyFilterInput>? or,
    Input$StringOperationFilterInput? templatePropertyId,
    Input$StringOperationFilterInput? propertyValue,
    Input$FloatOperationFilterInput? propertyValueNumber,
    Input$BooleanOperationFilterInput? userCanView,
    Input$BooleanOperationFilterInput? userCanUpdate,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$BooleanOperationFilterInput? isMandatory,
    Input$BooleanOperationFilterInput? active,
    Input$IntOperationFilterInput? sequence,
    Input$ListStringOperationFilterInput? viewerGroupIds,
    Input$ListStringOperationFilterInput? updaterGroupIds,
  });
  TRes and(
      Iterable<Input$AssetPropertyFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetPropertyFilterInput<
                      Input$AssetPropertyFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetPropertyFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetPropertyFilterInput<
                      Input$AssetPropertyFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get templatePropertyId;
  CopyWith$Input$StringOperationFilterInput<TRes> get propertyValue;
  CopyWith$Input$FloatOperationFilterInput<TRes> get propertyValueNumber;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get userCanView;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get userCanUpdate;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get dataType;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get isMandatory;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$IntOperationFilterInput<TRes> get sequence;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get viewerGroupIds;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get updaterGroupIds;
}

class _CopyWithImpl$Input$AssetPropertyFilterInput<TRes>
    implements CopyWith$Input$AssetPropertyFilterInput<TRes> {
  _CopyWithImpl$Input$AssetPropertyFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetPropertyFilterInput _instance;

  final TRes Function(Input$AssetPropertyFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? templatePropertyId = _undefined,
    Object? propertyValue = _undefined,
    Object? propertyValueNumber = _undefined,
    Object? userCanView = _undefined,
    Object? userCanUpdate = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? isMandatory = _undefined,
    Object? active = _undefined,
    Object? sequence = _undefined,
    Object? viewerGroupIds = _undefined,
    Object? updaterGroupIds = _undefined,
  }) =>
      _then(Input$AssetPropertyFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AssetPropertyFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AssetPropertyFilterInput>?),
        if (templatePropertyId != _undefined)
          'templatePropertyId':
              (templatePropertyId as Input$StringOperationFilterInput?),
        if (propertyValue != _undefined)
          'propertyValue': (propertyValue as Input$StringOperationFilterInput?),
        if (propertyValueNumber != _undefined)
          'propertyValueNumber':
              (propertyValueNumber as Input$FloatOperationFilterInput?),
        if (userCanView != _undefined)
          'userCanView': (userCanView as Input$BooleanOperationFilterInput?),
        if (userCanUpdate != _undefined)
          'userCanUpdate':
              (userCanUpdate as Input$BooleanOperationFilterInput?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (dataType != _undefined)
          'dataType': (dataType as Input$StringOperationFilterInput?),
        if (isMandatory != _undefined)
          'isMandatory': (isMandatory as Input$BooleanOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (sequence != _undefined)
          'sequence': (sequence as Input$IntOperationFilterInput?),
        if (viewerGroupIds != _undefined)
          'viewerGroupIds':
              (viewerGroupIds as Input$ListStringOperationFilterInput?),
        if (updaterGroupIds != _undefined)
          'updaterGroupIds':
              (updaterGroupIds as Input$ListStringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetPropertyFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetPropertyFilterInput<
                          Input$AssetPropertyFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$AssetPropertyFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetPropertyFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetPropertyFilterInput<
                          Input$AssetPropertyFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$AssetPropertyFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get templatePropertyId {
    final local$templatePropertyId = _instance.templatePropertyId;
    return local$templatePropertyId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$templatePropertyId, (e) => call(templatePropertyId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get propertyValue {
    final local$propertyValue = _instance.propertyValue;
    return local$propertyValue == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$propertyValue, (e) => call(propertyValue: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get propertyValueNumber {
    final local$propertyValueNumber = _instance.propertyValueNumber;
    return local$propertyValueNumber == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$propertyValueNumber, (e) => call(propertyValueNumber: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get userCanView {
    final local$userCanView = _instance.userCanView;
    return local$userCanView == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$userCanView, (e) => call(userCanView: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get userCanUpdate {
    final local$userCanUpdate = _instance.userCanUpdate;
    return local$userCanUpdate == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$userCanUpdate, (e) => call(userCanUpdate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get dataType {
    final local$dataType = _instance.dataType;
    return local$dataType == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$dataType, (e) => call(dataType: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get isMandatory {
    final local$isMandatory = _instance.isMandatory;
    return local$isMandatory == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$isMandatory, (e) => call(isMandatory: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get sequence {
    final local$sequence = _instance.sequence;
    return local$sequence == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$sequence, (e) => call(sequence: e));
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get viewerGroupIds {
    final local$viewerGroupIds = _instance.viewerGroupIds;
    return local$viewerGroupIds == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$viewerGroupIds, (e) => call(viewerGroupIds: e));
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get updaterGroupIds {
    final local$updaterGroupIds = _instance.updaterGroupIds;
    return local$updaterGroupIds == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$updaterGroupIds, (e) => call(updaterGroupIds: e));
  }
}

class _CopyWithStubImpl$Input$AssetPropertyFilterInput<TRes>
    implements CopyWith$Input$AssetPropertyFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetPropertyFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetPropertyFilterInput>? and,
    List<Input$AssetPropertyFilterInput>? or,
    Input$StringOperationFilterInput? templatePropertyId,
    Input$StringOperationFilterInput? propertyValue,
    Input$FloatOperationFilterInput? propertyValueNumber,
    Input$BooleanOperationFilterInput? userCanView,
    Input$BooleanOperationFilterInput? userCanUpdate,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$BooleanOperationFilterInput? isMandatory,
    Input$BooleanOperationFilterInput? active,
    Input$IntOperationFilterInput? sequence,
    Input$ListStringOperationFilterInput? viewerGroupIds,
    Input$ListStringOperationFilterInput? updaterGroupIds,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get templatePropertyId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get propertyValue =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get propertyValueNumber =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get userCanView =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get userCanUpdate =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get dataType =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get isMandatory =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get sequence =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get viewerGroupIds =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get updaterGroupIds =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);
}

class Input$AssetCounterFilterInput {
  factory Input$AssetCounterFilterInput({
    List<Input$AssetCounterFilterInput>? and,
    List<Input$AssetCounterFilterInput>? or,
    Input$StringOperationFilterInput? assetTemplateCounterId,
    Input$FloatOperationFilterInput? value,
    Input$LongOperationFilterInput? valueTimestamp,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? groupId,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$StringOperationFilterInput? incrementType,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput? triggers,
  }) =>
      Input$AssetCounterFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (assetTemplateCounterId != null)
          r'assetTemplateCounterId': assetTemplateCounterId,
        if (value != null) r'value': value,
        if (valueTimestamp != null) r'valueTimestamp': valueTimestamp,
        if (id != null) r'id': id,
        if (groupId != null) r'groupId': groupId,
        if (key != null) r'key': key,
        if (name != null) r'name': name,
        if (dataType != null) r'dataType': dataType,
        if (incrementType != null) r'incrementType': incrementType,
        if (active != null) r'active': active,
        if (triggers != null) r'triggers': triggers,
      });

  Input$AssetCounterFilterInput._(this._$data);

  factory Input$AssetCounterFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AssetCounterFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AssetCounterFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('assetTemplateCounterId')) {
      final l$assetTemplateCounterId = data['assetTemplateCounterId'];
      result$data['assetTemplateCounterId'] = l$assetTemplateCounterId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$assetTemplateCounterId as Map<String, dynamic>));
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$value as Map<String, dynamic>));
    }
    if (data.containsKey('valueTimestamp')) {
      final l$valueTimestamp = data['valueTimestamp'];
      result$data['valueTimestamp'] = l$valueTimestamp == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$valueTimestamp as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$groupId as Map<String, dynamic>));
    }
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] = l$key == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$key as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('dataType')) {
      final l$dataType = data['dataType'];
      result$data['dataType'] = l$dataType == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$dataType as Map<String, dynamic>));
    }
    if (data.containsKey('incrementType')) {
      final l$incrementType = data['incrementType'];
      result$data['incrementType'] = l$incrementType == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$incrementType as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('triggers')) {
      final l$triggers = data['triggers'];
      result$data['triggers'] = l$triggers == null
          ? null
          : Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput.fromJson(
              (l$triggers as Map<String, dynamic>));
    }
    return Input$AssetCounterFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetCounterFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetCounterFilterInput>?);

  List<Input$AssetCounterFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetCounterFilterInput>?);

  Input$StringOperationFilterInput? get assetTemplateCounterId =>
      (_$data['assetTemplateCounterId'] as Input$StringOperationFilterInput?);

  Input$FloatOperationFilterInput? get value =>
      (_$data['value'] as Input$FloatOperationFilterInput?);

  Input$LongOperationFilterInput? get valueTimestamp =>
      (_$data['valueTimestamp'] as Input$LongOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get groupId =>
      (_$data['groupId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get key =>
      (_$data['key'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get dataType =>
      (_$data['dataType'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get incrementType =>
      (_$data['incrementType'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput? get triggers =>
      (_$data['triggers']
          as Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('assetTemplateCounterId')) {
      final l$assetTemplateCounterId = assetTemplateCounterId;
      result$data['assetTemplateCounterId'] =
          l$assetTemplateCounterId?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    if (_$data.containsKey('valueTimestamp')) {
      final l$valueTimestamp = valueTimestamp;
      result$data['valueTimestamp'] = l$valueTimestamp?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId?.toJson();
    }
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] = l$key?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('dataType')) {
      final l$dataType = dataType;
      result$data['dataType'] = l$dataType?.toJson();
    }
    if (_$data.containsKey('incrementType')) {
      final l$incrementType = incrementType;
      result$data['incrementType'] = l$incrementType?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('triggers')) {
      final l$triggers = triggers;
      result$data['triggers'] = l$triggers?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetCounterFilterInput<Input$AssetCounterFilterInput>
      get copyWith => CopyWith$Input$AssetCounterFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetCounterFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$assetTemplateCounterId = assetTemplateCounterId;
    final lOther$assetTemplateCounterId = other.assetTemplateCounterId;
    if (_$data.containsKey('assetTemplateCounterId') !=
        other._$data.containsKey('assetTemplateCounterId')) {
      return false;
    }
    if (l$assetTemplateCounterId != lOther$assetTemplateCounterId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    final l$valueTimestamp = valueTimestamp;
    final lOther$valueTimestamp = other.valueTimestamp;
    if (_$data.containsKey('valueTimestamp') !=
        other._$data.containsKey('valueTimestamp')) {
      return false;
    }
    if (l$valueTimestamp != lOther$valueTimestamp) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (_$data.containsKey('dataType') !=
        other._$data.containsKey('dataType')) {
      return false;
    }
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$incrementType = incrementType;
    final lOther$incrementType = other.incrementType;
    if (_$data.containsKey('incrementType') !=
        other._$data.containsKey('incrementType')) {
      return false;
    }
    if (l$incrementType != lOther$incrementType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$triggers = triggers;
    final lOther$triggers = other.triggers;
    if (_$data.containsKey('triggers') !=
        other._$data.containsKey('triggers')) {
      return false;
    }
    if (l$triggers != lOther$triggers) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$assetTemplateCounterId = assetTemplateCounterId;
    final l$value = value;
    final l$valueTimestamp = valueTimestamp;
    final l$id = id;
    final l$groupId = groupId;
    final l$key = key;
    final l$name = name;
    final l$dataType = dataType;
    final l$incrementType = incrementType;
    final l$active = active;
    final l$triggers = triggers;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('assetTemplateCounterId')
          ? l$assetTemplateCounterId
          : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('valueTimestamp') ? l$valueTimestamp : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('dataType') ? l$dataType : const {},
      _$data.containsKey('incrementType') ? l$incrementType : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('triggers') ? l$triggers : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetCounterFilterInput<TRes> {
  factory CopyWith$Input$AssetCounterFilterInput(
    Input$AssetCounterFilterInput instance,
    TRes Function(Input$AssetCounterFilterInput) then,
  ) = _CopyWithImpl$Input$AssetCounterFilterInput;

  factory CopyWith$Input$AssetCounterFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetCounterFilterInput;

  TRes call({
    List<Input$AssetCounterFilterInput>? and,
    List<Input$AssetCounterFilterInput>? or,
    Input$StringOperationFilterInput? assetTemplateCounterId,
    Input$FloatOperationFilterInput? value,
    Input$LongOperationFilterInput? valueTimestamp,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? groupId,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$StringOperationFilterInput? incrementType,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput? triggers,
  });
  TRes and(
      Iterable<Input$AssetCounterFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetCounterFilterInput<
                      Input$AssetCounterFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetCounterFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetCounterFilterInput<
                      Input$AssetCounterFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get assetTemplateCounterId;
  CopyWith$Input$FloatOperationFilterInput<TRes> get value;
  CopyWith$Input$LongOperationFilterInput<TRes> get valueTimestamp;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get groupId;
  CopyWith$Input$StringOperationFilterInput<TRes> get key;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get dataType;
  CopyWith$Input$StringOperationFilterInput<TRes> get incrementType;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput<TRes>
      get triggers;
}

class _CopyWithImpl$Input$AssetCounterFilterInput<TRes>
    implements CopyWith$Input$AssetCounterFilterInput<TRes> {
  _CopyWithImpl$Input$AssetCounterFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetCounterFilterInput _instance;

  final TRes Function(Input$AssetCounterFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? assetTemplateCounterId = _undefined,
    Object? value = _undefined,
    Object? valueTimestamp = _undefined,
    Object? id = _undefined,
    Object? groupId = _undefined,
    Object? key = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? incrementType = _undefined,
    Object? active = _undefined,
    Object? triggers = _undefined,
  }) =>
      _then(Input$AssetCounterFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AssetCounterFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AssetCounterFilterInput>?),
        if (assetTemplateCounterId != _undefined)
          'assetTemplateCounterId':
              (assetTemplateCounterId as Input$StringOperationFilterInput?),
        if (value != _undefined)
          'value': (value as Input$FloatOperationFilterInput?),
        if (valueTimestamp != _undefined)
          'valueTimestamp': (valueTimestamp as Input$LongOperationFilterInput?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (groupId != _undefined)
          'groupId': (groupId as Input$StringOperationFilterInput?),
        if (key != _undefined)
          'key': (key as Input$StringOperationFilterInput?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (dataType != _undefined)
          'dataType': (dataType as Input$StringOperationFilterInput?),
        if (incrementType != _undefined)
          'incrementType': (incrementType as Input$StringOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (triggers != _undefined)
          'triggers': (triggers
              as Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetCounterFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetCounterFilterInput<
                          Input$AssetCounterFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$AssetCounterFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetCounterFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetCounterFilterInput<
                          Input$AssetCounterFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$AssetCounterFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get assetTemplateCounterId {
    final local$assetTemplateCounterId = _instance.assetTemplateCounterId;
    return local$assetTemplateCounterId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$assetTemplateCounterId,
            (e) => call(assetTemplateCounterId: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$value, (e) => call(value: e));
  }

  CopyWith$Input$LongOperationFilterInput<TRes> get valueTimestamp {
    final local$valueTimestamp = _instance.valueTimestamp;
    return local$valueTimestamp == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$valueTimestamp, (e) => call(valueTimestamp: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get groupId {
    final local$groupId = _instance.groupId;
    return local$groupId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$groupId, (e) => call(groupId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get key {
    final local$key = _instance.key;
    return local$key == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$key, (e) => call(key: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get dataType {
    final local$dataType = _instance.dataType;
    return local$dataType == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$dataType, (e) => call(dataType: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get incrementType {
    final local$incrementType = _instance.incrementType;
    return local$incrementType == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$incrementType, (e) => call(incrementType: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput<TRes>
      get triggers {
    final local$triggers = _instance.triggers;
    return local$triggers == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput(
            local$triggers, (e) => call(triggers: e));
  }
}

class _CopyWithStubImpl$Input$AssetCounterFilterInput<TRes>
    implements CopyWith$Input$AssetCounterFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetCounterFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetCounterFilterInput>? and,
    List<Input$AssetCounterFilterInput>? or,
    Input$StringOperationFilterInput? assetTemplateCounterId,
    Input$FloatOperationFilterInput? value,
    Input$LongOperationFilterInput? valueTimestamp,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? groupId,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$StringOperationFilterInput? incrementType,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput? triggers,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get assetTemplateCounterId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get value =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes> get valueTimestamp =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get groupId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get key =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get dataType =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get incrementType =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput<TRes>
      get triggers =>
          CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput
              .stub(_res);
}

class Input$AssetImageFilterInput {
  factory Input$AssetImageFilterInput({
    List<Input$AssetImageFilterInput>? and,
    List<Input$AssetImageFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? filename,
    Input$StringOperationFilterInput? url,
    Input$StringOperationFilterInput? comments,
  }) =>
      Input$AssetImageFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (filename != null) r'filename': filename,
        if (url != null) r'url': url,
        if (comments != null) r'comments': comments,
      });

  Input$AssetImageFilterInput._(this._$data);

  factory Input$AssetImageFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$AssetImageFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$AssetImageFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('filename')) {
      final l$filename = data['filename'];
      result$data['filename'] = l$filename == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$filename as Map<String, dynamic>));
    }
    if (data.containsKey('url')) {
      final l$url = data['url'];
      result$data['url'] = l$url == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$url as Map<String, dynamic>));
    }
    if (data.containsKey('comments')) {
      final l$comments = data['comments'];
      result$data['comments'] = l$comments == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$comments as Map<String, dynamic>));
    }
    return Input$AssetImageFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetImageFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetImageFilterInput>?);

  List<Input$AssetImageFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetImageFilterInput>?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get filename =>
      (_$data['filename'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get url =>
      (_$data['url'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get comments =>
      (_$data['comments'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('filename')) {
      final l$filename = filename;
      result$data['filename'] = l$filename?.toJson();
    }
    if (_$data.containsKey('url')) {
      final l$url = url;
      result$data['url'] = l$url?.toJson();
    }
    if (_$data.containsKey('comments')) {
      final l$comments = comments;
      result$data['comments'] = l$comments?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetImageFilterInput<Input$AssetImageFilterInput>
      get copyWith => CopyWith$Input$AssetImageFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetImageFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$filename = filename;
    final lOther$filename = other.filename;
    if (_$data.containsKey('filename') !=
        other._$data.containsKey('filename')) {
      return false;
    }
    if (l$filename != lOther$filename) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (_$data.containsKey('url') != other._$data.containsKey('url')) {
      return false;
    }
    if (l$url != lOther$url) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (_$data.containsKey('comments') !=
        other._$data.containsKey('comments')) {
      return false;
    }
    if (l$comments != lOther$comments) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$filename = filename;
    final l$url = url;
    final l$comments = comments;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('filename') ? l$filename : const {},
      _$data.containsKey('url') ? l$url : const {},
      _$data.containsKey('comments') ? l$comments : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetImageFilterInput<TRes> {
  factory CopyWith$Input$AssetImageFilterInput(
    Input$AssetImageFilterInput instance,
    TRes Function(Input$AssetImageFilterInput) then,
  ) = _CopyWithImpl$Input$AssetImageFilterInput;

  factory CopyWith$Input$AssetImageFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetImageFilterInput;

  TRes call({
    List<Input$AssetImageFilterInput>? and,
    List<Input$AssetImageFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? filename,
    Input$StringOperationFilterInput? url,
    Input$StringOperationFilterInput? comments,
  });
  TRes and(
      Iterable<Input$AssetImageFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetImageFilterInput<
                      Input$AssetImageFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetImageFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetImageFilterInput<
                      Input$AssetImageFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get filename;
  CopyWith$Input$StringOperationFilterInput<TRes> get url;
  CopyWith$Input$StringOperationFilterInput<TRes> get comments;
}

class _CopyWithImpl$Input$AssetImageFilterInput<TRes>
    implements CopyWith$Input$AssetImageFilterInput<TRes> {
  _CopyWithImpl$Input$AssetImageFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetImageFilterInput _instance;

  final TRes Function(Input$AssetImageFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? filename = _undefined,
    Object? url = _undefined,
    Object? comments = _undefined,
  }) =>
      _then(Input$AssetImageFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AssetImageFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$AssetImageFilterInput>?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (filename != _undefined)
          'filename': (filename as Input$StringOperationFilterInput?),
        if (url != _undefined)
          'url': (url as Input$StringOperationFilterInput?),
        if (comments != _undefined)
          'comments': (comments as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetImageFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetImageFilterInput<
                          Input$AssetImageFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$AssetImageFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetImageFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetImageFilterInput<
                          Input$AssetImageFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$AssetImageFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get filename {
    final local$filename = _instance.filename;
    return local$filename == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$filename, (e) => call(filename: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get url {
    final local$url = _instance.url;
    return local$url == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$url, (e) => call(url: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get comments {
    final local$comments = _instance.comments;
    return local$comments == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$comments, (e) => call(comments: e));
  }
}

class _CopyWithStubImpl$Input$AssetImageFilterInput<TRes>
    implements CopyWith$Input$AssetImageFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetImageFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetImageFilterInput>? and,
    List<Input$AssetImageFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? filename,
    Input$StringOperationFilterInput? url,
    Input$StringOperationFilterInput? comments,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get filename =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get url =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get comments =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput {
  factory Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput({
    List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? and,
    List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? or,
    Input$StringOperationFilterInput? key,
    Input$StartAndEndTimeFilterInput? value,
  }) =>
      Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (key != null) r'key': key,
        if (value != null) r'value': value,
      });

  Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput._(this._$data);

  factory Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] = l$key == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$key as Map<String, dynamic>));
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$StartAndEndTimeFilterInput.fromJson(
              (l$value as Map<String, dynamic>));
    }
    return Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? get and =>
      (_$data['and']
          as List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>?);

  List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? get or =>
      (_$data['or']
          as List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>?);

  Input$StringOperationFilterInput? get key =>
      (_$data['key'] as Input$StringOperationFilterInput?);

  Input$StartAndEndTimeFilterInput? get value =>
      (_$data['value'] as Input$StartAndEndTimeFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] = l$key?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<
          Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>
      get copyWith =>
          CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$key = key;
    final l$value = value;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('value') ? l$value : const {},
    ]);
  }
}

abstract class CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<
    TRes> {
  factory CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput(
    Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput instance,
    TRes Function(Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput) then,
  ) = _CopyWithImpl$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput;

  factory CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput;

  TRes call({
    List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? and,
    List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? or,
    Input$StringOperationFilterInput? key,
    Input$StartAndEndTimeFilterInput? value,
  });
  TRes and(
      Iterable<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? Function(
              Iterable<
                  CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<
                      Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? Function(
              Iterable<
                  CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<
                      Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get key;
  CopyWith$Input$StartAndEndTimeFilterInput<TRes> get value;
}

class _CopyWithImpl$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<
        TRes>
    implements
        CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<TRes> {
  _CopyWithImpl$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput(
    this._instance,
    this._then,
  );

  final Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput _instance;

  final TRes Function(Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? key = _undefined,
    Object? value = _undefined,
  }) =>
      _then(Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<
              Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>?),
        if (or != _undefined)
          'or': (or as List<
              Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>?),
        if (key != _undefined)
          'key': (key as Input$StringOperationFilterInput?),
        if (value != _undefined)
          'value': (value as Input$StartAndEndTimeFilterInput?),
      }));

  TRes and(
          Iterable<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<
                          Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) =>
              CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<
                          Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) =>
              CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get key {
    final local$key = _instance.key;
    return local$key == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$key, (e) => call(key: e));
  }

  CopyWith$Input$StartAndEndTimeFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$StartAndEndTimeFilterInput.stub(_then(_instance))
        : CopyWith$Input$StartAndEndTimeFilterInput(
            local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<
        TRes>
    implements
        CopyWith$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput<TRes> {
  _CopyWithStubImpl$Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput(
      this._res);

  TRes _res;

  call({
    List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? and,
    List<Input$KeyValuePairOfStringAndStartAndEndTimeFilterInput>? or,
    Input$StringOperationFilterInput? key,
    Input$StartAndEndTimeFilterInput? value,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get key =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StartAndEndTimeFilterInput<TRes> get value =>
      CopyWith$Input$StartAndEndTimeFilterInput.stub(_res);
}

class Input$ListValueFilterInput {
  factory Input$ListValueFilterInput({
    List<Input$ListValueFilterInput>? and,
    List<Input$ListValueFilterInput>? or,
    Input$StringOperationFilterInput? text,
    Input$StringOperationFilterInput? value,
    Input$IntOperationFilterInput? orderIndex,
    Input$BooleanOperationFilterInput? active,
  }) =>
      Input$ListValueFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (text != null) r'text': text,
        if (value != null) r'value': value,
        if (orderIndex != null) r'orderIndex': orderIndex,
        if (active != null) r'active': active,
      });

  Input$ListValueFilterInput._(this._$data);

  factory Input$ListValueFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$ListValueFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$ListValueFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = l$text == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$text as Map<String, dynamic>));
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$value as Map<String, dynamic>));
    }
    if (data.containsKey('orderIndex')) {
      final l$orderIndex = data['orderIndex'];
      result$data['orderIndex'] = l$orderIndex == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$orderIndex as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    return Input$ListValueFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ListValueFilterInput>? get and =>
      (_$data['and'] as List<Input$ListValueFilterInput>?);

  List<Input$ListValueFilterInput>? get or =>
      (_$data['or'] as List<Input$ListValueFilterInput>?);

  Input$StringOperationFilterInput? get text =>
      (_$data['text'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get value =>
      (_$data['value'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get orderIndex =>
      (_$data['orderIndex'] as Input$IntOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    if (_$data.containsKey('orderIndex')) {
      final l$orderIndex = orderIndex;
      result$data['orderIndex'] = l$orderIndex?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ListValueFilterInput<Input$ListValueFilterInput>
      get copyWith => CopyWith$Input$ListValueFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListValueFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    final l$orderIndex = orderIndex;
    final lOther$orderIndex = other.orderIndex;
    if (_$data.containsKey('orderIndex') !=
        other._$data.containsKey('orderIndex')) {
      return false;
    }
    if (l$orderIndex != lOther$orderIndex) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$text = text;
    final l$value = value;
    final l$orderIndex = orderIndex;
    final l$active = active;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('orderIndex') ? l$orderIndex : const {},
      _$data.containsKey('active') ? l$active : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListValueFilterInput<TRes> {
  factory CopyWith$Input$ListValueFilterInput(
    Input$ListValueFilterInput instance,
    TRes Function(Input$ListValueFilterInput) then,
  ) = _CopyWithImpl$Input$ListValueFilterInput;

  factory CopyWith$Input$ListValueFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ListValueFilterInput;

  TRes call({
    List<Input$ListValueFilterInput>? and,
    List<Input$ListValueFilterInput>? or,
    Input$StringOperationFilterInput? text,
    Input$StringOperationFilterInput? value,
    Input$IntOperationFilterInput? orderIndex,
    Input$BooleanOperationFilterInput? active,
  });
  TRes and(
      Iterable<Input$ListValueFilterInput>? Function(
              Iterable<
                  CopyWith$Input$ListValueFilterInput<
                      Input$ListValueFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$ListValueFilterInput>? Function(
              Iterable<
                  CopyWith$Input$ListValueFilterInput<
                      Input$ListValueFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get text;
  CopyWith$Input$StringOperationFilterInput<TRes> get value;
  CopyWith$Input$IntOperationFilterInput<TRes> get orderIndex;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
}

class _CopyWithImpl$Input$ListValueFilterInput<TRes>
    implements CopyWith$Input$ListValueFilterInput<TRes> {
  _CopyWithImpl$Input$ListValueFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListValueFilterInput _instance;

  final TRes Function(Input$ListValueFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? text = _undefined,
    Object? value = _undefined,
    Object? orderIndex = _undefined,
    Object? active = _undefined,
  }) =>
      _then(Input$ListValueFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$ListValueFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$ListValueFilterInput>?),
        if (text != _undefined)
          'text': (text as Input$StringOperationFilterInput?),
        if (value != _undefined)
          'value': (value as Input$StringOperationFilterInput?),
        if (orderIndex != _undefined)
          'orderIndex': (orderIndex as Input$IntOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$ListValueFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$ListValueFilterInput<
                          Input$ListValueFilterInput>>?)
              _fn) =>
      call(
          and:
              _fn(_instance.and?.map((e) => CopyWith$Input$ListValueFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$ListValueFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$ListValueFilterInput<
                          Input$ListValueFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$ListValueFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get text {
    final local$text = _instance.text;
    return local$text == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$text, (e) => call(text: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$value, (e) => call(value: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get orderIndex {
    final local$orderIndex = _instance.orderIndex;
    return local$orderIndex == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$orderIndex, (e) => call(orderIndex: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }
}

class _CopyWithStubImpl$Input$ListValueFilterInput<TRes>
    implements CopyWith$Input$ListValueFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListValueFilterInput(this._res);

  TRes _res;

  call({
    List<Input$ListValueFilterInput>? and,
    List<Input$ListValueFilterInput>? or,
    Input$StringOperationFilterInput? text,
    Input$StringOperationFilterInput? value,
    Input$IntOperationFilterInput? orderIndex,
    Input$BooleanOperationFilterInput? active,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get text =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get value =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get orderIndex =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);
}

class Input$AssetTemplatePropertyQueryFilterInput {
  factory Input$AssetTemplatePropertyQueryFilterInput({
    List<Input$AssetTemplatePropertyQueryFilterInput>? and,
    List<Input$AssetTemplatePropertyQueryFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$BooleanOperationFilterInput? isMandatory,
    Input$BooleanOperationFilterInput? active,
    Input$IntOperationFilterInput? sequence,
    Input$ListStringOperationFilterInput? viewerGroupIds,
    Input$ListStringOperationFilterInput? updaterGroupIds,
  }) =>
      Input$AssetTemplatePropertyQueryFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (dataType != null) r'dataType': dataType,
        if (isMandatory != null) r'isMandatory': isMandatory,
        if (active != null) r'active': active,
        if (sequence != null) r'sequence': sequence,
        if (viewerGroupIds != null) r'viewerGroupIds': viewerGroupIds,
        if (updaterGroupIds != null) r'updaterGroupIds': updaterGroupIds,
      });

  Input$AssetTemplatePropertyQueryFilterInput._(this._$data);

  factory Input$AssetTemplatePropertyQueryFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AssetTemplatePropertyQueryFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AssetTemplatePropertyQueryFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('dataType')) {
      final l$dataType = data['dataType'];
      result$data['dataType'] = l$dataType == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$dataType as Map<String, dynamic>));
    }
    if (data.containsKey('isMandatory')) {
      final l$isMandatory = data['isMandatory'];
      result$data['isMandatory'] = l$isMandatory == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$isMandatory as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('sequence')) {
      final l$sequence = data['sequence'];
      result$data['sequence'] = l$sequence == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$sequence as Map<String, dynamic>));
    }
    if (data.containsKey('viewerGroupIds')) {
      final l$viewerGroupIds = data['viewerGroupIds'];
      result$data['viewerGroupIds'] = l$viewerGroupIds == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$viewerGroupIds as Map<String, dynamic>));
    }
    if (data.containsKey('updaterGroupIds')) {
      final l$updaterGroupIds = data['updaterGroupIds'];
      result$data['updaterGroupIds'] = l$updaterGroupIds == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$updaterGroupIds as Map<String, dynamic>));
    }
    return Input$AssetTemplatePropertyQueryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetTemplatePropertyQueryFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetTemplatePropertyQueryFilterInput>?);

  List<Input$AssetTemplatePropertyQueryFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetTemplatePropertyQueryFilterInput>?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get dataType =>
      (_$data['dataType'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get isMandatory =>
      (_$data['isMandatory'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$IntOperationFilterInput? get sequence =>
      (_$data['sequence'] as Input$IntOperationFilterInput?);

  Input$ListStringOperationFilterInput? get viewerGroupIds =>
      (_$data['viewerGroupIds'] as Input$ListStringOperationFilterInput?);

  Input$ListStringOperationFilterInput? get updaterGroupIds =>
      (_$data['updaterGroupIds'] as Input$ListStringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('dataType')) {
      final l$dataType = dataType;
      result$data['dataType'] = l$dataType?.toJson();
    }
    if (_$data.containsKey('isMandatory')) {
      final l$isMandatory = isMandatory;
      result$data['isMandatory'] = l$isMandatory?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('sequence')) {
      final l$sequence = sequence;
      result$data['sequence'] = l$sequence?.toJson();
    }
    if (_$data.containsKey('viewerGroupIds')) {
      final l$viewerGroupIds = viewerGroupIds;
      result$data['viewerGroupIds'] = l$viewerGroupIds?.toJson();
    }
    if (_$data.containsKey('updaterGroupIds')) {
      final l$updaterGroupIds = updaterGroupIds;
      result$data['updaterGroupIds'] = l$updaterGroupIds?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetTemplatePropertyQueryFilterInput<
          Input$AssetTemplatePropertyQueryFilterInput>
      get copyWith => CopyWith$Input$AssetTemplatePropertyQueryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetTemplatePropertyQueryFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (_$data.containsKey('dataType') !=
        other._$data.containsKey('dataType')) {
      return false;
    }
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$isMandatory = isMandatory;
    final lOther$isMandatory = other.isMandatory;
    if (_$data.containsKey('isMandatory') !=
        other._$data.containsKey('isMandatory')) {
      return false;
    }
    if (l$isMandatory != lOther$isMandatory) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (_$data.containsKey('sequence') !=
        other._$data.containsKey('sequence')) {
      return false;
    }
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$viewerGroupIds = viewerGroupIds;
    final lOther$viewerGroupIds = other.viewerGroupIds;
    if (_$data.containsKey('viewerGroupIds') !=
        other._$data.containsKey('viewerGroupIds')) {
      return false;
    }
    if (l$viewerGroupIds != lOther$viewerGroupIds) {
      return false;
    }
    final l$updaterGroupIds = updaterGroupIds;
    final lOther$updaterGroupIds = other.updaterGroupIds;
    if (_$data.containsKey('updaterGroupIds') !=
        other._$data.containsKey('updaterGroupIds')) {
      return false;
    }
    if (l$updaterGroupIds != lOther$updaterGroupIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$name = name;
    final l$dataType = dataType;
    final l$isMandatory = isMandatory;
    final l$active = active;
    final l$sequence = sequence;
    final l$viewerGroupIds = viewerGroupIds;
    final l$updaterGroupIds = updaterGroupIds;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('dataType') ? l$dataType : const {},
      _$data.containsKey('isMandatory') ? l$isMandatory : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('sequence') ? l$sequence : const {},
      _$data.containsKey('viewerGroupIds') ? l$viewerGroupIds : const {},
      _$data.containsKey('updaterGroupIds') ? l$updaterGroupIds : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetTemplatePropertyQueryFilterInput<TRes> {
  factory CopyWith$Input$AssetTemplatePropertyQueryFilterInput(
    Input$AssetTemplatePropertyQueryFilterInput instance,
    TRes Function(Input$AssetTemplatePropertyQueryFilterInput) then,
  ) = _CopyWithImpl$Input$AssetTemplatePropertyQueryFilterInput;

  factory CopyWith$Input$AssetTemplatePropertyQueryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetTemplatePropertyQueryFilterInput;

  TRes call({
    List<Input$AssetTemplatePropertyQueryFilterInput>? and,
    List<Input$AssetTemplatePropertyQueryFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$BooleanOperationFilterInput? isMandatory,
    Input$BooleanOperationFilterInput? active,
    Input$IntOperationFilterInput? sequence,
    Input$ListStringOperationFilterInput? viewerGroupIds,
    Input$ListStringOperationFilterInput? updaterGroupIds,
  });
  TRes and(
      Iterable<Input$AssetTemplatePropertyQueryFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplatePropertyQueryFilterInput<
                      Input$AssetTemplatePropertyQueryFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetTemplatePropertyQueryFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplatePropertyQueryFilterInput<
                      Input$AssetTemplatePropertyQueryFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get dataType;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get isMandatory;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$IntOperationFilterInput<TRes> get sequence;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get viewerGroupIds;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get updaterGroupIds;
}

class _CopyWithImpl$Input$AssetTemplatePropertyQueryFilterInput<TRes>
    implements CopyWith$Input$AssetTemplatePropertyQueryFilterInput<TRes> {
  _CopyWithImpl$Input$AssetTemplatePropertyQueryFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetTemplatePropertyQueryFilterInput _instance;

  final TRes Function(Input$AssetTemplatePropertyQueryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? isMandatory = _undefined,
    Object? active = _undefined,
    Object? sequence = _undefined,
    Object? viewerGroupIds = _undefined,
    Object? updaterGroupIds = _undefined,
  }) =>
      _then(Input$AssetTemplatePropertyQueryFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AssetTemplatePropertyQueryFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AssetTemplatePropertyQueryFilterInput>?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (dataType != _undefined)
          'dataType': (dataType as Input$StringOperationFilterInput?),
        if (isMandatory != _undefined)
          'isMandatory': (isMandatory as Input$BooleanOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (sequence != _undefined)
          'sequence': (sequence as Input$IntOperationFilterInput?),
        if (viewerGroupIds != _undefined)
          'viewerGroupIds':
              (viewerGroupIds as Input$ListStringOperationFilterInput?),
        if (updaterGroupIds != _undefined)
          'updaterGroupIds':
              (updaterGroupIds as Input$ListStringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetTemplatePropertyQueryFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplatePropertyQueryFilterInput<
                          Input$AssetTemplatePropertyQueryFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$AssetTemplatePropertyQueryFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetTemplatePropertyQueryFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplatePropertyQueryFilterInput<
                          Input$AssetTemplatePropertyQueryFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$AssetTemplatePropertyQueryFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get dataType {
    final local$dataType = _instance.dataType;
    return local$dataType == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$dataType, (e) => call(dataType: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get isMandatory {
    final local$isMandatory = _instance.isMandatory;
    return local$isMandatory == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$isMandatory, (e) => call(isMandatory: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get sequence {
    final local$sequence = _instance.sequence;
    return local$sequence == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$sequence, (e) => call(sequence: e));
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get viewerGroupIds {
    final local$viewerGroupIds = _instance.viewerGroupIds;
    return local$viewerGroupIds == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$viewerGroupIds, (e) => call(viewerGroupIds: e));
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get updaterGroupIds {
    final local$updaterGroupIds = _instance.updaterGroupIds;
    return local$updaterGroupIds == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$updaterGroupIds, (e) => call(updaterGroupIds: e));
  }
}

class _CopyWithStubImpl$Input$AssetTemplatePropertyQueryFilterInput<TRes>
    implements CopyWith$Input$AssetTemplatePropertyQueryFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetTemplatePropertyQueryFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetTemplatePropertyQueryFilterInput>? and,
    List<Input$AssetTemplatePropertyQueryFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$BooleanOperationFilterInput? isMandatory,
    Input$BooleanOperationFilterInput? active,
    Input$IntOperationFilterInput? sequence,
    Input$ListStringOperationFilterInput? viewerGroupIds,
    Input$ListStringOperationFilterInput? updaterGroupIds,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get dataType =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get isMandatory =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get sequence =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get viewerGroupIds =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get updaterGroupIds =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);
}

class Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput {
  factory Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput({
    List<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?
        and,
    List<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?
        or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? groupId,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$StringOperationFilterInput? incrementType,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput? triggers,
  }) =>
      Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (groupId != null) r'groupId': groupId,
        if (key != null) r'key': key,
        if (name != null) r'name': name,
        if (dataType != null) r'dataType': dataType,
        if (incrementType != null) r'incrementType': incrementType,
        if (active != null) r'active': active,
        if (triggers != null) r'triggers': triggers,
      });

  Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput._(
      this._$data);

  factory Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
                  .fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$groupId as Map<String, dynamic>));
    }
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] = l$key == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$key as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('dataType')) {
      final l$dataType = data['dataType'];
      result$data['dataType'] = l$dataType == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$dataType as Map<String, dynamic>));
    }
    if (data.containsKey('incrementType')) {
      final l$incrementType = data['incrementType'];
      result$data['incrementType'] = l$incrementType == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$incrementType as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('triggers')) {
      final l$triggers = data['triggers'];
      result$data['triggers'] = l$triggers == null
          ? null
          : Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput
              .fromJson((l$triggers as Map<String, dynamic>));
    }
    return Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?
      get and => (_$data['and'] as List<
          Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?);

  List<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?
      get or => (_$data['or'] as List<
          Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get groupId =>
      (_$data['groupId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get key =>
      (_$data['key'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get dataType =>
      (_$data['dataType'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get incrementType =>
      (_$data['incrementType'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput?
      get triggers => (_$data['triggers']
          as Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId?.toJson();
    }
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] = l$key?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('dataType')) {
      final l$dataType = dataType;
      result$data['dataType'] = l$dataType?.toJson();
    }
    if (_$data.containsKey('incrementType')) {
      final l$incrementType = incrementType;
      result$data['incrementType'] = l$incrementType?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('triggers')) {
      final l$triggers = triggers;
      result$data['triggers'] = l$triggers?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
          Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>
      get copyWith =>
          CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (_$data.containsKey('dataType') !=
        other._$data.containsKey('dataType')) {
      return false;
    }
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$incrementType = incrementType;
    final lOther$incrementType = other.incrementType;
    if (_$data.containsKey('incrementType') !=
        other._$data.containsKey('incrementType')) {
      return false;
    }
    if (l$incrementType != lOther$incrementType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$triggers = triggers;
    final lOther$triggers = other.triggers;
    if (_$data.containsKey('triggers') !=
        other._$data.containsKey('triggers')) {
      return false;
    }
    if (l$triggers != lOther$triggers) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$groupId = groupId;
    final l$key = key;
    final l$name = name;
    final l$dataType = dataType;
    final l$incrementType = incrementType;
    final l$active = active;
    final l$triggers = triggers;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('dataType') ? l$dataType : const {},
      _$data.containsKey('incrementType') ? l$incrementType : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('triggers') ? l$triggers : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
    TRes> {
  factory CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
    Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput instance,
    TRes Function(
            Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput)
        then,
  ) = _CopyWithImpl$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput;

  factory CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput;

  TRes call({
    List<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?
        and,
    List<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?
        or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? groupId,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$StringOperationFilterInput? incrementType,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput? triggers,
  });
  TRes and(
      Iterable<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
                      Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
                      Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get groupId;
  CopyWith$Input$StringOperationFilterInput<TRes> get key;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get dataType;
  CopyWith$Input$StringOperationFilterInput<TRes> get incrementType;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput<
      TRes> get triggers;
}

class _CopyWithImpl$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
        TRes>
    implements
        CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
            TRes> {
  _CopyWithImpl$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput
      _instance;

  final TRes Function(
      Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? groupId = _undefined,
    Object? key = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? incrementType = _undefined,
    Object? active = _undefined,
    Object? triggers = _undefined,
  }) =>
      _then(
          Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<
              Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?),
        if (or != _undefined)
          'or': (or as List<
              Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (groupId != _undefined)
          'groupId': (groupId as Input$StringOperationFilterInput?),
        if (key != _undefined)
          'key': (key as Input$StringOperationFilterInput?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (dataType != _undefined)
          'dataType': (dataType as Input$StringOperationFilterInput?),
        if (incrementType != _undefined)
          'incrementType': (incrementType as Input$StringOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (triggers != _undefined)
          'triggers': (triggers
              as Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
                          Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) =>
              CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
                          Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) =>
              CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get groupId {
    final local$groupId = _instance.groupId;
    return local$groupId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$groupId, (e) => call(groupId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get key {
    final local$key = _instance.key;
    return local$key == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$key, (e) => call(key: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get dataType {
    final local$dataType = _instance.dataType;
    return local$dataType == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$dataType, (e) => call(dataType: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get incrementType {
    final local$incrementType = _instance.incrementType;
    return local$incrementType == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$incrementType, (e) => call(incrementType: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput<
      TRes> get triggers {
    final local$triggers = _instance.triggers;
    return local$triggers == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput(
            local$triggers, (e) => call(triggers: e));
  }
}

class _CopyWithStubImpl$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
        TRes>
    implements
        CopyWith$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput(
      this._res);

  TRes _res;

  call({
    List<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?
        and,
    List<Input$AssetTemplateCounterOfAssetTemplateCounterTriggerFilterInput>?
        or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? groupId,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? dataType,
    Input$StringOperationFilterInput? incrementType,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput? triggers,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get groupId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get key =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get dataType =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get incrementType =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput<
          TRes>
      get triggers =>
          CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput
              .stub(_res);
}

class Input$AssetTemplateSyncTargetFilterInput {
  factory Input$AssetTemplateSyncTargetFilterInput({
    List<Input$AssetTemplateSyncTargetFilterInput>? and,
    List<Input$AssetTemplateSyncTargetFilterInput>? or,
    Input$StringOperationFilterInput? name,
  }) =>
      Input$AssetTemplateSyncTargetFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (name != null) r'name': name,
      });

  Input$AssetTemplateSyncTargetFilterInput._(this._$data);

  factory Input$AssetTemplateSyncTargetFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AssetTemplateSyncTargetFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AssetTemplateSyncTargetFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    return Input$AssetTemplateSyncTargetFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetTemplateSyncTargetFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetTemplateSyncTargetFilterInput>?);

  List<Input$AssetTemplateSyncTargetFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetTemplateSyncTargetFilterInput>?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetTemplateSyncTargetFilterInput<
          Input$AssetTemplateSyncTargetFilterInput>
      get copyWith => CopyWith$Input$AssetTemplateSyncTargetFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetTemplateSyncTargetFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetTemplateSyncTargetFilterInput<TRes> {
  factory CopyWith$Input$AssetTemplateSyncTargetFilterInput(
    Input$AssetTemplateSyncTargetFilterInput instance,
    TRes Function(Input$AssetTemplateSyncTargetFilterInput) then,
  ) = _CopyWithImpl$Input$AssetTemplateSyncTargetFilterInput;

  factory CopyWith$Input$AssetTemplateSyncTargetFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetTemplateSyncTargetFilterInput;

  TRes call({
    List<Input$AssetTemplateSyncTargetFilterInput>? and,
    List<Input$AssetTemplateSyncTargetFilterInput>? or,
    Input$StringOperationFilterInput? name,
  });
  TRes and(
      Iterable<Input$AssetTemplateSyncTargetFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateSyncTargetFilterInput<
                      Input$AssetTemplateSyncTargetFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetTemplateSyncTargetFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateSyncTargetFilterInput<
                      Input$AssetTemplateSyncTargetFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
}

class _CopyWithImpl$Input$AssetTemplateSyncTargetFilterInput<TRes>
    implements CopyWith$Input$AssetTemplateSyncTargetFilterInput<TRes> {
  _CopyWithImpl$Input$AssetTemplateSyncTargetFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetTemplateSyncTargetFilterInput _instance;

  final TRes Function(Input$AssetTemplateSyncTargetFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$AssetTemplateSyncTargetFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AssetTemplateSyncTargetFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AssetTemplateSyncTargetFilterInput>?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetTemplateSyncTargetFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateSyncTargetFilterInput<
                          Input$AssetTemplateSyncTargetFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$AssetTemplateSyncTargetFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetTemplateSyncTargetFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateSyncTargetFilterInput<
                          Input$AssetTemplateSyncTargetFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$AssetTemplateSyncTargetFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }
}

class _CopyWithStubImpl$Input$AssetTemplateSyncTargetFilterInput<TRes>
    implements CopyWith$Input$AssetTemplateSyncTargetFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetTemplateSyncTargetFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetTemplateSyncTargetFilterInput>? and,
    List<Input$AssetTemplateSyncTargetFilterInput>? or,
    Input$StringOperationFilterInput? name,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput {
  factory Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput({
    Input$AssetCounterTriggerFilterInput? none,
    Input$AssetCounterTriggerFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetCounterTriggerFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetCounterTriggerFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetCounterTriggerFilterInput? get none =>
      (_$data['none'] as Input$AssetCounterTriggerFilterInput?);

  Input$AssetCounterTriggerFilterInput? get some =>
      (_$data['some'] as Input$AssetCounterTriggerFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput<
          Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput(
    Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput;

  TRes call({
    Input$AssetCounterTriggerFilterInput? none,
    Input$AssetCounterTriggerFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetCounterTriggerFilterInput<TRes> get none;
  CopyWith$Input$AssetCounterTriggerFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$AssetCounterTriggerFilterInput?),
        if (some != _undefined)
          'some': (some as Input$AssetCounterTriggerFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetCounterTriggerFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetCounterTriggerFilterInput.stub(_then(_instance))
        : CopyWith$Input$AssetCounterTriggerFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetCounterTriggerFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetCounterTriggerFilterInput.stub(_then(_instance))
        : CopyWith$Input$AssetCounterTriggerFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterTriggerFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AssetCounterTriggerFilterInput? none,
    Input$AssetCounterTriggerFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetCounterTriggerFilterInput<TRes> get none =>
      CopyWith$Input$AssetCounterTriggerFilterInput.stub(_res);

  CopyWith$Input$AssetCounterTriggerFilterInput<TRes> get some =>
      CopyWith$Input$AssetCounterTriggerFilterInput.stub(_res);
}

class Input$StartAndEndTimeFilterInput {
  factory Input$StartAndEndTimeFilterInput({
    List<Input$StartAndEndTimeFilterInput>? and,
    List<Input$StartAndEndTimeFilterInput>? or,
    Input$StringOperationFilterInput? start,
    Input$StringOperationFilterInput? end,
  }) =>
      Input$StartAndEndTimeFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (start != null) r'start': start,
        if (end != null) r'end': end,
      });

  Input$StartAndEndTimeFilterInput._(this._$data);

  factory Input$StartAndEndTimeFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$StartAndEndTimeFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$StartAndEndTimeFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('start')) {
      final l$start = data['start'];
      result$data['start'] = l$start == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$start as Map<String, dynamic>));
    }
    if (data.containsKey('end')) {
      final l$end = data['end'];
      result$data['end'] = l$end == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$end as Map<String, dynamic>));
    }
    return Input$StartAndEndTimeFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$StartAndEndTimeFilterInput>? get and =>
      (_$data['and'] as List<Input$StartAndEndTimeFilterInput>?);

  List<Input$StartAndEndTimeFilterInput>? get or =>
      (_$data['or'] as List<Input$StartAndEndTimeFilterInput>?);

  Input$StringOperationFilterInput? get start =>
      (_$data['start'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get end =>
      (_$data['end'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('start')) {
      final l$start = start;
      result$data['start'] = l$start?.toJson();
    }
    if (_$data.containsKey('end')) {
      final l$end = end;
      result$data['end'] = l$end?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$StartAndEndTimeFilterInput<Input$StartAndEndTimeFilterInput>
      get copyWith => CopyWith$Input$StartAndEndTimeFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StartAndEndTimeFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$start = start;
    final lOther$start = other.start;
    if (_$data.containsKey('start') != other._$data.containsKey('start')) {
      return false;
    }
    if (l$start != lOther$start) {
      return false;
    }
    final l$end = end;
    final lOther$end = other.end;
    if (_$data.containsKey('end') != other._$data.containsKey('end')) {
      return false;
    }
    if (l$end != lOther$end) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('start') ? l$start : const {},
      _$data.containsKey('end') ? l$end : const {},
    ]);
  }
}

abstract class CopyWith$Input$StartAndEndTimeFilterInput<TRes> {
  factory CopyWith$Input$StartAndEndTimeFilterInput(
    Input$StartAndEndTimeFilterInput instance,
    TRes Function(Input$StartAndEndTimeFilterInput) then,
  ) = _CopyWithImpl$Input$StartAndEndTimeFilterInput;

  factory CopyWith$Input$StartAndEndTimeFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StartAndEndTimeFilterInput;

  TRes call({
    List<Input$StartAndEndTimeFilterInput>? and,
    List<Input$StartAndEndTimeFilterInput>? or,
    Input$StringOperationFilterInput? start,
    Input$StringOperationFilterInput? end,
  });
  TRes and(
      Iterable<Input$StartAndEndTimeFilterInput>? Function(
              Iterable<
                  CopyWith$Input$StartAndEndTimeFilterInput<
                      Input$StartAndEndTimeFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$StartAndEndTimeFilterInput>? Function(
              Iterable<
                  CopyWith$Input$StartAndEndTimeFilterInput<
                      Input$StartAndEndTimeFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get start;
  CopyWith$Input$StringOperationFilterInput<TRes> get end;
}

class _CopyWithImpl$Input$StartAndEndTimeFilterInput<TRes>
    implements CopyWith$Input$StartAndEndTimeFilterInput<TRes> {
  _CopyWithImpl$Input$StartAndEndTimeFilterInput(
    this._instance,
    this._then,
  );

  final Input$StartAndEndTimeFilterInput _instance;

  final TRes Function(Input$StartAndEndTimeFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Input$StartAndEndTimeFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$StartAndEndTimeFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$StartAndEndTimeFilterInput>?),
        if (start != _undefined)
          'start': (start as Input$StringOperationFilterInput?),
        if (end != _undefined)
          'end': (end as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$StartAndEndTimeFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$StartAndEndTimeFilterInput<
                          Input$StartAndEndTimeFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$StartAndEndTimeFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$StartAndEndTimeFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$StartAndEndTimeFilterInput<
                          Input$StartAndEndTimeFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$StartAndEndTimeFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get start {
    final local$start = _instance.start;
    return local$start == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$start, (e) => call(start: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get end {
    final local$end = _instance.end;
    return local$end == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$end, (e) => call(end: e));
  }
}

class _CopyWithStubImpl$Input$StartAndEndTimeFilterInput<TRes>
    implements CopyWith$Input$StartAndEndTimeFilterInput<TRes> {
  _CopyWithStubImpl$Input$StartAndEndTimeFilterInput(this._res);

  TRes _res;

  call({
    List<Input$StartAndEndTimeFilterInput>? and,
    List<Input$StartAndEndTimeFilterInput>? or,
    Input$StringOperationFilterInput? start,
    Input$StringOperationFilterInput? end,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get start =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get end =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput {
  factory Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput({
    Input$AssetTemplateCounterTriggerFilterInput? none,
    Input$AssetTemplateCounterTriggerFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput._(
      this._$data);

  factory Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetTemplateCounterTriggerFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetTemplateCounterTriggerFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetTemplateCounterTriggerFilterInput? get none =>
      (_$data['none'] as Input$AssetTemplateCounterTriggerFilterInput?);

  Input$AssetTemplateCounterTriggerFilterInput? get some =>
      (_$data['some'] as Input$AssetTemplateCounterTriggerFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput<
          Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput(
    Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput instance,
    TRes Function(
            Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput;

  TRes call({
    Input$AssetTemplateCounterTriggerFilterInput? none,
    Input$AssetTemplateCounterTriggerFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetTemplateCounterTriggerFilterInput<TRes> get none;
  CopyWith$Input$AssetTemplateCounterTriggerFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput
      _instance;

  final TRes Function(
      Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(
          Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$AssetTemplateCounterTriggerFilterInput?),
        if (some != _undefined)
          'some': (some as Input$AssetTemplateCounterTriggerFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetTemplateCounterTriggerFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetTemplateCounterTriggerFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetTemplateCounterTriggerFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetTemplateCounterTriggerFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetTemplateCounterTriggerFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetTemplateCounterTriggerFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetTemplateCounterTriggerFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AssetTemplateCounterTriggerFilterInput? none,
    Input$AssetTemplateCounterTriggerFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetTemplateCounterTriggerFilterInput<TRes> get none =>
      CopyWith$Input$AssetTemplateCounterTriggerFilterInput.stub(_res);

  CopyWith$Input$AssetTemplateCounterTriggerFilterInput<TRes> get some =>
      CopyWith$Input$AssetTemplateCounterTriggerFilterInput.stub(_res);
}

class Input$AssetCounterTriggerFilterInput {
  factory Input$AssetCounterTriggerFilterInput({
    List<Input$AssetCounterTriggerFilterInput>? and,
    List<Input$AssetCounterTriggerFilterInput>? or,
    Input$StringOperationFilterInput? assetTemplateCounterTriggerId,
    Input$StringOperationFilterInput? comparison,
    Input$DecimalOperationFilterInput? value,
    Input$LongOperationFilterInput? triggered,
    Input$DecimalOperationFilterInput? lastResetValue,
    Input$LongOperationFilterInput? lastResetOn,
    Input$StringOperationFilterInput? eventId,
    Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput? actions,
    Input$StringOperationFilterInput? id,
    Input$DecimalOperationFilterInput? valueOffset,
    Input$StringOperationFilterInput? valueOffsetUnit,
    Input$DecimalOperationFilterInput? intervalValue,
    Input$StringOperationFilterInput? intervalUnit,
  }) =>
      Input$AssetCounterTriggerFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (assetTemplateCounterTriggerId != null)
          r'assetTemplateCounterTriggerId': assetTemplateCounterTriggerId,
        if (comparison != null) r'comparison': comparison,
        if (value != null) r'value': value,
        if (triggered != null) r'triggered': triggered,
        if (lastResetValue != null) r'lastResetValue': lastResetValue,
        if (lastResetOn != null) r'lastResetOn': lastResetOn,
        if (eventId != null) r'eventId': eventId,
        if (actions != null) r'actions': actions,
        if (id != null) r'id': id,
        if (valueOffset != null) r'valueOffset': valueOffset,
        if (valueOffsetUnit != null) r'valueOffsetUnit': valueOffsetUnit,
        if (intervalValue != null) r'intervalValue': intervalValue,
        if (intervalUnit != null) r'intervalUnit': intervalUnit,
      });

  Input$AssetCounterTriggerFilterInput._(this._$data);

  factory Input$AssetCounterTriggerFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AssetCounterTriggerFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AssetCounterTriggerFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('assetTemplateCounterTriggerId')) {
      final l$assetTemplateCounterTriggerId =
          data['assetTemplateCounterTriggerId'];
      result$data['assetTemplateCounterTriggerId'] =
          l$assetTemplateCounterTriggerId == null
              ? null
              : Input$StringOperationFilterInput.fromJson(
                  (l$assetTemplateCounterTriggerId as Map<String, dynamic>));
    }
    if (data.containsKey('comparison')) {
      final l$comparison = data['comparison'];
      result$data['comparison'] = l$comparison == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$comparison as Map<String, dynamic>));
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$value as Map<String, dynamic>));
    }
    if (data.containsKey('triggered')) {
      final l$triggered = data['triggered'];
      result$data['triggered'] = l$triggered == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$triggered as Map<String, dynamic>));
    }
    if (data.containsKey('lastResetValue')) {
      final l$lastResetValue = data['lastResetValue'];
      result$data['lastResetValue'] = l$lastResetValue == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$lastResetValue as Map<String, dynamic>));
    }
    if (data.containsKey('lastResetOn')) {
      final l$lastResetOn = data['lastResetOn'];
      result$data['lastResetOn'] = l$lastResetOn == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$lastResetOn as Map<String, dynamic>));
    }
    if (data.containsKey('eventId')) {
      final l$eventId = data['eventId'];
      result$data['eventId'] = l$eventId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$eventId as Map<String, dynamic>));
    }
    if (data.containsKey('actions')) {
      final l$actions = data['actions'];
      result$data['actions'] = l$actions == null
          ? null
          : Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput
              .fromJson((l$actions as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('valueOffset')) {
      final l$valueOffset = data['valueOffset'];
      result$data['valueOffset'] = l$valueOffset == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$valueOffset as Map<String, dynamic>));
    }
    if (data.containsKey('valueOffsetUnit')) {
      final l$valueOffsetUnit = data['valueOffsetUnit'];
      result$data['valueOffsetUnit'] = l$valueOffsetUnit == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$valueOffsetUnit as Map<String, dynamic>));
    }
    if (data.containsKey('intervalValue')) {
      final l$intervalValue = data['intervalValue'];
      result$data['intervalValue'] = l$intervalValue == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$intervalValue as Map<String, dynamic>));
    }
    if (data.containsKey('intervalUnit')) {
      final l$intervalUnit = data['intervalUnit'];
      result$data['intervalUnit'] = l$intervalUnit == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$intervalUnit as Map<String, dynamic>));
    }
    return Input$AssetCounterTriggerFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetCounterTriggerFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetCounterTriggerFilterInput>?);

  List<Input$AssetCounterTriggerFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetCounterTriggerFilterInput>?);

  Input$StringOperationFilterInput? get assetTemplateCounterTriggerId =>
      (_$data['assetTemplateCounterTriggerId']
          as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get comparison =>
      (_$data['comparison'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get value =>
      (_$data['value'] as Input$DecimalOperationFilterInput?);

  Input$LongOperationFilterInput? get triggered =>
      (_$data['triggered'] as Input$LongOperationFilterInput?);

  Input$DecimalOperationFilterInput? get lastResetValue =>
      (_$data['lastResetValue'] as Input$DecimalOperationFilterInput?);

  Input$LongOperationFilterInput? get lastResetOn =>
      (_$data['lastResetOn'] as Input$LongOperationFilterInput?);

  Input$StringOperationFilterInput? get eventId =>
      (_$data['eventId'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput?
      get actions => (_$data['actions']
          as Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get valueOffset =>
      (_$data['valueOffset'] as Input$DecimalOperationFilterInput?);

  Input$StringOperationFilterInput? get valueOffsetUnit =>
      (_$data['valueOffsetUnit'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get intervalValue =>
      (_$data['intervalValue'] as Input$DecimalOperationFilterInput?);

  Input$StringOperationFilterInput? get intervalUnit =>
      (_$data['intervalUnit'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('assetTemplateCounterTriggerId')) {
      final l$assetTemplateCounterTriggerId = assetTemplateCounterTriggerId;
      result$data['assetTemplateCounterTriggerId'] =
          l$assetTemplateCounterTriggerId?.toJson();
    }
    if (_$data.containsKey('comparison')) {
      final l$comparison = comparison;
      result$data['comparison'] = l$comparison?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    if (_$data.containsKey('triggered')) {
      final l$triggered = triggered;
      result$data['triggered'] = l$triggered?.toJson();
    }
    if (_$data.containsKey('lastResetValue')) {
      final l$lastResetValue = lastResetValue;
      result$data['lastResetValue'] = l$lastResetValue?.toJson();
    }
    if (_$data.containsKey('lastResetOn')) {
      final l$lastResetOn = lastResetOn;
      result$data['lastResetOn'] = l$lastResetOn?.toJson();
    }
    if (_$data.containsKey('eventId')) {
      final l$eventId = eventId;
      result$data['eventId'] = l$eventId?.toJson();
    }
    if (_$data.containsKey('actions')) {
      final l$actions = actions;
      result$data['actions'] = l$actions?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('valueOffset')) {
      final l$valueOffset = valueOffset;
      result$data['valueOffset'] = l$valueOffset?.toJson();
    }
    if (_$data.containsKey('valueOffsetUnit')) {
      final l$valueOffsetUnit = valueOffsetUnit;
      result$data['valueOffsetUnit'] = l$valueOffsetUnit?.toJson();
    }
    if (_$data.containsKey('intervalValue')) {
      final l$intervalValue = intervalValue;
      result$data['intervalValue'] = l$intervalValue?.toJson();
    }
    if (_$data.containsKey('intervalUnit')) {
      final l$intervalUnit = intervalUnit;
      result$data['intervalUnit'] = l$intervalUnit?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetCounterTriggerFilterInput<
          Input$AssetCounterTriggerFilterInput>
      get copyWith => CopyWith$Input$AssetCounterTriggerFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetCounterTriggerFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$assetTemplateCounterTriggerId = assetTemplateCounterTriggerId;
    final lOther$assetTemplateCounterTriggerId =
        other.assetTemplateCounterTriggerId;
    if (_$data.containsKey('assetTemplateCounterTriggerId') !=
        other._$data.containsKey('assetTemplateCounterTriggerId')) {
      return false;
    }
    if (l$assetTemplateCounterTriggerId !=
        lOther$assetTemplateCounterTriggerId) {
      return false;
    }
    final l$comparison = comparison;
    final lOther$comparison = other.comparison;
    if (_$data.containsKey('comparison') !=
        other._$data.containsKey('comparison')) {
      return false;
    }
    if (l$comparison != lOther$comparison) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    final l$triggered = triggered;
    final lOther$triggered = other.triggered;
    if (_$data.containsKey('triggered') !=
        other._$data.containsKey('triggered')) {
      return false;
    }
    if (l$triggered != lOther$triggered) {
      return false;
    }
    final l$lastResetValue = lastResetValue;
    final lOther$lastResetValue = other.lastResetValue;
    if (_$data.containsKey('lastResetValue') !=
        other._$data.containsKey('lastResetValue')) {
      return false;
    }
    if (l$lastResetValue != lOther$lastResetValue) {
      return false;
    }
    final l$lastResetOn = lastResetOn;
    final lOther$lastResetOn = other.lastResetOn;
    if (_$data.containsKey('lastResetOn') !=
        other._$data.containsKey('lastResetOn')) {
      return false;
    }
    if (l$lastResetOn != lOther$lastResetOn) {
      return false;
    }
    final l$eventId = eventId;
    final lOther$eventId = other.eventId;
    if (_$data.containsKey('eventId') != other._$data.containsKey('eventId')) {
      return false;
    }
    if (l$eventId != lOther$eventId) {
      return false;
    }
    final l$actions = actions;
    final lOther$actions = other.actions;
    if (_$data.containsKey('actions') != other._$data.containsKey('actions')) {
      return false;
    }
    if (l$actions != lOther$actions) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$valueOffset = valueOffset;
    final lOther$valueOffset = other.valueOffset;
    if (_$data.containsKey('valueOffset') !=
        other._$data.containsKey('valueOffset')) {
      return false;
    }
    if (l$valueOffset != lOther$valueOffset) {
      return false;
    }
    final l$valueOffsetUnit = valueOffsetUnit;
    final lOther$valueOffsetUnit = other.valueOffsetUnit;
    if (_$data.containsKey('valueOffsetUnit') !=
        other._$data.containsKey('valueOffsetUnit')) {
      return false;
    }
    if (l$valueOffsetUnit != lOther$valueOffsetUnit) {
      return false;
    }
    final l$intervalValue = intervalValue;
    final lOther$intervalValue = other.intervalValue;
    if (_$data.containsKey('intervalValue') !=
        other._$data.containsKey('intervalValue')) {
      return false;
    }
    if (l$intervalValue != lOther$intervalValue) {
      return false;
    }
    final l$intervalUnit = intervalUnit;
    final lOther$intervalUnit = other.intervalUnit;
    if (_$data.containsKey('intervalUnit') !=
        other._$data.containsKey('intervalUnit')) {
      return false;
    }
    if (l$intervalUnit != lOther$intervalUnit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$assetTemplateCounterTriggerId = assetTemplateCounterTriggerId;
    final l$comparison = comparison;
    final l$value = value;
    final l$triggered = triggered;
    final l$lastResetValue = lastResetValue;
    final l$lastResetOn = lastResetOn;
    final l$eventId = eventId;
    final l$actions = actions;
    final l$id = id;
    final l$valueOffset = valueOffset;
    final l$valueOffsetUnit = valueOffsetUnit;
    final l$intervalValue = intervalValue;
    final l$intervalUnit = intervalUnit;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('assetTemplateCounterTriggerId')
          ? l$assetTemplateCounterTriggerId
          : const {},
      _$data.containsKey('comparison') ? l$comparison : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('triggered') ? l$triggered : const {},
      _$data.containsKey('lastResetValue') ? l$lastResetValue : const {},
      _$data.containsKey('lastResetOn') ? l$lastResetOn : const {},
      _$data.containsKey('eventId') ? l$eventId : const {},
      _$data.containsKey('actions') ? l$actions : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('valueOffset') ? l$valueOffset : const {},
      _$data.containsKey('valueOffsetUnit') ? l$valueOffsetUnit : const {},
      _$data.containsKey('intervalValue') ? l$intervalValue : const {},
      _$data.containsKey('intervalUnit') ? l$intervalUnit : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetCounterTriggerFilterInput<TRes> {
  factory CopyWith$Input$AssetCounterTriggerFilterInput(
    Input$AssetCounterTriggerFilterInput instance,
    TRes Function(Input$AssetCounterTriggerFilterInput) then,
  ) = _CopyWithImpl$Input$AssetCounterTriggerFilterInput;

  factory CopyWith$Input$AssetCounterTriggerFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetCounterTriggerFilterInput;

  TRes call({
    List<Input$AssetCounterTriggerFilterInput>? and,
    List<Input$AssetCounterTriggerFilterInput>? or,
    Input$StringOperationFilterInput? assetTemplateCounterTriggerId,
    Input$StringOperationFilterInput? comparison,
    Input$DecimalOperationFilterInput? value,
    Input$LongOperationFilterInput? triggered,
    Input$DecimalOperationFilterInput? lastResetValue,
    Input$LongOperationFilterInput? lastResetOn,
    Input$StringOperationFilterInput? eventId,
    Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput? actions,
    Input$StringOperationFilterInput? id,
    Input$DecimalOperationFilterInput? valueOffset,
    Input$StringOperationFilterInput? valueOffsetUnit,
    Input$DecimalOperationFilterInput? intervalValue,
    Input$StringOperationFilterInput? intervalUnit,
  });
  TRes and(
      Iterable<Input$AssetCounterTriggerFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetCounterTriggerFilterInput<
                      Input$AssetCounterTriggerFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetCounterTriggerFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetCounterTriggerFilterInput<
                      Input$AssetCounterTriggerFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes>
      get assetTemplateCounterTriggerId;
  CopyWith$Input$StringOperationFilterInput<TRes> get comparison;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get value;
  CopyWith$Input$LongOperationFilterInput<TRes> get triggered;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get lastResetValue;
  CopyWith$Input$LongOperationFilterInput<TRes> get lastResetOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get eventId;
  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput<TRes>
      get actions;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get valueOffset;
  CopyWith$Input$StringOperationFilterInput<TRes> get valueOffsetUnit;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get intervalValue;
  CopyWith$Input$StringOperationFilterInput<TRes> get intervalUnit;
}

class _CopyWithImpl$Input$AssetCounterTriggerFilterInput<TRes>
    implements CopyWith$Input$AssetCounterTriggerFilterInput<TRes> {
  _CopyWithImpl$Input$AssetCounterTriggerFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetCounterTriggerFilterInput _instance;

  final TRes Function(Input$AssetCounterTriggerFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? assetTemplateCounterTriggerId = _undefined,
    Object? comparison = _undefined,
    Object? value = _undefined,
    Object? triggered = _undefined,
    Object? lastResetValue = _undefined,
    Object? lastResetOn = _undefined,
    Object? eventId = _undefined,
    Object? actions = _undefined,
    Object? id = _undefined,
    Object? valueOffset = _undefined,
    Object? valueOffsetUnit = _undefined,
    Object? intervalValue = _undefined,
    Object? intervalUnit = _undefined,
  }) =>
      _then(Input$AssetCounterTriggerFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AssetCounterTriggerFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AssetCounterTriggerFilterInput>?),
        if (assetTemplateCounterTriggerId != _undefined)
          'assetTemplateCounterTriggerId': (assetTemplateCounterTriggerId
              as Input$StringOperationFilterInput?),
        if (comparison != _undefined)
          'comparison': (comparison as Input$StringOperationFilterInput?),
        if (value != _undefined)
          'value': (value as Input$DecimalOperationFilterInput?),
        if (triggered != _undefined)
          'triggered': (triggered as Input$LongOperationFilterInput?),
        if (lastResetValue != _undefined)
          'lastResetValue':
              (lastResetValue as Input$DecimalOperationFilterInput?),
        if (lastResetOn != _undefined)
          'lastResetOn': (lastResetOn as Input$LongOperationFilterInput?),
        if (eventId != _undefined)
          'eventId': (eventId as Input$StringOperationFilterInput?),
        if (actions != _undefined)
          'actions': (actions
              as Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (valueOffset != _undefined)
          'valueOffset': (valueOffset as Input$DecimalOperationFilterInput?),
        if (valueOffsetUnit != _undefined)
          'valueOffsetUnit':
              (valueOffsetUnit as Input$StringOperationFilterInput?),
        if (intervalValue != _undefined)
          'intervalValue':
              (intervalValue as Input$DecimalOperationFilterInput?),
        if (intervalUnit != _undefined)
          'intervalUnit': (intervalUnit as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetCounterTriggerFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetCounterTriggerFilterInput<
                          Input$AssetCounterTriggerFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$AssetCounterTriggerFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetCounterTriggerFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetCounterTriggerFilterInput<
                          Input$AssetCounterTriggerFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$AssetCounterTriggerFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes>
      get assetTemplateCounterTriggerId {
    final local$assetTemplateCounterTriggerId =
        _instance.assetTemplateCounterTriggerId;
    return local$assetTemplateCounterTriggerId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$assetTemplateCounterTriggerId,
            (e) => call(assetTemplateCounterTriggerId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get comparison {
    final local$comparison = _instance.comparison;
    return local$comparison == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$comparison, (e) => call(comparison: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$value, (e) => call(value: e));
  }

  CopyWith$Input$LongOperationFilterInput<TRes> get triggered {
    final local$triggered = _instance.triggered;
    return local$triggered == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$triggered, (e) => call(triggered: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get lastResetValue {
    final local$lastResetValue = _instance.lastResetValue;
    return local$lastResetValue == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$lastResetValue, (e) => call(lastResetValue: e));
  }

  CopyWith$Input$LongOperationFilterInput<TRes> get lastResetOn {
    final local$lastResetOn = _instance.lastResetOn;
    return local$lastResetOn == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$lastResetOn, (e) => call(lastResetOn: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get eventId {
    final local$eventId = _instance.eventId;
    return local$eventId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$eventId, (e) => call(eventId: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput<TRes>
      get actions {
    final local$actions = _instance.actions;
    return local$actions == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput(
            local$actions, (e) => call(actions: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get valueOffset {
    final local$valueOffset = _instance.valueOffset;
    return local$valueOffset == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$valueOffset, (e) => call(valueOffset: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get valueOffsetUnit {
    final local$valueOffsetUnit = _instance.valueOffsetUnit;
    return local$valueOffsetUnit == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$valueOffsetUnit, (e) => call(valueOffsetUnit: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get intervalValue {
    final local$intervalValue = _instance.intervalValue;
    return local$intervalValue == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$intervalValue, (e) => call(intervalValue: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get intervalUnit {
    final local$intervalUnit = _instance.intervalUnit;
    return local$intervalUnit == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$intervalUnit, (e) => call(intervalUnit: e));
  }
}

class _CopyWithStubImpl$Input$AssetCounterTriggerFilterInput<TRes>
    implements CopyWith$Input$AssetCounterTriggerFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetCounterTriggerFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetCounterTriggerFilterInput>? and,
    List<Input$AssetCounterTriggerFilterInput>? or,
    Input$StringOperationFilterInput? assetTemplateCounterTriggerId,
    Input$StringOperationFilterInput? comparison,
    Input$DecimalOperationFilterInput? value,
    Input$LongOperationFilterInput? triggered,
    Input$DecimalOperationFilterInput? lastResetValue,
    Input$LongOperationFilterInput? lastResetOn,
    Input$StringOperationFilterInput? eventId,
    Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput? actions,
    Input$StringOperationFilterInput? id,
    Input$DecimalOperationFilterInput? valueOffset,
    Input$StringOperationFilterInput? valueOffsetUnit,
    Input$DecimalOperationFilterInput? intervalValue,
    Input$StringOperationFilterInput? intervalUnit,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes>
      get assetTemplateCounterTriggerId =>
          CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get comparison =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get value =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes> get triggered =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get lastResetValue =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes> get lastResetOn =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get eventId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput<TRes>
      get actions =>
          CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput
              .stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get valueOffset =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get valueOffsetUnit =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get intervalValue =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get intervalUnit =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$AssetTemplateCounterTriggerFilterInput {
  factory Input$AssetTemplateCounterTriggerFilterInput({
    List<Input$AssetTemplateCounterTriggerFilterInput>? and,
    List<Input$AssetTemplateCounterTriggerFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$DecimalOperationFilterInput? valueOffset,
    Input$StringOperationFilterInput? valueOffsetUnit,
    Input$DecimalOperationFilterInput? intervalValue,
    Input$StringOperationFilterInput? intervalUnit,
  }) =>
      Input$AssetTemplateCounterTriggerFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (valueOffset != null) r'valueOffset': valueOffset,
        if (valueOffsetUnit != null) r'valueOffsetUnit': valueOffsetUnit,
        if (intervalValue != null) r'intervalValue': intervalValue,
        if (intervalUnit != null) r'intervalUnit': intervalUnit,
      });

  Input$AssetTemplateCounterTriggerFilterInput._(this._$data);

  factory Input$AssetTemplateCounterTriggerFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AssetTemplateCounterTriggerFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AssetTemplateCounterTriggerFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('valueOffset')) {
      final l$valueOffset = data['valueOffset'];
      result$data['valueOffset'] = l$valueOffset == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$valueOffset as Map<String, dynamic>));
    }
    if (data.containsKey('valueOffsetUnit')) {
      final l$valueOffsetUnit = data['valueOffsetUnit'];
      result$data['valueOffsetUnit'] = l$valueOffsetUnit == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$valueOffsetUnit as Map<String, dynamic>));
    }
    if (data.containsKey('intervalValue')) {
      final l$intervalValue = data['intervalValue'];
      result$data['intervalValue'] = l$intervalValue == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$intervalValue as Map<String, dynamic>));
    }
    if (data.containsKey('intervalUnit')) {
      final l$intervalUnit = data['intervalUnit'];
      result$data['intervalUnit'] = l$intervalUnit == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$intervalUnit as Map<String, dynamic>));
    }
    return Input$AssetTemplateCounterTriggerFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetTemplateCounterTriggerFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetTemplateCounterTriggerFilterInput>?);

  List<Input$AssetTemplateCounterTriggerFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetTemplateCounterTriggerFilterInput>?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get valueOffset =>
      (_$data['valueOffset'] as Input$DecimalOperationFilterInput?);

  Input$StringOperationFilterInput? get valueOffsetUnit =>
      (_$data['valueOffsetUnit'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get intervalValue =>
      (_$data['intervalValue'] as Input$DecimalOperationFilterInput?);

  Input$StringOperationFilterInput? get intervalUnit =>
      (_$data['intervalUnit'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('valueOffset')) {
      final l$valueOffset = valueOffset;
      result$data['valueOffset'] = l$valueOffset?.toJson();
    }
    if (_$data.containsKey('valueOffsetUnit')) {
      final l$valueOffsetUnit = valueOffsetUnit;
      result$data['valueOffsetUnit'] = l$valueOffsetUnit?.toJson();
    }
    if (_$data.containsKey('intervalValue')) {
      final l$intervalValue = intervalValue;
      result$data['intervalValue'] = l$intervalValue?.toJson();
    }
    if (_$data.containsKey('intervalUnit')) {
      final l$intervalUnit = intervalUnit;
      result$data['intervalUnit'] = l$intervalUnit?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetTemplateCounterTriggerFilterInput<
          Input$AssetTemplateCounterTriggerFilterInput>
      get copyWith => CopyWith$Input$AssetTemplateCounterTriggerFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetTemplateCounterTriggerFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$valueOffset = valueOffset;
    final lOther$valueOffset = other.valueOffset;
    if (_$data.containsKey('valueOffset') !=
        other._$data.containsKey('valueOffset')) {
      return false;
    }
    if (l$valueOffset != lOther$valueOffset) {
      return false;
    }
    final l$valueOffsetUnit = valueOffsetUnit;
    final lOther$valueOffsetUnit = other.valueOffsetUnit;
    if (_$data.containsKey('valueOffsetUnit') !=
        other._$data.containsKey('valueOffsetUnit')) {
      return false;
    }
    if (l$valueOffsetUnit != lOther$valueOffsetUnit) {
      return false;
    }
    final l$intervalValue = intervalValue;
    final lOther$intervalValue = other.intervalValue;
    if (_$data.containsKey('intervalValue') !=
        other._$data.containsKey('intervalValue')) {
      return false;
    }
    if (l$intervalValue != lOther$intervalValue) {
      return false;
    }
    final l$intervalUnit = intervalUnit;
    final lOther$intervalUnit = other.intervalUnit;
    if (_$data.containsKey('intervalUnit') !=
        other._$data.containsKey('intervalUnit')) {
      return false;
    }
    if (l$intervalUnit != lOther$intervalUnit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$valueOffset = valueOffset;
    final l$valueOffsetUnit = valueOffsetUnit;
    final l$intervalValue = intervalValue;
    final l$intervalUnit = intervalUnit;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('valueOffset') ? l$valueOffset : const {},
      _$data.containsKey('valueOffsetUnit') ? l$valueOffsetUnit : const {},
      _$data.containsKey('intervalValue') ? l$intervalValue : const {},
      _$data.containsKey('intervalUnit') ? l$intervalUnit : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetTemplateCounterTriggerFilterInput<TRes> {
  factory CopyWith$Input$AssetTemplateCounterTriggerFilterInput(
    Input$AssetTemplateCounterTriggerFilterInput instance,
    TRes Function(Input$AssetTemplateCounterTriggerFilterInput) then,
  ) = _CopyWithImpl$Input$AssetTemplateCounterTriggerFilterInput;

  factory CopyWith$Input$AssetTemplateCounterTriggerFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetTemplateCounterTriggerFilterInput;

  TRes call({
    List<Input$AssetTemplateCounterTriggerFilterInput>? and,
    List<Input$AssetTemplateCounterTriggerFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$DecimalOperationFilterInput? valueOffset,
    Input$StringOperationFilterInput? valueOffsetUnit,
    Input$DecimalOperationFilterInput? intervalValue,
    Input$StringOperationFilterInput? intervalUnit,
  });
  TRes and(
      Iterable<Input$AssetTemplateCounterTriggerFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateCounterTriggerFilterInput<
                      Input$AssetTemplateCounterTriggerFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetTemplateCounterTriggerFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateCounterTriggerFilterInput<
                      Input$AssetTemplateCounterTriggerFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get valueOffset;
  CopyWith$Input$StringOperationFilterInput<TRes> get valueOffsetUnit;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get intervalValue;
  CopyWith$Input$StringOperationFilterInput<TRes> get intervalUnit;
}

class _CopyWithImpl$Input$AssetTemplateCounterTriggerFilterInput<TRes>
    implements CopyWith$Input$AssetTemplateCounterTriggerFilterInput<TRes> {
  _CopyWithImpl$Input$AssetTemplateCounterTriggerFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetTemplateCounterTriggerFilterInput _instance;

  final TRes Function(Input$AssetTemplateCounterTriggerFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? valueOffset = _undefined,
    Object? valueOffsetUnit = _undefined,
    Object? intervalValue = _undefined,
    Object? intervalUnit = _undefined,
  }) =>
      _then(Input$AssetTemplateCounterTriggerFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AssetTemplateCounterTriggerFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AssetTemplateCounterTriggerFilterInput>?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (valueOffset != _undefined)
          'valueOffset': (valueOffset as Input$DecimalOperationFilterInput?),
        if (valueOffsetUnit != _undefined)
          'valueOffsetUnit':
              (valueOffsetUnit as Input$StringOperationFilterInput?),
        if (intervalValue != _undefined)
          'intervalValue':
              (intervalValue as Input$DecimalOperationFilterInput?),
        if (intervalUnit != _undefined)
          'intervalUnit': (intervalUnit as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetTemplateCounterTriggerFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateCounterTriggerFilterInput<
                          Input$AssetTemplateCounterTriggerFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map(
              (e) => CopyWith$Input$AssetTemplateCounterTriggerFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetTemplateCounterTriggerFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateCounterTriggerFilterInput<
                          Input$AssetTemplateCounterTriggerFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map(
              (e) => CopyWith$Input$AssetTemplateCounterTriggerFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get valueOffset {
    final local$valueOffset = _instance.valueOffset;
    return local$valueOffset == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$valueOffset, (e) => call(valueOffset: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get valueOffsetUnit {
    final local$valueOffsetUnit = _instance.valueOffsetUnit;
    return local$valueOffsetUnit == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$valueOffsetUnit, (e) => call(valueOffsetUnit: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get intervalValue {
    final local$intervalValue = _instance.intervalValue;
    return local$intervalValue == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$intervalValue, (e) => call(intervalValue: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get intervalUnit {
    final local$intervalUnit = _instance.intervalUnit;
    return local$intervalUnit == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$intervalUnit, (e) => call(intervalUnit: e));
  }
}

class _CopyWithStubImpl$Input$AssetTemplateCounterTriggerFilterInput<TRes>
    implements CopyWith$Input$AssetTemplateCounterTriggerFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetTemplateCounterTriggerFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetTemplateCounterTriggerFilterInput>? and,
    List<Input$AssetTemplateCounterTriggerFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$DecimalOperationFilterInput? valueOffset,
    Input$StringOperationFilterInput? valueOffsetUnit,
    Input$DecimalOperationFilterInput? intervalValue,
    Input$StringOperationFilterInput? intervalUnit,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get valueOffset =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get valueOffsetUnit =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get intervalValue =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get intervalUnit =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$DecimalOperationFilterInput {
  factory Input$DecimalOperationFilterInput({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      Input$DecimalOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$DecimalOperationFilterInput._(this._$data);

  factory Input$DecimalOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as num?)?.toDouble();
    }
    return Input$DecimalOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get eq => (_$data['eq'] as double?);

  double? get neq => (_$data['neq'] as double?);

  List<double?>? get $in => (_$data['in'] as List<double?>?);

  List<double?>? get nin => (_$data['nin'] as List<double?>?);

  double? get gt => (_$data['gt'] as double?);

  double? get ngt => (_$data['ngt'] as double?);

  double? get gte => (_$data['gte'] as double?);

  double? get ngte => (_$data['ngte'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get nlt => (_$data['nlt'] as double?);

  double? get lte => (_$data['lte'] as double?);

  double? get nlte => (_$data['nlte'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$DecimalOperationFilterInput<Input$DecimalOperationFilterInput>
      get copyWith => CopyWith$Input$DecimalOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DecimalOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$DecimalOperationFilterInput<TRes> {
  factory CopyWith$Input$DecimalOperationFilterInput(
    Input$DecimalOperationFilterInput instance,
    TRes Function(Input$DecimalOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DecimalOperationFilterInput;

  factory CopyWith$Input$DecimalOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DecimalOperationFilterInput;

  TRes call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  });
}

class _CopyWithImpl$Input$DecimalOperationFilterInput<TRes>
    implements CopyWith$Input$DecimalOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DecimalOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DecimalOperationFilterInput _instance;

  final TRes Function(Input$DecimalOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$DecimalOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as double?),
        if (neq != _undefined) 'neq': (neq as double?),
        if ($in != _undefined) 'in': ($in as List<double?>?),
        if (nin != _undefined) 'nin': (nin as List<double?>?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (ngt != _undefined) 'ngt': (ngt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (ngte != _undefined) 'ngte': (ngte as double?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (nlt != _undefined) 'nlt': (nlt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if (nlte != _undefined) 'nlte': (nlte as double?),
      }));
}

class _CopyWithStubImpl$Input$DecimalOperationFilterInput<TRes>
    implements CopyWith$Input$DecimalOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DecimalOperationFilterInput(this._res);

  TRes _res;

  call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      _res;
}

class Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput {
  factory Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput({
    Input$AssetCounterTriggerActionFilterInput? none,
    Input$AssetCounterTriggerActionFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput._(
      this._$data);

  factory Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetCounterTriggerActionFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetCounterTriggerActionFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetCounterTriggerActionFilterInput? get none =>
      (_$data['none'] as Input$AssetCounterTriggerActionFilterInput?);

  Input$AssetCounterTriggerActionFilterInput? get some =>
      (_$data['some'] as Input$AssetCounterTriggerActionFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput<
          Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput(
    Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput instance,
    TRes Function(
            Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput;

  TRes call({
    Input$AssetCounterTriggerActionFilterInput? none,
    Input$AssetCounterTriggerActionFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetCounterTriggerActionFilterInput<TRes> get none;
  CopyWith$Input$AssetCounterTriggerActionFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput
      _instance;

  final TRes Function(
      Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$AssetCounterTriggerActionFilterInput?),
        if (some != _undefined)
          'some': (some as Input$AssetCounterTriggerActionFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetCounterTriggerActionFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetCounterTriggerActionFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetCounterTriggerActionFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetCounterTriggerActionFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetCounterTriggerActionFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetCounterTriggerActionFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AssetCounterTriggerActionFilterInput? none,
    Input$AssetCounterTriggerActionFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetCounterTriggerActionFilterInput<TRes> get none =>
      CopyWith$Input$AssetCounterTriggerActionFilterInput.stub(_res);

  CopyWith$Input$AssetCounterTriggerActionFilterInput<TRes> get some =>
      CopyWith$Input$AssetCounterTriggerActionFilterInput.stub(_res);
}

class Input$AssetCounterTriggerActionFilterInput {
  factory Input$AssetCounterTriggerActionFilterInput({
    List<Input$AssetCounterTriggerActionFilterInput>? and,
    List<Input$AssetCounterTriggerActionFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? triggerActionId,
    Input$StringOperationFilterInput? name,
    Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput?
        metadata,
  }) =>
      Input$AssetCounterTriggerActionFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (triggerActionId != null) r'triggerActionId': triggerActionId,
        if (name != null) r'name': name,
        if (metadata != null) r'metadata': metadata,
      });

  Input$AssetCounterTriggerActionFilterInput._(this._$data);

  factory Input$AssetCounterTriggerActionFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AssetCounterTriggerActionFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AssetCounterTriggerActionFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('triggerActionId')) {
      final l$triggerActionId = data['triggerActionId'];
      result$data['triggerActionId'] = l$triggerActionId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$triggerActionId as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput
              .fromJson((l$metadata as Map<String, dynamic>));
    }
    return Input$AssetCounterTriggerActionFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetCounterTriggerActionFilterInput>? get and =>
      (_$data['and'] as List<Input$AssetCounterTriggerActionFilterInput>?);

  List<Input$AssetCounterTriggerActionFilterInput>? get or =>
      (_$data['or'] as List<Input$AssetCounterTriggerActionFilterInput>?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get triggerActionId =>
      (_$data['triggerActionId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput?
      get metadata => (_$data['metadata']
          as Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('triggerActionId')) {
      final l$triggerActionId = triggerActionId;
      result$data['triggerActionId'] = l$triggerActionId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetCounterTriggerActionFilterInput<
          Input$AssetCounterTriggerActionFilterInput>
      get copyWith => CopyWith$Input$AssetCounterTriggerActionFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetCounterTriggerActionFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$triggerActionId = triggerActionId;
    final lOther$triggerActionId = other.triggerActionId;
    if (_$data.containsKey('triggerActionId') !=
        other._$data.containsKey('triggerActionId')) {
      return false;
    }
    if (l$triggerActionId != lOther$triggerActionId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$triggerActionId = triggerActionId;
    final l$name = name;
    final l$metadata = metadata;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('triggerActionId') ? l$triggerActionId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetCounterTriggerActionFilterInput<TRes> {
  factory CopyWith$Input$AssetCounterTriggerActionFilterInput(
    Input$AssetCounterTriggerActionFilterInput instance,
    TRes Function(Input$AssetCounterTriggerActionFilterInput) then,
  ) = _CopyWithImpl$Input$AssetCounterTriggerActionFilterInput;

  factory CopyWith$Input$AssetCounterTriggerActionFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetCounterTriggerActionFilterInput;

  TRes call({
    List<Input$AssetCounterTriggerActionFilterInput>? and,
    List<Input$AssetCounterTriggerActionFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? triggerActionId,
    Input$StringOperationFilterInput? name,
    Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput?
        metadata,
  });
  TRes and(
      Iterable<Input$AssetCounterTriggerActionFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetCounterTriggerActionFilterInput<
                      Input$AssetCounterTriggerActionFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetCounterTriggerActionFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetCounterTriggerActionFilterInput<
                      Input$AssetCounterTriggerActionFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get triggerActionId;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput<
      TRes> get metadata;
}

class _CopyWithImpl$Input$AssetCounterTriggerActionFilterInput<TRes>
    implements CopyWith$Input$AssetCounterTriggerActionFilterInput<TRes> {
  _CopyWithImpl$Input$AssetCounterTriggerActionFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetCounterTriggerActionFilterInput _instance;

  final TRes Function(Input$AssetCounterTriggerActionFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? triggerActionId = _undefined,
    Object? name = _undefined,
    Object? metadata = _undefined,
  }) =>
      _then(Input$AssetCounterTriggerActionFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AssetCounterTriggerActionFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AssetCounterTriggerActionFilterInput>?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (triggerActionId != _undefined)
          'triggerActionId':
              (triggerActionId as Input$StringOperationFilterInput?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (metadata != _undefined)
          'metadata': (metadata
              as Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetCounterTriggerActionFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetCounterTriggerActionFilterInput<
                          Input$AssetCounterTriggerActionFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$AssetCounterTriggerActionFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AssetCounterTriggerActionFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetCounterTriggerActionFilterInput<
                          Input$AssetCounterTriggerActionFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$AssetCounterTriggerActionFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get triggerActionId {
    final local$triggerActionId = _instance.triggerActionId;
    return local$triggerActionId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$triggerActionId, (e) => call(triggerActionId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput<
      TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$AssetCounterTriggerActionFilterInput<TRes>
    implements CopyWith$Input$AssetCounterTriggerActionFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetCounterTriggerActionFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AssetCounterTriggerActionFilterInput>? and,
    List<Input$AssetCounterTriggerActionFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? triggerActionId,
    Input$StringOperationFilterInput? name,
    Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput?
        metadata,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get triggerActionId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput<
          TRes>
      get metadata =>
          CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput
              .stub(_res);
}

class Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput {
  factory Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput({
    Input$AssetCounterTriggerActionMetadatumFilterInput? none,
    Input$AssetCounterTriggerActionMetadatumFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput
          ._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput._(
      this._$data);

  factory Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AssetCounterTriggerActionMetadatumFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AssetCounterTriggerActionMetadatumFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput
        ._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetCounterTriggerActionMetadatumFilterInput? get none =>
      (_$data['none'] as Input$AssetCounterTriggerActionMetadatumFilterInput?);

  Input$AssetCounterTriggerActionMetadatumFilterInput? get some =>
      (_$data['some'] as Input$AssetCounterTriggerActionMetadatumFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput<
          Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput(
    Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput
        instance,
    TRes Function(
            Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput;

  TRes call({
    Input$AssetCounterTriggerActionMetadatumFilterInput? none,
    Input$AssetCounterTriggerActionMetadatumFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<TRes> get none;
  CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput
      _instance;

  final TRes Function(
          Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(
          Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput
              ._({
        ..._instance._$data,
        if (none != _undefined)
          'none':
              (none as Input$AssetCounterTriggerActionMetadatumFilterInput?),
        if (some != _undefined)
          'some':
              (some as Input$AssetCounterTriggerActionMetadatumFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAssetCounterTriggerActionMetadatumFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AssetCounterTriggerActionMetadatumFilterInput? none,
    Input$AssetCounterTriggerActionMetadatumFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<TRes> get none =>
      CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput.stub(_res);

  CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<TRes> get some =>
      CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput.stub(_res);
}

class Input$AssetCounterTriggerActionMetadatumFilterInput {
  factory Input$AssetCounterTriggerActionMetadatumFilterInput({
    List<Input$AssetCounterTriggerActionMetadatumFilterInput>? and,
    List<Input$AssetCounterTriggerActionMetadatumFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? triggerActionMetadatumId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? value,
  }) =>
      Input$AssetCounterTriggerActionMetadatumFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (triggerActionMetadatumId != null)
          r'triggerActionMetadatumId': triggerActionMetadatumId,
        if (name != null) r'name': name,
        if (key != null) r'key': key,
        if (value != null) r'value': value,
      });

  Input$AssetCounterTriggerActionMetadatumFilterInput._(this._$data);

  factory Input$AssetCounterTriggerActionMetadatumFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$AssetCounterTriggerActionMetadatumFilterInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$AssetCounterTriggerActionMetadatumFilterInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('triggerActionMetadatumId')) {
      final l$triggerActionMetadatumId = data['triggerActionMetadatumId'];
      result$data['triggerActionMetadatumId'] =
          l$triggerActionMetadatumId == null
              ? null
              : Input$StringOperationFilterInput.fromJson(
                  (l$triggerActionMetadatumId as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] = l$key == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$key as Map<String, dynamic>));
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$value as Map<String, dynamic>));
    }
    return Input$AssetCounterTriggerActionMetadatumFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AssetCounterTriggerActionMetadatumFilterInput>? get and =>
      (_$data['and']
          as List<Input$AssetCounterTriggerActionMetadatumFilterInput>?);

  List<Input$AssetCounterTriggerActionMetadatumFilterInput>? get or =>
      (_$data['or']
          as List<Input$AssetCounterTriggerActionMetadatumFilterInput>?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get triggerActionMetadatumId =>
      (_$data['triggerActionMetadatumId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get key =>
      (_$data['key'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get value =>
      (_$data['value'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('triggerActionMetadatumId')) {
      final l$triggerActionMetadatumId = triggerActionMetadatumId;
      result$data['triggerActionMetadatumId'] =
          l$triggerActionMetadatumId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] = l$key?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<
          Input$AssetCounterTriggerActionMetadatumFilterInput>
      get copyWith =>
          CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetCounterTriggerActionMetadatumFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$triggerActionMetadatumId = triggerActionMetadatumId;
    final lOther$triggerActionMetadatumId = other.triggerActionMetadatumId;
    if (_$data.containsKey('triggerActionMetadatumId') !=
        other._$data.containsKey('triggerActionMetadatumId')) {
      return false;
    }
    if (l$triggerActionMetadatumId != lOther$triggerActionMetadatumId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$triggerActionMetadatumId = triggerActionMetadatumId;
    final l$name = name;
    final l$key = key;
    final l$value = value;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('triggerActionMetadatumId')
          ? l$triggerActionMetadatumId
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('value') ? l$value : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<
    TRes> {
  factory CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput(
    Input$AssetCounterTriggerActionMetadatumFilterInput instance,
    TRes Function(Input$AssetCounterTriggerActionMetadatumFilterInput) then,
  ) = _CopyWithImpl$Input$AssetCounterTriggerActionMetadatumFilterInput;

  factory CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$AssetCounterTriggerActionMetadatumFilterInput;

  TRes call({
    List<Input$AssetCounterTriggerActionMetadatumFilterInput>? and,
    List<Input$AssetCounterTriggerActionMetadatumFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? triggerActionMetadatumId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? value,
  });
  TRes and(
      Iterable<Input$AssetCounterTriggerActionMetadatumFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<
                      Input$AssetCounterTriggerActionMetadatumFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AssetCounterTriggerActionMetadatumFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<
                      Input$AssetCounterTriggerActionMetadatumFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get triggerActionMetadatumId;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get key;
  CopyWith$Input$StringOperationFilterInput<TRes> get value;
}

class _CopyWithImpl$Input$AssetCounterTriggerActionMetadatumFilterInput<TRes>
    implements
        CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<TRes> {
  _CopyWithImpl$Input$AssetCounterTriggerActionMetadatumFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetCounterTriggerActionMetadatumFilterInput _instance;

  final TRes Function(Input$AssetCounterTriggerActionMetadatumFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? triggerActionMetadatumId = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? value = _undefined,
  }) =>
      _then(Input$AssetCounterTriggerActionMetadatumFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and
              as List<Input$AssetCounterTriggerActionMetadatumFilterInput>?),
        if (or != _undefined)
          'or': (or
              as List<Input$AssetCounterTriggerActionMetadatumFilterInput>?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (triggerActionMetadatumId != _undefined)
          'triggerActionMetadatumId':
              (triggerActionMetadatumId as Input$StringOperationFilterInput?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (key != _undefined)
          'key': (key as Input$StringOperationFilterInput?),
        if (value != _undefined)
          'value': (value as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AssetCounterTriggerActionMetadatumFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<
                          Input$AssetCounterTriggerActionMetadatumFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) =>
              CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$AssetCounterTriggerActionMetadatumFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<
                          Input$AssetCounterTriggerActionMetadatumFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) =>
              CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get triggerActionMetadatumId {
    final local$triggerActionMetadatumId = _instance.triggerActionMetadatumId;
    return local$triggerActionMetadatumId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$triggerActionMetadatumId,
            (e) => call(triggerActionMetadatumId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get key {
    final local$key = _instance.key;
    return local$key == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$key, (e) => call(key: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Input$AssetCounterTriggerActionMetadatumFilterInput<
        TRes>
    implements
        CopyWith$Input$AssetCounterTriggerActionMetadatumFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetCounterTriggerActionMetadatumFilterInput(
      this._res);

  TRes _res;

  call({
    List<Input$AssetCounterTriggerActionMetadatumFilterInput>? and,
    List<Input$AssetCounterTriggerActionMetadatumFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? triggerActionMetadatumId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? value,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes>
      get triggerActionMetadatumId =>
          CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get key =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get value =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$PropertyFilterInput {
  factory Input$PropertyFilterInput({
    required String propertyName,
    required String propertyValue,
  }) =>
      Input$PropertyFilterInput._({
        r'propertyName': propertyName,
        r'propertyValue': propertyValue,
      });

  Input$PropertyFilterInput._(this._$data);

  factory Input$PropertyFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$propertyName = data['propertyName'];
    result$data['propertyName'] = (l$propertyName as String);
    final l$propertyValue = data['propertyValue'];
    result$data['propertyValue'] = (l$propertyValue as String);
    return Input$PropertyFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get propertyName => (_$data['propertyName'] as String);

  String get propertyValue => (_$data['propertyValue'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$propertyName = propertyName;
    result$data['propertyName'] = l$propertyName;
    final l$propertyValue = propertyValue;
    result$data['propertyValue'] = l$propertyValue;
    return result$data;
  }

  CopyWith$Input$PropertyFilterInput<Input$PropertyFilterInput> get copyWith =>
      CopyWith$Input$PropertyFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PropertyFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$propertyName = propertyName;
    final lOther$propertyName = other.propertyName;
    if (l$propertyName != lOther$propertyName) {
      return false;
    }
    final l$propertyValue = propertyValue;
    final lOther$propertyValue = other.propertyValue;
    if (l$propertyValue != lOther$propertyValue) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$propertyName = propertyName;
    final l$propertyValue = propertyValue;
    return Object.hashAll([
      l$propertyName,
      l$propertyValue,
    ]);
  }
}

abstract class CopyWith$Input$PropertyFilterInput<TRes> {
  factory CopyWith$Input$PropertyFilterInput(
    Input$PropertyFilterInput instance,
    TRes Function(Input$PropertyFilterInput) then,
  ) = _CopyWithImpl$Input$PropertyFilterInput;

  factory CopyWith$Input$PropertyFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PropertyFilterInput;

  TRes call({
    String? propertyName,
    String? propertyValue,
  });
}

class _CopyWithImpl$Input$PropertyFilterInput<TRes>
    implements CopyWith$Input$PropertyFilterInput<TRes> {
  _CopyWithImpl$Input$PropertyFilterInput(
    this._instance,
    this._then,
  );

  final Input$PropertyFilterInput _instance;

  final TRes Function(Input$PropertyFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? propertyName = _undefined,
    Object? propertyValue = _undefined,
  }) =>
      _then(Input$PropertyFilterInput._({
        ..._instance._$data,
        if (propertyName != _undefined && propertyName != null)
          'propertyName': (propertyName as String),
        if (propertyValue != _undefined && propertyValue != null)
          'propertyValue': (propertyValue as String),
      }));
}

class _CopyWithStubImpl$Input$PropertyFilterInput<TRes>
    implements CopyWith$Input$PropertyFilterInput<TRes> {
  _CopyWithStubImpl$Input$PropertyFilterInput(this._res);

  TRes _res;

  call({
    String? propertyName,
    String? propertyValue,
  }) =>
      _res;
}

class Input$AssetHistoryRequestInput {
  factory Input$AssetHistoryRequestInput({
    required String assetId,
    required int maxNumberOfHistories,
    required bool includeAllAttributes,
  }) =>
      Input$AssetHistoryRequestInput._({
        r'assetId': assetId,
        r'maxNumberOfHistories': maxNumberOfHistories,
        r'includeAllAttributes': includeAllAttributes,
      });

  Input$AssetHistoryRequestInput._(this._$data);

  factory Input$AssetHistoryRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$assetId = data['assetId'];
    result$data['assetId'] = (l$assetId as String);
    final l$maxNumberOfHistories = data['maxNumberOfHistories'];
    result$data['maxNumberOfHistories'] = (l$maxNumberOfHistories as int);
    final l$includeAllAttributes = data['includeAllAttributes'];
    result$data['includeAllAttributes'] = (l$includeAllAttributes as bool);
    return Input$AssetHistoryRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get assetId => (_$data['assetId'] as String);

  int get maxNumberOfHistories => (_$data['maxNumberOfHistories'] as int);

  bool get includeAllAttributes => (_$data['includeAllAttributes'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$assetId = assetId;
    result$data['assetId'] = l$assetId;
    final l$maxNumberOfHistories = maxNumberOfHistories;
    result$data['maxNumberOfHistories'] = l$maxNumberOfHistories;
    final l$includeAllAttributes = includeAllAttributes;
    result$data['includeAllAttributes'] = l$includeAllAttributes;
    return result$data;
  }

  CopyWith$Input$AssetHistoryRequestInput<Input$AssetHistoryRequestInput>
      get copyWith => CopyWith$Input$AssetHistoryRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetHistoryRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetId = assetId;
    final lOther$assetId = other.assetId;
    if (l$assetId != lOther$assetId) {
      return false;
    }
    final l$maxNumberOfHistories = maxNumberOfHistories;
    final lOther$maxNumberOfHistories = other.maxNumberOfHistories;
    if (l$maxNumberOfHistories != lOther$maxNumberOfHistories) {
      return false;
    }
    final l$includeAllAttributes = includeAllAttributes;
    final lOther$includeAllAttributes = other.includeAllAttributes;
    if (l$includeAllAttributes != lOther$includeAllAttributes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetId = assetId;
    final l$maxNumberOfHistories = maxNumberOfHistories;
    final l$includeAllAttributes = includeAllAttributes;
    return Object.hashAll([
      l$assetId,
      l$maxNumberOfHistories,
      l$includeAllAttributes,
    ]);
  }
}

abstract class CopyWith$Input$AssetHistoryRequestInput<TRes> {
  factory CopyWith$Input$AssetHistoryRequestInput(
    Input$AssetHistoryRequestInput instance,
    TRes Function(Input$AssetHistoryRequestInput) then,
  ) = _CopyWithImpl$Input$AssetHistoryRequestInput;

  factory CopyWith$Input$AssetHistoryRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetHistoryRequestInput;

  TRes call({
    String? assetId,
    int? maxNumberOfHistories,
    bool? includeAllAttributes,
  });
}

class _CopyWithImpl$Input$AssetHistoryRequestInput<TRes>
    implements CopyWith$Input$AssetHistoryRequestInput<TRes> {
  _CopyWithImpl$Input$AssetHistoryRequestInput(
    this._instance,
    this._then,
  );

  final Input$AssetHistoryRequestInput _instance;

  final TRes Function(Input$AssetHistoryRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetId = _undefined,
    Object? maxNumberOfHistories = _undefined,
    Object? includeAllAttributes = _undefined,
  }) =>
      _then(Input$AssetHistoryRequestInput._({
        ..._instance._$data,
        if (assetId != _undefined && assetId != null)
          'assetId': (assetId as String),
        if (maxNumberOfHistories != _undefined && maxNumberOfHistories != null)
          'maxNumberOfHistories': (maxNumberOfHistories as int),
        if (includeAllAttributes != _undefined && includeAllAttributes != null)
          'includeAllAttributes': (includeAllAttributes as bool),
      }));
}

class _CopyWithStubImpl$Input$AssetHistoryRequestInput<TRes>
    implements CopyWith$Input$AssetHistoryRequestInput<TRes> {
  _CopyWithStubImpl$Input$AssetHistoryRequestInput(this._res);

  TRes _res;

  call({
    String? assetId,
    int? maxNumberOfHistories,
    bool? includeAllAttributes,
  }) =>
      _res;
}

class Input$PaginationRequestOfSearchAssetInput {
  factory Input$PaginationRequestOfSearchAssetInput({
    required Input$SearchAssetInput request,
    required int pageSize,
    required int pageNumber,
  }) =>
      Input$PaginationRequestOfSearchAssetInput._({
        r'request': request,
        r'pageSize': pageSize,
        r'pageNumber': pageNumber,
      });

  Input$PaginationRequestOfSearchAssetInput._(this._$data);

  factory Input$PaginationRequestOfSearchAssetInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$request = data['request'];
    result$data['request'] =
        Input$SearchAssetInput.fromJson((l$request as Map<String, dynamic>));
    final l$pageSize = data['pageSize'];
    result$data['pageSize'] = (l$pageSize as int);
    final l$pageNumber = data['pageNumber'];
    result$data['pageNumber'] = (l$pageNumber as int);
    return Input$PaginationRequestOfSearchAssetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchAssetInput get request =>
      (_$data['request'] as Input$SearchAssetInput);

  int get pageSize => (_$data['pageSize'] as int);

  int get pageNumber => (_$data['pageNumber'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$request = request;
    result$data['request'] = l$request.toJson();
    final l$pageSize = pageSize;
    result$data['pageSize'] = l$pageSize;
    final l$pageNumber = pageNumber;
    result$data['pageNumber'] = l$pageNumber;
    return result$data;
  }

  CopyWith$Input$PaginationRequestOfSearchAssetInput<
          Input$PaginationRequestOfSearchAssetInput>
      get copyWith => CopyWith$Input$PaginationRequestOfSearchAssetInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PaginationRequestOfSearchAssetInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$request = request;
    final lOther$request = other.request;
    if (l$request != lOther$request) {
      return false;
    }
    final l$pageSize = pageSize;
    final lOther$pageSize = other.pageSize;
    if (l$pageSize != lOther$pageSize) {
      return false;
    }
    final l$pageNumber = pageNumber;
    final lOther$pageNumber = other.pageNumber;
    if (l$pageNumber != lOther$pageNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$request = request;
    final l$pageSize = pageSize;
    final l$pageNumber = pageNumber;
    return Object.hashAll([
      l$request,
      l$pageSize,
      l$pageNumber,
    ]);
  }
}

abstract class CopyWith$Input$PaginationRequestOfSearchAssetInput<TRes> {
  factory CopyWith$Input$PaginationRequestOfSearchAssetInput(
    Input$PaginationRequestOfSearchAssetInput instance,
    TRes Function(Input$PaginationRequestOfSearchAssetInput) then,
  ) = _CopyWithImpl$Input$PaginationRequestOfSearchAssetInput;

  factory CopyWith$Input$PaginationRequestOfSearchAssetInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaginationRequestOfSearchAssetInput;

  TRes call({
    Input$SearchAssetInput? request,
    int? pageSize,
    int? pageNumber,
  });
  CopyWith$Input$SearchAssetInput<TRes> get request;
}

class _CopyWithImpl$Input$PaginationRequestOfSearchAssetInput<TRes>
    implements CopyWith$Input$PaginationRequestOfSearchAssetInput<TRes> {
  _CopyWithImpl$Input$PaginationRequestOfSearchAssetInput(
    this._instance,
    this._then,
  );

  final Input$PaginationRequestOfSearchAssetInput _instance;

  final TRes Function(Input$PaginationRequestOfSearchAssetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? request = _undefined,
    Object? pageSize = _undefined,
    Object? pageNumber = _undefined,
  }) =>
      _then(Input$PaginationRequestOfSearchAssetInput._({
        ..._instance._$data,
        if (request != _undefined && request != null)
          'request': (request as Input$SearchAssetInput),
        if (pageSize != _undefined && pageSize != null)
          'pageSize': (pageSize as int),
        if (pageNumber != _undefined && pageNumber != null)
          'pageNumber': (pageNumber as int),
      }));

  CopyWith$Input$SearchAssetInput<TRes> get request {
    final local$request = _instance.request;
    return CopyWith$Input$SearchAssetInput(
        local$request, (e) => call(request: e));
  }
}

class _CopyWithStubImpl$Input$PaginationRequestOfSearchAssetInput<TRes>
    implements CopyWith$Input$PaginationRequestOfSearchAssetInput<TRes> {
  _CopyWithStubImpl$Input$PaginationRequestOfSearchAssetInput(this._res);

  TRes _res;

  call({
    Input$SearchAssetInput? request,
    int? pageSize,
    int? pageNumber,
  }) =>
      _res;

  CopyWith$Input$SearchAssetInput<TRes> get request =>
      CopyWith$Input$SearchAssetInput.stub(_res);
}

class Input$SearchAssetInput {
  factory Input$SearchAssetInput({
    List<String>? assetTemplate,
    List<String>? category,
    List<String>? territoryCode,
    List<String>? assetName,
    List<String>? assetCode,
    List<String>? make,
    List<String>? model,
    List<String>? serialNo,
    Enum$DisposalFilter? disposalFilter,
    List<String>? depotFilter,
    List<String>? statusFilter,
    List<String>? assetTypeFilter,
    String? freeText,
    List<String>? counters,
    List<Input$AssetSearchPropertyQueryInput>? propertyQueries,
  }) =>
      Input$SearchAssetInput._({
        if (assetTemplate != null) r'assetTemplate': assetTemplate,
        if (category != null) r'category': category,
        if (territoryCode != null) r'territoryCode': territoryCode,
        if (assetName != null) r'assetName': assetName,
        if (assetCode != null) r'assetCode': assetCode,
        if (make != null) r'make': make,
        if (model != null) r'model': model,
        if (serialNo != null) r'serialNo': serialNo,
        if (disposalFilter != null) r'disposalFilter': disposalFilter,
        if (depotFilter != null) r'depotFilter': depotFilter,
        if (statusFilter != null) r'statusFilter': statusFilter,
        if (assetTypeFilter != null) r'assetTypeFilter': assetTypeFilter,
        if (freeText != null) r'freeText': freeText,
        if (counters != null) r'counters': counters,
        if (propertyQueries != null) r'propertyQueries': propertyQueries,
      });

  Input$SearchAssetInput._(this._$data);

  factory Input$SearchAssetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('assetTemplate')) {
      final l$assetTemplate = data['assetTemplate'];
      result$data['assetTemplate'] = (l$assetTemplate as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] =
          (l$category as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('territoryCode')) {
      final l$territoryCode = data['territoryCode'];
      result$data['territoryCode'] = (l$territoryCode as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('assetName')) {
      final l$assetName = data['assetName'];
      result$data['assetName'] =
          (l$assetName as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] =
          (l$assetCode as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('make')) {
      final l$make = data['make'];
      result$data['make'] =
          (l$make as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('model')) {
      final l$model = data['model'];
      result$data['model'] =
          (l$model as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('serialNo')) {
      final l$serialNo = data['serialNo'];
      result$data['serialNo'] =
          (l$serialNo as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('disposalFilter')) {
      final l$disposalFilter = data['disposalFilter'];
      result$data['disposalFilter'] = l$disposalFilter == null
          ? null
          : fromJson$Enum$DisposalFilter((l$disposalFilter as String));
    }
    if (data.containsKey('depotFilter')) {
      final l$depotFilter = data['depotFilter'];
      result$data['depotFilter'] =
          (l$depotFilter as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('statusFilter')) {
      final l$statusFilter = data['statusFilter'];
      result$data['statusFilter'] = (l$statusFilter as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('assetTypeFilter')) {
      final l$assetTypeFilter = data['assetTypeFilter'];
      result$data['assetTypeFilter'] = (l$assetTypeFilter as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('freeText')) {
      final l$freeText = data['freeText'];
      result$data['freeText'] = (l$freeText as String?);
    }
    if (data.containsKey('counters')) {
      final l$counters = data['counters'];
      result$data['counters'] =
          (l$counters as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('propertyQueries')) {
      final l$propertyQueries = data['propertyQueries'];
      result$data['propertyQueries'] = (l$propertyQueries as List<dynamic>?)
          ?.map((e) => Input$AssetSearchPropertyQueryInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$SearchAssetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get assetTemplate => (_$data['assetTemplate'] as List<String>?);

  List<String>? get category => (_$data['category'] as List<String>?);

  List<String>? get territoryCode => (_$data['territoryCode'] as List<String>?);

  List<String>? get assetName => (_$data['assetName'] as List<String>?);

  List<String>? get assetCode => (_$data['assetCode'] as List<String>?);

  List<String>? get make => (_$data['make'] as List<String>?);

  List<String>? get model => (_$data['model'] as List<String>?);

  List<String>? get serialNo => (_$data['serialNo'] as List<String>?);

  Enum$DisposalFilter? get disposalFilter =>
      (_$data['disposalFilter'] as Enum$DisposalFilter?);

  List<String>? get depotFilter => (_$data['depotFilter'] as List<String>?);

  List<String>? get statusFilter => (_$data['statusFilter'] as List<String>?);

  List<String>? get assetTypeFilter =>
      (_$data['assetTypeFilter'] as List<String>?);

  String? get freeText => (_$data['freeText'] as String?);

  List<String>? get counters => (_$data['counters'] as List<String>?);

  List<Input$AssetSearchPropertyQueryInput>? get propertyQueries =>
      (_$data['propertyQueries'] as List<Input$AssetSearchPropertyQueryInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('assetTemplate')) {
      final l$assetTemplate = assetTemplate;
      result$data['assetTemplate'] = l$assetTemplate?.map((e) => e).toList();
    }
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category?.map((e) => e).toList();
    }
    if (_$data.containsKey('territoryCode')) {
      final l$territoryCode = territoryCode;
      result$data['territoryCode'] = l$territoryCode?.map((e) => e).toList();
    }
    if (_$data.containsKey('assetName')) {
      final l$assetName = assetName;
      result$data['assetName'] = l$assetName?.map((e) => e).toList();
    }
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode?.map((e) => e).toList();
    }
    if (_$data.containsKey('make')) {
      final l$make = make;
      result$data['make'] = l$make?.map((e) => e).toList();
    }
    if (_$data.containsKey('model')) {
      final l$model = model;
      result$data['model'] = l$model?.map((e) => e).toList();
    }
    if (_$data.containsKey('serialNo')) {
      final l$serialNo = serialNo;
      result$data['serialNo'] = l$serialNo?.map((e) => e).toList();
    }
    if (_$data.containsKey('disposalFilter')) {
      final l$disposalFilter = disposalFilter;
      result$data['disposalFilter'] = l$disposalFilter == null
          ? null
          : toJson$Enum$DisposalFilter(l$disposalFilter);
    }
    if (_$data.containsKey('depotFilter')) {
      final l$depotFilter = depotFilter;
      result$data['depotFilter'] = l$depotFilter?.map((e) => e).toList();
    }
    if (_$data.containsKey('statusFilter')) {
      final l$statusFilter = statusFilter;
      result$data['statusFilter'] = l$statusFilter?.map((e) => e).toList();
    }
    if (_$data.containsKey('assetTypeFilter')) {
      final l$assetTypeFilter = assetTypeFilter;
      result$data['assetTypeFilter'] =
          l$assetTypeFilter?.map((e) => e).toList();
    }
    if (_$data.containsKey('freeText')) {
      final l$freeText = freeText;
      result$data['freeText'] = l$freeText;
    }
    if (_$data.containsKey('counters')) {
      final l$counters = counters;
      result$data['counters'] = l$counters?.map((e) => e).toList();
    }
    if (_$data.containsKey('propertyQueries')) {
      final l$propertyQueries = propertyQueries;
      result$data['propertyQueries'] =
          l$propertyQueries?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$SearchAssetInput<Input$SearchAssetInput> get copyWith =>
      CopyWith$Input$SearchAssetInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SearchAssetInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetTemplate = assetTemplate;
    final lOther$assetTemplate = other.assetTemplate;
    if (_$data.containsKey('assetTemplate') !=
        other._$data.containsKey('assetTemplate')) {
      return false;
    }
    if (l$assetTemplate != null && lOther$assetTemplate != null) {
      if (l$assetTemplate.length != lOther$assetTemplate.length) {
        return false;
      }
      for (int i = 0; i < l$assetTemplate.length; i++) {
        final l$assetTemplate$entry = l$assetTemplate[i];
        final lOther$assetTemplate$entry = lOther$assetTemplate[i];
        if (l$assetTemplate$entry != lOther$assetTemplate$entry) {
          return false;
        }
      }
    } else if (l$assetTemplate != lOther$assetTemplate) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != null && lOther$category != null) {
      if (l$category.length != lOther$category.length) {
        return false;
      }
      for (int i = 0; i < l$category.length; i++) {
        final l$category$entry = l$category[i];
        final lOther$category$entry = lOther$category[i];
        if (l$category$entry != lOther$category$entry) {
          return false;
        }
      }
    } else if (l$category != lOther$category) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (_$data.containsKey('territoryCode') !=
        other._$data.containsKey('territoryCode')) {
      return false;
    }
    if (l$territoryCode != null && lOther$territoryCode != null) {
      if (l$territoryCode.length != lOther$territoryCode.length) {
        return false;
      }
      for (int i = 0; i < l$territoryCode.length; i++) {
        final l$territoryCode$entry = l$territoryCode[i];
        final lOther$territoryCode$entry = lOther$territoryCode[i];
        if (l$territoryCode$entry != lOther$territoryCode$entry) {
          return false;
        }
      }
    } else if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$assetName = assetName;
    final lOther$assetName = other.assetName;
    if (_$data.containsKey('assetName') !=
        other._$data.containsKey('assetName')) {
      return false;
    }
    if (l$assetName != null && lOther$assetName != null) {
      if (l$assetName.length != lOther$assetName.length) {
        return false;
      }
      for (int i = 0; i < l$assetName.length; i++) {
        final l$assetName$entry = l$assetName[i];
        final lOther$assetName$entry = lOther$assetName[i];
        if (l$assetName$entry != lOther$assetName$entry) {
          return false;
        }
      }
    } else if (l$assetName != lOther$assetName) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (_$data.containsKey('assetCode') !=
        other._$data.containsKey('assetCode')) {
      return false;
    }
    if (l$assetCode != null && lOther$assetCode != null) {
      if (l$assetCode.length != lOther$assetCode.length) {
        return false;
      }
      for (int i = 0; i < l$assetCode.length; i++) {
        final l$assetCode$entry = l$assetCode[i];
        final lOther$assetCode$entry = lOther$assetCode[i];
        if (l$assetCode$entry != lOther$assetCode$entry) {
          return false;
        }
      }
    } else if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (_$data.containsKey('make') != other._$data.containsKey('make')) {
      return false;
    }
    if (l$make != null && lOther$make != null) {
      if (l$make.length != lOther$make.length) {
        return false;
      }
      for (int i = 0; i < l$make.length; i++) {
        final l$make$entry = l$make[i];
        final lOther$make$entry = lOther$make[i];
        if (l$make$entry != lOther$make$entry) {
          return false;
        }
      }
    } else if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (_$data.containsKey('model') != other._$data.containsKey('model')) {
      return false;
    }
    if (l$model != null && lOther$model != null) {
      if (l$model.length != lOther$model.length) {
        return false;
      }
      for (int i = 0; i < l$model.length; i++) {
        final l$model$entry = l$model[i];
        final lOther$model$entry = lOther$model[i];
        if (l$model$entry != lOther$model$entry) {
          return false;
        }
      }
    } else if (l$model != lOther$model) {
      return false;
    }
    final l$serialNo = serialNo;
    final lOther$serialNo = other.serialNo;
    if (_$data.containsKey('serialNo') !=
        other._$data.containsKey('serialNo')) {
      return false;
    }
    if (l$serialNo != null && lOther$serialNo != null) {
      if (l$serialNo.length != lOther$serialNo.length) {
        return false;
      }
      for (int i = 0; i < l$serialNo.length; i++) {
        final l$serialNo$entry = l$serialNo[i];
        final lOther$serialNo$entry = lOther$serialNo[i];
        if (l$serialNo$entry != lOther$serialNo$entry) {
          return false;
        }
      }
    } else if (l$serialNo != lOther$serialNo) {
      return false;
    }
    final l$disposalFilter = disposalFilter;
    final lOther$disposalFilter = other.disposalFilter;
    if (_$data.containsKey('disposalFilter') !=
        other._$data.containsKey('disposalFilter')) {
      return false;
    }
    if (l$disposalFilter != lOther$disposalFilter) {
      return false;
    }
    final l$depotFilter = depotFilter;
    final lOther$depotFilter = other.depotFilter;
    if (_$data.containsKey('depotFilter') !=
        other._$data.containsKey('depotFilter')) {
      return false;
    }
    if (l$depotFilter != null && lOther$depotFilter != null) {
      if (l$depotFilter.length != lOther$depotFilter.length) {
        return false;
      }
      for (int i = 0; i < l$depotFilter.length; i++) {
        final l$depotFilter$entry = l$depotFilter[i];
        final lOther$depotFilter$entry = lOther$depotFilter[i];
        if (l$depotFilter$entry != lOther$depotFilter$entry) {
          return false;
        }
      }
    } else if (l$depotFilter != lOther$depotFilter) {
      return false;
    }
    final l$statusFilter = statusFilter;
    final lOther$statusFilter = other.statusFilter;
    if (_$data.containsKey('statusFilter') !=
        other._$data.containsKey('statusFilter')) {
      return false;
    }
    if (l$statusFilter != null && lOther$statusFilter != null) {
      if (l$statusFilter.length != lOther$statusFilter.length) {
        return false;
      }
      for (int i = 0; i < l$statusFilter.length; i++) {
        final l$statusFilter$entry = l$statusFilter[i];
        final lOther$statusFilter$entry = lOther$statusFilter[i];
        if (l$statusFilter$entry != lOther$statusFilter$entry) {
          return false;
        }
      }
    } else if (l$statusFilter != lOther$statusFilter) {
      return false;
    }
    final l$assetTypeFilter = assetTypeFilter;
    final lOther$assetTypeFilter = other.assetTypeFilter;
    if (_$data.containsKey('assetTypeFilter') !=
        other._$data.containsKey('assetTypeFilter')) {
      return false;
    }
    if (l$assetTypeFilter != null && lOther$assetTypeFilter != null) {
      if (l$assetTypeFilter.length != lOther$assetTypeFilter.length) {
        return false;
      }
      for (int i = 0; i < l$assetTypeFilter.length; i++) {
        final l$assetTypeFilter$entry = l$assetTypeFilter[i];
        final lOther$assetTypeFilter$entry = lOther$assetTypeFilter[i];
        if (l$assetTypeFilter$entry != lOther$assetTypeFilter$entry) {
          return false;
        }
      }
    } else if (l$assetTypeFilter != lOther$assetTypeFilter) {
      return false;
    }
    final l$freeText = freeText;
    final lOther$freeText = other.freeText;
    if (_$data.containsKey('freeText') !=
        other._$data.containsKey('freeText')) {
      return false;
    }
    if (l$freeText != lOther$freeText) {
      return false;
    }
    final l$counters = counters;
    final lOther$counters = other.counters;
    if (_$data.containsKey('counters') !=
        other._$data.containsKey('counters')) {
      return false;
    }
    if (l$counters != null && lOther$counters != null) {
      if (l$counters.length != lOther$counters.length) {
        return false;
      }
      for (int i = 0; i < l$counters.length; i++) {
        final l$counters$entry = l$counters[i];
        final lOther$counters$entry = lOther$counters[i];
        if (l$counters$entry != lOther$counters$entry) {
          return false;
        }
      }
    } else if (l$counters != lOther$counters) {
      return false;
    }
    final l$propertyQueries = propertyQueries;
    final lOther$propertyQueries = other.propertyQueries;
    if (_$data.containsKey('propertyQueries') !=
        other._$data.containsKey('propertyQueries')) {
      return false;
    }
    if (l$propertyQueries != null && lOther$propertyQueries != null) {
      if (l$propertyQueries.length != lOther$propertyQueries.length) {
        return false;
      }
      for (int i = 0; i < l$propertyQueries.length; i++) {
        final l$propertyQueries$entry = l$propertyQueries[i];
        final lOther$propertyQueries$entry = lOther$propertyQueries[i];
        if (l$propertyQueries$entry != lOther$propertyQueries$entry) {
          return false;
        }
      }
    } else if (l$propertyQueries != lOther$propertyQueries) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetTemplate = assetTemplate;
    final l$category = category;
    final l$territoryCode = territoryCode;
    final l$assetName = assetName;
    final l$assetCode = assetCode;
    final l$make = make;
    final l$model = model;
    final l$serialNo = serialNo;
    final l$disposalFilter = disposalFilter;
    final l$depotFilter = depotFilter;
    final l$statusFilter = statusFilter;
    final l$assetTypeFilter = assetTypeFilter;
    final l$freeText = freeText;
    final l$counters = counters;
    final l$propertyQueries = propertyQueries;
    return Object.hashAll([
      _$data.containsKey('assetTemplate')
          ? l$assetTemplate == null
              ? null
              : Object.hashAll(l$assetTemplate.map((v) => v))
          : const {},
      _$data.containsKey('category')
          ? l$category == null
              ? null
              : Object.hashAll(l$category.map((v) => v))
          : const {},
      _$data.containsKey('territoryCode')
          ? l$territoryCode == null
              ? null
              : Object.hashAll(l$territoryCode.map((v) => v))
          : const {},
      _$data.containsKey('assetName')
          ? l$assetName == null
              ? null
              : Object.hashAll(l$assetName.map((v) => v))
          : const {},
      _$data.containsKey('assetCode')
          ? l$assetCode == null
              ? null
              : Object.hashAll(l$assetCode.map((v) => v))
          : const {},
      _$data.containsKey('make')
          ? l$make == null
              ? null
              : Object.hashAll(l$make.map((v) => v))
          : const {},
      _$data.containsKey('model')
          ? l$model == null
              ? null
              : Object.hashAll(l$model.map((v) => v))
          : const {},
      _$data.containsKey('serialNo')
          ? l$serialNo == null
              ? null
              : Object.hashAll(l$serialNo.map((v) => v))
          : const {},
      _$data.containsKey('disposalFilter') ? l$disposalFilter : const {},
      _$data.containsKey('depotFilter')
          ? l$depotFilter == null
              ? null
              : Object.hashAll(l$depotFilter.map((v) => v))
          : const {},
      _$data.containsKey('statusFilter')
          ? l$statusFilter == null
              ? null
              : Object.hashAll(l$statusFilter.map((v) => v))
          : const {},
      _$data.containsKey('assetTypeFilter')
          ? l$assetTypeFilter == null
              ? null
              : Object.hashAll(l$assetTypeFilter.map((v) => v))
          : const {},
      _$data.containsKey('freeText') ? l$freeText : const {},
      _$data.containsKey('counters')
          ? l$counters == null
              ? null
              : Object.hashAll(l$counters.map((v) => v))
          : const {},
      _$data.containsKey('propertyQueries')
          ? l$propertyQueries == null
              ? null
              : Object.hashAll(l$propertyQueries.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$SearchAssetInput<TRes> {
  factory CopyWith$Input$SearchAssetInput(
    Input$SearchAssetInput instance,
    TRes Function(Input$SearchAssetInput) then,
  ) = _CopyWithImpl$Input$SearchAssetInput;

  factory CopyWith$Input$SearchAssetInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SearchAssetInput;

  TRes call({
    List<String>? assetTemplate,
    List<String>? category,
    List<String>? territoryCode,
    List<String>? assetName,
    List<String>? assetCode,
    List<String>? make,
    List<String>? model,
    List<String>? serialNo,
    Enum$DisposalFilter? disposalFilter,
    List<String>? depotFilter,
    List<String>? statusFilter,
    List<String>? assetTypeFilter,
    String? freeText,
    List<String>? counters,
    List<Input$AssetSearchPropertyQueryInput>? propertyQueries,
  });
  TRes propertyQueries(
      Iterable<Input$AssetSearchPropertyQueryInput>? Function(
              Iterable<
                  CopyWith$Input$AssetSearchPropertyQueryInput<
                      Input$AssetSearchPropertyQueryInput>>?)
          _fn);
}

class _CopyWithImpl$Input$SearchAssetInput<TRes>
    implements CopyWith$Input$SearchAssetInput<TRes> {
  _CopyWithImpl$Input$SearchAssetInput(
    this._instance,
    this._then,
  );

  final Input$SearchAssetInput _instance;

  final TRes Function(Input$SearchAssetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetTemplate = _undefined,
    Object? category = _undefined,
    Object? territoryCode = _undefined,
    Object? assetName = _undefined,
    Object? assetCode = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? serialNo = _undefined,
    Object? disposalFilter = _undefined,
    Object? depotFilter = _undefined,
    Object? statusFilter = _undefined,
    Object? assetTypeFilter = _undefined,
    Object? freeText = _undefined,
    Object? counters = _undefined,
    Object? propertyQueries = _undefined,
  }) =>
      _then(Input$SearchAssetInput._({
        ..._instance._$data,
        if (assetTemplate != _undefined)
          'assetTemplate': (assetTemplate as List<String>?),
        if (category != _undefined) 'category': (category as List<String>?),
        if (territoryCode != _undefined)
          'territoryCode': (territoryCode as List<String>?),
        if (assetName != _undefined) 'assetName': (assetName as List<String>?),
        if (assetCode != _undefined) 'assetCode': (assetCode as List<String>?),
        if (make != _undefined) 'make': (make as List<String>?),
        if (model != _undefined) 'model': (model as List<String>?),
        if (serialNo != _undefined) 'serialNo': (serialNo as List<String>?),
        if (disposalFilter != _undefined)
          'disposalFilter': (disposalFilter as Enum$DisposalFilter?),
        if (depotFilter != _undefined)
          'depotFilter': (depotFilter as List<String>?),
        if (statusFilter != _undefined)
          'statusFilter': (statusFilter as List<String>?),
        if (assetTypeFilter != _undefined)
          'assetTypeFilter': (assetTypeFilter as List<String>?),
        if (freeText != _undefined) 'freeText': (freeText as String?),
        if (counters != _undefined) 'counters': (counters as List<String>?),
        if (propertyQueries != _undefined)
          'propertyQueries':
              (propertyQueries as List<Input$AssetSearchPropertyQueryInput>?),
      }));

  TRes propertyQueries(
          Iterable<Input$AssetSearchPropertyQueryInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetSearchPropertyQueryInput<
                          Input$AssetSearchPropertyQueryInput>>?)
              _fn) =>
      call(
          propertyQueries: _fn(_instance.propertyQueries
              ?.map((e) => CopyWith$Input$AssetSearchPropertyQueryInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$SearchAssetInput<TRes>
    implements CopyWith$Input$SearchAssetInput<TRes> {
  _CopyWithStubImpl$Input$SearchAssetInput(this._res);

  TRes _res;

  call({
    List<String>? assetTemplate,
    List<String>? category,
    List<String>? territoryCode,
    List<String>? assetName,
    List<String>? assetCode,
    List<String>? make,
    List<String>? model,
    List<String>? serialNo,
    Enum$DisposalFilter? disposalFilter,
    List<String>? depotFilter,
    List<String>? statusFilter,
    List<String>? assetTypeFilter,
    String? freeText,
    List<String>? counters,
    List<Input$AssetSearchPropertyQueryInput>? propertyQueries,
  }) =>
      _res;

  propertyQueries(_fn) => _res;
}

class Input$CreateorUpdateAssetInput {
  factory Input$CreateorUpdateAssetInput({
    String? id,
    required bool active,
    required bool approved,
    String? parentAssetId,
    String? code,
    String? name,
    required String make,
    required String model,
    String? serialNumber,
    required String depotNo,
    String? functionalLocationCode,
    String? transferToDepotNo,
    DateTime? transferToDepotNoEffectiveFrom,
    int? transferToDepotNoAssetApprovalId,
    required double latitude,
    required double longitude,
    required String templateId,
    DateTime? dateOfAcquisition,
    DateTime? dateOfDisposal,
    required String farLeasedExpensed,
    int? yearOfManufacture,
    required String condition,
    required String status,
    String? disposalStatus,
    DateTime? disposalEffectiveFrom,
    int? disposalApprovalId,
    required bool statutoryInspection,
    String? salesInvoiceNo,
    List<Input$AssetPropertyInput>? assetProperties,
    List<Input$AssetCounterInput>? assetCounters,
    List<Input$AssetImageInput>? assetImages,
    List<Input$HourResultInput>? permittedHours,
    List<Input$HourResultInput>? shiftHours,
    List<String>? parentAssetCodes,
    bool? hasSubAssets,
    String? codaAnalysisCode,
    String? assetHierarchyId,
    String? displayName,
    DateTime? needsReview,
    DateTime? lastReviewed,
    String? lastReviewedBy,
    DateTime? lastAudited,
    String? lastAuditedBy,
    String? lastStatutoryInspectionDate,
    String? statutoryInspectionIntervalMonths,
    String? markerColour,
    required bool isReviewed,
    required bool isAudited,
  }) =>
      Input$CreateorUpdateAssetInput._({
        if (id != null) r'id': id,
        r'active': active,
        r'approved': approved,
        if (parentAssetId != null) r'parentAssetId': parentAssetId,
        if (code != null) r'code': code,
        if (name != null) r'name': name,
        r'make': make,
        r'model': model,
        if (serialNumber != null) r'serialNumber': serialNumber,
        r'depotNo': depotNo,
        if (functionalLocationCode != null)
          r'functionalLocationCode': functionalLocationCode,
        if (transferToDepotNo != null) r'transferToDepotNo': transferToDepotNo,
        if (transferToDepotNoEffectiveFrom != null)
          r'transferToDepotNoEffectiveFrom': transferToDepotNoEffectiveFrom,
        if (transferToDepotNoAssetApprovalId != null)
          r'transferToDepotNoAssetApprovalId': transferToDepotNoAssetApprovalId,
        r'latitude': latitude,
        r'longitude': longitude,
        r'templateId': templateId,
        if (dateOfAcquisition != null) r'dateOfAcquisition': dateOfAcquisition,
        if (dateOfDisposal != null) r'dateOfDisposal': dateOfDisposal,
        r'farLeasedExpensed': farLeasedExpensed,
        if (yearOfManufacture != null) r'yearOfManufacture': yearOfManufacture,
        r'condition': condition,
        r'status': status,
        if (disposalStatus != null) r'disposalStatus': disposalStatus,
        if (disposalEffectiveFrom != null)
          r'disposalEffectiveFrom': disposalEffectiveFrom,
        if (disposalApprovalId != null)
          r'disposalApprovalId': disposalApprovalId,
        r'statutoryInspection': statutoryInspection,
        if (salesInvoiceNo != null) r'salesInvoiceNo': salesInvoiceNo,
        if (assetProperties != null) r'assetProperties': assetProperties,
        if (assetCounters != null) r'assetCounters': assetCounters,
        if (assetImages != null) r'assetImages': assetImages,
        if (permittedHours != null) r'permittedHours': permittedHours,
        if (shiftHours != null) r'shiftHours': shiftHours,
        if (parentAssetCodes != null) r'parentAssetCodes': parentAssetCodes,
        if (hasSubAssets != null) r'hasSubAssets': hasSubAssets,
        if (codaAnalysisCode != null) r'codaAnalysisCode': codaAnalysisCode,
        if (assetHierarchyId != null) r'assetHierarchyId': assetHierarchyId,
        if (displayName != null) r'displayName': displayName,
        if (needsReview != null) r'needsReview': needsReview,
        if (lastReviewed != null) r'lastReviewed': lastReviewed,
        if (lastReviewedBy != null) r'lastReviewedBy': lastReviewedBy,
        if (lastAudited != null) r'lastAudited': lastAudited,
        if (lastAuditedBy != null) r'lastAuditedBy': lastAuditedBy,
        if (lastStatutoryInspectionDate != null)
          r'lastStatutoryInspectionDate': lastStatutoryInspectionDate,
        if (statutoryInspectionIntervalMonths != null)
          r'statutoryInspectionIntervalMonths':
              statutoryInspectionIntervalMonths,
        if (markerColour != null) r'markerColour': markerColour,
        r'isReviewed': isReviewed,
        r'isAudited': isAudited,
      });

  Input$CreateorUpdateAssetInput._(this._$data);

  factory Input$CreateorUpdateAssetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    final l$approved = data['approved'];
    result$data['approved'] = (l$approved as bool);
    if (data.containsKey('parentAssetId')) {
      final l$parentAssetId = data['parentAssetId'];
      result$data['parentAssetId'] = (l$parentAssetId as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    final l$make = data['make'];
    result$data['make'] = (l$make as String);
    final l$model = data['model'];
    result$data['model'] = (l$model as String);
    if (data.containsKey('serialNumber')) {
      final l$serialNumber = data['serialNumber'];
      result$data['serialNumber'] = (l$serialNumber as String?);
    }
    final l$depotNo = data['depotNo'];
    result$data['depotNo'] = (l$depotNo as String);
    if (data.containsKey('functionalLocationCode')) {
      final l$functionalLocationCode = data['functionalLocationCode'];
      result$data['functionalLocationCode'] =
          (l$functionalLocationCode as String?);
    }
    if (data.containsKey('transferToDepotNo')) {
      final l$transferToDepotNo = data['transferToDepotNo'];
      result$data['transferToDepotNo'] = (l$transferToDepotNo as String?);
    }
    if (data.containsKey('transferToDepotNoEffectiveFrom')) {
      final l$transferToDepotNoEffectiveFrom =
          data['transferToDepotNoEffectiveFrom'];
      result$data['transferToDepotNoEffectiveFrom'] =
          l$transferToDepotNoEffectiveFrom == null
              ? null
              : DateTime.parse((l$transferToDepotNoEffectiveFrom as String));
    }
    if (data.containsKey('transferToDepotNoAssetApprovalId')) {
      final l$transferToDepotNoAssetApprovalId =
          data['transferToDepotNoAssetApprovalId'];
      result$data['transferToDepotNoAssetApprovalId'] =
          (l$transferToDepotNoAssetApprovalId as int?);
    }
    final l$latitude = data['latitude'];
    result$data['latitude'] = (l$latitude as num).toDouble();
    final l$longitude = data['longitude'];
    result$data['longitude'] = (l$longitude as num).toDouble();
    final l$templateId = data['templateId'];
    result$data['templateId'] = (l$templateId as String);
    if (data.containsKey('dateOfAcquisition')) {
      final l$dateOfAcquisition = data['dateOfAcquisition'];
      result$data['dateOfAcquisition'] = l$dateOfAcquisition == null
          ? null
          : DateTime.parse((l$dateOfAcquisition as String));
    }
    if (data.containsKey('dateOfDisposal')) {
      final l$dateOfDisposal = data['dateOfDisposal'];
      result$data['dateOfDisposal'] = l$dateOfDisposal == null
          ? null
          : DateTime.parse((l$dateOfDisposal as String));
    }
    final l$farLeasedExpensed = data['farLeasedExpensed'];
    result$data['farLeasedExpensed'] = (l$farLeasedExpensed as String);
    if (data.containsKey('yearOfManufacture')) {
      final l$yearOfManufacture = data['yearOfManufacture'];
      result$data['yearOfManufacture'] = (l$yearOfManufacture as int?);
    }
    final l$condition = data['condition'];
    result$data['condition'] = (l$condition as String);
    final l$status = data['status'];
    result$data['status'] = (l$status as String);
    if (data.containsKey('disposalStatus')) {
      final l$disposalStatus = data['disposalStatus'];
      result$data['disposalStatus'] = (l$disposalStatus as String?);
    }
    if (data.containsKey('disposalEffectiveFrom')) {
      final l$disposalEffectiveFrom = data['disposalEffectiveFrom'];
      result$data['disposalEffectiveFrom'] = l$disposalEffectiveFrom == null
          ? null
          : DateTime.parse((l$disposalEffectiveFrom as String));
    }
    if (data.containsKey('disposalApprovalId')) {
      final l$disposalApprovalId = data['disposalApprovalId'];
      result$data['disposalApprovalId'] = (l$disposalApprovalId as int?);
    }
    final l$statutoryInspection = data['statutoryInspection'];
    result$data['statutoryInspection'] = (l$statutoryInspection as bool);
    if (data.containsKey('salesInvoiceNo')) {
      final l$salesInvoiceNo = data['salesInvoiceNo'];
      result$data['salesInvoiceNo'] = (l$salesInvoiceNo as String?);
    }
    if (data.containsKey('assetProperties')) {
      final l$assetProperties = data['assetProperties'];
      result$data['assetProperties'] = (l$assetProperties as List<dynamic>?)
          ?.map((e) =>
              Input$AssetPropertyInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('assetCounters')) {
      final l$assetCounters = data['assetCounters'];
      result$data['assetCounters'] = (l$assetCounters as List<dynamic>?)
          ?.map((e) =>
              Input$AssetCounterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('assetImages')) {
      final l$assetImages = data['assetImages'];
      result$data['assetImages'] = (l$assetImages as List<dynamic>?)
          ?.map((e) =>
              Input$AssetImageInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('permittedHours')) {
      final l$permittedHours = data['permittedHours'];
      result$data['permittedHours'] = (l$permittedHours as List<dynamic>?)
          ?.map((e) =>
              Input$HourResultInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('shiftHours')) {
      final l$shiftHours = data['shiftHours'];
      result$data['shiftHours'] = (l$shiftHours as List<dynamic>?)
          ?.map((e) =>
              Input$HourResultInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('parentAssetCodes')) {
      final l$parentAssetCodes = data['parentAssetCodes'];
      result$data['parentAssetCodes'] = (l$parentAssetCodes as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('hasSubAssets')) {
      final l$hasSubAssets = data['hasSubAssets'];
      result$data['hasSubAssets'] = (l$hasSubAssets as bool?);
    }
    if (data.containsKey('codaAnalysisCode')) {
      final l$codaAnalysisCode = data['codaAnalysisCode'];
      result$data['codaAnalysisCode'] = (l$codaAnalysisCode as String?);
    }
    if (data.containsKey('assetHierarchyId')) {
      final l$assetHierarchyId = data['assetHierarchyId'];
      result$data['assetHierarchyId'] = (l$assetHierarchyId as String?);
    }
    if (data.containsKey('displayName')) {
      final l$displayName = data['displayName'];
      result$data['displayName'] = (l$displayName as String?);
    }
    if (data.containsKey('needsReview')) {
      final l$needsReview = data['needsReview'];
      result$data['needsReview'] = l$needsReview == null
          ? null
          : DateTime.parse((l$needsReview as String));
    }
    if (data.containsKey('lastReviewed')) {
      final l$lastReviewed = data['lastReviewed'];
      result$data['lastReviewed'] = l$lastReviewed == null
          ? null
          : DateTime.parse((l$lastReviewed as String));
    }
    if (data.containsKey('lastReviewedBy')) {
      final l$lastReviewedBy = data['lastReviewedBy'];
      result$data['lastReviewedBy'] = (l$lastReviewedBy as String?);
    }
    if (data.containsKey('lastAudited')) {
      final l$lastAudited = data['lastAudited'];
      result$data['lastAudited'] = l$lastAudited == null
          ? null
          : DateTime.parse((l$lastAudited as String));
    }
    if (data.containsKey('lastAuditedBy')) {
      final l$lastAuditedBy = data['lastAuditedBy'];
      result$data['lastAuditedBy'] = (l$lastAuditedBy as String?);
    }
    if (data.containsKey('lastStatutoryInspectionDate')) {
      final l$lastStatutoryInspectionDate = data['lastStatutoryInspectionDate'];
      result$data['lastStatutoryInspectionDate'] =
          (l$lastStatutoryInspectionDate as String?);
    }
    if (data.containsKey('statutoryInspectionIntervalMonths')) {
      final l$statutoryInspectionIntervalMonths =
          data['statutoryInspectionIntervalMonths'];
      result$data['statutoryInspectionIntervalMonths'] =
          (l$statutoryInspectionIntervalMonths as String?);
    }
    if (data.containsKey('markerColour')) {
      final l$markerColour = data['markerColour'];
      result$data['markerColour'] = (l$markerColour as String?);
    }
    final l$isReviewed = data['isReviewed'];
    result$data['isReviewed'] = (l$isReviewed as bool);
    final l$isAudited = data['isAudited'];
    result$data['isAudited'] = (l$isAudited as bool);
    return Input$CreateorUpdateAssetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  bool get active => (_$data['active'] as bool);

  bool get approved => (_$data['approved'] as bool);

  String? get parentAssetId => (_$data['parentAssetId'] as String?);

  String? get code => (_$data['code'] as String?);

  String? get name => (_$data['name'] as String?);

  String get make => (_$data['make'] as String);

  String get model => (_$data['model'] as String);

  String? get serialNumber => (_$data['serialNumber'] as String?);

  String get depotNo => (_$data['depotNo'] as String);

  String? get functionalLocationCode =>
      (_$data['functionalLocationCode'] as String?);

  String? get transferToDepotNo => (_$data['transferToDepotNo'] as String?);

  DateTime? get transferToDepotNoEffectiveFrom =>
      (_$data['transferToDepotNoEffectiveFrom'] as DateTime?);

  int? get transferToDepotNoAssetApprovalId =>
      (_$data['transferToDepotNoAssetApprovalId'] as int?);

  double get latitude => (_$data['latitude'] as double);

  double get longitude => (_$data['longitude'] as double);

  String get templateId => (_$data['templateId'] as String);

  DateTime? get dateOfAcquisition => (_$data['dateOfAcquisition'] as DateTime?);

  DateTime? get dateOfDisposal => (_$data['dateOfDisposal'] as DateTime?);

  String get farLeasedExpensed => (_$data['farLeasedExpensed'] as String);

  int? get yearOfManufacture => (_$data['yearOfManufacture'] as int?);

  String get condition => (_$data['condition'] as String);

  String get status => (_$data['status'] as String);

  String? get disposalStatus => (_$data['disposalStatus'] as String?);

  DateTime? get disposalEffectiveFrom =>
      (_$data['disposalEffectiveFrom'] as DateTime?);

  int? get disposalApprovalId => (_$data['disposalApprovalId'] as int?);

  bool get statutoryInspection => (_$data['statutoryInspection'] as bool);

  String? get salesInvoiceNo => (_$data['salesInvoiceNo'] as String?);

  List<Input$AssetPropertyInput>? get assetProperties =>
      (_$data['assetProperties'] as List<Input$AssetPropertyInput>?);

  List<Input$AssetCounterInput>? get assetCounters =>
      (_$data['assetCounters'] as List<Input$AssetCounterInput>?);

  List<Input$AssetImageInput>? get assetImages =>
      (_$data['assetImages'] as List<Input$AssetImageInput>?);

  List<Input$HourResultInput>? get permittedHours =>
      (_$data['permittedHours'] as List<Input$HourResultInput>?);

  List<Input$HourResultInput>? get shiftHours =>
      (_$data['shiftHours'] as List<Input$HourResultInput>?);

  List<String>? get parentAssetCodes =>
      (_$data['parentAssetCodes'] as List<String>?);

  bool? get hasSubAssets => (_$data['hasSubAssets'] as bool?);

  String? get codaAnalysisCode => (_$data['codaAnalysisCode'] as String?);

  String? get assetHierarchyId => (_$data['assetHierarchyId'] as String?);

  String? get displayName => (_$data['displayName'] as String?);

  DateTime? get needsReview => (_$data['needsReview'] as DateTime?);

  DateTime? get lastReviewed => (_$data['lastReviewed'] as DateTime?);

  String? get lastReviewedBy => (_$data['lastReviewedBy'] as String?);

  DateTime? get lastAudited => (_$data['lastAudited'] as DateTime?);

  String? get lastAuditedBy => (_$data['lastAuditedBy'] as String?);

  String? get lastStatutoryInspectionDate =>
      (_$data['lastStatutoryInspectionDate'] as String?);

  String? get statutoryInspectionIntervalMonths =>
      (_$data['statutoryInspectionIntervalMonths'] as String?);

  String? get markerColour => (_$data['markerColour'] as String?);

  bool get isReviewed => (_$data['isReviewed'] as bool);

  bool get isAudited => (_$data['isAudited'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    final l$active = active;
    result$data['active'] = l$active;
    final l$approved = approved;
    result$data['approved'] = l$approved;
    if (_$data.containsKey('parentAssetId')) {
      final l$parentAssetId = parentAssetId;
      result$data['parentAssetId'] = l$parentAssetId;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    final l$make = make;
    result$data['make'] = l$make;
    final l$model = model;
    result$data['model'] = l$model;
    if (_$data.containsKey('serialNumber')) {
      final l$serialNumber = serialNumber;
      result$data['serialNumber'] = l$serialNumber;
    }
    final l$depotNo = depotNo;
    result$data['depotNo'] = l$depotNo;
    if (_$data.containsKey('functionalLocationCode')) {
      final l$functionalLocationCode = functionalLocationCode;
      result$data['functionalLocationCode'] = l$functionalLocationCode;
    }
    if (_$data.containsKey('transferToDepotNo')) {
      final l$transferToDepotNo = transferToDepotNo;
      result$data['transferToDepotNo'] = l$transferToDepotNo;
    }
    if (_$data.containsKey('transferToDepotNoEffectiveFrom')) {
      final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
      result$data['transferToDepotNoEffectiveFrom'] =
          l$transferToDepotNoEffectiveFrom?.toIso8601String();
    }
    if (_$data.containsKey('transferToDepotNoAssetApprovalId')) {
      final l$transferToDepotNoAssetApprovalId =
          transferToDepotNoAssetApprovalId;
      result$data['transferToDepotNoAssetApprovalId'] =
          l$transferToDepotNoAssetApprovalId;
    }
    final l$latitude = latitude;
    result$data['latitude'] = l$latitude;
    final l$longitude = longitude;
    result$data['longitude'] = l$longitude;
    final l$templateId = templateId;
    result$data['templateId'] = l$templateId;
    if (_$data.containsKey('dateOfAcquisition')) {
      final l$dateOfAcquisition = dateOfAcquisition;
      result$data['dateOfAcquisition'] = l$dateOfAcquisition?.toIso8601String();
    }
    if (_$data.containsKey('dateOfDisposal')) {
      final l$dateOfDisposal = dateOfDisposal;
      result$data['dateOfDisposal'] = l$dateOfDisposal?.toIso8601String();
    }
    final l$farLeasedExpensed = farLeasedExpensed;
    result$data['farLeasedExpensed'] = l$farLeasedExpensed;
    if (_$data.containsKey('yearOfManufacture')) {
      final l$yearOfManufacture = yearOfManufacture;
      result$data['yearOfManufacture'] = l$yearOfManufacture;
    }
    final l$condition = condition;
    result$data['condition'] = l$condition;
    final l$status = status;
    result$data['status'] = l$status;
    if (_$data.containsKey('disposalStatus')) {
      final l$disposalStatus = disposalStatus;
      result$data['disposalStatus'] = l$disposalStatus;
    }
    if (_$data.containsKey('disposalEffectiveFrom')) {
      final l$disposalEffectiveFrom = disposalEffectiveFrom;
      result$data['disposalEffectiveFrom'] =
          l$disposalEffectiveFrom?.toIso8601String();
    }
    if (_$data.containsKey('disposalApprovalId')) {
      final l$disposalApprovalId = disposalApprovalId;
      result$data['disposalApprovalId'] = l$disposalApprovalId;
    }
    final l$statutoryInspection = statutoryInspection;
    result$data['statutoryInspection'] = l$statutoryInspection;
    if (_$data.containsKey('salesInvoiceNo')) {
      final l$salesInvoiceNo = salesInvoiceNo;
      result$data['salesInvoiceNo'] = l$salesInvoiceNo;
    }
    if (_$data.containsKey('assetProperties')) {
      final l$assetProperties = assetProperties;
      result$data['assetProperties'] =
          l$assetProperties?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('assetCounters')) {
      final l$assetCounters = assetCounters;
      result$data['assetCounters'] =
          l$assetCounters?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('assetImages')) {
      final l$assetImages = assetImages;
      result$data['assetImages'] =
          l$assetImages?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('permittedHours')) {
      final l$permittedHours = permittedHours;
      result$data['permittedHours'] =
          l$permittedHours?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('shiftHours')) {
      final l$shiftHours = shiftHours;
      result$data['shiftHours'] = l$shiftHours?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('parentAssetCodes')) {
      final l$parentAssetCodes = parentAssetCodes;
      result$data['parentAssetCodes'] =
          l$parentAssetCodes?.map((e) => e).toList();
    }
    if (_$data.containsKey('hasSubAssets')) {
      final l$hasSubAssets = hasSubAssets;
      result$data['hasSubAssets'] = l$hasSubAssets;
    }
    if (_$data.containsKey('codaAnalysisCode')) {
      final l$codaAnalysisCode = codaAnalysisCode;
      result$data['codaAnalysisCode'] = l$codaAnalysisCode;
    }
    if (_$data.containsKey('assetHierarchyId')) {
      final l$assetHierarchyId = assetHierarchyId;
      result$data['assetHierarchyId'] = l$assetHierarchyId;
    }
    if (_$data.containsKey('displayName')) {
      final l$displayName = displayName;
      result$data['displayName'] = l$displayName;
    }
    if (_$data.containsKey('needsReview')) {
      final l$needsReview = needsReview;
      result$data['needsReview'] = l$needsReview?.toIso8601String();
    }
    if (_$data.containsKey('lastReviewed')) {
      final l$lastReviewed = lastReviewed;
      result$data['lastReviewed'] = l$lastReviewed?.toIso8601String();
    }
    if (_$data.containsKey('lastReviewedBy')) {
      final l$lastReviewedBy = lastReviewedBy;
      result$data['lastReviewedBy'] = l$lastReviewedBy;
    }
    if (_$data.containsKey('lastAudited')) {
      final l$lastAudited = lastAudited;
      result$data['lastAudited'] = l$lastAudited?.toIso8601String();
    }
    if (_$data.containsKey('lastAuditedBy')) {
      final l$lastAuditedBy = lastAuditedBy;
      result$data['lastAuditedBy'] = l$lastAuditedBy;
    }
    if (_$data.containsKey('lastStatutoryInspectionDate')) {
      final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
      result$data['lastStatutoryInspectionDate'] =
          l$lastStatutoryInspectionDate;
    }
    if (_$data.containsKey('statutoryInspectionIntervalMonths')) {
      final l$statutoryInspectionIntervalMonths =
          statutoryInspectionIntervalMonths;
      result$data['statutoryInspectionIntervalMonths'] =
          l$statutoryInspectionIntervalMonths;
    }
    if (_$data.containsKey('markerColour')) {
      final l$markerColour = markerColour;
      result$data['markerColour'] = l$markerColour;
    }
    final l$isReviewed = isReviewed;
    result$data['isReviewed'] = l$isReviewed;
    final l$isAudited = isAudited;
    result$data['isAudited'] = l$isAudited;
    return result$data;
  }

  CopyWith$Input$CreateorUpdateAssetInput<Input$CreateorUpdateAssetInput>
      get copyWith => CopyWith$Input$CreateorUpdateAssetInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateorUpdateAssetInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (l$approved != lOther$approved) {
      return false;
    }
    final l$parentAssetId = parentAssetId;
    final lOther$parentAssetId = other.parentAssetId;
    if (_$data.containsKey('parentAssetId') !=
        other._$data.containsKey('parentAssetId')) {
      return false;
    }
    if (l$parentAssetId != lOther$parentAssetId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (_$data.containsKey('serialNumber') !=
        other._$data.containsKey('serialNumber')) {
      return false;
    }
    if (l$serialNumber != lOther$serialNumber) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$functionalLocationCode = functionalLocationCode;
    final lOther$functionalLocationCode = other.functionalLocationCode;
    if (_$data.containsKey('functionalLocationCode') !=
        other._$data.containsKey('functionalLocationCode')) {
      return false;
    }
    if (l$functionalLocationCode != lOther$functionalLocationCode) {
      return false;
    }
    final l$transferToDepotNo = transferToDepotNo;
    final lOther$transferToDepotNo = other.transferToDepotNo;
    if (_$data.containsKey('transferToDepotNo') !=
        other._$data.containsKey('transferToDepotNo')) {
      return false;
    }
    if (l$transferToDepotNo != lOther$transferToDepotNo) {
      return false;
    }
    final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
    final lOther$transferToDepotNoEffectiveFrom =
        other.transferToDepotNoEffectiveFrom;
    if (_$data.containsKey('transferToDepotNoEffectiveFrom') !=
        other._$data.containsKey('transferToDepotNoEffectiveFrom')) {
      return false;
    }
    if (l$transferToDepotNoEffectiveFrom !=
        lOther$transferToDepotNoEffectiveFrom) {
      return false;
    }
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final lOther$transferToDepotNoAssetApprovalId =
        other.transferToDepotNoAssetApprovalId;
    if (_$data.containsKey('transferToDepotNoAssetApprovalId') !=
        other._$data.containsKey('transferToDepotNoAssetApprovalId')) {
      return false;
    }
    if (l$transferToDepotNoAssetApprovalId !=
        lOther$transferToDepotNoAssetApprovalId) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$dateOfAcquisition = dateOfAcquisition;
    final lOther$dateOfAcquisition = other.dateOfAcquisition;
    if (_$data.containsKey('dateOfAcquisition') !=
        other._$data.containsKey('dateOfAcquisition')) {
      return false;
    }
    if (l$dateOfAcquisition != lOther$dateOfAcquisition) {
      return false;
    }
    final l$dateOfDisposal = dateOfDisposal;
    final lOther$dateOfDisposal = other.dateOfDisposal;
    if (_$data.containsKey('dateOfDisposal') !=
        other._$data.containsKey('dateOfDisposal')) {
      return false;
    }
    if (l$dateOfDisposal != lOther$dateOfDisposal) {
      return false;
    }
    final l$farLeasedExpensed = farLeasedExpensed;
    final lOther$farLeasedExpensed = other.farLeasedExpensed;
    if (l$farLeasedExpensed != lOther$farLeasedExpensed) {
      return false;
    }
    final l$yearOfManufacture = yearOfManufacture;
    final lOther$yearOfManufacture = other.yearOfManufacture;
    if (_$data.containsKey('yearOfManufacture') !=
        other._$data.containsKey('yearOfManufacture')) {
      return false;
    }
    if (l$yearOfManufacture != lOther$yearOfManufacture) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$disposalStatus = disposalStatus;
    final lOther$disposalStatus = other.disposalStatus;
    if (_$data.containsKey('disposalStatus') !=
        other._$data.containsKey('disposalStatus')) {
      return false;
    }
    if (l$disposalStatus != lOther$disposalStatus) {
      return false;
    }
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    final lOther$disposalEffectiveFrom = other.disposalEffectiveFrom;
    if (_$data.containsKey('disposalEffectiveFrom') !=
        other._$data.containsKey('disposalEffectiveFrom')) {
      return false;
    }
    if (l$disposalEffectiveFrom != lOther$disposalEffectiveFrom) {
      return false;
    }
    final l$disposalApprovalId = disposalApprovalId;
    final lOther$disposalApprovalId = other.disposalApprovalId;
    if (_$data.containsKey('disposalApprovalId') !=
        other._$data.containsKey('disposalApprovalId')) {
      return false;
    }
    if (l$disposalApprovalId != lOther$disposalApprovalId) {
      return false;
    }
    final l$statutoryInspection = statutoryInspection;
    final lOther$statutoryInspection = other.statutoryInspection;
    if (l$statutoryInspection != lOther$statutoryInspection) {
      return false;
    }
    final l$salesInvoiceNo = salesInvoiceNo;
    final lOther$salesInvoiceNo = other.salesInvoiceNo;
    if (_$data.containsKey('salesInvoiceNo') !=
        other._$data.containsKey('salesInvoiceNo')) {
      return false;
    }
    if (l$salesInvoiceNo != lOther$salesInvoiceNo) {
      return false;
    }
    final l$assetProperties = assetProperties;
    final lOther$assetProperties = other.assetProperties;
    if (_$data.containsKey('assetProperties') !=
        other._$data.containsKey('assetProperties')) {
      return false;
    }
    if (l$assetProperties != null && lOther$assetProperties != null) {
      if (l$assetProperties.length != lOther$assetProperties.length) {
        return false;
      }
      for (int i = 0; i < l$assetProperties.length; i++) {
        final l$assetProperties$entry = l$assetProperties[i];
        final lOther$assetProperties$entry = lOther$assetProperties[i];
        if (l$assetProperties$entry != lOther$assetProperties$entry) {
          return false;
        }
      }
    } else if (l$assetProperties != lOther$assetProperties) {
      return false;
    }
    final l$assetCounters = assetCounters;
    final lOther$assetCounters = other.assetCounters;
    if (_$data.containsKey('assetCounters') !=
        other._$data.containsKey('assetCounters')) {
      return false;
    }
    if (l$assetCounters != null && lOther$assetCounters != null) {
      if (l$assetCounters.length != lOther$assetCounters.length) {
        return false;
      }
      for (int i = 0; i < l$assetCounters.length; i++) {
        final l$assetCounters$entry = l$assetCounters[i];
        final lOther$assetCounters$entry = lOther$assetCounters[i];
        if (l$assetCounters$entry != lOther$assetCounters$entry) {
          return false;
        }
      }
    } else if (l$assetCounters != lOther$assetCounters) {
      return false;
    }
    final l$assetImages = assetImages;
    final lOther$assetImages = other.assetImages;
    if (_$data.containsKey('assetImages') !=
        other._$data.containsKey('assetImages')) {
      return false;
    }
    if (l$assetImages != null && lOther$assetImages != null) {
      if (l$assetImages.length != lOther$assetImages.length) {
        return false;
      }
      for (int i = 0; i < l$assetImages.length; i++) {
        final l$assetImages$entry = l$assetImages[i];
        final lOther$assetImages$entry = lOther$assetImages[i];
        if (l$assetImages$entry != lOther$assetImages$entry) {
          return false;
        }
      }
    } else if (l$assetImages != lOther$assetImages) {
      return false;
    }
    final l$permittedHours = permittedHours;
    final lOther$permittedHours = other.permittedHours;
    if (_$data.containsKey('permittedHours') !=
        other._$data.containsKey('permittedHours')) {
      return false;
    }
    if (l$permittedHours != null && lOther$permittedHours != null) {
      if (l$permittedHours.length != lOther$permittedHours.length) {
        return false;
      }
      for (int i = 0; i < l$permittedHours.length; i++) {
        final l$permittedHours$entry = l$permittedHours[i];
        final lOther$permittedHours$entry = lOther$permittedHours[i];
        if (l$permittedHours$entry != lOther$permittedHours$entry) {
          return false;
        }
      }
    } else if (l$permittedHours != lOther$permittedHours) {
      return false;
    }
    final l$shiftHours = shiftHours;
    final lOther$shiftHours = other.shiftHours;
    if (_$data.containsKey('shiftHours') !=
        other._$data.containsKey('shiftHours')) {
      return false;
    }
    if (l$shiftHours != null && lOther$shiftHours != null) {
      if (l$shiftHours.length != lOther$shiftHours.length) {
        return false;
      }
      for (int i = 0; i < l$shiftHours.length; i++) {
        final l$shiftHours$entry = l$shiftHours[i];
        final lOther$shiftHours$entry = lOther$shiftHours[i];
        if (l$shiftHours$entry != lOther$shiftHours$entry) {
          return false;
        }
      }
    } else if (l$shiftHours != lOther$shiftHours) {
      return false;
    }
    final l$parentAssetCodes = parentAssetCodes;
    final lOther$parentAssetCodes = other.parentAssetCodes;
    if (_$data.containsKey('parentAssetCodes') !=
        other._$data.containsKey('parentAssetCodes')) {
      return false;
    }
    if (l$parentAssetCodes != null && lOther$parentAssetCodes != null) {
      if (l$parentAssetCodes.length != lOther$parentAssetCodes.length) {
        return false;
      }
      for (int i = 0; i < l$parentAssetCodes.length; i++) {
        final l$parentAssetCodes$entry = l$parentAssetCodes[i];
        final lOther$parentAssetCodes$entry = lOther$parentAssetCodes[i];
        if (l$parentAssetCodes$entry != lOther$parentAssetCodes$entry) {
          return false;
        }
      }
    } else if (l$parentAssetCodes != lOther$parentAssetCodes) {
      return false;
    }
    final l$hasSubAssets = hasSubAssets;
    final lOther$hasSubAssets = other.hasSubAssets;
    if (_$data.containsKey('hasSubAssets') !=
        other._$data.containsKey('hasSubAssets')) {
      return false;
    }
    if (l$hasSubAssets != lOther$hasSubAssets) {
      return false;
    }
    final l$codaAnalysisCode = codaAnalysisCode;
    final lOther$codaAnalysisCode = other.codaAnalysisCode;
    if (_$data.containsKey('codaAnalysisCode') !=
        other._$data.containsKey('codaAnalysisCode')) {
      return false;
    }
    if (l$codaAnalysisCode != lOther$codaAnalysisCode) {
      return false;
    }
    final l$assetHierarchyId = assetHierarchyId;
    final lOther$assetHierarchyId = other.assetHierarchyId;
    if (_$data.containsKey('assetHierarchyId') !=
        other._$data.containsKey('assetHierarchyId')) {
      return false;
    }
    if (l$assetHierarchyId != lOther$assetHierarchyId) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (_$data.containsKey('displayName') !=
        other._$data.containsKey('displayName')) {
      return false;
    }
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$needsReview = needsReview;
    final lOther$needsReview = other.needsReview;
    if (_$data.containsKey('needsReview') !=
        other._$data.containsKey('needsReview')) {
      return false;
    }
    if (l$needsReview != lOther$needsReview) {
      return false;
    }
    final l$lastReviewed = lastReviewed;
    final lOther$lastReviewed = other.lastReviewed;
    if (_$data.containsKey('lastReviewed') !=
        other._$data.containsKey('lastReviewed')) {
      return false;
    }
    if (l$lastReviewed != lOther$lastReviewed) {
      return false;
    }
    final l$lastReviewedBy = lastReviewedBy;
    final lOther$lastReviewedBy = other.lastReviewedBy;
    if (_$data.containsKey('lastReviewedBy') !=
        other._$data.containsKey('lastReviewedBy')) {
      return false;
    }
    if (l$lastReviewedBy != lOther$lastReviewedBy) {
      return false;
    }
    final l$lastAudited = lastAudited;
    final lOther$lastAudited = other.lastAudited;
    if (_$data.containsKey('lastAudited') !=
        other._$data.containsKey('lastAudited')) {
      return false;
    }
    if (l$lastAudited != lOther$lastAudited) {
      return false;
    }
    final l$lastAuditedBy = lastAuditedBy;
    final lOther$lastAuditedBy = other.lastAuditedBy;
    if (_$data.containsKey('lastAuditedBy') !=
        other._$data.containsKey('lastAuditedBy')) {
      return false;
    }
    if (l$lastAuditedBy != lOther$lastAuditedBy) {
      return false;
    }
    final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
    final lOther$lastStatutoryInspectionDate =
        other.lastStatutoryInspectionDate;
    if (_$data.containsKey('lastStatutoryInspectionDate') !=
        other._$data.containsKey('lastStatutoryInspectionDate')) {
      return false;
    }
    if (l$lastStatutoryInspectionDate != lOther$lastStatutoryInspectionDate) {
      return false;
    }
    final l$statutoryInspectionIntervalMonths =
        statutoryInspectionIntervalMonths;
    final lOther$statutoryInspectionIntervalMonths =
        other.statutoryInspectionIntervalMonths;
    if (_$data.containsKey('statutoryInspectionIntervalMonths') !=
        other._$data.containsKey('statutoryInspectionIntervalMonths')) {
      return false;
    }
    if (l$statutoryInspectionIntervalMonths !=
        lOther$statutoryInspectionIntervalMonths) {
      return false;
    }
    final l$markerColour = markerColour;
    final lOther$markerColour = other.markerColour;
    if (_$data.containsKey('markerColour') !=
        other._$data.containsKey('markerColour')) {
      return false;
    }
    if (l$markerColour != lOther$markerColour) {
      return false;
    }
    final l$isReviewed = isReviewed;
    final lOther$isReviewed = other.isReviewed;
    if (l$isReviewed != lOther$isReviewed) {
      return false;
    }
    final l$isAudited = isAudited;
    final lOther$isAudited = other.isAudited;
    if (l$isAudited != lOther$isAudited) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$active = active;
    final l$approved = approved;
    final l$parentAssetId = parentAssetId;
    final l$code = code;
    final l$name = name;
    final l$make = make;
    final l$model = model;
    final l$serialNumber = serialNumber;
    final l$depotNo = depotNo;
    final l$functionalLocationCode = functionalLocationCode;
    final l$transferToDepotNo = transferToDepotNo;
    final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$templateId = templateId;
    final l$dateOfAcquisition = dateOfAcquisition;
    final l$dateOfDisposal = dateOfDisposal;
    final l$farLeasedExpensed = farLeasedExpensed;
    final l$yearOfManufacture = yearOfManufacture;
    final l$condition = condition;
    final l$status = status;
    final l$disposalStatus = disposalStatus;
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    final l$disposalApprovalId = disposalApprovalId;
    final l$statutoryInspection = statutoryInspection;
    final l$salesInvoiceNo = salesInvoiceNo;
    final l$assetProperties = assetProperties;
    final l$assetCounters = assetCounters;
    final l$assetImages = assetImages;
    final l$permittedHours = permittedHours;
    final l$shiftHours = shiftHours;
    final l$parentAssetCodes = parentAssetCodes;
    final l$hasSubAssets = hasSubAssets;
    final l$codaAnalysisCode = codaAnalysisCode;
    final l$assetHierarchyId = assetHierarchyId;
    final l$displayName = displayName;
    final l$needsReview = needsReview;
    final l$lastReviewed = lastReviewed;
    final l$lastReviewedBy = lastReviewedBy;
    final l$lastAudited = lastAudited;
    final l$lastAuditedBy = lastAuditedBy;
    final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
    final l$statutoryInspectionIntervalMonths =
        statutoryInspectionIntervalMonths;
    final l$markerColour = markerColour;
    final l$isReviewed = isReviewed;
    final l$isAudited = isAudited;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      l$active,
      l$approved,
      _$data.containsKey('parentAssetId') ? l$parentAssetId : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('name') ? l$name : const {},
      l$make,
      l$model,
      _$data.containsKey('serialNumber') ? l$serialNumber : const {},
      l$depotNo,
      _$data.containsKey('functionalLocationCode')
          ? l$functionalLocationCode
          : const {},
      _$data.containsKey('transferToDepotNo') ? l$transferToDepotNo : const {},
      _$data.containsKey('transferToDepotNoEffectiveFrom')
          ? l$transferToDepotNoEffectiveFrom
          : const {},
      _$data.containsKey('transferToDepotNoAssetApprovalId')
          ? l$transferToDepotNoAssetApprovalId
          : const {},
      l$latitude,
      l$longitude,
      l$templateId,
      _$data.containsKey('dateOfAcquisition') ? l$dateOfAcquisition : const {},
      _$data.containsKey('dateOfDisposal') ? l$dateOfDisposal : const {},
      l$farLeasedExpensed,
      _$data.containsKey('yearOfManufacture') ? l$yearOfManufacture : const {},
      l$condition,
      l$status,
      _$data.containsKey('disposalStatus') ? l$disposalStatus : const {},
      _$data.containsKey('disposalEffectiveFrom')
          ? l$disposalEffectiveFrom
          : const {},
      _$data.containsKey('disposalApprovalId')
          ? l$disposalApprovalId
          : const {},
      l$statutoryInspection,
      _$data.containsKey('salesInvoiceNo') ? l$salesInvoiceNo : const {},
      _$data.containsKey('assetProperties')
          ? l$assetProperties == null
              ? null
              : Object.hashAll(l$assetProperties.map((v) => v))
          : const {},
      _$data.containsKey('assetCounters')
          ? l$assetCounters == null
              ? null
              : Object.hashAll(l$assetCounters.map((v) => v))
          : const {},
      _$data.containsKey('assetImages')
          ? l$assetImages == null
              ? null
              : Object.hashAll(l$assetImages.map((v) => v))
          : const {},
      _$data.containsKey('permittedHours')
          ? l$permittedHours == null
              ? null
              : Object.hashAll(l$permittedHours.map((v) => v))
          : const {},
      _$data.containsKey('shiftHours')
          ? l$shiftHours == null
              ? null
              : Object.hashAll(l$shiftHours.map((v) => v))
          : const {},
      _$data.containsKey('parentAssetCodes')
          ? l$parentAssetCodes == null
              ? null
              : Object.hashAll(l$parentAssetCodes.map((v) => v))
          : const {},
      _$data.containsKey('hasSubAssets') ? l$hasSubAssets : const {},
      _$data.containsKey('codaAnalysisCode') ? l$codaAnalysisCode : const {},
      _$data.containsKey('assetHierarchyId') ? l$assetHierarchyId : const {},
      _$data.containsKey('displayName') ? l$displayName : const {},
      _$data.containsKey('needsReview') ? l$needsReview : const {},
      _$data.containsKey('lastReviewed') ? l$lastReviewed : const {},
      _$data.containsKey('lastReviewedBy') ? l$lastReviewedBy : const {},
      _$data.containsKey('lastAudited') ? l$lastAudited : const {},
      _$data.containsKey('lastAuditedBy') ? l$lastAuditedBy : const {},
      _$data.containsKey('lastStatutoryInspectionDate')
          ? l$lastStatutoryInspectionDate
          : const {},
      _$data.containsKey('statutoryInspectionIntervalMonths')
          ? l$statutoryInspectionIntervalMonths
          : const {},
      _$data.containsKey('markerColour') ? l$markerColour : const {},
      l$isReviewed,
      l$isAudited,
    ]);
  }
}

abstract class CopyWith$Input$CreateorUpdateAssetInput<TRes> {
  factory CopyWith$Input$CreateorUpdateAssetInput(
    Input$CreateorUpdateAssetInput instance,
    TRes Function(Input$CreateorUpdateAssetInput) then,
  ) = _CopyWithImpl$Input$CreateorUpdateAssetInput;

  factory CopyWith$Input$CreateorUpdateAssetInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateorUpdateAssetInput;

  TRes call({
    String? id,
    bool? active,
    bool? approved,
    String? parentAssetId,
    String? code,
    String? name,
    String? make,
    String? model,
    String? serialNumber,
    String? depotNo,
    String? functionalLocationCode,
    String? transferToDepotNo,
    DateTime? transferToDepotNoEffectiveFrom,
    int? transferToDepotNoAssetApprovalId,
    double? latitude,
    double? longitude,
    String? templateId,
    DateTime? dateOfAcquisition,
    DateTime? dateOfDisposal,
    String? farLeasedExpensed,
    int? yearOfManufacture,
    String? condition,
    String? status,
    String? disposalStatus,
    DateTime? disposalEffectiveFrom,
    int? disposalApprovalId,
    bool? statutoryInspection,
    String? salesInvoiceNo,
    List<Input$AssetPropertyInput>? assetProperties,
    List<Input$AssetCounterInput>? assetCounters,
    List<Input$AssetImageInput>? assetImages,
    List<Input$HourResultInput>? permittedHours,
    List<Input$HourResultInput>? shiftHours,
    List<String>? parentAssetCodes,
    bool? hasSubAssets,
    String? codaAnalysisCode,
    String? assetHierarchyId,
    String? displayName,
    DateTime? needsReview,
    DateTime? lastReviewed,
    String? lastReviewedBy,
    DateTime? lastAudited,
    String? lastAuditedBy,
    String? lastStatutoryInspectionDate,
    String? statutoryInspectionIntervalMonths,
    String? markerColour,
    bool? isReviewed,
    bool? isAudited,
  });
  TRes assetProperties(
      Iterable<Input$AssetPropertyInput>? Function(
              Iterable<
                  CopyWith$Input$AssetPropertyInput<Input$AssetPropertyInput>>?)
          _fn);
  TRes assetCounters(
      Iterable<Input$AssetCounterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetCounterInput<Input$AssetCounterInput>>?)
          _fn);
  TRes assetImages(
      Iterable<Input$AssetImageInput>? Function(
              Iterable<CopyWith$Input$AssetImageInput<Input$AssetImageInput>>?)
          _fn);
  TRes permittedHours(
      Iterable<Input$HourResultInput>? Function(
              Iterable<CopyWith$Input$HourResultInput<Input$HourResultInput>>?)
          _fn);
  TRes shiftHours(
      Iterable<Input$HourResultInput>? Function(
              Iterable<CopyWith$Input$HourResultInput<Input$HourResultInput>>?)
          _fn);
}

class _CopyWithImpl$Input$CreateorUpdateAssetInput<TRes>
    implements CopyWith$Input$CreateorUpdateAssetInput<TRes> {
  _CopyWithImpl$Input$CreateorUpdateAssetInput(
    this._instance,
    this._then,
  );

  final Input$CreateorUpdateAssetInput _instance;

  final TRes Function(Input$CreateorUpdateAssetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? active = _undefined,
    Object? approved = _undefined,
    Object? parentAssetId = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? serialNumber = _undefined,
    Object? depotNo = _undefined,
    Object? functionalLocationCode = _undefined,
    Object? transferToDepotNo = _undefined,
    Object? transferToDepotNoEffectiveFrom = _undefined,
    Object? transferToDepotNoAssetApprovalId = _undefined,
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? templateId = _undefined,
    Object? dateOfAcquisition = _undefined,
    Object? dateOfDisposal = _undefined,
    Object? farLeasedExpensed = _undefined,
    Object? yearOfManufacture = _undefined,
    Object? condition = _undefined,
    Object? status = _undefined,
    Object? disposalStatus = _undefined,
    Object? disposalEffectiveFrom = _undefined,
    Object? disposalApprovalId = _undefined,
    Object? statutoryInspection = _undefined,
    Object? salesInvoiceNo = _undefined,
    Object? assetProperties = _undefined,
    Object? assetCounters = _undefined,
    Object? assetImages = _undefined,
    Object? permittedHours = _undefined,
    Object? shiftHours = _undefined,
    Object? parentAssetCodes = _undefined,
    Object? hasSubAssets = _undefined,
    Object? codaAnalysisCode = _undefined,
    Object? assetHierarchyId = _undefined,
    Object? displayName = _undefined,
    Object? needsReview = _undefined,
    Object? lastReviewed = _undefined,
    Object? lastReviewedBy = _undefined,
    Object? lastAudited = _undefined,
    Object? lastAuditedBy = _undefined,
    Object? lastStatutoryInspectionDate = _undefined,
    Object? statutoryInspectionIntervalMonths = _undefined,
    Object? markerColour = _undefined,
    Object? isReviewed = _undefined,
    Object? isAudited = _undefined,
  }) =>
      _then(Input$CreateorUpdateAssetInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (active != _undefined && active != null) 'active': (active as bool),
        if (approved != _undefined && approved != null)
          'approved': (approved as bool),
        if (parentAssetId != _undefined)
          'parentAssetId': (parentAssetId as String?),
        if (code != _undefined) 'code': (code as String?),
        if (name != _undefined) 'name': (name as String?),
        if (make != _undefined && make != null) 'make': (make as String),
        if (model != _undefined && model != null) 'model': (model as String),
        if (serialNumber != _undefined)
          'serialNumber': (serialNumber as String?),
        if (depotNo != _undefined && depotNo != null)
          'depotNo': (depotNo as String),
        if (functionalLocationCode != _undefined)
          'functionalLocationCode': (functionalLocationCode as String?),
        if (transferToDepotNo != _undefined)
          'transferToDepotNo': (transferToDepotNo as String?),
        if (transferToDepotNoEffectiveFrom != _undefined)
          'transferToDepotNoEffectiveFrom':
              (transferToDepotNoEffectiveFrom as DateTime?),
        if (transferToDepotNoAssetApprovalId != _undefined)
          'transferToDepotNoAssetApprovalId':
              (transferToDepotNoAssetApprovalId as int?),
        if (latitude != _undefined && latitude != null)
          'latitude': (latitude as double),
        if (longitude != _undefined && longitude != null)
          'longitude': (longitude as double),
        if (templateId != _undefined && templateId != null)
          'templateId': (templateId as String),
        if (dateOfAcquisition != _undefined)
          'dateOfAcquisition': (dateOfAcquisition as DateTime?),
        if (dateOfDisposal != _undefined)
          'dateOfDisposal': (dateOfDisposal as DateTime?),
        if (farLeasedExpensed != _undefined && farLeasedExpensed != null)
          'farLeasedExpensed': (farLeasedExpensed as String),
        if (yearOfManufacture != _undefined)
          'yearOfManufacture': (yearOfManufacture as int?),
        if (condition != _undefined && condition != null)
          'condition': (condition as String),
        if (status != _undefined && status != null)
          'status': (status as String),
        if (disposalStatus != _undefined)
          'disposalStatus': (disposalStatus as String?),
        if (disposalEffectiveFrom != _undefined)
          'disposalEffectiveFrom': (disposalEffectiveFrom as DateTime?),
        if (disposalApprovalId != _undefined)
          'disposalApprovalId': (disposalApprovalId as int?),
        if (statutoryInspection != _undefined && statutoryInspection != null)
          'statutoryInspection': (statutoryInspection as bool),
        if (salesInvoiceNo != _undefined)
          'salesInvoiceNo': (salesInvoiceNo as String?),
        if (assetProperties != _undefined)
          'assetProperties':
              (assetProperties as List<Input$AssetPropertyInput>?),
        if (assetCounters != _undefined)
          'assetCounters': (assetCounters as List<Input$AssetCounterInput>?),
        if (assetImages != _undefined)
          'assetImages': (assetImages as List<Input$AssetImageInput>?),
        if (permittedHours != _undefined)
          'permittedHours': (permittedHours as List<Input$HourResultInput>?),
        if (shiftHours != _undefined)
          'shiftHours': (shiftHours as List<Input$HourResultInput>?),
        if (parentAssetCodes != _undefined)
          'parentAssetCodes': (parentAssetCodes as List<String>?),
        if (hasSubAssets != _undefined) 'hasSubAssets': (hasSubAssets as bool?),
        if (codaAnalysisCode != _undefined)
          'codaAnalysisCode': (codaAnalysisCode as String?),
        if (assetHierarchyId != _undefined)
          'assetHierarchyId': (assetHierarchyId as String?),
        if (displayName != _undefined) 'displayName': (displayName as String?),
        if (needsReview != _undefined)
          'needsReview': (needsReview as DateTime?),
        if (lastReviewed != _undefined)
          'lastReviewed': (lastReviewed as DateTime?),
        if (lastReviewedBy != _undefined)
          'lastReviewedBy': (lastReviewedBy as String?),
        if (lastAudited != _undefined)
          'lastAudited': (lastAudited as DateTime?),
        if (lastAuditedBy != _undefined)
          'lastAuditedBy': (lastAuditedBy as String?),
        if (lastStatutoryInspectionDate != _undefined)
          'lastStatutoryInspectionDate':
              (lastStatutoryInspectionDate as String?),
        if (statutoryInspectionIntervalMonths != _undefined)
          'statutoryInspectionIntervalMonths':
              (statutoryInspectionIntervalMonths as String?),
        if (markerColour != _undefined)
          'markerColour': (markerColour as String?),
        if (isReviewed != _undefined && isReviewed != null)
          'isReviewed': (isReviewed as bool),
        if (isAudited != _undefined && isAudited != null)
          'isAudited': (isAudited as bool),
      }));

  TRes assetProperties(
          Iterable<Input$AssetPropertyInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetPropertyInput<
                          Input$AssetPropertyInput>>?)
              _fn) =>
      call(
          assetProperties: _fn(_instance.assetProperties
              ?.map((e) => CopyWith$Input$AssetPropertyInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes assetCounters(
          Iterable<Input$AssetCounterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetCounterInput<
                          Input$AssetCounterInput>>?)
              _fn) =>
      call(
          assetCounters: _fn(_instance.assetCounters
              ?.map((e) => CopyWith$Input$AssetCounterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes assetImages(
          Iterable<Input$AssetImageInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetImageInput<Input$AssetImageInput>>?)
              _fn) =>
      call(
          assetImages: _fn(
              _instance.assetImages?.map((e) => CopyWith$Input$AssetImageInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes permittedHours(
          Iterable<Input$HourResultInput>? Function(
                  Iterable<
                      CopyWith$Input$HourResultInput<Input$HourResultInput>>?)
              _fn) =>
      call(
          permittedHours: _fn(_instance.permittedHours
              ?.map((e) => CopyWith$Input$HourResultInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes shiftHours(
          Iterable<Input$HourResultInput>? Function(
                  Iterable<
                      CopyWith$Input$HourResultInput<Input$HourResultInput>>?)
              _fn) =>
      call(
          shiftHours: _fn(
              _instance.shiftHours?.map((e) => CopyWith$Input$HourResultInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$CreateorUpdateAssetInput<TRes>
    implements CopyWith$Input$CreateorUpdateAssetInput<TRes> {
  _CopyWithStubImpl$Input$CreateorUpdateAssetInput(this._res);

  TRes _res;

  call({
    String? id,
    bool? active,
    bool? approved,
    String? parentAssetId,
    String? code,
    String? name,
    String? make,
    String? model,
    String? serialNumber,
    String? depotNo,
    String? functionalLocationCode,
    String? transferToDepotNo,
    DateTime? transferToDepotNoEffectiveFrom,
    int? transferToDepotNoAssetApprovalId,
    double? latitude,
    double? longitude,
    String? templateId,
    DateTime? dateOfAcquisition,
    DateTime? dateOfDisposal,
    String? farLeasedExpensed,
    int? yearOfManufacture,
    String? condition,
    String? status,
    String? disposalStatus,
    DateTime? disposalEffectiveFrom,
    int? disposalApprovalId,
    bool? statutoryInspection,
    String? salesInvoiceNo,
    List<Input$AssetPropertyInput>? assetProperties,
    List<Input$AssetCounterInput>? assetCounters,
    List<Input$AssetImageInput>? assetImages,
    List<Input$HourResultInput>? permittedHours,
    List<Input$HourResultInput>? shiftHours,
    List<String>? parentAssetCodes,
    bool? hasSubAssets,
    String? codaAnalysisCode,
    String? assetHierarchyId,
    String? displayName,
    DateTime? needsReview,
    DateTime? lastReviewed,
    String? lastReviewedBy,
    DateTime? lastAudited,
    String? lastAuditedBy,
    String? lastStatutoryInspectionDate,
    String? statutoryInspectionIntervalMonths,
    String? markerColour,
    bool? isReviewed,
    bool? isAudited,
  }) =>
      _res;

  assetProperties(_fn) => _res;

  assetCounters(_fn) => _res;

  assetImages(_fn) => _res;

  permittedHours(_fn) => _res;

  shiftHours(_fn) => _res;
}

class Input$TransferRequestInput {
  factory Input$TransferRequestInput({
    required List<String> assetIds,
    required DateTime transferEffectiveFrom,
    required String transferToDepo,
    String? transferReason,
  }) =>
      Input$TransferRequestInput._({
        r'assetIds': assetIds,
        r'transferEffectiveFrom': transferEffectiveFrom,
        r'transferToDepo': transferToDepo,
        if (transferReason != null) r'transferReason': transferReason,
      });

  Input$TransferRequestInput._(this._$data);

  factory Input$TransferRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$assetIds = data['assetIds'];
    result$data['assetIds'] =
        (l$assetIds as List<dynamic>).map((e) => (e as String)).toList();
    final l$transferEffectiveFrom = data['transferEffectiveFrom'];
    result$data['transferEffectiveFrom'] =
        DateTime.parse((l$transferEffectiveFrom as String));
    final l$transferToDepo = data['transferToDepo'];
    result$data['transferToDepo'] = (l$transferToDepo as String);
    if (data.containsKey('transferReason')) {
      final l$transferReason = data['transferReason'];
      result$data['transferReason'] = (l$transferReason as String?);
    }
    return Input$TransferRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get assetIds => (_$data['assetIds'] as List<String>);

  DateTime get transferEffectiveFrom =>
      (_$data['transferEffectiveFrom'] as DateTime);

  String get transferToDepo => (_$data['transferToDepo'] as String);

  String? get transferReason => (_$data['transferReason'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$assetIds = assetIds;
    result$data['assetIds'] = l$assetIds.map((e) => e).toList();
    final l$transferEffectiveFrom = transferEffectiveFrom;
    result$data['transferEffectiveFrom'] =
        l$transferEffectiveFrom.toIso8601String();
    final l$transferToDepo = transferToDepo;
    result$data['transferToDepo'] = l$transferToDepo;
    if (_$data.containsKey('transferReason')) {
      final l$transferReason = transferReason;
      result$data['transferReason'] = l$transferReason;
    }
    return result$data;
  }

  CopyWith$Input$TransferRequestInput<Input$TransferRequestInput>
      get copyWith => CopyWith$Input$TransferRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TransferRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetIds = assetIds;
    final lOther$assetIds = other.assetIds;
    if (l$assetIds.length != lOther$assetIds.length) {
      return false;
    }
    for (int i = 0; i < l$assetIds.length; i++) {
      final l$assetIds$entry = l$assetIds[i];
      final lOther$assetIds$entry = lOther$assetIds[i];
      if (l$assetIds$entry != lOther$assetIds$entry) {
        return false;
      }
    }
    final l$transferEffectiveFrom = transferEffectiveFrom;
    final lOther$transferEffectiveFrom = other.transferEffectiveFrom;
    if (l$transferEffectiveFrom != lOther$transferEffectiveFrom) {
      return false;
    }
    final l$transferToDepo = transferToDepo;
    final lOther$transferToDepo = other.transferToDepo;
    if (l$transferToDepo != lOther$transferToDepo) {
      return false;
    }
    final l$transferReason = transferReason;
    final lOther$transferReason = other.transferReason;
    if (_$data.containsKey('transferReason') !=
        other._$data.containsKey('transferReason')) {
      return false;
    }
    if (l$transferReason != lOther$transferReason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetIds = assetIds;
    final l$transferEffectiveFrom = transferEffectiveFrom;
    final l$transferToDepo = transferToDepo;
    final l$transferReason = transferReason;
    return Object.hashAll([
      Object.hashAll(l$assetIds.map((v) => v)),
      l$transferEffectiveFrom,
      l$transferToDepo,
      _$data.containsKey('transferReason') ? l$transferReason : const {},
    ]);
  }
}

abstract class CopyWith$Input$TransferRequestInput<TRes> {
  factory CopyWith$Input$TransferRequestInput(
    Input$TransferRequestInput instance,
    TRes Function(Input$TransferRequestInput) then,
  ) = _CopyWithImpl$Input$TransferRequestInput;

  factory CopyWith$Input$TransferRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransferRequestInput;

  TRes call({
    List<String>? assetIds,
    DateTime? transferEffectiveFrom,
    String? transferToDepo,
    String? transferReason,
  });
}

class _CopyWithImpl$Input$TransferRequestInput<TRes>
    implements CopyWith$Input$TransferRequestInput<TRes> {
  _CopyWithImpl$Input$TransferRequestInput(
    this._instance,
    this._then,
  );

  final Input$TransferRequestInput _instance;

  final TRes Function(Input$TransferRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetIds = _undefined,
    Object? transferEffectiveFrom = _undefined,
    Object? transferToDepo = _undefined,
    Object? transferReason = _undefined,
  }) =>
      _then(Input$TransferRequestInput._({
        ..._instance._$data,
        if (assetIds != _undefined && assetIds != null)
          'assetIds': (assetIds as List<String>),
        if (transferEffectiveFrom != _undefined &&
            transferEffectiveFrom != null)
          'transferEffectiveFrom': (transferEffectiveFrom as DateTime),
        if (transferToDepo != _undefined && transferToDepo != null)
          'transferToDepo': (transferToDepo as String),
        if (transferReason != _undefined)
          'transferReason': (transferReason as String?),
      }));
}

class _CopyWithStubImpl$Input$TransferRequestInput<TRes>
    implements CopyWith$Input$TransferRequestInput<TRes> {
  _CopyWithStubImpl$Input$TransferRequestInput(this._res);

  TRes _res;

  call({
    List<String>? assetIds,
    DateTime? transferEffectiveFrom,
    String? transferToDepo,
    String? transferReason,
  }) =>
      _res;
}

class Input$DisposalRequestInput {
  factory Input$DisposalRequestInput({
    required List<String> assetIds,
    required DateTime disposalEffectiveFrom,
    required String disposalStatus,
    String? salesInvoice,
    String? disposalReason,
  }) =>
      Input$DisposalRequestInput._({
        r'assetIds': assetIds,
        r'disposalEffectiveFrom': disposalEffectiveFrom,
        r'disposalStatus': disposalStatus,
        if (salesInvoice != null) r'salesInvoice': salesInvoice,
        if (disposalReason != null) r'disposalReason': disposalReason,
      });

  Input$DisposalRequestInput._(this._$data);

  factory Input$DisposalRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$assetIds = data['assetIds'];
    result$data['assetIds'] =
        (l$assetIds as List<dynamic>).map((e) => (e as String)).toList();
    final l$disposalEffectiveFrom = data['disposalEffectiveFrom'];
    result$data['disposalEffectiveFrom'] =
        DateTime.parse((l$disposalEffectiveFrom as String));
    final l$disposalStatus = data['disposalStatus'];
    result$data['disposalStatus'] = (l$disposalStatus as String);
    if (data.containsKey('salesInvoice')) {
      final l$salesInvoice = data['salesInvoice'];
      result$data['salesInvoice'] = (l$salesInvoice as String?);
    }
    if (data.containsKey('disposalReason')) {
      final l$disposalReason = data['disposalReason'];
      result$data['disposalReason'] = (l$disposalReason as String?);
    }
    return Input$DisposalRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get assetIds => (_$data['assetIds'] as List<String>);

  DateTime get disposalEffectiveFrom =>
      (_$data['disposalEffectiveFrom'] as DateTime);

  String get disposalStatus => (_$data['disposalStatus'] as String);

  String? get salesInvoice => (_$data['salesInvoice'] as String?);

  String? get disposalReason => (_$data['disposalReason'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$assetIds = assetIds;
    result$data['assetIds'] = l$assetIds.map((e) => e).toList();
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    result$data['disposalEffectiveFrom'] =
        l$disposalEffectiveFrom.toIso8601String();
    final l$disposalStatus = disposalStatus;
    result$data['disposalStatus'] = l$disposalStatus;
    if (_$data.containsKey('salesInvoice')) {
      final l$salesInvoice = salesInvoice;
      result$data['salesInvoice'] = l$salesInvoice;
    }
    if (_$data.containsKey('disposalReason')) {
      final l$disposalReason = disposalReason;
      result$data['disposalReason'] = l$disposalReason;
    }
    return result$data;
  }

  CopyWith$Input$DisposalRequestInput<Input$DisposalRequestInput>
      get copyWith => CopyWith$Input$DisposalRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DisposalRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetIds = assetIds;
    final lOther$assetIds = other.assetIds;
    if (l$assetIds.length != lOther$assetIds.length) {
      return false;
    }
    for (int i = 0; i < l$assetIds.length; i++) {
      final l$assetIds$entry = l$assetIds[i];
      final lOther$assetIds$entry = lOther$assetIds[i];
      if (l$assetIds$entry != lOther$assetIds$entry) {
        return false;
      }
    }
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    final lOther$disposalEffectiveFrom = other.disposalEffectiveFrom;
    if (l$disposalEffectiveFrom != lOther$disposalEffectiveFrom) {
      return false;
    }
    final l$disposalStatus = disposalStatus;
    final lOther$disposalStatus = other.disposalStatus;
    if (l$disposalStatus != lOther$disposalStatus) {
      return false;
    }
    final l$salesInvoice = salesInvoice;
    final lOther$salesInvoice = other.salesInvoice;
    if (_$data.containsKey('salesInvoice') !=
        other._$data.containsKey('salesInvoice')) {
      return false;
    }
    if (l$salesInvoice != lOther$salesInvoice) {
      return false;
    }
    final l$disposalReason = disposalReason;
    final lOther$disposalReason = other.disposalReason;
    if (_$data.containsKey('disposalReason') !=
        other._$data.containsKey('disposalReason')) {
      return false;
    }
    if (l$disposalReason != lOther$disposalReason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetIds = assetIds;
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    final l$disposalStatus = disposalStatus;
    final l$salesInvoice = salesInvoice;
    final l$disposalReason = disposalReason;
    return Object.hashAll([
      Object.hashAll(l$assetIds.map((v) => v)),
      l$disposalEffectiveFrom,
      l$disposalStatus,
      _$data.containsKey('salesInvoice') ? l$salesInvoice : const {},
      _$data.containsKey('disposalReason') ? l$disposalReason : const {},
    ]);
  }
}

abstract class CopyWith$Input$DisposalRequestInput<TRes> {
  factory CopyWith$Input$DisposalRequestInput(
    Input$DisposalRequestInput instance,
    TRes Function(Input$DisposalRequestInput) then,
  ) = _CopyWithImpl$Input$DisposalRequestInput;

  factory CopyWith$Input$DisposalRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DisposalRequestInput;

  TRes call({
    List<String>? assetIds,
    DateTime? disposalEffectiveFrom,
    String? disposalStatus,
    String? salesInvoice,
    String? disposalReason,
  });
}

class _CopyWithImpl$Input$DisposalRequestInput<TRes>
    implements CopyWith$Input$DisposalRequestInput<TRes> {
  _CopyWithImpl$Input$DisposalRequestInput(
    this._instance,
    this._then,
  );

  final Input$DisposalRequestInput _instance;

  final TRes Function(Input$DisposalRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetIds = _undefined,
    Object? disposalEffectiveFrom = _undefined,
    Object? disposalStatus = _undefined,
    Object? salesInvoice = _undefined,
    Object? disposalReason = _undefined,
  }) =>
      _then(Input$DisposalRequestInput._({
        ..._instance._$data,
        if (assetIds != _undefined && assetIds != null)
          'assetIds': (assetIds as List<String>),
        if (disposalEffectiveFrom != _undefined &&
            disposalEffectiveFrom != null)
          'disposalEffectiveFrom': (disposalEffectiveFrom as DateTime),
        if (disposalStatus != _undefined && disposalStatus != null)
          'disposalStatus': (disposalStatus as String),
        if (salesInvoice != _undefined)
          'salesInvoice': (salesInvoice as String?),
        if (disposalReason != _undefined)
          'disposalReason': (disposalReason as String?),
      }));
}

class _CopyWithStubImpl$Input$DisposalRequestInput<TRes>
    implements CopyWith$Input$DisposalRequestInput<TRes> {
  _CopyWithStubImpl$Input$DisposalRequestInput(this._res);

  TRes _res;

  call({
    List<String>? assetIds,
    DateTime? disposalEffectiveFrom,
    String? disposalStatus,
    String? salesInvoice,
    String? disposalReason,
  }) =>
      _res;
}

class Input$UpdateAssetApprovalInput {
  factory Input$UpdateAssetApprovalInput({
    required List<Input$ApprovalRequestInput> assetApprovalIds,
    required String status,
  }) =>
      Input$UpdateAssetApprovalInput._({
        r'assetApprovalIds': assetApprovalIds,
        r'status': status,
      });

  Input$UpdateAssetApprovalInput._(this._$data);

  factory Input$UpdateAssetApprovalInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$assetApprovalIds = data['assetApprovalIds'];
    result$data['assetApprovalIds'] = (l$assetApprovalIds as List<dynamic>)
        .map((e) =>
            Input$ApprovalRequestInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$status = data['status'];
    result$data['status'] = (l$status as String);
    return Input$UpdateAssetApprovalInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ApprovalRequestInput> get assetApprovalIds =>
      (_$data['assetApprovalIds'] as List<Input$ApprovalRequestInput>);

  String get status => (_$data['status'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$assetApprovalIds = assetApprovalIds;
    result$data['assetApprovalIds'] =
        l$assetApprovalIds.map((e) => e.toJson()).toList();
    final l$status = status;
    result$data['status'] = l$status;
    return result$data;
  }

  CopyWith$Input$UpdateAssetApprovalInput<Input$UpdateAssetApprovalInput>
      get copyWith => CopyWith$Input$UpdateAssetApprovalInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateAssetApprovalInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetApprovalIds = assetApprovalIds;
    final lOther$assetApprovalIds = other.assetApprovalIds;
    if (l$assetApprovalIds.length != lOther$assetApprovalIds.length) {
      return false;
    }
    for (int i = 0; i < l$assetApprovalIds.length; i++) {
      final l$assetApprovalIds$entry = l$assetApprovalIds[i];
      final lOther$assetApprovalIds$entry = lOther$assetApprovalIds[i];
      if (l$assetApprovalIds$entry != lOther$assetApprovalIds$entry) {
        return false;
      }
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetApprovalIds = assetApprovalIds;
    final l$status = status;
    return Object.hashAll([
      Object.hashAll(l$assetApprovalIds.map((v) => v)),
      l$status,
    ]);
  }
}

abstract class CopyWith$Input$UpdateAssetApprovalInput<TRes> {
  factory CopyWith$Input$UpdateAssetApprovalInput(
    Input$UpdateAssetApprovalInput instance,
    TRes Function(Input$UpdateAssetApprovalInput) then,
  ) = _CopyWithImpl$Input$UpdateAssetApprovalInput;

  factory CopyWith$Input$UpdateAssetApprovalInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateAssetApprovalInput;

  TRes call({
    List<Input$ApprovalRequestInput>? assetApprovalIds,
    String? status,
  });
  TRes assetApprovalIds(
      Iterable<Input$ApprovalRequestInput> Function(
              Iterable<
                  CopyWith$Input$ApprovalRequestInput<
                      Input$ApprovalRequestInput>>)
          _fn);
}

class _CopyWithImpl$Input$UpdateAssetApprovalInput<TRes>
    implements CopyWith$Input$UpdateAssetApprovalInput<TRes> {
  _CopyWithImpl$Input$UpdateAssetApprovalInput(
    this._instance,
    this._then,
  );

  final Input$UpdateAssetApprovalInput _instance;

  final TRes Function(Input$UpdateAssetApprovalInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetApprovalIds = _undefined,
    Object? status = _undefined,
  }) =>
      _then(Input$UpdateAssetApprovalInput._({
        ..._instance._$data,
        if (assetApprovalIds != _undefined && assetApprovalIds != null)
          'assetApprovalIds':
              (assetApprovalIds as List<Input$ApprovalRequestInput>),
        if (status != _undefined && status != null)
          'status': (status as String),
      }));

  TRes assetApprovalIds(
          Iterable<Input$ApprovalRequestInput> Function(
                  Iterable<
                      CopyWith$Input$ApprovalRequestInput<
                          Input$ApprovalRequestInput>>)
              _fn) =>
      call(
          assetApprovalIds: _fn(_instance.assetApprovalIds
              .map((e) => CopyWith$Input$ApprovalRequestInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$UpdateAssetApprovalInput<TRes>
    implements CopyWith$Input$UpdateAssetApprovalInput<TRes> {
  _CopyWithStubImpl$Input$UpdateAssetApprovalInput(this._res);

  TRes _res;

  call({
    List<Input$ApprovalRequestInput>? assetApprovalIds,
    String? status,
  }) =>
      _res;

  assetApprovalIds(_fn) => _res;
}

class Input$BulkAssetRequestInput {
  factory Input$BulkAssetRequestInput({required List<String> assetIds}) =>
      Input$BulkAssetRequestInput._({
        r'assetIds': assetIds,
      });

  Input$BulkAssetRequestInput._(this._$data);

  factory Input$BulkAssetRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$assetIds = data['assetIds'];
    result$data['assetIds'] =
        (l$assetIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$BulkAssetRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get assetIds => (_$data['assetIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$assetIds = assetIds;
    result$data['assetIds'] = l$assetIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$BulkAssetRequestInput<Input$BulkAssetRequestInput>
      get copyWith => CopyWith$Input$BulkAssetRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BulkAssetRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetIds = assetIds;
    final lOther$assetIds = other.assetIds;
    if (l$assetIds.length != lOther$assetIds.length) {
      return false;
    }
    for (int i = 0; i < l$assetIds.length; i++) {
      final l$assetIds$entry = l$assetIds[i];
      final lOther$assetIds$entry = lOther$assetIds[i];
      if (l$assetIds$entry != lOther$assetIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetIds = assetIds;
    return Object.hashAll([Object.hashAll(l$assetIds.map((v) => v))]);
  }
}

abstract class CopyWith$Input$BulkAssetRequestInput<TRes> {
  factory CopyWith$Input$BulkAssetRequestInput(
    Input$BulkAssetRequestInput instance,
    TRes Function(Input$BulkAssetRequestInput) then,
  ) = _CopyWithImpl$Input$BulkAssetRequestInput;

  factory CopyWith$Input$BulkAssetRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BulkAssetRequestInput;

  TRes call({List<String>? assetIds});
}

class _CopyWithImpl$Input$BulkAssetRequestInput<TRes>
    implements CopyWith$Input$BulkAssetRequestInput<TRes> {
  _CopyWithImpl$Input$BulkAssetRequestInput(
    this._instance,
    this._then,
  );

  final Input$BulkAssetRequestInput _instance;

  final TRes Function(Input$BulkAssetRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? assetIds = _undefined}) =>
      _then(Input$BulkAssetRequestInput._({
        ..._instance._$data,
        if (assetIds != _undefined && assetIds != null)
          'assetIds': (assetIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$BulkAssetRequestInput<TRes>
    implements CopyWith$Input$BulkAssetRequestInput<TRes> {
  _CopyWithStubImpl$Input$BulkAssetRequestInput(this._res);

  TRes _res;

  call({List<String>? assetIds}) => _res;
}

class Input$SaveSearchParametersInput {
  factory Input$SaveSearchParametersInput({
    String? existingName,
    required String name,
    required String parameters,
  }) =>
      Input$SaveSearchParametersInput._({
        if (existingName != null) r'existingName': existingName,
        r'name': name,
        r'parameters': parameters,
      });

  Input$SaveSearchParametersInput._(this._$data);

  factory Input$SaveSearchParametersInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('existingName')) {
      final l$existingName = data['existingName'];
      result$data['existingName'] = (l$existingName as String?);
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$parameters = data['parameters'];
    result$data['parameters'] = (l$parameters as String);
    return Input$SaveSearchParametersInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get existingName => (_$data['existingName'] as String?);

  String get name => (_$data['name'] as String);

  String get parameters => (_$data['parameters'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('existingName')) {
      final l$existingName = existingName;
      result$data['existingName'] = l$existingName;
    }
    final l$name = name;
    result$data['name'] = l$name;
    final l$parameters = parameters;
    result$data['parameters'] = l$parameters;
    return result$data;
  }

  CopyWith$Input$SaveSearchParametersInput<Input$SaveSearchParametersInput>
      get copyWith => CopyWith$Input$SaveSearchParametersInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SaveSearchParametersInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$existingName = existingName;
    final lOther$existingName = other.existingName;
    if (_$data.containsKey('existingName') !=
        other._$data.containsKey('existingName')) {
      return false;
    }
    if (l$existingName != lOther$existingName) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$parameters = parameters;
    final lOther$parameters = other.parameters;
    if (l$parameters != lOther$parameters) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$existingName = existingName;
    final l$name = name;
    final l$parameters = parameters;
    return Object.hashAll([
      _$data.containsKey('existingName') ? l$existingName : const {},
      l$name,
      l$parameters,
    ]);
  }
}

abstract class CopyWith$Input$SaveSearchParametersInput<TRes> {
  factory CopyWith$Input$SaveSearchParametersInput(
    Input$SaveSearchParametersInput instance,
    TRes Function(Input$SaveSearchParametersInput) then,
  ) = _CopyWithImpl$Input$SaveSearchParametersInput;

  factory CopyWith$Input$SaveSearchParametersInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SaveSearchParametersInput;

  TRes call({
    String? existingName,
    String? name,
    String? parameters,
  });
}

class _CopyWithImpl$Input$SaveSearchParametersInput<TRes>
    implements CopyWith$Input$SaveSearchParametersInput<TRes> {
  _CopyWithImpl$Input$SaveSearchParametersInput(
    this._instance,
    this._then,
  );

  final Input$SaveSearchParametersInput _instance;

  final TRes Function(Input$SaveSearchParametersInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? existingName = _undefined,
    Object? name = _undefined,
    Object? parameters = _undefined,
  }) =>
      _then(Input$SaveSearchParametersInput._({
        ..._instance._$data,
        if (existingName != _undefined)
          'existingName': (existingName as String?),
        if (name != _undefined && name != null) 'name': (name as String),
        if (parameters != _undefined && parameters != null)
          'parameters': (parameters as String),
      }));
}

class _CopyWithStubImpl$Input$SaveSearchParametersInput<TRes>
    implements CopyWith$Input$SaveSearchParametersInput<TRes> {
  _CopyWithStubImpl$Input$SaveSearchParametersInput(this._res);

  TRes _res;

  call({
    String? existingName,
    String? name,
    String? parameters,
  }) =>
      _res;
}

class Input$UpdateListInput {
  factory Input$UpdateListInput({
    required String id,
    required String name,
    required List<Input$ListValueRecordInput> values,
  }) =>
      Input$UpdateListInput._({
        r'id': id,
        r'name': name,
        r'values': values,
      });

  Input$UpdateListInput._(this._$data);

  factory Input$UpdateListInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$values = data['values'];
    result$data['values'] = (l$values as List<dynamic>)
        .map((e) =>
            Input$ListValueRecordInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$UpdateListInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get name => (_$data['name'] as String);

  List<Input$ListValueRecordInput> get values =>
      (_$data['values'] as List<Input$ListValueRecordInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$values = values;
    result$data['values'] = l$values.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$UpdateListInput<Input$UpdateListInput> get copyWith =>
      CopyWith$Input$UpdateListInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateListInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values.length != lOther$values.length) {
      return false;
    }
    for (int i = 0; i < l$values.length; i++) {
      final l$values$entry = l$values[i];
      final lOther$values$entry = lOther$values[i];
      if (l$values$entry != lOther$values$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$values = values;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$values.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$UpdateListInput<TRes> {
  factory CopyWith$Input$UpdateListInput(
    Input$UpdateListInput instance,
    TRes Function(Input$UpdateListInput) then,
  ) = _CopyWithImpl$Input$UpdateListInput;

  factory CopyWith$Input$UpdateListInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateListInput;

  TRes call({
    String? id,
    String? name,
    List<Input$ListValueRecordInput>? values,
  });
  TRes values(
      Iterable<Input$ListValueRecordInput> Function(
              Iterable<
                  CopyWith$Input$ListValueRecordInput<
                      Input$ListValueRecordInput>>)
          _fn);
}

class _CopyWithImpl$Input$UpdateListInput<TRes>
    implements CopyWith$Input$UpdateListInput<TRes> {
  _CopyWithImpl$Input$UpdateListInput(
    this._instance,
    this._then,
  );

  final Input$UpdateListInput _instance;

  final TRes Function(Input$UpdateListInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? values = _undefined,
  }) =>
      _then(Input$UpdateListInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (values != _undefined && values != null)
          'values': (values as List<Input$ListValueRecordInput>),
      }));

  TRes values(
          Iterable<Input$ListValueRecordInput> Function(
                  Iterable<
                      CopyWith$Input$ListValueRecordInput<
                          Input$ListValueRecordInput>>)
              _fn) =>
      call(
          values: _fn(
              _instance.values.map((e) => CopyWith$Input$ListValueRecordInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$UpdateListInput<TRes>
    implements CopyWith$Input$UpdateListInput<TRes> {
  _CopyWithStubImpl$Input$UpdateListInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<Input$ListValueRecordInput>? values,
  }) =>
      _res;

  values(_fn) => _res;
}

class Input$UpdateAssetTemplateInput {
  factory Input$UpdateAssetTemplateInput({
    String? id,
    String? name,
    String? codeFormat,
    String? category,
    required bool hierarchy,
    required bool location,
    required bool notifyChanges,
    required bool parentAssetRequired,
    required bool permittedHours,
    required List<String> reviewAttributes,
    required bool shiftHours,
    required bool syncAssetToCMMS,
    required bool syncProjectToCMMS,
    required bool syncResouceToCMMS,
    required bool telematic,
    List<Input$AssetTemplateSyncTargetInput>? syncTargets,
    List<Input$AssetTemplatePropertyInput>? templateProperties,
    List<Input$AssetTemplateCounterInput>? templateCounters,
  }) =>
      Input$UpdateAssetTemplateInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (codeFormat != null) r'codeFormat': codeFormat,
        if (category != null) r'category': category,
        r'hierarchy': hierarchy,
        r'location': location,
        r'notifyChanges': notifyChanges,
        r'parentAssetRequired': parentAssetRequired,
        r'permittedHours': permittedHours,
        r'reviewAttributes': reviewAttributes,
        r'shiftHours': shiftHours,
        r'syncAssetToCMMS': syncAssetToCMMS,
        r'syncProjectToCMMS': syncProjectToCMMS,
        r'syncResouceToCMMS': syncResouceToCMMS,
        r'telematic': telematic,
        if (syncTargets != null) r'syncTargets': syncTargets,
        if (templateProperties != null)
          r'templateProperties': templateProperties,
        if (templateCounters != null) r'templateCounters': templateCounters,
      });

  Input$UpdateAssetTemplateInput._(this._$data);

  factory Input$UpdateAssetTemplateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('codeFormat')) {
      final l$codeFormat = data['codeFormat'];
      result$data['codeFormat'] = (l$codeFormat as String?);
    }
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = (l$category as String?);
    }
    final l$hierarchy = data['hierarchy'];
    result$data['hierarchy'] = (l$hierarchy as bool);
    final l$location = data['location'];
    result$data['location'] = (l$location as bool);
    final l$notifyChanges = data['notifyChanges'];
    result$data['notifyChanges'] = (l$notifyChanges as bool);
    final l$parentAssetRequired = data['parentAssetRequired'];
    result$data['parentAssetRequired'] = (l$parentAssetRequired as bool);
    final l$permittedHours = data['permittedHours'];
    result$data['permittedHours'] = (l$permittedHours as bool);
    final l$reviewAttributes = data['reviewAttributes'];
    result$data['reviewAttributes'] = (l$reviewAttributes as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$shiftHours = data['shiftHours'];
    result$data['shiftHours'] = (l$shiftHours as bool);
    final l$syncAssetToCMMS = data['syncAssetToCMMS'];
    result$data['syncAssetToCMMS'] = (l$syncAssetToCMMS as bool);
    final l$syncProjectToCMMS = data['syncProjectToCMMS'];
    result$data['syncProjectToCMMS'] = (l$syncProjectToCMMS as bool);
    final l$syncResouceToCMMS = data['syncResouceToCMMS'];
    result$data['syncResouceToCMMS'] = (l$syncResouceToCMMS as bool);
    final l$telematic = data['telematic'];
    result$data['telematic'] = (l$telematic as bool);
    if (data.containsKey('syncTargets')) {
      final l$syncTargets = data['syncTargets'];
      result$data['syncTargets'] = (l$syncTargets as List<dynamic>?)
          ?.map((e) => Input$AssetTemplateSyncTargetInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('templateProperties')) {
      final l$templateProperties = data['templateProperties'];
      result$data['templateProperties'] =
          (l$templateProperties as List<dynamic>?)
              ?.map((e) => Input$AssetTemplatePropertyInput.fromJson(
                  (e as Map<String, dynamic>)))
              .toList();
    }
    if (data.containsKey('templateCounters')) {
      final l$templateCounters = data['templateCounters'];
      result$data['templateCounters'] = (l$templateCounters as List<dynamic>?)
          ?.map((e) => Input$AssetTemplateCounterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$UpdateAssetTemplateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get name => (_$data['name'] as String?);

  String? get codeFormat => (_$data['codeFormat'] as String?);

  String? get category => (_$data['category'] as String?);

  bool get hierarchy => (_$data['hierarchy'] as bool);

  bool get location => (_$data['location'] as bool);

  bool get notifyChanges => (_$data['notifyChanges'] as bool);

  bool get parentAssetRequired => (_$data['parentAssetRequired'] as bool);

  bool get permittedHours => (_$data['permittedHours'] as bool);

  List<String> get reviewAttributes =>
      (_$data['reviewAttributes'] as List<String>);

  bool get shiftHours => (_$data['shiftHours'] as bool);

  bool get syncAssetToCMMS => (_$data['syncAssetToCMMS'] as bool);

  bool get syncProjectToCMMS => (_$data['syncProjectToCMMS'] as bool);

  bool get syncResouceToCMMS => (_$data['syncResouceToCMMS'] as bool);

  bool get telematic => (_$data['telematic'] as bool);

  List<Input$AssetTemplateSyncTargetInput>? get syncTargets =>
      (_$data['syncTargets'] as List<Input$AssetTemplateSyncTargetInput>?);

  List<Input$AssetTemplatePropertyInput>? get templateProperties =>
      (_$data['templateProperties'] as List<Input$AssetTemplatePropertyInput>?);

  List<Input$AssetTemplateCounterInput>? get templateCounters =>
      (_$data['templateCounters'] as List<Input$AssetTemplateCounterInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('codeFormat')) {
      final l$codeFormat = codeFormat;
      result$data['codeFormat'] = l$codeFormat;
    }
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category;
    }
    final l$hierarchy = hierarchy;
    result$data['hierarchy'] = l$hierarchy;
    final l$location = location;
    result$data['location'] = l$location;
    final l$notifyChanges = notifyChanges;
    result$data['notifyChanges'] = l$notifyChanges;
    final l$parentAssetRequired = parentAssetRequired;
    result$data['parentAssetRequired'] = l$parentAssetRequired;
    final l$permittedHours = permittedHours;
    result$data['permittedHours'] = l$permittedHours;
    final l$reviewAttributes = reviewAttributes;
    result$data['reviewAttributes'] = l$reviewAttributes.map((e) => e).toList();
    final l$shiftHours = shiftHours;
    result$data['shiftHours'] = l$shiftHours;
    final l$syncAssetToCMMS = syncAssetToCMMS;
    result$data['syncAssetToCMMS'] = l$syncAssetToCMMS;
    final l$syncProjectToCMMS = syncProjectToCMMS;
    result$data['syncProjectToCMMS'] = l$syncProjectToCMMS;
    final l$syncResouceToCMMS = syncResouceToCMMS;
    result$data['syncResouceToCMMS'] = l$syncResouceToCMMS;
    final l$telematic = telematic;
    result$data['telematic'] = l$telematic;
    if (_$data.containsKey('syncTargets')) {
      final l$syncTargets = syncTargets;
      result$data['syncTargets'] =
          l$syncTargets?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('templateProperties')) {
      final l$templateProperties = templateProperties;
      result$data['templateProperties'] =
          l$templateProperties?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('templateCounters')) {
      final l$templateCounters = templateCounters;
      result$data['templateCounters'] =
          l$templateCounters?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$UpdateAssetTemplateInput<Input$UpdateAssetTemplateInput>
      get copyWith => CopyWith$Input$UpdateAssetTemplateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateAssetTemplateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$codeFormat = codeFormat;
    final lOther$codeFormat = other.codeFormat;
    if (_$data.containsKey('codeFormat') !=
        other._$data.containsKey('codeFormat')) {
      return false;
    }
    if (l$codeFormat != lOther$codeFormat) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$hierarchy = hierarchy;
    final lOther$hierarchy = other.hierarchy;
    if (l$hierarchy != lOther$hierarchy) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$notifyChanges = notifyChanges;
    final lOther$notifyChanges = other.notifyChanges;
    if (l$notifyChanges != lOther$notifyChanges) {
      return false;
    }
    final l$parentAssetRequired = parentAssetRequired;
    final lOther$parentAssetRequired = other.parentAssetRequired;
    if (l$parentAssetRequired != lOther$parentAssetRequired) {
      return false;
    }
    final l$permittedHours = permittedHours;
    final lOther$permittedHours = other.permittedHours;
    if (l$permittedHours != lOther$permittedHours) {
      return false;
    }
    final l$reviewAttributes = reviewAttributes;
    final lOther$reviewAttributes = other.reviewAttributes;
    if (l$reviewAttributes.length != lOther$reviewAttributes.length) {
      return false;
    }
    for (int i = 0; i < l$reviewAttributes.length; i++) {
      final l$reviewAttributes$entry = l$reviewAttributes[i];
      final lOther$reviewAttributes$entry = lOther$reviewAttributes[i];
      if (l$reviewAttributes$entry != lOther$reviewAttributes$entry) {
        return false;
      }
    }
    final l$shiftHours = shiftHours;
    final lOther$shiftHours = other.shiftHours;
    if (l$shiftHours != lOther$shiftHours) {
      return false;
    }
    final l$syncAssetToCMMS = syncAssetToCMMS;
    final lOther$syncAssetToCMMS = other.syncAssetToCMMS;
    if (l$syncAssetToCMMS != lOther$syncAssetToCMMS) {
      return false;
    }
    final l$syncProjectToCMMS = syncProjectToCMMS;
    final lOther$syncProjectToCMMS = other.syncProjectToCMMS;
    if (l$syncProjectToCMMS != lOther$syncProjectToCMMS) {
      return false;
    }
    final l$syncResouceToCMMS = syncResouceToCMMS;
    final lOther$syncResouceToCMMS = other.syncResouceToCMMS;
    if (l$syncResouceToCMMS != lOther$syncResouceToCMMS) {
      return false;
    }
    final l$telematic = telematic;
    final lOther$telematic = other.telematic;
    if (l$telematic != lOther$telematic) {
      return false;
    }
    final l$syncTargets = syncTargets;
    final lOther$syncTargets = other.syncTargets;
    if (_$data.containsKey('syncTargets') !=
        other._$data.containsKey('syncTargets')) {
      return false;
    }
    if (l$syncTargets != null && lOther$syncTargets != null) {
      if (l$syncTargets.length != lOther$syncTargets.length) {
        return false;
      }
      for (int i = 0; i < l$syncTargets.length; i++) {
        final l$syncTargets$entry = l$syncTargets[i];
        final lOther$syncTargets$entry = lOther$syncTargets[i];
        if (l$syncTargets$entry != lOther$syncTargets$entry) {
          return false;
        }
      }
    } else if (l$syncTargets != lOther$syncTargets) {
      return false;
    }
    final l$templateProperties = templateProperties;
    final lOther$templateProperties = other.templateProperties;
    if (_$data.containsKey('templateProperties') !=
        other._$data.containsKey('templateProperties')) {
      return false;
    }
    if (l$templateProperties != null && lOther$templateProperties != null) {
      if (l$templateProperties.length != lOther$templateProperties.length) {
        return false;
      }
      for (int i = 0; i < l$templateProperties.length; i++) {
        final l$templateProperties$entry = l$templateProperties[i];
        final lOther$templateProperties$entry = lOther$templateProperties[i];
        if (l$templateProperties$entry != lOther$templateProperties$entry) {
          return false;
        }
      }
    } else if (l$templateProperties != lOther$templateProperties) {
      return false;
    }
    final l$templateCounters = templateCounters;
    final lOther$templateCounters = other.templateCounters;
    if (_$data.containsKey('templateCounters') !=
        other._$data.containsKey('templateCounters')) {
      return false;
    }
    if (l$templateCounters != null && lOther$templateCounters != null) {
      if (l$templateCounters.length != lOther$templateCounters.length) {
        return false;
      }
      for (int i = 0; i < l$templateCounters.length; i++) {
        final l$templateCounters$entry = l$templateCounters[i];
        final lOther$templateCounters$entry = lOther$templateCounters[i];
        if (l$templateCounters$entry != lOther$templateCounters$entry) {
          return false;
        }
      }
    } else if (l$templateCounters != lOther$templateCounters) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$codeFormat = codeFormat;
    final l$category = category;
    final l$hierarchy = hierarchy;
    final l$location = location;
    final l$notifyChanges = notifyChanges;
    final l$parentAssetRequired = parentAssetRequired;
    final l$permittedHours = permittedHours;
    final l$reviewAttributes = reviewAttributes;
    final l$shiftHours = shiftHours;
    final l$syncAssetToCMMS = syncAssetToCMMS;
    final l$syncProjectToCMMS = syncProjectToCMMS;
    final l$syncResouceToCMMS = syncResouceToCMMS;
    final l$telematic = telematic;
    final l$syncTargets = syncTargets;
    final l$templateProperties = templateProperties;
    final l$templateCounters = templateCounters;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('codeFormat') ? l$codeFormat : const {},
      _$data.containsKey('category') ? l$category : const {},
      l$hierarchy,
      l$location,
      l$notifyChanges,
      l$parentAssetRequired,
      l$permittedHours,
      Object.hashAll(l$reviewAttributes.map((v) => v)),
      l$shiftHours,
      l$syncAssetToCMMS,
      l$syncProjectToCMMS,
      l$syncResouceToCMMS,
      l$telematic,
      _$data.containsKey('syncTargets')
          ? l$syncTargets == null
              ? null
              : Object.hashAll(l$syncTargets.map((v) => v))
          : const {},
      _$data.containsKey('templateProperties')
          ? l$templateProperties == null
              ? null
              : Object.hashAll(l$templateProperties.map((v) => v))
          : const {},
      _$data.containsKey('templateCounters')
          ? l$templateCounters == null
              ? null
              : Object.hashAll(l$templateCounters.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateAssetTemplateInput<TRes> {
  factory CopyWith$Input$UpdateAssetTemplateInput(
    Input$UpdateAssetTemplateInput instance,
    TRes Function(Input$UpdateAssetTemplateInput) then,
  ) = _CopyWithImpl$Input$UpdateAssetTemplateInput;

  factory CopyWith$Input$UpdateAssetTemplateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateAssetTemplateInput;

  TRes call({
    String? id,
    String? name,
    String? codeFormat,
    String? category,
    bool? hierarchy,
    bool? location,
    bool? notifyChanges,
    bool? parentAssetRequired,
    bool? permittedHours,
    List<String>? reviewAttributes,
    bool? shiftHours,
    bool? syncAssetToCMMS,
    bool? syncProjectToCMMS,
    bool? syncResouceToCMMS,
    bool? telematic,
    List<Input$AssetTemplateSyncTargetInput>? syncTargets,
    List<Input$AssetTemplatePropertyInput>? templateProperties,
    List<Input$AssetTemplateCounterInput>? templateCounters,
  });
  TRes syncTargets(
      Iterable<Input$AssetTemplateSyncTargetInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateSyncTargetInput<
                      Input$AssetTemplateSyncTargetInput>>?)
          _fn);
  TRes templateProperties(
      Iterable<Input$AssetTemplatePropertyInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplatePropertyInput<
                      Input$AssetTemplatePropertyInput>>?)
          _fn);
  TRes templateCounters(
      Iterable<Input$AssetTemplateCounterInput>? Function(
              Iterable<
                  CopyWith$Input$AssetTemplateCounterInput<
                      Input$AssetTemplateCounterInput>>?)
          _fn);
}

class _CopyWithImpl$Input$UpdateAssetTemplateInput<TRes>
    implements CopyWith$Input$UpdateAssetTemplateInput<TRes> {
  _CopyWithImpl$Input$UpdateAssetTemplateInput(
    this._instance,
    this._then,
  );

  final Input$UpdateAssetTemplateInput _instance;

  final TRes Function(Input$UpdateAssetTemplateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? codeFormat = _undefined,
    Object? category = _undefined,
    Object? hierarchy = _undefined,
    Object? location = _undefined,
    Object? notifyChanges = _undefined,
    Object? parentAssetRequired = _undefined,
    Object? permittedHours = _undefined,
    Object? reviewAttributes = _undefined,
    Object? shiftHours = _undefined,
    Object? syncAssetToCMMS = _undefined,
    Object? syncProjectToCMMS = _undefined,
    Object? syncResouceToCMMS = _undefined,
    Object? telematic = _undefined,
    Object? syncTargets = _undefined,
    Object? templateProperties = _undefined,
    Object? templateCounters = _undefined,
  }) =>
      _then(Input$UpdateAssetTemplateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined) 'name': (name as String?),
        if (codeFormat != _undefined) 'codeFormat': (codeFormat as String?),
        if (category != _undefined) 'category': (category as String?),
        if (hierarchy != _undefined && hierarchy != null)
          'hierarchy': (hierarchy as bool),
        if (location != _undefined && location != null)
          'location': (location as bool),
        if (notifyChanges != _undefined && notifyChanges != null)
          'notifyChanges': (notifyChanges as bool),
        if (parentAssetRequired != _undefined && parentAssetRequired != null)
          'parentAssetRequired': (parentAssetRequired as bool),
        if (permittedHours != _undefined && permittedHours != null)
          'permittedHours': (permittedHours as bool),
        if (reviewAttributes != _undefined && reviewAttributes != null)
          'reviewAttributes': (reviewAttributes as List<String>),
        if (shiftHours != _undefined && shiftHours != null)
          'shiftHours': (shiftHours as bool),
        if (syncAssetToCMMS != _undefined && syncAssetToCMMS != null)
          'syncAssetToCMMS': (syncAssetToCMMS as bool),
        if (syncProjectToCMMS != _undefined && syncProjectToCMMS != null)
          'syncProjectToCMMS': (syncProjectToCMMS as bool),
        if (syncResouceToCMMS != _undefined && syncResouceToCMMS != null)
          'syncResouceToCMMS': (syncResouceToCMMS as bool),
        if (telematic != _undefined && telematic != null)
          'telematic': (telematic as bool),
        if (syncTargets != _undefined)
          'syncTargets':
              (syncTargets as List<Input$AssetTemplateSyncTargetInput>?),
        if (templateProperties != _undefined)
          'templateProperties':
              (templateProperties as List<Input$AssetTemplatePropertyInput>?),
        if (templateCounters != _undefined)
          'templateCounters':
              (templateCounters as List<Input$AssetTemplateCounterInput>?),
      }));

  TRes syncTargets(
          Iterable<Input$AssetTemplateSyncTargetInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateSyncTargetInput<
                          Input$AssetTemplateSyncTargetInput>>?)
              _fn) =>
      call(
          syncTargets: _fn(_instance.syncTargets
              ?.map((e) => CopyWith$Input$AssetTemplateSyncTargetInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes templateProperties(
          Iterable<Input$AssetTemplatePropertyInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplatePropertyInput<
                          Input$AssetTemplatePropertyInput>>?)
              _fn) =>
      call(
          templateProperties: _fn(_instance.templateProperties
              ?.map((e) => CopyWith$Input$AssetTemplatePropertyInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes templateCounters(
          Iterable<Input$AssetTemplateCounterInput>? Function(
                  Iterable<
                      CopyWith$Input$AssetTemplateCounterInput<
                          Input$AssetTemplateCounterInput>>?)
              _fn) =>
      call(
          templateCounters: _fn(_instance.templateCounters
              ?.map((e) => CopyWith$Input$AssetTemplateCounterInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$UpdateAssetTemplateInput<TRes>
    implements CopyWith$Input$UpdateAssetTemplateInput<TRes> {
  _CopyWithStubImpl$Input$UpdateAssetTemplateInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? codeFormat,
    String? category,
    bool? hierarchy,
    bool? location,
    bool? notifyChanges,
    bool? parentAssetRequired,
    bool? permittedHours,
    List<String>? reviewAttributes,
    bool? shiftHours,
    bool? syncAssetToCMMS,
    bool? syncProjectToCMMS,
    bool? syncResouceToCMMS,
    bool? telematic,
    List<Input$AssetTemplateSyncTargetInput>? syncTargets,
    List<Input$AssetTemplatePropertyInput>? templateProperties,
    List<Input$AssetTemplateCounterInput>? templateCounters,
  }) =>
      _res;

  syncTargets(_fn) => _res;

  templateProperties(_fn) => _res;

  templateCounters(_fn) => _res;
}

class Input$ImportAssetTemplateInput {
  factory Input$ImportAssetTemplateInput({
    required String file,
    required bool preview,
  }) =>
      Input$ImportAssetTemplateInput._({
        r'file': file,
        r'preview': preview,
      });

  Input$ImportAssetTemplateInput._(this._$data);

  factory Input$ImportAssetTemplateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$file = data['file'];
    result$data['file'] = (l$file as String);
    final l$preview = data['preview'];
    result$data['preview'] = (l$preview as bool);
    return Input$ImportAssetTemplateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get file => (_$data['file'] as String);

  bool get preview => (_$data['preview'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$file = file;
    result$data['file'] = l$file;
    final l$preview = preview;
    result$data['preview'] = l$preview;
    return result$data;
  }

  CopyWith$Input$ImportAssetTemplateInput<Input$ImportAssetTemplateInput>
      get copyWith => CopyWith$Input$ImportAssetTemplateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ImportAssetTemplateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (l$file != lOther$file) {
      return false;
    }
    final l$preview = preview;
    final lOther$preview = other.preview;
    if (l$preview != lOther$preview) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$file = file;
    final l$preview = preview;
    return Object.hashAll([
      l$file,
      l$preview,
    ]);
  }
}

abstract class CopyWith$Input$ImportAssetTemplateInput<TRes> {
  factory CopyWith$Input$ImportAssetTemplateInput(
    Input$ImportAssetTemplateInput instance,
    TRes Function(Input$ImportAssetTemplateInput) then,
  ) = _CopyWithImpl$Input$ImportAssetTemplateInput;

  factory CopyWith$Input$ImportAssetTemplateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ImportAssetTemplateInput;

  TRes call({
    String? file,
    bool? preview,
  });
}

class _CopyWithImpl$Input$ImportAssetTemplateInput<TRes>
    implements CopyWith$Input$ImportAssetTemplateInput<TRes> {
  _CopyWithImpl$Input$ImportAssetTemplateInput(
    this._instance,
    this._then,
  );

  final Input$ImportAssetTemplateInput _instance;

  final TRes Function(Input$ImportAssetTemplateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? file = _undefined,
    Object? preview = _undefined,
  }) =>
      _then(Input$ImportAssetTemplateInput._({
        ..._instance._$data,
        if (file != _undefined && file != null) 'file': (file as String),
        if (preview != _undefined && preview != null)
          'preview': (preview as bool),
      }));
}

class _CopyWithStubImpl$Input$ImportAssetTemplateInput<TRes>
    implements CopyWith$Input$ImportAssetTemplateInput<TRes> {
  _CopyWithStubImpl$Input$ImportAssetTemplateInput(this._res);

  TRes _res;

  call({
    String? file,
    bool? preview,
  }) =>
      _res;
}

class Input$BulkUpdateAssetInput {
  factory Input$BulkUpdateAssetInput({required String file}) =>
      Input$BulkUpdateAssetInput._({
        r'file': file,
      });

  Input$BulkUpdateAssetInput._(this._$data);

  factory Input$BulkUpdateAssetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$file = data['file'];
    result$data['file'] = (l$file as String);
    return Input$BulkUpdateAssetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get file => (_$data['file'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$file = file;
    result$data['file'] = l$file;
    return result$data;
  }

  CopyWith$Input$BulkUpdateAssetInput<Input$BulkUpdateAssetInput>
      get copyWith => CopyWith$Input$BulkUpdateAssetInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BulkUpdateAssetInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (l$file != lOther$file) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$file = file;
    return Object.hashAll([l$file]);
  }
}

abstract class CopyWith$Input$BulkUpdateAssetInput<TRes> {
  factory CopyWith$Input$BulkUpdateAssetInput(
    Input$BulkUpdateAssetInput instance,
    TRes Function(Input$BulkUpdateAssetInput) then,
  ) = _CopyWithImpl$Input$BulkUpdateAssetInput;

  factory CopyWith$Input$BulkUpdateAssetInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BulkUpdateAssetInput;

  TRes call({String? file});
}

class _CopyWithImpl$Input$BulkUpdateAssetInput<TRes>
    implements CopyWith$Input$BulkUpdateAssetInput<TRes> {
  _CopyWithImpl$Input$BulkUpdateAssetInput(
    this._instance,
    this._then,
  );

  final Input$BulkUpdateAssetInput _instance;

  final TRes Function(Input$BulkUpdateAssetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? file = _undefined}) => _then(Input$BulkUpdateAssetInput._({
        ..._instance._$data,
        if (file != _undefined && file != null) 'file': (file as String),
      }));
}

class _CopyWithStubImpl$Input$BulkUpdateAssetInput<TRes>
    implements CopyWith$Input$BulkUpdateAssetInput<TRes> {
  _CopyWithStubImpl$Input$BulkUpdateAssetInput(this._res);

  TRes _res;

  call({String? file}) => _res;
}

class Input$ImportAssetInput {
  factory Input$ImportAssetInput({
    required String file,
    required String jsonSchema,
    required String worksheetName,
    required int startRow,
    required int endRow,
    required bool preview,
  }) =>
      Input$ImportAssetInput._({
        r'file': file,
        r'jsonSchema': jsonSchema,
        r'worksheetName': worksheetName,
        r'startRow': startRow,
        r'endRow': endRow,
        r'preview': preview,
      });

  Input$ImportAssetInput._(this._$data);

  factory Input$ImportAssetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$file = data['file'];
    result$data['file'] = (l$file as String);
    final l$jsonSchema = data['jsonSchema'];
    result$data['jsonSchema'] = (l$jsonSchema as String);
    final l$worksheetName = data['worksheetName'];
    result$data['worksheetName'] = (l$worksheetName as String);
    final l$startRow = data['startRow'];
    result$data['startRow'] = (l$startRow as int);
    final l$endRow = data['endRow'];
    result$data['endRow'] = (l$endRow as int);
    final l$preview = data['preview'];
    result$data['preview'] = (l$preview as bool);
    return Input$ImportAssetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get file => (_$data['file'] as String);

  String get jsonSchema => (_$data['jsonSchema'] as String);

  String get worksheetName => (_$data['worksheetName'] as String);

  int get startRow => (_$data['startRow'] as int);

  int get endRow => (_$data['endRow'] as int);

  bool get preview => (_$data['preview'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$file = file;
    result$data['file'] = l$file;
    final l$jsonSchema = jsonSchema;
    result$data['jsonSchema'] = l$jsonSchema;
    final l$worksheetName = worksheetName;
    result$data['worksheetName'] = l$worksheetName;
    final l$startRow = startRow;
    result$data['startRow'] = l$startRow;
    final l$endRow = endRow;
    result$data['endRow'] = l$endRow;
    final l$preview = preview;
    result$data['preview'] = l$preview;
    return result$data;
  }

  CopyWith$Input$ImportAssetInput<Input$ImportAssetInput> get copyWith =>
      CopyWith$Input$ImportAssetInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ImportAssetInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (l$file != lOther$file) {
      return false;
    }
    final l$jsonSchema = jsonSchema;
    final lOther$jsonSchema = other.jsonSchema;
    if (l$jsonSchema != lOther$jsonSchema) {
      return false;
    }
    final l$worksheetName = worksheetName;
    final lOther$worksheetName = other.worksheetName;
    if (l$worksheetName != lOther$worksheetName) {
      return false;
    }
    final l$startRow = startRow;
    final lOther$startRow = other.startRow;
    if (l$startRow != lOther$startRow) {
      return false;
    }
    final l$endRow = endRow;
    final lOther$endRow = other.endRow;
    if (l$endRow != lOther$endRow) {
      return false;
    }
    final l$preview = preview;
    final lOther$preview = other.preview;
    if (l$preview != lOther$preview) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$file = file;
    final l$jsonSchema = jsonSchema;
    final l$worksheetName = worksheetName;
    final l$startRow = startRow;
    final l$endRow = endRow;
    final l$preview = preview;
    return Object.hashAll([
      l$file,
      l$jsonSchema,
      l$worksheetName,
      l$startRow,
      l$endRow,
      l$preview,
    ]);
  }
}

abstract class CopyWith$Input$ImportAssetInput<TRes> {
  factory CopyWith$Input$ImportAssetInput(
    Input$ImportAssetInput instance,
    TRes Function(Input$ImportAssetInput) then,
  ) = _CopyWithImpl$Input$ImportAssetInput;

  factory CopyWith$Input$ImportAssetInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ImportAssetInput;

  TRes call({
    String? file,
    String? jsonSchema,
    String? worksheetName,
    int? startRow,
    int? endRow,
    bool? preview,
  });
}

class _CopyWithImpl$Input$ImportAssetInput<TRes>
    implements CopyWith$Input$ImportAssetInput<TRes> {
  _CopyWithImpl$Input$ImportAssetInput(
    this._instance,
    this._then,
  );

  final Input$ImportAssetInput _instance;

  final TRes Function(Input$ImportAssetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? file = _undefined,
    Object? jsonSchema = _undefined,
    Object? worksheetName = _undefined,
    Object? startRow = _undefined,
    Object? endRow = _undefined,
    Object? preview = _undefined,
  }) =>
      _then(Input$ImportAssetInput._({
        ..._instance._$data,
        if (file != _undefined && file != null) 'file': (file as String),
        if (jsonSchema != _undefined && jsonSchema != null)
          'jsonSchema': (jsonSchema as String),
        if (worksheetName != _undefined && worksheetName != null)
          'worksheetName': (worksheetName as String),
        if (startRow != _undefined && startRow != null)
          'startRow': (startRow as int),
        if (endRow != _undefined && endRow != null) 'endRow': (endRow as int),
        if (preview != _undefined && preview != null)
          'preview': (preview as bool),
      }));
}

class _CopyWithStubImpl$Input$ImportAssetInput<TRes>
    implements CopyWith$Input$ImportAssetInput<TRes> {
  _CopyWithStubImpl$Input$ImportAssetInput(this._res);

  TRes _res;

  call({
    String? file,
    String? jsonSchema,
    String? worksheetName,
    int? startRow,
    int? endRow,
    bool? preview,
  }) =>
      _res;
}

class Input$AssetTemplateCounterInput {
  factory Input$AssetTemplateCounterInput({
    required String id,
    required String groupId,
    required String key,
    required String name,
    required String dataType,
    required String incrementType,
    required bool active,
  }) =>
      Input$AssetTemplateCounterInput._({
        r'id': id,
        r'groupId': groupId,
        r'key': key,
        r'name': name,
        r'dataType': dataType,
        r'incrementType': incrementType,
        r'active': active,
      });

  Input$AssetTemplateCounterInput._(this._$data);

  factory Input$AssetTemplateCounterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$groupId = data['groupId'];
    result$data['groupId'] = (l$groupId as String);
    final l$key = data['key'];
    result$data['key'] = (l$key as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$dataType = data['dataType'];
    result$data['dataType'] = (l$dataType as String);
    final l$incrementType = data['incrementType'];
    result$data['incrementType'] = (l$incrementType as String);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    return Input$AssetTemplateCounterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get groupId => (_$data['groupId'] as String);

  String get key => (_$data['key'] as String);

  String get name => (_$data['name'] as String);

  String get dataType => (_$data['dataType'] as String);

  String get incrementType => (_$data['incrementType'] as String);

  bool get active => (_$data['active'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$groupId = groupId;
    result$data['groupId'] = l$groupId;
    final l$key = key;
    result$data['key'] = l$key;
    final l$name = name;
    result$data['name'] = l$name;
    final l$dataType = dataType;
    result$data['dataType'] = l$dataType;
    final l$incrementType = incrementType;
    result$data['incrementType'] = l$incrementType;
    final l$active = active;
    result$data['active'] = l$active;
    return result$data;
  }

  CopyWith$Input$AssetTemplateCounterInput<Input$AssetTemplateCounterInput>
      get copyWith => CopyWith$Input$AssetTemplateCounterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetTemplateCounterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$incrementType = incrementType;
    final lOther$incrementType = other.incrementType;
    if (l$incrementType != lOther$incrementType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$groupId = groupId;
    final l$key = key;
    final l$name = name;
    final l$dataType = dataType;
    final l$incrementType = incrementType;
    final l$active = active;
    return Object.hashAll([
      l$id,
      l$groupId,
      l$key,
      l$name,
      l$dataType,
      l$incrementType,
      l$active,
    ]);
  }
}

abstract class CopyWith$Input$AssetTemplateCounterInput<TRes> {
  factory CopyWith$Input$AssetTemplateCounterInput(
    Input$AssetTemplateCounterInput instance,
    TRes Function(Input$AssetTemplateCounterInput) then,
  ) = _CopyWithImpl$Input$AssetTemplateCounterInput;

  factory CopyWith$Input$AssetTemplateCounterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetTemplateCounterInput;

  TRes call({
    String? id,
    String? groupId,
    String? key,
    String? name,
    String? dataType,
    String? incrementType,
    bool? active,
  });
}

class _CopyWithImpl$Input$AssetTemplateCounterInput<TRes>
    implements CopyWith$Input$AssetTemplateCounterInput<TRes> {
  _CopyWithImpl$Input$AssetTemplateCounterInput(
    this._instance,
    this._then,
  );

  final Input$AssetTemplateCounterInput _instance;

  final TRes Function(Input$AssetTemplateCounterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? groupId = _undefined,
    Object? key = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? incrementType = _undefined,
    Object? active = _undefined,
  }) =>
      _then(Input$AssetTemplateCounterInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (groupId != _undefined && groupId != null)
          'groupId': (groupId as String),
        if (key != _undefined && key != null) 'key': (key as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (dataType != _undefined && dataType != null)
          'dataType': (dataType as String),
        if (incrementType != _undefined && incrementType != null)
          'incrementType': (incrementType as String),
        if (active != _undefined && active != null) 'active': (active as bool),
      }));
}

class _CopyWithStubImpl$Input$AssetTemplateCounterInput<TRes>
    implements CopyWith$Input$AssetTemplateCounterInput<TRes> {
  _CopyWithStubImpl$Input$AssetTemplateCounterInput(this._res);

  TRes _res;

  call({
    String? id,
    String? groupId,
    String? key,
    String? name,
    String? dataType,
    String? incrementType,
    bool? active,
  }) =>
      _res;
}

class Input$AssetTemplatePropertyInput {
  factory Input$AssetTemplatePropertyInput({
    required String id,
    required String name,
    required String dataType,
    required bool isMandatory,
    required bool active,
    required int sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
  }) =>
      Input$AssetTemplatePropertyInput._({
        r'id': id,
        r'name': name,
        r'dataType': dataType,
        r'isMandatory': isMandatory,
        r'active': active,
        r'sequence': sequence,
        if (viewerGroupIds != null) r'viewerGroupIds': viewerGroupIds,
        if (updaterGroupIds != null) r'updaterGroupIds': updaterGroupIds,
      });

  Input$AssetTemplatePropertyInput._(this._$data);

  factory Input$AssetTemplatePropertyInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$dataType = data['dataType'];
    result$data['dataType'] = (l$dataType as String);
    final l$isMandatory = data['isMandatory'];
    result$data['isMandatory'] = (l$isMandatory as bool);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    final l$sequence = data['sequence'];
    result$data['sequence'] = (l$sequence as int);
    if (data.containsKey('viewerGroupIds')) {
      final l$viewerGroupIds = data['viewerGroupIds'];
      result$data['viewerGroupIds'] = (l$viewerGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('updaterGroupIds')) {
      final l$updaterGroupIds = data['updaterGroupIds'];
      result$data['updaterGroupIds'] = (l$updaterGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input$AssetTemplatePropertyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get name => (_$data['name'] as String);

  String get dataType => (_$data['dataType'] as String);

  bool get isMandatory => (_$data['isMandatory'] as bool);

  bool get active => (_$data['active'] as bool);

  int get sequence => (_$data['sequence'] as int);

  List<String>? get viewerGroupIds =>
      (_$data['viewerGroupIds'] as List<String>?);

  List<String>? get updaterGroupIds =>
      (_$data['updaterGroupIds'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$dataType = dataType;
    result$data['dataType'] = l$dataType;
    final l$isMandatory = isMandatory;
    result$data['isMandatory'] = l$isMandatory;
    final l$active = active;
    result$data['active'] = l$active;
    final l$sequence = sequence;
    result$data['sequence'] = l$sequence;
    if (_$data.containsKey('viewerGroupIds')) {
      final l$viewerGroupIds = viewerGroupIds;
      result$data['viewerGroupIds'] = l$viewerGroupIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('updaterGroupIds')) {
      final l$updaterGroupIds = updaterGroupIds;
      result$data['updaterGroupIds'] =
          l$updaterGroupIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$AssetTemplatePropertyInput<Input$AssetTemplatePropertyInput>
      get copyWith => CopyWith$Input$AssetTemplatePropertyInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetTemplatePropertyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$isMandatory = isMandatory;
    final lOther$isMandatory = other.isMandatory;
    if (l$isMandatory != lOther$isMandatory) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$viewerGroupIds = viewerGroupIds;
    final lOther$viewerGroupIds = other.viewerGroupIds;
    if (_$data.containsKey('viewerGroupIds') !=
        other._$data.containsKey('viewerGroupIds')) {
      return false;
    }
    if (l$viewerGroupIds != null && lOther$viewerGroupIds != null) {
      if (l$viewerGroupIds.length != lOther$viewerGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$viewerGroupIds.length; i++) {
        final l$viewerGroupIds$entry = l$viewerGroupIds[i];
        final lOther$viewerGroupIds$entry = lOther$viewerGroupIds[i];
        if (l$viewerGroupIds$entry != lOther$viewerGroupIds$entry) {
          return false;
        }
      }
    } else if (l$viewerGroupIds != lOther$viewerGroupIds) {
      return false;
    }
    final l$updaterGroupIds = updaterGroupIds;
    final lOther$updaterGroupIds = other.updaterGroupIds;
    if (_$data.containsKey('updaterGroupIds') !=
        other._$data.containsKey('updaterGroupIds')) {
      return false;
    }
    if (l$updaterGroupIds != null && lOther$updaterGroupIds != null) {
      if (l$updaterGroupIds.length != lOther$updaterGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$updaterGroupIds.length; i++) {
        final l$updaterGroupIds$entry = l$updaterGroupIds[i];
        final lOther$updaterGroupIds$entry = lOther$updaterGroupIds[i];
        if (l$updaterGroupIds$entry != lOther$updaterGroupIds$entry) {
          return false;
        }
      }
    } else if (l$updaterGroupIds != lOther$updaterGroupIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$dataType = dataType;
    final l$isMandatory = isMandatory;
    final l$active = active;
    final l$sequence = sequence;
    final l$viewerGroupIds = viewerGroupIds;
    final l$updaterGroupIds = updaterGroupIds;
    return Object.hashAll([
      l$id,
      l$name,
      l$dataType,
      l$isMandatory,
      l$active,
      l$sequence,
      _$data.containsKey('viewerGroupIds')
          ? l$viewerGroupIds == null
              ? null
              : Object.hashAll(l$viewerGroupIds.map((v) => v))
          : const {},
      _$data.containsKey('updaterGroupIds')
          ? l$updaterGroupIds == null
              ? null
              : Object.hashAll(l$updaterGroupIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetTemplatePropertyInput<TRes> {
  factory CopyWith$Input$AssetTemplatePropertyInput(
    Input$AssetTemplatePropertyInput instance,
    TRes Function(Input$AssetTemplatePropertyInput) then,
  ) = _CopyWithImpl$Input$AssetTemplatePropertyInput;

  factory CopyWith$Input$AssetTemplatePropertyInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetTemplatePropertyInput;

  TRes call({
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
  });
}

class _CopyWithImpl$Input$AssetTemplatePropertyInput<TRes>
    implements CopyWith$Input$AssetTemplatePropertyInput<TRes> {
  _CopyWithImpl$Input$AssetTemplatePropertyInput(
    this._instance,
    this._then,
  );

  final Input$AssetTemplatePropertyInput _instance;

  final TRes Function(Input$AssetTemplatePropertyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? isMandatory = _undefined,
    Object? active = _undefined,
    Object? sequence = _undefined,
    Object? viewerGroupIds = _undefined,
    Object? updaterGroupIds = _undefined,
  }) =>
      _then(Input$AssetTemplatePropertyInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (dataType != _undefined && dataType != null)
          'dataType': (dataType as String),
        if (isMandatory != _undefined && isMandatory != null)
          'isMandatory': (isMandatory as bool),
        if (active != _undefined && active != null) 'active': (active as bool),
        if (sequence != _undefined && sequence != null)
          'sequence': (sequence as int),
        if (viewerGroupIds != _undefined)
          'viewerGroupIds': (viewerGroupIds as List<String>?),
        if (updaterGroupIds != _undefined)
          'updaterGroupIds': (updaterGroupIds as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$AssetTemplatePropertyInput<TRes>
    implements CopyWith$Input$AssetTemplatePropertyInput<TRes> {
  _CopyWithStubImpl$Input$AssetTemplatePropertyInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
  }) =>
      _res;
}

class Input$AssetTemplateSyncTargetInput {
  factory Input$AssetTemplateSyncTargetInput({String? name}) =>
      Input$AssetTemplateSyncTargetInput._({
        if (name != null) r'name': name,
      });

  Input$AssetTemplateSyncTargetInput._(this._$data);

  factory Input$AssetTemplateSyncTargetInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input$AssetTemplateSyncTargetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Input$AssetTemplateSyncTargetInput<
          Input$AssetTemplateSyncTargetInput>
      get copyWith => CopyWith$Input$AssetTemplateSyncTargetInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetTemplateSyncTargetInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Input$AssetTemplateSyncTargetInput<TRes> {
  factory CopyWith$Input$AssetTemplateSyncTargetInput(
    Input$AssetTemplateSyncTargetInput instance,
    TRes Function(Input$AssetTemplateSyncTargetInput) then,
  ) = _CopyWithImpl$Input$AssetTemplateSyncTargetInput;

  factory CopyWith$Input$AssetTemplateSyncTargetInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetTemplateSyncTargetInput;

  TRes call({String? name});
}

class _CopyWithImpl$Input$AssetTemplateSyncTargetInput<TRes>
    implements CopyWith$Input$AssetTemplateSyncTargetInput<TRes> {
  _CopyWithImpl$Input$AssetTemplateSyncTargetInput(
    this._instance,
    this._then,
  );

  final Input$AssetTemplateSyncTargetInput _instance;

  final TRes Function(Input$AssetTemplateSyncTargetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Input$AssetTemplateSyncTargetInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Input$AssetTemplateSyncTargetInput<TRes>
    implements CopyWith$Input$AssetTemplateSyncTargetInput<TRes> {
  _CopyWithStubImpl$Input$AssetTemplateSyncTargetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$ListValueRecordInput {
  factory Input$ListValueRecordInput({
    Input$ListValueInput? oldValue,
    required Input$ListValueInput newValue,
  }) =>
      Input$ListValueRecordInput._({
        if (oldValue != null) r'oldValue': oldValue,
        r'newValue': newValue,
      });

  Input$ListValueRecordInput._(this._$data);

  factory Input$ListValueRecordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('oldValue')) {
      final l$oldValue = data['oldValue'];
      result$data['oldValue'] = l$oldValue == null
          ? null
          : Input$ListValueInput.fromJson((l$oldValue as Map<String, dynamic>));
    }
    final l$newValue = data['newValue'];
    result$data['newValue'] =
        Input$ListValueInput.fromJson((l$newValue as Map<String, dynamic>));
    return Input$ListValueRecordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ListValueInput? get oldValue =>
      (_$data['oldValue'] as Input$ListValueInput?);

  Input$ListValueInput get newValue =>
      (_$data['newValue'] as Input$ListValueInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('oldValue')) {
      final l$oldValue = oldValue;
      result$data['oldValue'] = l$oldValue?.toJson();
    }
    final l$newValue = newValue;
    result$data['newValue'] = l$newValue.toJson();
    return result$data;
  }

  CopyWith$Input$ListValueRecordInput<Input$ListValueRecordInput>
      get copyWith => CopyWith$Input$ListValueRecordInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListValueRecordInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$oldValue = oldValue;
    final lOther$oldValue = other.oldValue;
    if (_$data.containsKey('oldValue') !=
        other._$data.containsKey('oldValue')) {
      return false;
    }
    if (l$oldValue != lOther$oldValue) {
      return false;
    }
    final l$newValue = newValue;
    final lOther$newValue = other.newValue;
    if (l$newValue != lOther$newValue) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$oldValue = oldValue;
    final l$newValue = newValue;
    return Object.hashAll([
      _$data.containsKey('oldValue') ? l$oldValue : const {},
      l$newValue,
    ]);
  }
}

abstract class CopyWith$Input$ListValueRecordInput<TRes> {
  factory CopyWith$Input$ListValueRecordInput(
    Input$ListValueRecordInput instance,
    TRes Function(Input$ListValueRecordInput) then,
  ) = _CopyWithImpl$Input$ListValueRecordInput;

  factory CopyWith$Input$ListValueRecordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ListValueRecordInput;

  TRes call({
    Input$ListValueInput? oldValue,
    Input$ListValueInput? newValue,
  });
  CopyWith$Input$ListValueInput<TRes> get oldValue;
  CopyWith$Input$ListValueInput<TRes> get newValue;
}

class _CopyWithImpl$Input$ListValueRecordInput<TRes>
    implements CopyWith$Input$ListValueRecordInput<TRes> {
  _CopyWithImpl$Input$ListValueRecordInput(
    this._instance,
    this._then,
  );

  final Input$ListValueRecordInput _instance;

  final TRes Function(Input$ListValueRecordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? oldValue = _undefined,
    Object? newValue = _undefined,
  }) =>
      _then(Input$ListValueRecordInput._({
        ..._instance._$data,
        if (oldValue != _undefined)
          'oldValue': (oldValue as Input$ListValueInput?),
        if (newValue != _undefined && newValue != null)
          'newValue': (newValue as Input$ListValueInput),
      }));

  CopyWith$Input$ListValueInput<TRes> get oldValue {
    final local$oldValue = _instance.oldValue;
    return local$oldValue == null
        ? CopyWith$Input$ListValueInput.stub(_then(_instance))
        : CopyWith$Input$ListValueInput(
            local$oldValue, (e) => call(oldValue: e));
  }

  CopyWith$Input$ListValueInput<TRes> get newValue {
    final local$newValue = _instance.newValue;
    return CopyWith$Input$ListValueInput(
        local$newValue, (e) => call(newValue: e));
  }
}

class _CopyWithStubImpl$Input$ListValueRecordInput<TRes>
    implements CopyWith$Input$ListValueRecordInput<TRes> {
  _CopyWithStubImpl$Input$ListValueRecordInput(this._res);

  TRes _res;

  call({
    Input$ListValueInput? oldValue,
    Input$ListValueInput? newValue,
  }) =>
      _res;

  CopyWith$Input$ListValueInput<TRes> get oldValue =>
      CopyWith$Input$ListValueInput.stub(_res);

  CopyWith$Input$ListValueInput<TRes> get newValue =>
      CopyWith$Input$ListValueInput.stub(_res);
}

class Input$ApprovalRequestInput {
  factory Input$ApprovalRequestInput({
    required String approvalId,
    required String functionalLocationCode,
  }) =>
      Input$ApprovalRequestInput._({
        r'approvalId': approvalId,
        r'functionalLocationCode': functionalLocationCode,
      });

  Input$ApprovalRequestInput._(this._$data);

  factory Input$ApprovalRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$approvalId = data['approvalId'];
    result$data['approvalId'] = (l$approvalId as String);
    final l$functionalLocationCode = data['functionalLocationCode'];
    result$data['functionalLocationCode'] =
        (l$functionalLocationCode as String);
    return Input$ApprovalRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get approvalId => (_$data['approvalId'] as String);

  String get functionalLocationCode =>
      (_$data['functionalLocationCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$approvalId = approvalId;
    result$data['approvalId'] = l$approvalId;
    final l$functionalLocationCode = functionalLocationCode;
    result$data['functionalLocationCode'] = l$functionalLocationCode;
    return result$data;
  }

  CopyWith$Input$ApprovalRequestInput<Input$ApprovalRequestInput>
      get copyWith => CopyWith$Input$ApprovalRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ApprovalRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$approvalId = approvalId;
    final lOther$approvalId = other.approvalId;
    if (l$approvalId != lOther$approvalId) {
      return false;
    }
    final l$functionalLocationCode = functionalLocationCode;
    final lOther$functionalLocationCode = other.functionalLocationCode;
    if (l$functionalLocationCode != lOther$functionalLocationCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$approvalId = approvalId;
    final l$functionalLocationCode = functionalLocationCode;
    return Object.hashAll([
      l$approvalId,
      l$functionalLocationCode,
    ]);
  }
}

abstract class CopyWith$Input$ApprovalRequestInput<TRes> {
  factory CopyWith$Input$ApprovalRequestInput(
    Input$ApprovalRequestInput instance,
    TRes Function(Input$ApprovalRequestInput) then,
  ) = _CopyWithImpl$Input$ApprovalRequestInput;

  factory CopyWith$Input$ApprovalRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ApprovalRequestInput;

  TRes call({
    String? approvalId,
    String? functionalLocationCode,
  });
}

class _CopyWithImpl$Input$ApprovalRequestInput<TRes>
    implements CopyWith$Input$ApprovalRequestInput<TRes> {
  _CopyWithImpl$Input$ApprovalRequestInput(
    this._instance,
    this._then,
  );

  final Input$ApprovalRequestInput _instance;

  final TRes Function(Input$ApprovalRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? approvalId = _undefined,
    Object? functionalLocationCode = _undefined,
  }) =>
      _then(Input$ApprovalRequestInput._({
        ..._instance._$data,
        if (approvalId != _undefined && approvalId != null)
          'approvalId': (approvalId as String),
        if (functionalLocationCode != _undefined &&
            functionalLocationCode != null)
          'functionalLocationCode': (functionalLocationCode as String),
      }));
}

class _CopyWithStubImpl$Input$ApprovalRequestInput<TRes>
    implements CopyWith$Input$ApprovalRequestInput<TRes> {
  _CopyWithStubImpl$Input$ApprovalRequestInput(this._res);

  TRes _res;

  call({
    String? approvalId,
    String? functionalLocationCode,
  }) =>
      _res;
}

class Input$HourResultInput {
  factory Input$HourResultInput({
    String? key,
    Input$StartAndEndTimeInput? value,
  }) =>
      Input$HourResultInput._({
        if (key != null) r'key': key,
        if (value != null) r'value': value,
      });

  Input$HourResultInput._(this._$data);

  factory Input$HourResultInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] = (l$key as String?);
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$StartAndEndTimeInput.fromJson(
              (l$value as Map<String, dynamic>));
    }
    return Input$HourResultInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get key => (_$data['key'] as String?);

  Input$StartAndEndTimeInput? get value =>
      (_$data['value'] as Input$StartAndEndTimeInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] = l$key;
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$HourResultInput<Input$HourResultInput> get copyWith =>
      CopyWith$Input$HourResultInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$HourResultInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    return Object.hashAll([
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('value') ? l$value : const {},
    ]);
  }
}

abstract class CopyWith$Input$HourResultInput<TRes> {
  factory CopyWith$Input$HourResultInput(
    Input$HourResultInput instance,
    TRes Function(Input$HourResultInput) then,
  ) = _CopyWithImpl$Input$HourResultInput;

  factory CopyWith$Input$HourResultInput.stub(TRes res) =
      _CopyWithStubImpl$Input$HourResultInput;

  TRes call({
    String? key,
    Input$StartAndEndTimeInput? value,
  });
  CopyWith$Input$StartAndEndTimeInput<TRes> get value;
}

class _CopyWithImpl$Input$HourResultInput<TRes>
    implements CopyWith$Input$HourResultInput<TRes> {
  _CopyWithImpl$Input$HourResultInput(
    this._instance,
    this._then,
  );

  final Input$HourResultInput _instance;

  final TRes Function(Input$HourResultInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
  }) =>
      _then(Input$HourResultInput._({
        ..._instance._$data,
        if (key != _undefined) 'key': (key as String?),
        if (value != _undefined)
          'value': (value as Input$StartAndEndTimeInput?),
      }));

  CopyWith$Input$StartAndEndTimeInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$StartAndEndTimeInput.stub(_then(_instance))
        : CopyWith$Input$StartAndEndTimeInput(
            local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Input$HourResultInput<TRes>
    implements CopyWith$Input$HourResultInput<TRes> {
  _CopyWithStubImpl$Input$HourResultInput(this._res);

  TRes _res;

  call({
    String? key,
    Input$StartAndEndTimeInput? value,
  }) =>
      _res;

  CopyWith$Input$StartAndEndTimeInput<TRes> get value =>
      CopyWith$Input$StartAndEndTimeInput.stub(_res);
}

class Input$AssetImageInput {
  factory Input$AssetImageInput({
    required String id,
    required String filename,
    required String url,
    required String comments,
  }) =>
      Input$AssetImageInput._({
        r'id': id,
        r'filename': filename,
        r'url': url,
        r'comments': comments,
      });

  Input$AssetImageInput._(this._$data);

  factory Input$AssetImageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$filename = data['filename'];
    result$data['filename'] = (l$filename as String);
    final l$url = data['url'];
    result$data['url'] = (l$url as String);
    final l$comments = data['comments'];
    result$data['comments'] = (l$comments as String);
    return Input$AssetImageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get filename => (_$data['filename'] as String);

  String get url => (_$data['url'] as String);

  String get comments => (_$data['comments'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$filename = filename;
    result$data['filename'] = l$filename;
    final l$url = url;
    result$data['url'] = l$url;
    final l$comments = comments;
    result$data['comments'] = l$comments;
    return result$data;
  }

  CopyWith$Input$AssetImageInput<Input$AssetImageInput> get copyWith =>
      CopyWith$Input$AssetImageInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetImageInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$filename = filename;
    final lOther$filename = other.filename;
    if (l$filename != lOther$filename) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments != lOther$comments) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$filename = filename;
    final l$url = url;
    final l$comments = comments;
    return Object.hashAll([
      l$id,
      l$filename,
      l$url,
      l$comments,
    ]);
  }
}

abstract class CopyWith$Input$AssetImageInput<TRes> {
  factory CopyWith$Input$AssetImageInput(
    Input$AssetImageInput instance,
    TRes Function(Input$AssetImageInput) then,
  ) = _CopyWithImpl$Input$AssetImageInput;

  factory CopyWith$Input$AssetImageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetImageInput;

  TRes call({
    String? id,
    String? filename,
    String? url,
    String? comments,
  });
}

class _CopyWithImpl$Input$AssetImageInput<TRes>
    implements CopyWith$Input$AssetImageInput<TRes> {
  _CopyWithImpl$Input$AssetImageInput(
    this._instance,
    this._then,
  );

  final Input$AssetImageInput _instance;

  final TRes Function(Input$AssetImageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? filename = _undefined,
    Object? url = _undefined,
    Object? comments = _undefined,
  }) =>
      _then(Input$AssetImageInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (filename != _undefined && filename != null)
          'filename': (filename as String),
        if (url != _undefined && url != null) 'url': (url as String),
        if (comments != _undefined && comments != null)
          'comments': (comments as String),
      }));
}

class _CopyWithStubImpl$Input$AssetImageInput<TRes>
    implements CopyWith$Input$AssetImageInput<TRes> {
  _CopyWithStubImpl$Input$AssetImageInput(this._res);

  TRes _res;

  call({
    String? id,
    String? filename,
    String? url,
    String? comments,
  }) =>
      _res;
}

class Input$AssetCounterInput {
  factory Input$AssetCounterInput({
    required String assetTemplateCounterId,
    required double value,
    DateTime? valueTimestamp,
  }) =>
      Input$AssetCounterInput._({
        r'assetTemplateCounterId': assetTemplateCounterId,
        r'value': value,
        if (valueTimestamp != null) r'valueTimestamp': valueTimestamp,
      });

  Input$AssetCounterInput._(this._$data);

  factory Input$AssetCounterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$assetTemplateCounterId = data['assetTemplateCounterId'];
    result$data['assetTemplateCounterId'] =
        (l$assetTemplateCounterId as String);
    final l$value = data['value'];
    result$data['value'] = (l$value as num).toDouble();
    if (data.containsKey('valueTimestamp')) {
      final l$valueTimestamp = data['valueTimestamp'];
      result$data['valueTimestamp'] = l$valueTimestamp == null
          ? null
          : DateTime.parse((l$valueTimestamp as String));
    }
    return Input$AssetCounterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get assetTemplateCounterId =>
      (_$data['assetTemplateCounterId'] as String);

  double get value => (_$data['value'] as double);

  DateTime? get valueTimestamp => (_$data['valueTimestamp'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$assetTemplateCounterId = assetTemplateCounterId;
    result$data['assetTemplateCounterId'] = l$assetTemplateCounterId;
    final l$value = value;
    result$data['value'] = l$value;
    if (_$data.containsKey('valueTimestamp')) {
      final l$valueTimestamp = valueTimestamp;
      result$data['valueTimestamp'] = l$valueTimestamp?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$AssetCounterInput<Input$AssetCounterInput> get copyWith =>
      CopyWith$Input$AssetCounterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetCounterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetTemplateCounterId = assetTemplateCounterId;
    final lOther$assetTemplateCounterId = other.assetTemplateCounterId;
    if (l$assetTemplateCounterId != lOther$assetTemplateCounterId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$valueTimestamp = valueTimestamp;
    final lOther$valueTimestamp = other.valueTimestamp;
    if (_$data.containsKey('valueTimestamp') !=
        other._$data.containsKey('valueTimestamp')) {
      return false;
    }
    if (l$valueTimestamp != lOther$valueTimestamp) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetTemplateCounterId = assetTemplateCounterId;
    final l$value = value;
    final l$valueTimestamp = valueTimestamp;
    return Object.hashAll([
      l$assetTemplateCounterId,
      l$value,
      _$data.containsKey('valueTimestamp') ? l$valueTimestamp : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetCounterInput<TRes> {
  factory CopyWith$Input$AssetCounterInput(
    Input$AssetCounterInput instance,
    TRes Function(Input$AssetCounterInput) then,
  ) = _CopyWithImpl$Input$AssetCounterInput;

  factory CopyWith$Input$AssetCounterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetCounterInput;

  TRes call({
    String? assetTemplateCounterId,
    double? value,
    DateTime? valueTimestamp,
  });
}

class _CopyWithImpl$Input$AssetCounterInput<TRes>
    implements CopyWith$Input$AssetCounterInput<TRes> {
  _CopyWithImpl$Input$AssetCounterInput(
    this._instance,
    this._then,
  );

  final Input$AssetCounterInput _instance;

  final TRes Function(Input$AssetCounterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetTemplateCounterId = _undefined,
    Object? value = _undefined,
    Object? valueTimestamp = _undefined,
  }) =>
      _then(Input$AssetCounterInput._({
        ..._instance._$data,
        if (assetTemplateCounterId != _undefined &&
            assetTemplateCounterId != null)
          'assetTemplateCounterId': (assetTemplateCounterId as String),
        if (value != _undefined && value != null) 'value': (value as double),
        if (valueTimestamp != _undefined)
          'valueTimestamp': (valueTimestamp as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$AssetCounterInput<TRes>
    implements CopyWith$Input$AssetCounterInput<TRes> {
  _CopyWithStubImpl$Input$AssetCounterInput(this._res);

  TRes _res;

  call({
    String? assetTemplateCounterId,
    double? value,
    DateTime? valueTimestamp,
  }) =>
      _res;
}

class Input$AssetPropertyInput {
  factory Input$AssetPropertyInput({
    required String templatePropertyId,
    String? propertyValue,
    double? propertyValueNumber,
    bool? userCanView,
    bool? userCanUpdate,
    required String id,
    required String name,
    required String dataType,
    required bool isMandatory,
    required bool active,
    required int sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
  }) =>
      Input$AssetPropertyInput._({
        r'templatePropertyId': templatePropertyId,
        if (propertyValue != null) r'propertyValue': propertyValue,
        if (propertyValueNumber != null)
          r'propertyValueNumber': propertyValueNumber,
        if (userCanView != null) r'userCanView': userCanView,
        if (userCanUpdate != null) r'userCanUpdate': userCanUpdate,
        r'id': id,
        r'name': name,
        r'dataType': dataType,
        r'isMandatory': isMandatory,
        r'active': active,
        r'sequence': sequence,
        if (viewerGroupIds != null) r'viewerGroupIds': viewerGroupIds,
        if (updaterGroupIds != null) r'updaterGroupIds': updaterGroupIds,
      });

  Input$AssetPropertyInput._(this._$data);

  factory Input$AssetPropertyInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$templatePropertyId = data['templatePropertyId'];
    result$data['templatePropertyId'] = (l$templatePropertyId as String);
    if (data.containsKey('propertyValue')) {
      final l$propertyValue = data['propertyValue'];
      result$data['propertyValue'] = (l$propertyValue as String?);
    }
    if (data.containsKey('propertyValueNumber')) {
      final l$propertyValueNumber = data['propertyValueNumber'];
      result$data['propertyValueNumber'] =
          (l$propertyValueNumber as num?)?.toDouble();
    }
    if (data.containsKey('userCanView')) {
      final l$userCanView = data['userCanView'];
      result$data['userCanView'] = (l$userCanView as bool?);
    }
    if (data.containsKey('userCanUpdate')) {
      final l$userCanUpdate = data['userCanUpdate'];
      result$data['userCanUpdate'] = (l$userCanUpdate as bool?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$dataType = data['dataType'];
    result$data['dataType'] = (l$dataType as String);
    final l$isMandatory = data['isMandatory'];
    result$data['isMandatory'] = (l$isMandatory as bool);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    final l$sequence = data['sequence'];
    result$data['sequence'] = (l$sequence as int);
    if (data.containsKey('viewerGroupIds')) {
      final l$viewerGroupIds = data['viewerGroupIds'];
      result$data['viewerGroupIds'] = (l$viewerGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('updaterGroupIds')) {
      final l$updaterGroupIds = data['updaterGroupIds'];
      result$data['updaterGroupIds'] = (l$updaterGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input$AssetPropertyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get templatePropertyId => (_$data['templatePropertyId'] as String);

  String? get propertyValue => (_$data['propertyValue'] as String?);

  double? get propertyValueNumber => (_$data['propertyValueNumber'] as double?);

  bool? get userCanView => (_$data['userCanView'] as bool?);

  bool? get userCanUpdate => (_$data['userCanUpdate'] as bool?);

  String get id => (_$data['id'] as String);

  String get name => (_$data['name'] as String);

  String get dataType => (_$data['dataType'] as String);

  bool get isMandatory => (_$data['isMandatory'] as bool);

  bool get active => (_$data['active'] as bool);

  int get sequence => (_$data['sequence'] as int);

  List<String>? get viewerGroupIds =>
      (_$data['viewerGroupIds'] as List<String>?);

  List<String>? get updaterGroupIds =>
      (_$data['updaterGroupIds'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$templatePropertyId = templatePropertyId;
    result$data['templatePropertyId'] = l$templatePropertyId;
    if (_$data.containsKey('propertyValue')) {
      final l$propertyValue = propertyValue;
      result$data['propertyValue'] = l$propertyValue;
    }
    if (_$data.containsKey('propertyValueNumber')) {
      final l$propertyValueNumber = propertyValueNumber;
      result$data['propertyValueNumber'] = l$propertyValueNumber;
    }
    if (_$data.containsKey('userCanView')) {
      final l$userCanView = userCanView;
      result$data['userCanView'] = l$userCanView;
    }
    if (_$data.containsKey('userCanUpdate')) {
      final l$userCanUpdate = userCanUpdate;
      result$data['userCanUpdate'] = l$userCanUpdate;
    }
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$dataType = dataType;
    result$data['dataType'] = l$dataType;
    final l$isMandatory = isMandatory;
    result$data['isMandatory'] = l$isMandatory;
    final l$active = active;
    result$data['active'] = l$active;
    final l$sequence = sequence;
    result$data['sequence'] = l$sequence;
    if (_$data.containsKey('viewerGroupIds')) {
      final l$viewerGroupIds = viewerGroupIds;
      result$data['viewerGroupIds'] = l$viewerGroupIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('updaterGroupIds')) {
      final l$updaterGroupIds = updaterGroupIds;
      result$data['updaterGroupIds'] =
          l$updaterGroupIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$AssetPropertyInput<Input$AssetPropertyInput> get copyWith =>
      CopyWith$Input$AssetPropertyInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetPropertyInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$templatePropertyId = templatePropertyId;
    final lOther$templatePropertyId = other.templatePropertyId;
    if (l$templatePropertyId != lOther$templatePropertyId) {
      return false;
    }
    final l$propertyValue = propertyValue;
    final lOther$propertyValue = other.propertyValue;
    if (_$data.containsKey('propertyValue') !=
        other._$data.containsKey('propertyValue')) {
      return false;
    }
    if (l$propertyValue != lOther$propertyValue) {
      return false;
    }
    final l$propertyValueNumber = propertyValueNumber;
    final lOther$propertyValueNumber = other.propertyValueNumber;
    if (_$data.containsKey('propertyValueNumber') !=
        other._$data.containsKey('propertyValueNumber')) {
      return false;
    }
    if (l$propertyValueNumber != lOther$propertyValueNumber) {
      return false;
    }
    final l$userCanView = userCanView;
    final lOther$userCanView = other.userCanView;
    if (_$data.containsKey('userCanView') !=
        other._$data.containsKey('userCanView')) {
      return false;
    }
    if (l$userCanView != lOther$userCanView) {
      return false;
    }
    final l$userCanUpdate = userCanUpdate;
    final lOther$userCanUpdate = other.userCanUpdate;
    if (_$data.containsKey('userCanUpdate') !=
        other._$data.containsKey('userCanUpdate')) {
      return false;
    }
    if (l$userCanUpdate != lOther$userCanUpdate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$isMandatory = isMandatory;
    final lOther$isMandatory = other.isMandatory;
    if (l$isMandatory != lOther$isMandatory) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$viewerGroupIds = viewerGroupIds;
    final lOther$viewerGroupIds = other.viewerGroupIds;
    if (_$data.containsKey('viewerGroupIds') !=
        other._$data.containsKey('viewerGroupIds')) {
      return false;
    }
    if (l$viewerGroupIds != null && lOther$viewerGroupIds != null) {
      if (l$viewerGroupIds.length != lOther$viewerGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$viewerGroupIds.length; i++) {
        final l$viewerGroupIds$entry = l$viewerGroupIds[i];
        final lOther$viewerGroupIds$entry = lOther$viewerGroupIds[i];
        if (l$viewerGroupIds$entry != lOther$viewerGroupIds$entry) {
          return false;
        }
      }
    } else if (l$viewerGroupIds != lOther$viewerGroupIds) {
      return false;
    }
    final l$updaterGroupIds = updaterGroupIds;
    final lOther$updaterGroupIds = other.updaterGroupIds;
    if (_$data.containsKey('updaterGroupIds') !=
        other._$data.containsKey('updaterGroupIds')) {
      return false;
    }
    if (l$updaterGroupIds != null && lOther$updaterGroupIds != null) {
      if (l$updaterGroupIds.length != lOther$updaterGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$updaterGroupIds.length; i++) {
        final l$updaterGroupIds$entry = l$updaterGroupIds[i];
        final lOther$updaterGroupIds$entry = lOther$updaterGroupIds[i];
        if (l$updaterGroupIds$entry != lOther$updaterGroupIds$entry) {
          return false;
        }
      }
    } else if (l$updaterGroupIds != lOther$updaterGroupIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$templatePropertyId = templatePropertyId;
    final l$propertyValue = propertyValue;
    final l$propertyValueNumber = propertyValueNumber;
    final l$userCanView = userCanView;
    final l$userCanUpdate = userCanUpdate;
    final l$id = id;
    final l$name = name;
    final l$dataType = dataType;
    final l$isMandatory = isMandatory;
    final l$active = active;
    final l$sequence = sequence;
    final l$viewerGroupIds = viewerGroupIds;
    final l$updaterGroupIds = updaterGroupIds;
    return Object.hashAll([
      l$templatePropertyId,
      _$data.containsKey('propertyValue') ? l$propertyValue : const {},
      _$data.containsKey('propertyValueNumber')
          ? l$propertyValueNumber
          : const {},
      _$data.containsKey('userCanView') ? l$userCanView : const {},
      _$data.containsKey('userCanUpdate') ? l$userCanUpdate : const {},
      l$id,
      l$name,
      l$dataType,
      l$isMandatory,
      l$active,
      l$sequence,
      _$data.containsKey('viewerGroupIds')
          ? l$viewerGroupIds == null
              ? null
              : Object.hashAll(l$viewerGroupIds.map((v) => v))
          : const {},
      _$data.containsKey('updaterGroupIds')
          ? l$updaterGroupIds == null
              ? null
              : Object.hashAll(l$updaterGroupIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetPropertyInput<TRes> {
  factory CopyWith$Input$AssetPropertyInput(
    Input$AssetPropertyInput instance,
    TRes Function(Input$AssetPropertyInput) then,
  ) = _CopyWithImpl$Input$AssetPropertyInput;

  factory CopyWith$Input$AssetPropertyInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetPropertyInput;

  TRes call({
    String? templatePropertyId,
    String? propertyValue,
    double? propertyValueNumber,
    bool? userCanView,
    bool? userCanUpdate,
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
  });
}

class _CopyWithImpl$Input$AssetPropertyInput<TRes>
    implements CopyWith$Input$AssetPropertyInput<TRes> {
  _CopyWithImpl$Input$AssetPropertyInput(
    this._instance,
    this._then,
  );

  final Input$AssetPropertyInput _instance;

  final TRes Function(Input$AssetPropertyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? templatePropertyId = _undefined,
    Object? propertyValue = _undefined,
    Object? propertyValueNumber = _undefined,
    Object? userCanView = _undefined,
    Object? userCanUpdate = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? isMandatory = _undefined,
    Object? active = _undefined,
    Object? sequence = _undefined,
    Object? viewerGroupIds = _undefined,
    Object? updaterGroupIds = _undefined,
  }) =>
      _then(Input$AssetPropertyInput._({
        ..._instance._$data,
        if (templatePropertyId != _undefined && templatePropertyId != null)
          'templatePropertyId': (templatePropertyId as String),
        if (propertyValue != _undefined)
          'propertyValue': (propertyValue as String?),
        if (propertyValueNumber != _undefined)
          'propertyValueNumber': (propertyValueNumber as double?),
        if (userCanView != _undefined) 'userCanView': (userCanView as bool?),
        if (userCanUpdate != _undefined)
          'userCanUpdate': (userCanUpdate as bool?),
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (dataType != _undefined && dataType != null)
          'dataType': (dataType as String),
        if (isMandatory != _undefined && isMandatory != null)
          'isMandatory': (isMandatory as bool),
        if (active != _undefined && active != null) 'active': (active as bool),
        if (sequence != _undefined && sequence != null)
          'sequence': (sequence as int),
        if (viewerGroupIds != _undefined)
          'viewerGroupIds': (viewerGroupIds as List<String>?),
        if (updaterGroupIds != _undefined)
          'updaterGroupIds': (updaterGroupIds as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$AssetPropertyInput<TRes>
    implements CopyWith$Input$AssetPropertyInput<TRes> {
  _CopyWithStubImpl$Input$AssetPropertyInput(this._res);

  TRes _res;

  call({
    String? templatePropertyId,
    String? propertyValue,
    double? propertyValueNumber,
    bool? userCanView,
    bool? userCanUpdate,
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
  }) =>
      _res;
}

class Input$AssetSearchPropertyQueryInput {
  factory Input$AssetSearchPropertyQueryInput({
    required String name,
    required String value,
    required String comparison,
    required String dataType,
  }) =>
      Input$AssetSearchPropertyQueryInput._({
        r'name': name,
        r'value': value,
        r'comparison': comparison,
        r'dataType': dataType,
      });

  Input$AssetSearchPropertyQueryInput._(this._$data);

  factory Input$AssetSearchPropertyQueryInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$value = data['value'];
    result$data['value'] = (l$value as String);
    final l$comparison = data['comparison'];
    result$data['comparison'] = (l$comparison as String);
    final l$dataType = data['dataType'];
    result$data['dataType'] = (l$dataType as String);
    return Input$AssetSearchPropertyQueryInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get value => (_$data['value'] as String);

  String get comparison => (_$data['comparison'] as String);

  String get dataType => (_$data['dataType'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$value = value;
    result$data['value'] = l$value;
    final l$comparison = comparison;
    result$data['comparison'] = l$comparison;
    final l$dataType = dataType;
    result$data['dataType'] = l$dataType;
    return result$data;
  }

  CopyWith$Input$AssetSearchPropertyQueryInput<
          Input$AssetSearchPropertyQueryInput>
      get copyWith => CopyWith$Input$AssetSearchPropertyQueryInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetSearchPropertyQueryInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$comparison = comparison;
    final lOther$comparison = other.comparison;
    if (l$comparison != lOther$comparison) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$value = value;
    final l$comparison = comparison;
    final l$dataType = dataType;
    return Object.hashAll([
      l$name,
      l$value,
      l$comparison,
      l$dataType,
    ]);
  }
}

abstract class CopyWith$Input$AssetSearchPropertyQueryInput<TRes> {
  factory CopyWith$Input$AssetSearchPropertyQueryInput(
    Input$AssetSearchPropertyQueryInput instance,
    TRes Function(Input$AssetSearchPropertyQueryInput) then,
  ) = _CopyWithImpl$Input$AssetSearchPropertyQueryInput;

  factory CopyWith$Input$AssetSearchPropertyQueryInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetSearchPropertyQueryInput;

  TRes call({
    String? name,
    String? value,
    String? comparison,
    String? dataType,
  });
}

class _CopyWithImpl$Input$AssetSearchPropertyQueryInput<TRes>
    implements CopyWith$Input$AssetSearchPropertyQueryInput<TRes> {
  _CopyWithImpl$Input$AssetSearchPropertyQueryInput(
    this._instance,
    this._then,
  );

  final Input$AssetSearchPropertyQueryInput _instance;

  final TRes Function(Input$AssetSearchPropertyQueryInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? value = _undefined,
    Object? comparison = _undefined,
    Object? dataType = _undefined,
  }) =>
      _then(Input$AssetSearchPropertyQueryInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (value != _undefined && value != null) 'value': (value as String),
        if (comparison != _undefined && comparison != null)
          'comparison': (comparison as String),
        if (dataType != _undefined && dataType != null)
          'dataType': (dataType as String),
      }));
}

class _CopyWithStubImpl$Input$AssetSearchPropertyQueryInput<TRes>
    implements CopyWith$Input$AssetSearchPropertyQueryInput<TRes> {
  _CopyWithStubImpl$Input$AssetSearchPropertyQueryInput(this._res);

  TRes _res;

  call({
    String? name,
    String? value,
    String? comparison,
    String? dataType,
  }) =>
      _res;
}

class Input$StartAndEndTimeInput {
  factory Input$StartAndEndTimeInput({
    String? start,
    String? end,
  }) =>
      Input$StartAndEndTimeInput._({
        if (start != null) r'start': start,
        if (end != null) r'end': end,
      });

  Input$StartAndEndTimeInput._(this._$data);

  factory Input$StartAndEndTimeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('start')) {
      final l$start = data['start'];
      result$data['start'] = (l$start as String?);
    }
    if (data.containsKey('end')) {
      final l$end = data['end'];
      result$data['end'] = (l$end as String?);
    }
    return Input$StartAndEndTimeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get start => (_$data['start'] as String?);

  String? get end => (_$data['end'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('start')) {
      final l$start = start;
      result$data['start'] = l$start;
    }
    if (_$data.containsKey('end')) {
      final l$end = end;
      result$data['end'] = l$end;
    }
    return result$data;
  }

  CopyWith$Input$StartAndEndTimeInput<Input$StartAndEndTimeInput>
      get copyWith => CopyWith$Input$StartAndEndTimeInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StartAndEndTimeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$start = start;
    final lOther$start = other.start;
    if (_$data.containsKey('start') != other._$data.containsKey('start')) {
      return false;
    }
    if (l$start != lOther$start) {
      return false;
    }
    final l$end = end;
    final lOther$end = other.end;
    if (_$data.containsKey('end') != other._$data.containsKey('end')) {
      return false;
    }
    if (l$end != lOther$end) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      _$data.containsKey('start') ? l$start : const {},
      _$data.containsKey('end') ? l$end : const {},
    ]);
  }
}

abstract class CopyWith$Input$StartAndEndTimeInput<TRes> {
  factory CopyWith$Input$StartAndEndTimeInput(
    Input$StartAndEndTimeInput instance,
    TRes Function(Input$StartAndEndTimeInput) then,
  ) = _CopyWithImpl$Input$StartAndEndTimeInput;

  factory CopyWith$Input$StartAndEndTimeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StartAndEndTimeInput;

  TRes call({
    String? start,
    String? end,
  });
}

class _CopyWithImpl$Input$StartAndEndTimeInput<TRes>
    implements CopyWith$Input$StartAndEndTimeInput<TRes> {
  _CopyWithImpl$Input$StartAndEndTimeInput(
    this._instance,
    this._then,
  );

  final Input$StartAndEndTimeInput _instance;

  final TRes Function(Input$StartAndEndTimeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Input$StartAndEndTimeInput._({
        ..._instance._$data,
        if (start != _undefined) 'start': (start as String?),
        if (end != _undefined) 'end': (end as String?),
      }));
}

class _CopyWithStubImpl$Input$StartAndEndTimeInput<TRes>
    implements CopyWith$Input$StartAndEndTimeInput<TRes> {
  _CopyWithStubImpl$Input$StartAndEndTimeInput(this._res);

  TRes _res;

  call({
    String? start,
    String? end,
  }) =>
      _res;
}

class Input$ListValueInput {
  factory Input$ListValueInput({
    required String text,
    required String value,
    required int orderIndex,
    required bool active,
  }) =>
      Input$ListValueInput._({
        r'text': text,
        r'value': value,
        r'orderIndex': orderIndex,
        r'active': active,
      });

  Input$ListValueInput._(this._$data);

  factory Input$ListValueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    final l$value = data['value'];
    result$data['value'] = (l$value as String);
    final l$orderIndex = data['orderIndex'];
    result$data['orderIndex'] = (l$orderIndex as int);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    return Input$ListValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get text => (_$data['text'] as String);

  String get value => (_$data['value'] as String);

  int get orderIndex => (_$data['orderIndex'] as int);

  bool get active => (_$data['active'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$text = text;
    result$data['text'] = l$text;
    final l$value = value;
    result$data['value'] = l$value;
    final l$orderIndex = orderIndex;
    result$data['orderIndex'] = l$orderIndex;
    final l$active = active;
    result$data['active'] = l$active;
    return result$data;
  }

  CopyWith$Input$ListValueInput<Input$ListValueInput> get copyWith =>
      CopyWith$Input$ListValueInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListValueInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$orderIndex = orderIndex;
    final lOther$orderIndex = other.orderIndex;
    if (l$orderIndex != lOther$orderIndex) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$value = value;
    final l$orderIndex = orderIndex;
    final l$active = active;
    return Object.hashAll([
      l$text,
      l$value,
      l$orderIndex,
      l$active,
    ]);
  }
}

abstract class CopyWith$Input$ListValueInput<TRes> {
  factory CopyWith$Input$ListValueInput(
    Input$ListValueInput instance,
    TRes Function(Input$ListValueInput) then,
  ) = _CopyWithImpl$Input$ListValueInput;

  factory CopyWith$Input$ListValueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ListValueInput;

  TRes call({
    String? text,
    String? value,
    int? orderIndex,
    bool? active,
  });
}

class _CopyWithImpl$Input$ListValueInput<TRes>
    implements CopyWith$Input$ListValueInput<TRes> {
  _CopyWithImpl$Input$ListValueInput(
    this._instance,
    this._then,
  );

  final Input$ListValueInput _instance;

  final TRes Function(Input$ListValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? value = _undefined,
    Object? orderIndex = _undefined,
    Object? active = _undefined,
  }) =>
      _then(Input$ListValueInput._({
        ..._instance._$data,
        if (text != _undefined && text != null) 'text': (text as String),
        if (value != _undefined && value != null) 'value': (value as String),
        if (orderIndex != _undefined && orderIndex != null)
          'orderIndex': (orderIndex as int),
        if (active != _undefined && active != null) 'active': (active as bool),
      }));
}

class _CopyWithStubImpl$Input$ListValueInput<TRes>
    implements CopyWith$Input$ListValueInput<TRes> {
  _CopyWithStubImpl$Input$ListValueInput(this._res);

  TRes _res;

  call({
    String? text,
    String? value,
    int? orderIndex,
    bool? active,
  }) =>
      _res;
}

enum Enum$SortEnumType {
  ASC,
  DESC,
  $unknown;

  factory Enum$SortEnumType.fromJson(String value) =>
      fromJson$Enum$SortEnumType(value);

  String toJson() => toJson$Enum$SortEnumType(this);
}

String toJson$Enum$SortEnumType(Enum$SortEnumType e) {
  switch (e) {
    case Enum$SortEnumType.ASC:
      return r'ASC';
    case Enum$SortEnumType.DESC:
      return r'DESC';
    case Enum$SortEnumType.$unknown:
      return r'$unknown';
  }
}

Enum$SortEnumType fromJson$Enum$SortEnumType(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortEnumType.ASC;
    case r'DESC':
      return Enum$SortEnumType.DESC;
    default:
      return Enum$SortEnumType.$unknown;
  }
}

enum Enum$SearchPropertyType {
  ASSET_NAME,
  ASSET_CODE,
  MAKE,
  MODEL,
  SERIAL_NO,
  STATUS,
  COUNTER,
  $unknown;

  factory Enum$SearchPropertyType.fromJson(String value) =>
      fromJson$Enum$SearchPropertyType(value);

  String toJson() => toJson$Enum$SearchPropertyType(this);
}

String toJson$Enum$SearchPropertyType(Enum$SearchPropertyType e) {
  switch (e) {
    case Enum$SearchPropertyType.ASSET_NAME:
      return r'ASSET_NAME';
    case Enum$SearchPropertyType.ASSET_CODE:
      return r'ASSET_CODE';
    case Enum$SearchPropertyType.MAKE:
      return r'MAKE';
    case Enum$SearchPropertyType.MODEL:
      return r'MODEL';
    case Enum$SearchPropertyType.SERIAL_NO:
      return r'SERIAL_NO';
    case Enum$SearchPropertyType.STATUS:
      return r'STATUS';
    case Enum$SearchPropertyType.COUNTER:
      return r'COUNTER';
    case Enum$SearchPropertyType.$unknown:
      return r'$unknown';
  }
}

Enum$SearchPropertyType fromJson$Enum$SearchPropertyType(String value) {
  switch (value) {
    case r'ASSET_NAME':
      return Enum$SearchPropertyType.ASSET_NAME;
    case r'ASSET_CODE':
      return Enum$SearchPropertyType.ASSET_CODE;
    case r'MAKE':
      return Enum$SearchPropertyType.MAKE;
    case r'MODEL':
      return Enum$SearchPropertyType.MODEL;
    case r'SERIAL_NO':
      return Enum$SearchPropertyType.SERIAL_NO;
    case r'STATUS':
      return Enum$SearchPropertyType.STATUS;
    case r'COUNTER':
      return Enum$SearchPropertyType.COUNTER;
    default:
      return Enum$SearchPropertyType.$unknown;
  }
}

enum Enum$DisposalFilter {
  LIVE,
  ALL,
  DISPOSED,
  $unknown;

  factory Enum$DisposalFilter.fromJson(String value) =>
      fromJson$Enum$DisposalFilter(value);

  String toJson() => toJson$Enum$DisposalFilter(this);
}

String toJson$Enum$DisposalFilter(Enum$DisposalFilter e) {
  switch (e) {
    case Enum$DisposalFilter.LIVE:
      return r'LIVE';
    case Enum$DisposalFilter.ALL:
      return r'ALL';
    case Enum$DisposalFilter.DISPOSED:
      return r'DISPOSED';
    case Enum$DisposalFilter.$unknown:
      return r'$unknown';
  }
}

Enum$DisposalFilter fromJson$Enum$DisposalFilter(String value) {
  switch (value) {
    case r'LIVE':
      return Enum$DisposalFilter.LIVE;
    case r'ALL':
      return Enum$DisposalFilter.ALL;
    case r'DISPOSED':
      return Enum$DisposalFilter.DISPOSED;
    default:
      return Enum$DisposalFilter.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
