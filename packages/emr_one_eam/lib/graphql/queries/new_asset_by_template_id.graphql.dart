import 'package:gql/ast.dart';

class Variables$Query$NewAssetByTemplateId {
  factory Variables$Query$NewAssetByTemplateId({required String templateId}) =>
      Variables$Query$NewAssetByTemplateId._({
        r'templateId': templateId,
      });

  Variables$Query$NewAssetByTemplateId._(this._$data);

  factory Variables$Query$NewAssetByTemplateId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$templateId = data['templateId'];
    result$data['templateId'] = (l$templateId as String);
    return Variables$Query$NewAssetByTemplateId._(result$data);
  }

  Map<String, dynamic> _$data;

  String get templateId => (_$data['templateId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$templateId = templateId;
    result$data['templateId'] = l$templateId;
    return result$data;
  }

  CopyWith$Variables$Query$NewAssetByTemplateId<
          Variables$Query$NewAssetByTemplateId>
      get copyWith => CopyWith$Variables$Query$NewAssetByTemplateId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$NewAssetByTemplateId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$templateId = templateId;
    return Object.hashAll([l$templateId]);
  }
}

abstract class CopyWith$Variables$Query$NewAssetByTemplateId<TRes> {
  factory CopyWith$Variables$Query$NewAssetByTemplateId(
    Variables$Query$NewAssetByTemplateId instance,
    TRes Function(Variables$Query$NewAssetByTemplateId) then,
  ) = _CopyWithImpl$Variables$Query$NewAssetByTemplateId;

  factory CopyWith$Variables$Query$NewAssetByTemplateId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$NewAssetByTemplateId;

  TRes call({String? templateId});
}

class _CopyWithImpl$Variables$Query$NewAssetByTemplateId<TRes>
    implements CopyWith$Variables$Query$NewAssetByTemplateId<TRes> {
  _CopyWithImpl$Variables$Query$NewAssetByTemplateId(
    this._instance,
    this._then,
  );

  final Variables$Query$NewAssetByTemplateId _instance;

  final TRes Function(Variables$Query$NewAssetByTemplateId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? templateId = _undefined}) =>
      _then(Variables$Query$NewAssetByTemplateId._({
        ..._instance._$data,
        if (templateId != _undefined && templateId != null)
          'templateId': (templateId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$NewAssetByTemplateId<TRes>
    implements CopyWith$Variables$Query$NewAssetByTemplateId<TRes> {
  _CopyWithStubImpl$Variables$Query$NewAssetByTemplateId(this._res);

  TRes _res;

  call({String? templateId}) => _res;
}

class Query$NewAssetByTemplateId {
  Query$NewAssetByTemplateId({
    required this.newAssetByTemplateId,
    this.$__typename = 'Query',
  });

  factory Query$NewAssetByTemplateId.fromJson(Map<String, dynamic> json) {
    final l$newAssetByTemplateId = json['newAssetByTemplateId'];
    final l$$__typename = json['__typename'];
    return Query$NewAssetByTemplateId(
      newAssetByTemplateId:
          Query$NewAssetByTemplateId$newAssetByTemplateId.fromJson(
              (l$newAssetByTemplateId as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$NewAssetByTemplateId$newAssetByTemplateId newAssetByTemplateId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newAssetByTemplateId = newAssetByTemplateId;
    _resultData['newAssetByTemplateId'] = l$newAssetByTemplateId.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newAssetByTemplateId = newAssetByTemplateId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$newAssetByTemplateId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$NewAssetByTemplateId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newAssetByTemplateId = newAssetByTemplateId;
    final lOther$newAssetByTemplateId = other.newAssetByTemplateId;
    if (l$newAssetByTemplateId != lOther$newAssetByTemplateId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NewAssetByTemplateId
    on Query$NewAssetByTemplateId {
  CopyWith$Query$NewAssetByTemplateId<Query$NewAssetByTemplateId>
      get copyWith => CopyWith$Query$NewAssetByTemplateId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NewAssetByTemplateId<TRes> {
  factory CopyWith$Query$NewAssetByTemplateId(
    Query$NewAssetByTemplateId instance,
    TRes Function(Query$NewAssetByTemplateId) then,
  ) = _CopyWithImpl$Query$NewAssetByTemplateId;

  factory CopyWith$Query$NewAssetByTemplateId.stub(TRes res) =
      _CopyWithStubImpl$Query$NewAssetByTemplateId;

  TRes call({
    Query$NewAssetByTemplateId$newAssetByTemplateId? newAssetByTemplateId,
    String? $__typename,
  });
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId<TRes>
      get newAssetByTemplateId;
}

class _CopyWithImpl$Query$NewAssetByTemplateId<TRes>
    implements CopyWith$Query$NewAssetByTemplateId<TRes> {
  _CopyWithImpl$Query$NewAssetByTemplateId(
    this._instance,
    this._then,
  );

  final Query$NewAssetByTemplateId _instance;

  final TRes Function(Query$NewAssetByTemplateId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? newAssetByTemplateId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NewAssetByTemplateId(
        newAssetByTemplateId:
            newAssetByTemplateId == _undefined || newAssetByTemplateId == null
                ? _instance.newAssetByTemplateId
                : (newAssetByTemplateId
                    as Query$NewAssetByTemplateId$newAssetByTemplateId),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId<TRes>
      get newAssetByTemplateId {
    final local$newAssetByTemplateId = _instance.newAssetByTemplateId;
    return CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId(
        local$newAssetByTemplateId, (e) => call(newAssetByTemplateId: e));
  }
}

class _CopyWithStubImpl$Query$NewAssetByTemplateId<TRes>
    implements CopyWith$Query$NewAssetByTemplateId<TRes> {
  _CopyWithStubImpl$Query$NewAssetByTemplateId(this._res);

  TRes _res;

  call({
    Query$NewAssetByTemplateId$newAssetByTemplateId? newAssetByTemplateId,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId<TRes>
      get newAssetByTemplateId =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId.stub(_res);
}

const documentNodeQueryNewAssetByTemplateId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'NewAssetByTemplateId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'templateId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'newAssetByTemplateId'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'templateId'),
            value: VariableNode(name: NameNode(value: 'templateId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'active'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'approved'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'parentAssetId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'make'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'model'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'serialNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'depotNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'functionalLocationCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transferToDepotNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transferToDepotNoEffectiveFrom'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transferToDepotNoAssetApprovalId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'latitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'longitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'templateId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateOfAcquisition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateOfDisposal'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'farLeasedExpensed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'yearOfManufacture'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'condition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'disposalStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'disposalEffectiveFrom'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'disposalApprovalId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statutoryInspection'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'salesInvoiceNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetProperties'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'dataType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'templatePropertyId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'propertyValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'propertyValueNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isMandatory'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'active'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sequence'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'assetCounters'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'assetTemplateCounterId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'value'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'valueTimestamp'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetImages'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'filename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'url'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'comments'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'permittedHours'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'key'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'value'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'start'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'end'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'shiftHours'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'key'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'value'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'start'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'end'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'parentAssetCodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'hasSubAssets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'codaAnalysisCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetHierarchyId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'displayName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'needsReview'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastReviewed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastReviewedBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastAudited'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastAuditedBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastStatutoryInspectionDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statutoryInspectionIntervalMonths'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$NewAssetByTemplateId$newAssetByTemplateId {
  Query$NewAssetByTemplateId$newAssetByTemplateId({
    required this.active,
    required this.approved,
    this.parentAssetId,
    required this.code,
    this.name,
    required this.make,
    this.model,
    this.serialNumber,
    required this.depotNo,
    this.functionalLocationCode,
    this.transferToDepotNo,
    this.transferToDepotNoEffectiveFrom,
    this.transferToDepotNoAssetApprovalId,
    required this.latitude,
    required this.longitude,
    required this.templateId,
    this.dateOfAcquisition,
    this.dateOfDisposal,
    required this.farLeasedExpensed,
    this.yearOfManufacture,
    required this.condition,
    this.status,
    this.disposalStatus,
    this.disposalEffectiveFrom,
    this.disposalApprovalId,
    required this.statutoryInspection,
    this.salesInvoiceNo,
    required this.assetProperties,
    required this.assetCounters,
    this.id,
    this.assetImages,
    this.permittedHours,
    this.shiftHours,
    this.parentAssetCodes,
    this.hasSubAssets,
    this.codaAnalysisCode,
    this.assetHierarchyId,
    required this.displayName,
    this.needsReview,
    this.lastReviewed,
    this.lastReviewedBy,
    this.lastAudited,
    this.lastAuditedBy,
    this.lastStatutoryInspectionDate,
    this.statutoryInspectionIntervalMonths,
    this.$__typename = 'AssetsByCodeSearchIndexResult',
  });

  factory Query$NewAssetByTemplateId$newAssetByTemplateId.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$approved = json['approved'];
    final l$parentAssetId = json['parentAssetId'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$make = json['make'];
    final l$model = json['model'];
    final l$serialNumber = json['serialNumber'];
    final l$depotNo = json['depotNo'];
    final l$functionalLocationCode = json['functionalLocationCode'];
    final l$transferToDepotNo = json['transferToDepotNo'];
    final l$transferToDepotNoEffectiveFrom =
        json['transferToDepotNoEffectiveFrom'];
    final l$transferToDepotNoAssetApprovalId =
        json['transferToDepotNoAssetApprovalId'];
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$templateId = json['templateId'];
    final l$dateOfAcquisition = json['dateOfAcquisition'];
    final l$dateOfDisposal = json['dateOfDisposal'];
    final l$farLeasedExpensed = json['farLeasedExpensed'];
    final l$yearOfManufacture = json['yearOfManufacture'];
    final l$condition = json['condition'];
    final l$status = json['status'];
    final l$disposalStatus = json['disposalStatus'];
    final l$disposalEffectiveFrom = json['disposalEffectiveFrom'];
    final l$disposalApprovalId = json['disposalApprovalId'];
    final l$statutoryInspection = json['statutoryInspection'];
    final l$salesInvoiceNo = json['salesInvoiceNo'];
    final l$assetProperties = json['assetProperties'];
    final l$assetCounters = json['assetCounters'];
    final l$id = json['id'];
    final l$assetImages = json['assetImages'];
    final l$permittedHours = json['permittedHours'];
    final l$shiftHours = json['shiftHours'];
    final l$parentAssetCodes = json['parentAssetCodes'];
    final l$hasSubAssets = json['hasSubAssets'];
    final l$codaAnalysisCode = json['codaAnalysisCode'];
    final l$assetHierarchyId = json['assetHierarchyId'];
    final l$displayName = json['displayName'];
    final l$needsReview = json['needsReview'];
    final l$lastReviewed = json['lastReviewed'];
    final l$lastReviewedBy = json['lastReviewedBy'];
    final l$lastAudited = json['lastAudited'];
    final l$lastAuditedBy = json['lastAuditedBy'];
    final l$lastStatutoryInspectionDate = json['lastStatutoryInspectionDate'];
    final l$statutoryInspectionIntervalMonths =
        json['statutoryInspectionIntervalMonths'];
    final l$$__typename = json['__typename'];
    return Query$NewAssetByTemplateId$newAssetByTemplateId(
      active: (l$active as bool),
      approved: (l$approved as bool),
      parentAssetId: (l$parentAssetId as String?),
      code: (l$code as String),
      name: (l$name as String?),
      make: (l$make as String),
      model: (l$model as String?),
      serialNumber: (l$serialNumber as String?),
      depotNo: (l$depotNo as String),
      functionalLocationCode: (l$functionalLocationCode as String?),
      transferToDepotNo: (l$transferToDepotNo as String?),
      transferToDepotNoEffectiveFrom: l$transferToDepotNoEffectiveFrom == null
          ? null
          : DateTime.parse((l$transferToDepotNoEffectiveFrom as String)),
      transferToDepotNoAssetApprovalId:
          (l$transferToDepotNoAssetApprovalId as int?),
      latitude: (l$latitude as num).toDouble(),
      longitude: (l$longitude as num).toDouble(),
      templateId: (l$templateId as String),
      dateOfAcquisition: l$dateOfAcquisition == null
          ? null
          : DateTime.parse((l$dateOfAcquisition as String)),
      dateOfDisposal: l$dateOfDisposal == null
          ? null
          : DateTime.parse((l$dateOfDisposal as String)),
      farLeasedExpensed: (l$farLeasedExpensed as String),
      yearOfManufacture: (l$yearOfManufacture as int?),
      condition: (l$condition as String),
      status: (l$status as String?),
      disposalStatus: (l$disposalStatus as String?),
      disposalEffectiveFrom: l$disposalEffectiveFrom == null
          ? null
          : DateTime.parse((l$disposalEffectiveFrom as String)),
      disposalApprovalId: (l$disposalApprovalId as int?),
      statutoryInspection: (l$statutoryInspection as bool),
      salesInvoiceNo: (l$salesInvoiceNo as String?),
      assetProperties: (l$assetProperties as List<dynamic>)
          .map((e) =>
              Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      assetCounters: (l$assetCounters as List<dynamic>)
          .map((e) =>
              Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      id: (l$id as String?),
      assetImages: (l$assetImages as List<dynamic>?)
          ?.map((e) =>
              Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      permittedHours: (l$permittedHours as List<dynamic>?)
          ?.map((e) =>
              Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      shiftHours: (l$shiftHours as List<dynamic>?)
          ?.map((e) =>
              Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      parentAssetCodes: (l$parentAssetCodes as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      hasSubAssets: (l$hasSubAssets as bool?),
      codaAnalysisCode: (l$codaAnalysisCode as String?),
      assetHierarchyId: (l$assetHierarchyId as String?),
      displayName: (l$displayName as String),
      needsReview: l$needsReview == null
          ? null
          : DateTime.parse((l$needsReview as String)),
      lastReviewed: l$lastReviewed == null
          ? null
          : DateTime.parse((l$lastReviewed as String)),
      lastReviewedBy: (l$lastReviewedBy as String?),
      lastAudited: l$lastAudited == null
          ? null
          : DateTime.parse((l$lastAudited as String)),
      lastAuditedBy: (l$lastAuditedBy as String?),
      lastStatutoryInspectionDate: l$lastStatutoryInspectionDate == null
          ? null
          : DateTime.parse((l$lastStatutoryInspectionDate as String)),
      statutoryInspectionIntervalMonths:
          (l$statutoryInspectionIntervalMonths as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final bool approved;

  final String? parentAssetId;

  final String code;

  final String? name;

  final String make;

  final String? model;

  final String? serialNumber;

  final String depotNo;

  final String? functionalLocationCode;

  final String? transferToDepotNo;

  final DateTime? transferToDepotNoEffectiveFrom;

  final int? transferToDepotNoAssetApprovalId;

  final double latitude;

  final double longitude;

  final String templateId;

  final DateTime? dateOfAcquisition;

  final DateTime? dateOfDisposal;

  final String farLeasedExpensed;

  final int? yearOfManufacture;

  final String condition;

  final String? status;

  final String? disposalStatus;

  final DateTime? disposalEffectiveFrom;

  final int? disposalApprovalId;

  final bool statutoryInspection;

  final String? salesInvoiceNo;

  final List<Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties>
      assetProperties;

  final List<Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters>
      assetCounters;

  final String? id;

  final List<Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages>?
      assetImages;

  final List<Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours>?
      permittedHours;

  final List<Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours>?
      shiftHours;

  final List<String>? parentAssetCodes;

  final bool? hasSubAssets;

  final String? codaAnalysisCode;

  final String? assetHierarchyId;

  final String displayName;

  final DateTime? needsReview;

  final DateTime? lastReviewed;

  final String? lastReviewedBy;

  final DateTime? lastAudited;

  final String? lastAuditedBy;

  final DateTime? lastStatutoryInspectionDate;

  final String? statutoryInspectionIntervalMonths;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$approved = approved;
    _resultData['approved'] = l$approved;
    final l$parentAssetId = parentAssetId;
    _resultData['parentAssetId'] = l$parentAssetId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$make = make;
    _resultData['make'] = l$make;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$serialNumber = serialNumber;
    _resultData['serialNumber'] = l$serialNumber;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$functionalLocationCode = functionalLocationCode;
    _resultData['functionalLocationCode'] = l$functionalLocationCode;
    final l$transferToDepotNo = transferToDepotNo;
    _resultData['transferToDepotNo'] = l$transferToDepotNo;
    final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
    _resultData['transferToDepotNoEffectiveFrom'] =
        l$transferToDepotNoEffectiveFrom?.toIso8601String();
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    _resultData['transferToDepotNoAssetApprovalId'] =
        l$transferToDepotNoAssetApprovalId;
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$dateOfAcquisition = dateOfAcquisition;
    _resultData['dateOfAcquisition'] = l$dateOfAcquisition?.toIso8601String();
    final l$dateOfDisposal = dateOfDisposal;
    _resultData['dateOfDisposal'] = l$dateOfDisposal?.toIso8601String();
    final l$farLeasedExpensed = farLeasedExpensed;
    _resultData['farLeasedExpensed'] = l$farLeasedExpensed;
    final l$yearOfManufacture = yearOfManufacture;
    _resultData['yearOfManufacture'] = l$yearOfManufacture;
    final l$condition = condition;
    _resultData['condition'] = l$condition;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$disposalStatus = disposalStatus;
    _resultData['disposalStatus'] = l$disposalStatus;
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    _resultData['disposalEffectiveFrom'] =
        l$disposalEffectiveFrom?.toIso8601String();
    final l$disposalApprovalId = disposalApprovalId;
    _resultData['disposalApprovalId'] = l$disposalApprovalId;
    final l$statutoryInspection = statutoryInspection;
    _resultData['statutoryInspection'] = l$statutoryInspection;
    final l$salesInvoiceNo = salesInvoiceNo;
    _resultData['salesInvoiceNo'] = l$salesInvoiceNo;
    final l$assetProperties = assetProperties;
    _resultData['assetProperties'] =
        l$assetProperties.map((e) => e.toJson()).toList();
    final l$assetCounters = assetCounters;
    _resultData['assetCounters'] =
        l$assetCounters.map((e) => e.toJson()).toList();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$assetImages = assetImages;
    _resultData['assetImages'] = l$assetImages?.map((e) => e.toJson()).toList();
    final l$permittedHours = permittedHours;
    _resultData['permittedHours'] =
        l$permittedHours?.map((e) => e.toJson()).toList();
    final l$shiftHours = shiftHours;
    _resultData['shiftHours'] = l$shiftHours?.map((e) => e.toJson()).toList();
    final l$parentAssetCodes = parentAssetCodes;
    _resultData['parentAssetCodes'] =
        l$parentAssetCodes?.map((e) => e).toList();
    final l$hasSubAssets = hasSubAssets;
    _resultData['hasSubAssets'] = l$hasSubAssets;
    final l$codaAnalysisCode = codaAnalysisCode;
    _resultData['codaAnalysisCode'] = l$codaAnalysisCode;
    final l$assetHierarchyId = assetHierarchyId;
    _resultData['assetHierarchyId'] = l$assetHierarchyId;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$needsReview = needsReview;
    _resultData['needsReview'] = l$needsReview?.toIso8601String();
    final l$lastReviewed = lastReviewed;
    _resultData['lastReviewed'] = l$lastReviewed?.toIso8601String();
    final l$lastReviewedBy = lastReviewedBy;
    _resultData['lastReviewedBy'] = l$lastReviewedBy;
    final l$lastAudited = lastAudited;
    _resultData['lastAudited'] = l$lastAudited?.toIso8601String();
    final l$lastAuditedBy = lastAuditedBy;
    _resultData['lastAuditedBy'] = l$lastAuditedBy;
    final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
    _resultData['lastStatutoryInspectionDate'] =
        l$lastStatutoryInspectionDate?.toIso8601String();
    final l$statutoryInspectionIntervalMonths =
        statutoryInspectionIntervalMonths;
    _resultData['statutoryInspectionIntervalMonths'] =
        l$statutoryInspectionIntervalMonths;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    final l$id = id;
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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$approved,
      l$parentAssetId,
      l$code,
      l$name,
      l$make,
      l$model,
      l$serialNumber,
      l$depotNo,
      l$functionalLocationCode,
      l$transferToDepotNo,
      l$transferToDepotNoEffectiveFrom,
      l$transferToDepotNoAssetApprovalId,
      l$latitude,
      l$longitude,
      l$templateId,
      l$dateOfAcquisition,
      l$dateOfDisposal,
      l$farLeasedExpensed,
      l$yearOfManufacture,
      l$condition,
      l$status,
      l$disposalStatus,
      l$disposalEffectiveFrom,
      l$disposalApprovalId,
      l$statutoryInspection,
      l$salesInvoiceNo,
      Object.hashAll(l$assetProperties.map((v) => v)),
      Object.hashAll(l$assetCounters.map((v) => v)),
      l$id,
      l$assetImages == null
          ? null
          : Object.hashAll(l$assetImages.map((v) => v)),
      l$permittedHours == null
          ? null
          : Object.hashAll(l$permittedHours.map((v) => v)),
      l$shiftHours == null ? null : Object.hashAll(l$shiftHours.map((v) => v)),
      l$parentAssetCodes == null
          ? null
          : Object.hashAll(l$parentAssetCodes.map((v) => v)),
      l$hasSubAssets,
      l$codaAnalysisCode,
      l$assetHierarchyId,
      l$displayName,
      l$needsReview,
      l$lastReviewed,
      l$lastReviewedBy,
      l$lastAudited,
      l$lastAuditedBy,
      l$lastStatutoryInspectionDate,
      l$statutoryInspectionIntervalMonths,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$NewAssetByTemplateId$newAssetByTemplateId) ||
        runtimeType != other.runtimeType) {
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
    if (l$parentAssetId != lOther$parentAssetId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
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
    if (l$functionalLocationCode != lOther$functionalLocationCode) {
      return false;
    }
    final l$transferToDepotNo = transferToDepotNo;
    final lOther$transferToDepotNo = other.transferToDepotNo;
    if (l$transferToDepotNo != lOther$transferToDepotNo) {
      return false;
    }
    final l$transferToDepotNoEffectiveFrom = transferToDepotNoEffectiveFrom;
    final lOther$transferToDepotNoEffectiveFrom =
        other.transferToDepotNoEffectiveFrom;
    if (l$transferToDepotNoEffectiveFrom !=
        lOther$transferToDepotNoEffectiveFrom) {
      return false;
    }
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final lOther$transferToDepotNoAssetApprovalId =
        other.transferToDepotNoAssetApprovalId;
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
    if (l$dateOfAcquisition != lOther$dateOfAcquisition) {
      return false;
    }
    final l$dateOfDisposal = dateOfDisposal;
    final lOther$dateOfDisposal = other.dateOfDisposal;
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
    if (l$disposalStatus != lOther$disposalStatus) {
      return false;
    }
    final l$disposalEffectiveFrom = disposalEffectiveFrom;
    final lOther$disposalEffectiveFrom = other.disposalEffectiveFrom;
    if (l$disposalEffectiveFrom != lOther$disposalEffectiveFrom) {
      return false;
    }
    final l$disposalApprovalId = disposalApprovalId;
    final lOther$disposalApprovalId = other.disposalApprovalId;
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
    if (l$salesInvoiceNo != lOther$salesInvoiceNo) {
      return false;
    }
    final l$assetProperties = assetProperties;
    final lOther$assetProperties = other.assetProperties;
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
    final l$assetCounters = assetCounters;
    final lOther$assetCounters = other.assetCounters;
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$assetImages = assetImages;
    final lOther$assetImages = other.assetImages;
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
    if (l$hasSubAssets != lOther$hasSubAssets) {
      return false;
    }
    final l$codaAnalysisCode = codaAnalysisCode;
    final lOther$codaAnalysisCode = other.codaAnalysisCode;
    if (l$codaAnalysisCode != lOther$codaAnalysisCode) {
      return false;
    }
    final l$assetHierarchyId = assetHierarchyId;
    final lOther$assetHierarchyId = other.assetHierarchyId;
    if (l$assetHierarchyId != lOther$assetHierarchyId) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$needsReview = needsReview;
    final lOther$needsReview = other.needsReview;
    if (l$needsReview != lOther$needsReview) {
      return false;
    }
    final l$lastReviewed = lastReviewed;
    final lOther$lastReviewed = other.lastReviewed;
    if (l$lastReviewed != lOther$lastReviewed) {
      return false;
    }
    final l$lastReviewedBy = lastReviewedBy;
    final lOther$lastReviewedBy = other.lastReviewedBy;
    if (l$lastReviewedBy != lOther$lastReviewedBy) {
      return false;
    }
    final l$lastAudited = lastAudited;
    final lOther$lastAudited = other.lastAudited;
    if (l$lastAudited != lOther$lastAudited) {
      return false;
    }
    final l$lastAuditedBy = lastAuditedBy;
    final lOther$lastAuditedBy = other.lastAuditedBy;
    if (l$lastAuditedBy != lOther$lastAuditedBy) {
      return false;
    }
    final l$lastStatutoryInspectionDate = lastStatutoryInspectionDate;
    final lOther$lastStatutoryInspectionDate =
        other.lastStatutoryInspectionDate;
    if (l$lastStatutoryInspectionDate != lOther$lastStatutoryInspectionDate) {
      return false;
    }
    final l$statutoryInspectionIntervalMonths =
        statutoryInspectionIntervalMonths;
    final lOther$statutoryInspectionIntervalMonths =
        other.statutoryInspectionIntervalMonths;
    if (l$statutoryInspectionIntervalMonths !=
        lOther$statutoryInspectionIntervalMonths) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NewAssetByTemplateId$newAssetByTemplateId
    on Query$NewAssetByTemplateId$newAssetByTemplateId {
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId<
          Query$NewAssetByTemplateId$newAssetByTemplateId>
      get copyWith => CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId<TRes> {
  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId(
    Query$NewAssetByTemplateId$newAssetByTemplateId instance,
    TRes Function(Query$NewAssetByTemplateId$newAssetByTemplateId) then,
  ) = _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId;

  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId;

  TRes call({
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
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties>?
        assetProperties,
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters>?
        assetCounters,
    String? id,
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages>?
        assetImages,
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours>?
        permittedHours,
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours>?
        shiftHours,
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
    DateTime? lastStatutoryInspectionDate,
    String? statutoryInspectionIntervalMonths,
    String? $__typename,
  });
  TRes assetProperties(
      Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties> Function(
              Iterable<
                  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties<
                      Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties>>)
          _fn);
  TRes assetCounters(
      Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters> Function(
              Iterable<
                  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters<
                      Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters>>)
          _fn);
  TRes assetImages(
      Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages>? Function(
              Iterable<
                  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages<
                      Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages>>?)
          _fn);
  TRes permittedHours(
      Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours>? Function(
              Iterable<
                  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours<
                      Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours>>?)
          _fn);
  TRes shiftHours(
      Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours>? Function(
              Iterable<
                  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours<
                      Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours>>?)
          _fn);
}

class _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId<TRes>
    implements CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId<TRes> {
  _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId(
    this._instance,
    this._then,
  );

  final Query$NewAssetByTemplateId$newAssetByTemplateId _instance;

  final TRes Function(Query$NewAssetByTemplateId$newAssetByTemplateId) _then;

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
    Object? id = _undefined,
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
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NewAssetByTemplateId$newAssetByTemplateId(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        approved: approved == _undefined || approved == null
            ? _instance.approved
            : (approved as bool),
        parentAssetId: parentAssetId == _undefined
            ? _instance.parentAssetId
            : (parentAssetId as String?),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        name: name == _undefined ? _instance.name : (name as String?),
        make: make == _undefined || make == null
            ? _instance.make
            : (make as String),
        model: model == _undefined ? _instance.model : (model as String?),
        serialNumber: serialNumber == _undefined
            ? _instance.serialNumber
            : (serialNumber as String?),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        functionalLocationCode: functionalLocationCode == _undefined
            ? _instance.functionalLocationCode
            : (functionalLocationCode as String?),
        transferToDepotNo: transferToDepotNo == _undefined
            ? _instance.transferToDepotNo
            : (transferToDepotNo as String?),
        transferToDepotNoEffectiveFrom:
            transferToDepotNoEffectiveFrom == _undefined
                ? _instance.transferToDepotNoEffectiveFrom
                : (transferToDepotNoEffectiveFrom as DateTime?),
        transferToDepotNoAssetApprovalId:
            transferToDepotNoAssetApprovalId == _undefined
                ? _instance.transferToDepotNoAssetApprovalId
                : (transferToDepotNoAssetApprovalId as int?),
        latitude: latitude == _undefined || latitude == null
            ? _instance.latitude
            : (latitude as double),
        longitude: longitude == _undefined || longitude == null
            ? _instance.longitude
            : (longitude as double),
        templateId: templateId == _undefined || templateId == null
            ? _instance.templateId
            : (templateId as String),
        dateOfAcquisition: dateOfAcquisition == _undefined
            ? _instance.dateOfAcquisition
            : (dateOfAcquisition as DateTime?),
        dateOfDisposal: dateOfDisposal == _undefined
            ? _instance.dateOfDisposal
            : (dateOfDisposal as DateTime?),
        farLeasedExpensed:
            farLeasedExpensed == _undefined || farLeasedExpensed == null
                ? _instance.farLeasedExpensed
                : (farLeasedExpensed as String),
        yearOfManufacture: yearOfManufacture == _undefined
            ? _instance.yearOfManufacture
            : (yearOfManufacture as int?),
        condition: condition == _undefined || condition == null
            ? _instance.condition
            : (condition as String),
        status: status == _undefined ? _instance.status : (status as String?),
        disposalStatus: disposalStatus == _undefined
            ? _instance.disposalStatus
            : (disposalStatus as String?),
        disposalEffectiveFrom: disposalEffectiveFrom == _undefined
            ? _instance.disposalEffectiveFrom
            : (disposalEffectiveFrom as DateTime?),
        disposalApprovalId: disposalApprovalId == _undefined
            ? _instance.disposalApprovalId
            : (disposalApprovalId as int?),
        statutoryInspection:
            statutoryInspection == _undefined || statutoryInspection == null
                ? _instance.statutoryInspection
                : (statutoryInspection as bool),
        salesInvoiceNo: salesInvoiceNo == _undefined
            ? _instance.salesInvoiceNo
            : (salesInvoiceNo as String?),
        assetProperties: assetProperties == _undefined ||
                assetProperties == null
            ? _instance.assetProperties
            : (assetProperties as List<
                Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties>),
        assetCounters: assetCounters == _undefined || assetCounters == null
            ? _instance.assetCounters
            : (assetCounters as List<
                Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters>),
        id: id == _undefined ? _instance.id : (id as String?),
        assetImages: assetImages == _undefined
            ? _instance.assetImages
            : (assetImages as List<
                Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages>?),
        permittedHours: permittedHours == _undefined
            ? _instance.permittedHours
            : (permittedHours as List<
                Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours>?),
        shiftHours: shiftHours == _undefined
            ? _instance.shiftHours
            : (shiftHours as List<
                Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours>?),
        parentAssetCodes: parentAssetCodes == _undefined
            ? _instance.parentAssetCodes
            : (parentAssetCodes as List<String>?),
        hasSubAssets: hasSubAssets == _undefined
            ? _instance.hasSubAssets
            : (hasSubAssets as bool?),
        codaAnalysisCode: codaAnalysisCode == _undefined
            ? _instance.codaAnalysisCode
            : (codaAnalysisCode as String?),
        assetHierarchyId: assetHierarchyId == _undefined
            ? _instance.assetHierarchyId
            : (assetHierarchyId as String?),
        displayName: displayName == _undefined || displayName == null
            ? _instance.displayName
            : (displayName as String),
        needsReview: needsReview == _undefined
            ? _instance.needsReview
            : (needsReview as DateTime?),
        lastReviewed: lastReviewed == _undefined
            ? _instance.lastReviewed
            : (lastReviewed as DateTime?),
        lastReviewedBy: lastReviewedBy == _undefined
            ? _instance.lastReviewedBy
            : (lastReviewedBy as String?),
        lastAudited: lastAudited == _undefined
            ? _instance.lastAudited
            : (lastAudited as DateTime?),
        lastAuditedBy: lastAuditedBy == _undefined
            ? _instance.lastAuditedBy
            : (lastAuditedBy as String?),
        lastStatutoryInspectionDate: lastStatutoryInspectionDate == _undefined
            ? _instance.lastStatutoryInspectionDate
            : (lastStatutoryInspectionDate as DateTime?),
        statutoryInspectionIntervalMonths:
            statutoryInspectionIntervalMonths == _undefined
                ? _instance.statutoryInspectionIntervalMonths
                : (statutoryInspectionIntervalMonths as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes assetProperties(
          Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties> Function(
                  Iterable<
                      CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties<
                          Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties>>)
              _fn) =>
      call(
          assetProperties: _fn(_instance.assetProperties.map((e) =>
              CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties(
                e,
                (i) => i,
              ))).toList());

  TRes assetCounters(
          Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters> Function(
                  Iterable<
                      CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters<
                          Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters>>)
              _fn) =>
      call(
          assetCounters: _fn(_instance.assetCounters.map((e) =>
              CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters(
                e,
                (i) => i,
              ))).toList());

  TRes assetImages(
          Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages>? Function(
                  Iterable<
                      CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages<
                          Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages>>?)
              _fn) =>
      call(
          assetImages: _fn(_instance.assetImages?.map((e) =>
              CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages(
                e,
                (i) => i,
              )))?.toList());

  TRes permittedHours(
          Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours>? Function(
                  Iterable<
                      CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours<
                          Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours>>?)
              _fn) =>
      call(
          permittedHours: _fn(_instance.permittedHours?.map((e) =>
              CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours(
                e,
                (i) => i,
              )))?.toList());

  TRes shiftHours(
          Iterable<Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours>? Function(
                  Iterable<
                      CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours<
                          Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours>>?)
              _fn) =>
      call(
          shiftHours: _fn(_instance.shiftHours?.map((e) =>
              CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId<TRes>
    implements CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId<TRes> {
  _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId(this._res);

  TRes _res;

  call({
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
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties>?
        assetProperties,
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters>?
        assetCounters,
    String? id,
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages>?
        assetImages,
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours>?
        permittedHours,
    List<Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours>?
        shiftHours,
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
    DateTime? lastStatutoryInspectionDate,
    String? statutoryInspectionIntervalMonths,
    String? $__typename,
  }) =>
      _res;

  assetProperties(_fn) => _res;

  assetCounters(_fn) => _res;

  assetImages(_fn) => _res;

  permittedHours(_fn) => _res;

  shiftHours(_fn) => _res;
}

class Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties {
  Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties({
    this.dataType,
    this.templatePropertyId,
    this.propertyValue,
    this.propertyValueNumber,
    this.id,
    this.name,
    required this.isMandatory,
    required this.active,
    required this.sequence,
    this.$__typename = 'AssetProperty',
  });

  factory Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties.fromJson(
      Map<String, dynamic> json) {
    final l$dataType = json['dataType'];
    final l$templatePropertyId = json['templatePropertyId'];
    final l$propertyValue = json['propertyValue'];
    final l$propertyValueNumber = json['propertyValueNumber'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$isMandatory = json['isMandatory'];
    final l$active = json['active'];
    final l$sequence = json['sequence'];
    final l$$__typename = json['__typename'];
    return Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties(
      dataType: (l$dataType as String?),
      templatePropertyId: (l$templatePropertyId as String?),
      propertyValue: (l$propertyValue as String?),
      propertyValueNumber: (l$propertyValueNumber as num?)?.toDouble(),
      id: (l$id as String?),
      name: (l$name as String?),
      isMandatory: (l$isMandatory as bool),
      active: (l$active as bool),
      sequence: (l$sequence as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? dataType;

  final String? templatePropertyId;

  final String? propertyValue;

  final double? propertyValueNumber;

  final String? id;

  final String? name;

  final bool isMandatory;

  final bool active;

  final int sequence;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dataType = dataType;
    _resultData['dataType'] = l$dataType;
    final l$templatePropertyId = templatePropertyId;
    _resultData['templatePropertyId'] = l$templatePropertyId;
    final l$propertyValue = propertyValue;
    _resultData['propertyValue'] = l$propertyValue;
    final l$propertyValueNumber = propertyValueNumber;
    _resultData['propertyValueNumber'] = l$propertyValueNumber;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isMandatory = isMandatory;
    _resultData['isMandatory'] = l$isMandatory;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dataType = dataType;
    final l$templatePropertyId = templatePropertyId;
    final l$propertyValue = propertyValue;
    final l$propertyValueNumber = propertyValueNumber;
    final l$id = id;
    final l$name = name;
    final l$isMandatory = isMandatory;
    final l$active = active;
    final l$sequence = sequence;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dataType,
      l$templatePropertyId,
      l$propertyValue,
      l$propertyValueNumber,
      l$id,
      l$name,
      l$isMandatory,
      l$active,
      l$sequence,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$templatePropertyId = templatePropertyId;
    final lOther$templatePropertyId = other.templatePropertyId;
    if (l$templatePropertyId != lOther$templatePropertyId) {
      return false;
    }
    final l$propertyValue = propertyValue;
    final lOther$propertyValue = other.propertyValue;
    if (l$propertyValue != lOther$propertyValue) {
      return false;
    }
    final l$propertyValueNumber = propertyValueNumber;
    final lOther$propertyValueNumber = other.propertyValueNumber;
    if (l$propertyValueNumber != lOther$propertyValueNumber) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties
    on Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties {
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties<
          Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties>
      get copyWith =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties<
    TRes> {
  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties(
    Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties instance,
    TRes Function(
            Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties)
        then,
  ) = _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties;

  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties;

  TRes call({
    String? dataType,
    String? templatePropertyId,
    String? propertyValue,
    double? propertyValueNumber,
    String? id,
    String? name,
    bool? isMandatory,
    bool? active,
    int? sequence,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties<
            TRes> {
  _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties(
    this._instance,
    this._then,
  );

  final Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties
      _instance;

  final TRes Function(
      Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dataType = _undefined,
    Object? templatePropertyId = _undefined,
    Object? propertyValue = _undefined,
    Object? propertyValueNumber = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? isMandatory = _undefined,
    Object? active = _undefined,
    Object? sequence = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties(
        dataType:
            dataType == _undefined ? _instance.dataType : (dataType as String?),
        templatePropertyId: templatePropertyId == _undefined
            ? _instance.templatePropertyId
            : (templatePropertyId as String?),
        propertyValue: propertyValue == _undefined
            ? _instance.propertyValue
            : (propertyValue as String?),
        propertyValueNumber: propertyValueNumber == _undefined
            ? _instance.propertyValueNumber
            : (propertyValueNumber as double?),
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        isMandatory: isMandatory == _undefined || isMandatory == null
            ? _instance.isMandatory
            : (isMandatory as bool),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        sequence: sequence == _undefined || sequence == null
            ? _instance.sequence
            : (sequence as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties<
            TRes> {
  _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetProperties(
      this._res);

  TRes _res;

  call({
    String? dataType,
    String? templatePropertyId,
    String? propertyValue,
    double? propertyValueNumber,
    String? id,
    String? name,
    bool? isMandatory,
    bool? active,
    int? sequence,
    String? $__typename,
  }) =>
      _res;
}

class Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters {
  Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters({
    this.assetTemplateCounterId,
    required this.value,
    required this.valueTimestamp,
    this.name,
    this.$__typename = 'AssetCounterResult',
  });

  factory Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters.fromJson(
      Map<String, dynamic> json) {
    final l$assetTemplateCounterId = json['assetTemplateCounterId'];
    final l$value = json['value'];
    final l$valueTimestamp = json['valueTimestamp'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters(
      assetTemplateCounterId: (l$assetTemplateCounterId as String?),
      value: (l$value as num).toDouble(),
      valueTimestamp: DateTime.parse((l$valueTimestamp as String)),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? assetTemplateCounterId;

  final double value;

  final DateTime valueTimestamp;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetTemplateCounterId = assetTemplateCounterId;
    _resultData['assetTemplateCounterId'] = l$assetTemplateCounterId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$valueTimestamp = valueTimestamp;
    _resultData['valueTimestamp'] = l$valueTimestamp.toIso8601String();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetTemplateCounterId = assetTemplateCounterId;
    final l$value = value;
    final l$valueTimestamp = valueTimestamp;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetTemplateCounterId,
      l$value,
      l$valueTimestamp,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters) ||
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
    if (l$valueTimestamp != lOther$valueTimestamp) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters
    on Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters {
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters<
          Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters>
      get copyWith =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters<
    TRes> {
  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters(
    Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters instance,
    TRes Function(Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters)
        then,
  ) = _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters;

  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters;

  TRes call({
    String? assetTemplateCounterId,
    double? value,
    DateTime? valueTimestamp,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters<
            TRes> {
  _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters(
    this._instance,
    this._then,
  );

  final Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters _instance;

  final TRes Function(
      Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetTemplateCounterId = _undefined,
    Object? value = _undefined,
    Object? valueTimestamp = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters(
        assetTemplateCounterId: assetTemplateCounterId == _undefined
            ? _instance.assetTemplateCounterId
            : (assetTemplateCounterId as String?),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        valueTimestamp: valueTimestamp == _undefined || valueTimestamp == null
            ? _instance.valueTimestamp
            : (valueTimestamp as DateTime),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters<
            TRes> {
  _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetCounters(
      this._res);

  TRes _res;

  call({
    String? assetTemplateCounterId,
    double? value,
    DateTime? valueTimestamp,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages {
  Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages({
    this.id,
    this.filename,
    this.url,
    this.comments,
    this.$__typename = 'AssetImage',
  });

  factory Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$filename = json['filename'];
    final l$url = json['url'];
    final l$comments = json['comments'];
    final l$$__typename = json['__typename'];
    return Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages(
      id: (l$id as String?),
      filename: (l$filename as String?),
      url: (l$url as String?),
      comments: (l$comments as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? filename;

  final String? url;

  final String? comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$filename = filename;
    _resultData['filename'] = l$filename;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$comments = comments;
    _resultData['comments'] = l$comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$filename = filename;
    final l$url = url;
    final l$comments = comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$filename,
      l$url,
      l$comments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages
    on Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages {
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages<
          Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages>
      get copyWith =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages<
    TRes> {
  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages(
    Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages instance,
    TRes Function(Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages)
        then,
  ) = _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages;

  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages;

  TRes call({
    String? id,
    String? filename,
    String? url,
    String? comments,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages<
            TRes> {
  _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages(
    this._instance,
    this._then,
  );

  final Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages _instance;

  final TRes Function(
      Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? filename = _undefined,
    Object? url = _undefined,
    Object? comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages(
        id: id == _undefined ? _instance.id : (id as String?),
        filename:
            filename == _undefined ? _instance.filename : (filename as String?),
        url: url == _undefined ? _instance.url : (url as String?),
        comments:
            comments == _undefined ? _instance.comments : (comments as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages<
            TRes> {
  _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$assetImages(
      this._res);

  TRes _res;

  call({
    String? id,
    String? filename,
    String? url,
    String? comments,
    String? $__typename,
  }) =>
      _res;
}

class Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours {
  Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours({
    this.key,
    this.value,
    this.$__typename = 'HourResult',
  });

  factory Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours(
      key: (l$key as String?),
      value: l$value == null
          ? null
          : Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value
              .fromJson((l$value as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value?
      value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours
    on Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours {
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours<
          Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours>
      get copyWith =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours<
    TRes> {
  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours(
    Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours instance,
    TRes Function(
            Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours)
        then,
  ) = _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours;

  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours;

  TRes call({
    String? key,
    Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value? value,
    String? $__typename,
  });
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value<
      TRes> get value;
}

class _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours<
            TRes> {
  _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours(
    this._instance,
    this._then,
  );

  final Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours
      _instance;

  final TRes Function(
      Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours(
        key: key == _undefined ? _instance.key : (key as String?),
        value: value == _undefined
            ? _instance.value
            : (value
                as Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value<
      TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value
            .stub(_then(_instance))
        : CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value(
            local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours<
            TRes> {
  _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours(
      this._res);

  TRes _res;

  call({
    String? key,
    Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value? value,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value<
          TRes>
      get value =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value
              .stub(_res);
}

class Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value {
  Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value({
    this.start,
    this.end,
    this.$__typename = 'StartAndEndTime',
  });

  factory Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value.fromJson(
      Map<String, dynamic> json) {
    final l$start = json['start'];
    final l$end = json['end'];
    final l$$__typename = json['__typename'];
    return Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value(
      start: (l$start as String?),
      end: (l$end as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? start;

  final String? end;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$start = start;
    _resultData['start'] = l$start;
    final l$end = end;
    _resultData['end'] = l$end;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$start = start;
    final l$end = end;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$start,
      l$end,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$start = start;
    final lOther$start = other.start;
    if (l$start != lOther$start) {
      return false;
    }
    final l$end = end;
    final lOther$end = other.end;
    if (l$end != lOther$end) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value
    on Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value {
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value<
          Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value>
      get copyWith =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value<
    TRes> {
  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value(
    Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value
        instance,
    TRes Function(
            Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value)
        then,
  ) = _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value;

  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value;

  TRes call({
    String? start,
    String? end,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value<
            TRes> {
  _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value(
    this._instance,
    this._then,
  );

  final Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value
      _instance;

  final TRes Function(
          Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value(
        start: start == _undefined ? _instance.start : (start as String?),
        end: end == _undefined ? _instance.end : (end as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value<
            TRes> {
  _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$permittedHours$value(
      this._res);

  TRes _res;

  call({
    String? start,
    String? end,
    String? $__typename,
  }) =>
      _res;
}

class Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours {
  Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours({
    this.key,
    this.value,
    this.$__typename = 'HourResult',
  });

  factory Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours(
      key: (l$key as String?),
      value: l$value == null
          ? null
          : Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value
              .fromJson((l$value as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value? value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours
    on Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours {
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours<
          Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours>
      get copyWith =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours<
    TRes> {
  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours(
    Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours instance,
    TRes Function(Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours)
        then,
  ) = _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours;

  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours;

  TRes call({
    String? key,
    Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value? value,
    String? $__typename,
  });
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value<
      TRes> get value;
}

class _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours<
            TRes> {
  _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours(
    this._instance,
    this._then,
  );

  final Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours _instance;

  final TRes Function(
      Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours(
        key: key == _undefined ? _instance.key : (key as String?),
        value: value == _undefined
            ? _instance.value
            : (value
                as Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value<
      TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value
            .stub(_then(_instance))
        : CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value(
            local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours<
            TRes> {
  _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours(
      this._res);

  TRes _res;

  call({
    String? key,
    Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value? value,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value<
          TRes>
      get value =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value
              .stub(_res);
}

class Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value {
  Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value({
    this.start,
    this.end,
    this.$__typename = 'StartAndEndTime',
  });

  factory Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value.fromJson(
      Map<String, dynamic> json) {
    final l$start = json['start'];
    final l$end = json['end'];
    final l$$__typename = json['__typename'];
    return Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value(
      start: (l$start as String?),
      end: (l$end as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? start;

  final String? end;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$start = start;
    _resultData['start'] = l$start;
    final l$end = end;
    _resultData['end'] = l$end;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$start = start;
    final l$end = end;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$start,
      l$end,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$start = start;
    final lOther$start = other.start;
    if (l$start != lOther$start) {
      return false;
    }
    final l$end = end;
    final lOther$end = other.end;
    if (l$end != lOther$end) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value
    on Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value {
  CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value<
          Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value>
      get copyWith =>
          CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value<
    TRes> {
  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value(
    Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value instance,
    TRes Function(
            Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value)
        then,
  ) = _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value;

  factory CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value;

  TRes call({
    String? start,
    String? end,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value<
            TRes> {
  _CopyWithImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value(
    this._instance,
    this._then,
  );

  final Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value
      _instance;

  final TRes Function(
      Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value(
        start: start == _undefined ? _instance.start : (start as String?),
        end: end == _undefined ? _instance.end : (end as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value<
        TRes>
    implements
        CopyWith$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value<
            TRes> {
  _CopyWithStubImpl$Query$NewAssetByTemplateId$newAssetByTemplateId$shiftHours$value(
      this._res);

  TRes _res;

  call({
    String? start,
    String? end,
    String? $__typename,
  }) =>
      _res;
}
