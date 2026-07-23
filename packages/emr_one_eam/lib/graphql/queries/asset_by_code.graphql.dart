import 'package:gql/ast.dart';

class Variables$Query$assetbycode {
  factory Variables$Query$assetbycode({required String assetCode}) =>
      Variables$Query$assetbycode._({
        r'assetCode': assetCode,
      });

  Variables$Query$assetbycode._(this._$data);

  factory Variables$Query$assetbycode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$assetCode = data['assetCode'];
    result$data['assetCode'] = (l$assetCode as String);
    return Variables$Query$assetbycode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get assetCode => (_$data['assetCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$assetCode = assetCode;
    result$data['assetCode'] = l$assetCode;
    return result$data;
  }

  CopyWith$Variables$Query$assetbycode<Variables$Query$assetbycode>
      get copyWith => CopyWith$Variables$Query$assetbycode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$assetbycode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetCode = assetCode;
    return Object.hashAll([l$assetCode]);
  }
}

abstract class CopyWith$Variables$Query$assetbycode<TRes> {
  factory CopyWith$Variables$Query$assetbycode(
    Variables$Query$assetbycode instance,
    TRes Function(Variables$Query$assetbycode) then,
  ) = _CopyWithImpl$Variables$Query$assetbycode;

  factory CopyWith$Variables$Query$assetbycode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$assetbycode;

  TRes call({String? assetCode});
}

class _CopyWithImpl$Variables$Query$assetbycode<TRes>
    implements CopyWith$Variables$Query$assetbycode<TRes> {
  _CopyWithImpl$Variables$Query$assetbycode(
    this._instance,
    this._then,
  );

  final Variables$Query$assetbycode _instance;

  final TRes Function(Variables$Query$assetbycode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? assetCode = _undefined}) =>
      _then(Variables$Query$assetbycode._({
        ..._instance._$data,
        if (assetCode != _undefined && assetCode != null)
          'assetCode': (assetCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$assetbycode<TRes>
    implements CopyWith$Variables$Query$assetbycode<TRes> {
  _CopyWithStubImpl$Variables$Query$assetbycode(this._res);

  TRes _res;

  call({String? assetCode}) => _res;
}

class Query$assetbycode {
  Query$assetbycode({
    this.searchAssetByCode,
    this.$__typename = 'Query',
  });

  factory Query$assetbycode.fromJson(Map<String, dynamic> json) {
    final l$searchAssetByCode = json['searchAssetByCode'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode(
      searchAssetByCode: l$searchAssetByCode == null
          ? null
          : Query$assetbycode$searchAssetByCode.fromJson(
              (l$searchAssetByCode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$assetbycode$searchAssetByCode? searchAssetByCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAssetByCode = searchAssetByCode;
    _resultData['searchAssetByCode'] = l$searchAssetByCode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAssetByCode = searchAssetByCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$searchAssetByCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$assetbycode) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAssetByCode = searchAssetByCode;
    final lOther$searchAssetByCode = other.searchAssetByCode;
    if (l$searchAssetByCode != lOther$searchAssetByCode) {
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

extension UtilityExtension$Query$assetbycode on Query$assetbycode {
  CopyWith$Query$assetbycode<Query$assetbycode> get copyWith =>
      CopyWith$Query$assetbycode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$assetbycode<TRes> {
  factory CopyWith$Query$assetbycode(
    Query$assetbycode instance,
    TRes Function(Query$assetbycode) then,
  ) = _CopyWithImpl$Query$assetbycode;

  factory CopyWith$Query$assetbycode.stub(TRes res) =
      _CopyWithStubImpl$Query$assetbycode;

  TRes call({
    Query$assetbycode$searchAssetByCode? searchAssetByCode,
    String? $__typename,
  });
  CopyWith$Query$assetbycode$searchAssetByCode<TRes> get searchAssetByCode;
}

class _CopyWithImpl$Query$assetbycode<TRes>
    implements CopyWith$Query$assetbycode<TRes> {
  _CopyWithImpl$Query$assetbycode(
    this._instance,
    this._then,
  );

  final Query$assetbycode _instance;

  final TRes Function(Query$assetbycode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAssetByCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode(
        searchAssetByCode: searchAssetByCode == _undefined
            ? _instance.searchAssetByCode
            : (searchAssetByCode as Query$assetbycode$searchAssetByCode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$assetbycode$searchAssetByCode<TRes> get searchAssetByCode {
    final local$searchAssetByCode = _instance.searchAssetByCode;
    return local$searchAssetByCode == null
        ? CopyWith$Query$assetbycode$searchAssetByCode.stub(_then(_instance))
        : CopyWith$Query$assetbycode$searchAssetByCode(
            local$searchAssetByCode, (e) => call(searchAssetByCode: e));
  }
}

class _CopyWithStubImpl$Query$assetbycode<TRes>
    implements CopyWith$Query$assetbycode<TRes> {
  _CopyWithStubImpl$Query$assetbycode(this._res);

  TRes _res;

  call({
    Query$assetbycode$searchAssetByCode? searchAssetByCode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$assetbycode$searchAssetByCode<TRes> get searchAssetByCode =>
      CopyWith$Query$assetbycode$searchAssetByCode.stub(_res);
}

const documentNodeQueryassetbycode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'assetbycode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'assetCode')),
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
        name: NameNode(value: 'searchAssetByCode'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'assetCode'),
            value: VariableNode(name: NameNode(value: 'assetCode')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'syncTarget'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetTemplate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
            name: NameNode(value: 'markerColour'),
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
                name: NameNode(value: 'name'),
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
                name: NameNode(value: 'value'),
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
            name: NameNode(value: 'assetProperties'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'templatePropertyId'),
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
                name: NameNode(value: 'viewerGroupIds'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updaterGroupIds'),
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
                name: NameNode(value: 'userCanView'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userCanUpdate'),
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
                name: NameNode(value: 'dataType'),
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

class Query$assetbycode$searchAssetByCode {
  Query$assetbycode$searchAssetByCode({
    this.syncTarget,
    this.category,
    this.assetTemplate,
    this.assetType,
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
    this.markerColour,
    this.id,
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
    this.shiftHours,
    this.permittedHours,
    required this.assetCounters,
    this.assetImages,
    required this.assetProperties,
    this.$__typename = 'AssetsByCodeSearchIndexResult',
  });

  factory Query$assetbycode$searchAssetByCode.fromJson(
      Map<String, dynamic> json) {
    final l$syncTarget = json['syncTarget'];
    final l$category = json['category'];
    final l$assetTemplate = json['assetTemplate'];
    final l$assetType = json['assetType'];
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
    final l$markerColour = json['markerColour'];
    final l$id = json['id'];
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
    final l$shiftHours = json['shiftHours'];
    final l$permittedHours = json['permittedHours'];
    final l$assetCounters = json['assetCounters'];
    final l$assetImages = json['assetImages'];
    final l$assetProperties = json['assetProperties'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode$searchAssetByCode(
      syncTarget: (l$syncTarget as List<dynamic>?)
          ?.map((e) => Query$assetbycode$searchAssetByCode$syncTarget.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      category: (l$category as String?),
      assetTemplate: (l$assetTemplate as String?),
      assetType: (l$assetType as String?),
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
      markerColour: (l$markerColour as String?),
      id: (l$id as String?),
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
      shiftHours: (l$shiftHours as List<dynamic>?)
          ?.map((e) => Query$assetbycode$searchAssetByCode$shiftHours.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      permittedHours: (l$permittedHours as List<dynamic>?)
          ?.map((e) =>
              Query$assetbycode$searchAssetByCode$permittedHours.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      assetCounters: (l$assetCounters as List<dynamic>)
          .map((e) =>
              Query$assetbycode$searchAssetByCode$assetCounters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      assetImages: (l$assetImages as List<dynamic>?)
          ?.map((e) => Query$assetbycode$searchAssetByCode$assetImages.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      assetProperties: (l$assetProperties as List<dynamic>)
          .map((e) =>
              Query$assetbycode$searchAssetByCode$assetProperties.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$assetbycode$searchAssetByCode$syncTarget>? syncTarget;

  final String? category;

  final String? assetTemplate;

  final String? assetType;

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

  final String? markerColour;

  final String? id;

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

  final List<Query$assetbycode$searchAssetByCode$shiftHours>? shiftHours;

  final List<Query$assetbycode$searchAssetByCode$permittedHours>?
      permittedHours;

  final List<Query$assetbycode$searchAssetByCode$assetCounters> assetCounters;

  final List<Query$assetbycode$searchAssetByCode$assetImages>? assetImages;

  final List<Query$assetbycode$searchAssetByCode$assetProperties>
      assetProperties;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$syncTarget = syncTarget;
    _resultData['syncTarget'] = l$syncTarget?.map((e) => e.toJson()).toList();
    final l$category = category;
    _resultData['category'] = l$category;
    final l$assetTemplate = assetTemplate;
    _resultData['assetTemplate'] = l$assetTemplate;
    final l$assetType = assetType;
    _resultData['assetType'] = l$assetType;
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
    final l$markerColour = markerColour;
    _resultData['markerColour'] = l$markerColour;
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$shiftHours = shiftHours;
    _resultData['shiftHours'] = l$shiftHours?.map((e) => e.toJson()).toList();
    final l$permittedHours = permittedHours;
    _resultData['permittedHours'] =
        l$permittedHours?.map((e) => e.toJson()).toList();
    final l$assetCounters = assetCounters;
    _resultData['assetCounters'] =
        l$assetCounters.map((e) => e.toJson()).toList();
    final l$assetImages = assetImages;
    _resultData['assetImages'] = l$assetImages?.map((e) => e.toJson()).toList();
    final l$assetProperties = assetProperties;
    _resultData['assetProperties'] =
        l$assetProperties.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$syncTarget = syncTarget;
    final l$category = category;
    final l$assetTemplate = assetTemplate;
    final l$assetType = assetType;
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
    final l$shiftHours = shiftHours;
    final l$permittedHours = permittedHours;
    final l$assetCounters = assetCounters;
    final l$assetImages = assetImages;
    final l$assetProperties = assetProperties;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$syncTarget == null ? null : Object.hashAll(l$syncTarget.map((v) => v)),
      l$category,
      l$assetTemplate,
      l$assetType,
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
      l$markerColour,
      l$id,
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
      l$shiftHours == null ? null : Object.hashAll(l$shiftHours.map((v) => v)),
      l$permittedHours == null
          ? null
          : Object.hashAll(l$permittedHours.map((v) => v)),
      Object.hashAll(l$assetCounters.map((v) => v)),
      l$assetImages == null
          ? null
          : Object.hashAll(l$assetImages.map((v) => v)),
      Object.hashAll(l$assetProperties.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$assetbycode$searchAssetByCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$syncTarget = syncTarget;
    final lOther$syncTarget = other.syncTarget;
    if (l$syncTarget != null && lOther$syncTarget != null) {
      if (l$syncTarget.length != lOther$syncTarget.length) {
        return false;
      }
      for (int i = 0; i < l$syncTarget.length; i++) {
        final l$syncTarget$entry = l$syncTarget[i];
        final lOther$syncTarget$entry = lOther$syncTarget[i];
        if (l$syncTarget$entry != lOther$syncTarget$entry) {
          return false;
        }
      }
    } else if (l$syncTarget != lOther$syncTarget) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$assetTemplate = assetTemplate;
    final lOther$assetTemplate = other.assetTemplate;
    if (l$assetTemplate != lOther$assetTemplate) {
      return false;
    }
    final l$assetType = assetType;
    final lOther$assetType = other.assetType;
    if (l$assetType != lOther$assetType) {
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
    final l$markerColour = markerColour;
    final lOther$markerColour = other.markerColour;
    if (l$markerColour != lOther$markerColour) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$assetbycode$searchAssetByCode
    on Query$assetbycode$searchAssetByCode {
  CopyWith$Query$assetbycode$searchAssetByCode<
          Query$assetbycode$searchAssetByCode>
      get copyWith => CopyWith$Query$assetbycode$searchAssetByCode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$assetbycode$searchAssetByCode<TRes> {
  factory CopyWith$Query$assetbycode$searchAssetByCode(
    Query$assetbycode$searchAssetByCode instance,
    TRes Function(Query$assetbycode$searchAssetByCode) then,
  ) = _CopyWithImpl$Query$assetbycode$searchAssetByCode;

  factory CopyWith$Query$assetbycode$searchAssetByCode.stub(TRes res) =
      _CopyWithStubImpl$Query$assetbycode$searchAssetByCode;

  TRes call({
    List<Query$assetbycode$searchAssetByCode$syncTarget>? syncTarget,
    String? category,
    String? assetTemplate,
    String? assetType,
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
    String? markerColour,
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
    List<Query$assetbycode$searchAssetByCode$shiftHours>? shiftHours,
    List<Query$assetbycode$searchAssetByCode$permittedHours>? permittedHours,
    List<Query$assetbycode$searchAssetByCode$assetCounters>? assetCounters,
    List<Query$assetbycode$searchAssetByCode$assetImages>? assetImages,
    List<Query$assetbycode$searchAssetByCode$assetProperties>? assetProperties,
    String? $__typename,
  });
  TRes syncTarget(
      Iterable<Query$assetbycode$searchAssetByCode$syncTarget>? Function(
              Iterable<
                  CopyWith$Query$assetbycode$searchAssetByCode$syncTarget<
                      Query$assetbycode$searchAssetByCode$syncTarget>>?)
          _fn);
  TRes shiftHours(
      Iterable<Query$assetbycode$searchAssetByCode$shiftHours>? Function(
              Iterable<
                  CopyWith$Query$assetbycode$searchAssetByCode$shiftHours<
                      Query$assetbycode$searchAssetByCode$shiftHours>>?)
          _fn);
  TRes permittedHours(
      Iterable<Query$assetbycode$searchAssetByCode$permittedHours>? Function(
              Iterable<
                  CopyWith$Query$assetbycode$searchAssetByCode$permittedHours<
                      Query$assetbycode$searchAssetByCode$permittedHours>>?)
          _fn);
  TRes assetCounters(
      Iterable<Query$assetbycode$searchAssetByCode$assetCounters> Function(
              Iterable<
                  CopyWith$Query$assetbycode$searchAssetByCode$assetCounters<
                      Query$assetbycode$searchAssetByCode$assetCounters>>)
          _fn);
  TRes assetImages(
      Iterable<Query$assetbycode$searchAssetByCode$assetImages>? Function(
              Iterable<
                  CopyWith$Query$assetbycode$searchAssetByCode$assetImages<
                      Query$assetbycode$searchAssetByCode$assetImages>>?)
          _fn);
  TRes assetProperties(
      Iterable<Query$assetbycode$searchAssetByCode$assetProperties> Function(
              Iterable<
                  CopyWith$Query$assetbycode$searchAssetByCode$assetProperties<
                      Query$assetbycode$searchAssetByCode$assetProperties>>)
          _fn);
}

class _CopyWithImpl$Query$assetbycode$searchAssetByCode<TRes>
    implements CopyWith$Query$assetbycode$searchAssetByCode<TRes> {
  _CopyWithImpl$Query$assetbycode$searchAssetByCode(
    this._instance,
    this._then,
  );

  final Query$assetbycode$searchAssetByCode _instance;

  final TRes Function(Query$assetbycode$searchAssetByCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? syncTarget = _undefined,
    Object? category = _undefined,
    Object? assetTemplate = _undefined,
    Object? assetType = _undefined,
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
    Object? shiftHours = _undefined,
    Object? permittedHours = _undefined,
    Object? assetCounters = _undefined,
    Object? assetImages = _undefined,
    Object? assetProperties = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode$searchAssetByCode(
        syncTarget: syncTarget == _undefined
            ? _instance.syncTarget
            : (syncTarget
                as List<Query$assetbycode$searchAssetByCode$syncTarget>?),
        category:
            category == _undefined ? _instance.category : (category as String?),
        assetTemplate: assetTemplate == _undefined
            ? _instance.assetTemplate
            : (assetTemplate as String?),
        assetType: assetType == _undefined
            ? _instance.assetType
            : (assetType as String?),
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
        markerColour: markerColour == _undefined
            ? _instance.markerColour
            : (markerColour as String?),
        id: id == _undefined ? _instance.id : (id as String?),
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
        shiftHours: shiftHours == _undefined
            ? _instance.shiftHours
            : (shiftHours
                as List<Query$assetbycode$searchAssetByCode$shiftHours>?),
        permittedHours: permittedHours == _undefined
            ? _instance.permittedHours
            : (permittedHours
                as List<Query$assetbycode$searchAssetByCode$permittedHours>?),
        assetCounters: assetCounters == _undefined || assetCounters == null
            ? _instance.assetCounters
            : (assetCounters
                as List<Query$assetbycode$searchAssetByCode$assetCounters>),
        assetImages: assetImages == _undefined
            ? _instance.assetImages
            : (assetImages
                as List<Query$assetbycode$searchAssetByCode$assetImages>?),
        assetProperties: assetProperties == _undefined ||
                assetProperties == null
            ? _instance.assetProperties
            : (assetProperties
                as List<Query$assetbycode$searchAssetByCode$assetProperties>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes syncTarget(
          Iterable<Query$assetbycode$searchAssetByCode$syncTarget>? Function(
                  Iterable<
                      CopyWith$Query$assetbycode$searchAssetByCode$syncTarget<
                          Query$assetbycode$searchAssetByCode$syncTarget>>?)
              _fn) =>
      call(
          syncTarget: _fn(_instance.syncTarget?.map(
              (e) => CopyWith$Query$assetbycode$searchAssetByCode$syncTarget(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes shiftHours(
          Iterable<Query$assetbycode$searchAssetByCode$shiftHours>? Function(
                  Iterable<
                      CopyWith$Query$assetbycode$searchAssetByCode$shiftHours<
                          Query$assetbycode$searchAssetByCode$shiftHours>>?)
              _fn) =>
      call(
          shiftHours: _fn(_instance.shiftHours?.map(
              (e) => CopyWith$Query$assetbycode$searchAssetByCode$shiftHours(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes permittedHours(
          Iterable<Query$assetbycode$searchAssetByCode$permittedHours>? Function(
                  Iterable<
                      CopyWith$Query$assetbycode$searchAssetByCode$permittedHours<
                          Query$assetbycode$searchAssetByCode$permittedHours>>?)
              _fn) =>
      call(
          permittedHours: _fn(_instance.permittedHours?.map((e) =>
              CopyWith$Query$assetbycode$searchAssetByCode$permittedHours(
                e,
                (i) => i,
              )))?.toList());

  TRes assetCounters(
          Iterable<Query$assetbycode$searchAssetByCode$assetCounters> Function(
                  Iterable<
                      CopyWith$Query$assetbycode$searchAssetByCode$assetCounters<
                          Query$assetbycode$searchAssetByCode$assetCounters>>)
              _fn) =>
      call(
          assetCounters: _fn(_instance.assetCounters.map(
              (e) => CopyWith$Query$assetbycode$searchAssetByCode$assetCounters(
                    e,
                    (i) => i,
                  ))).toList());

  TRes assetImages(
          Iterable<Query$assetbycode$searchAssetByCode$assetImages>? Function(
                  Iterable<
                      CopyWith$Query$assetbycode$searchAssetByCode$assetImages<
                          Query$assetbycode$searchAssetByCode$assetImages>>?)
              _fn) =>
      call(
          assetImages: _fn(_instance.assetImages?.map(
              (e) => CopyWith$Query$assetbycode$searchAssetByCode$assetImages(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes assetProperties(
          Iterable<Query$assetbycode$searchAssetByCode$assetProperties> Function(
                  Iterable<
                      CopyWith$Query$assetbycode$searchAssetByCode$assetProperties<
                          Query$assetbycode$searchAssetByCode$assetProperties>>)
              _fn) =>
      call(
          assetProperties: _fn(_instance.assetProperties.map((e) =>
              CopyWith$Query$assetbycode$searchAssetByCode$assetProperties(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$assetbycode$searchAssetByCode<TRes>
    implements CopyWith$Query$assetbycode$searchAssetByCode<TRes> {
  _CopyWithStubImpl$Query$assetbycode$searchAssetByCode(this._res);

  TRes _res;

  call({
    List<Query$assetbycode$searchAssetByCode$syncTarget>? syncTarget,
    String? category,
    String? assetTemplate,
    String? assetType,
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
    String? markerColour,
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
    List<Query$assetbycode$searchAssetByCode$shiftHours>? shiftHours,
    List<Query$assetbycode$searchAssetByCode$permittedHours>? permittedHours,
    List<Query$assetbycode$searchAssetByCode$assetCounters>? assetCounters,
    List<Query$assetbycode$searchAssetByCode$assetImages>? assetImages,
    List<Query$assetbycode$searchAssetByCode$assetProperties>? assetProperties,
    String? $__typename,
  }) =>
      _res;

  syncTarget(_fn) => _res;

  shiftHours(_fn) => _res;

  permittedHours(_fn) => _res;

  assetCounters(_fn) => _res;

  assetImages(_fn) => _res;

  assetProperties(_fn) => _res;
}

class Query$assetbycode$searchAssetByCode$syncTarget {
  Query$assetbycode$searchAssetByCode$syncTarget({
    this.name,
    this.$__typename = 'AssetTemplateSyncTarget',
  });

  factory Query$assetbycode$searchAssetByCode$syncTarget.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode$searchAssetByCode$syncTarget(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$assetbycode$searchAssetByCode$syncTarget) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$assetbycode$searchAssetByCode$syncTarget
    on Query$assetbycode$searchAssetByCode$syncTarget {
  CopyWith$Query$assetbycode$searchAssetByCode$syncTarget<
          Query$assetbycode$searchAssetByCode$syncTarget>
      get copyWith => CopyWith$Query$assetbycode$searchAssetByCode$syncTarget(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$assetbycode$searchAssetByCode$syncTarget<TRes> {
  factory CopyWith$Query$assetbycode$searchAssetByCode$syncTarget(
    Query$assetbycode$searchAssetByCode$syncTarget instance,
    TRes Function(Query$assetbycode$searchAssetByCode$syncTarget) then,
  ) = _CopyWithImpl$Query$assetbycode$searchAssetByCode$syncTarget;

  factory CopyWith$Query$assetbycode$searchAssetByCode$syncTarget.stub(
          TRes res) =
      _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$syncTarget;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$assetbycode$searchAssetByCode$syncTarget<TRes>
    implements CopyWith$Query$assetbycode$searchAssetByCode$syncTarget<TRes> {
  _CopyWithImpl$Query$assetbycode$searchAssetByCode$syncTarget(
    this._instance,
    this._then,
  );

  final Query$assetbycode$searchAssetByCode$syncTarget _instance;

  final TRes Function(Query$assetbycode$searchAssetByCode$syncTarget) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode$searchAssetByCode$syncTarget(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$syncTarget<TRes>
    implements CopyWith$Query$assetbycode$searchAssetByCode$syncTarget<TRes> {
  _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$syncTarget(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$assetbycode$searchAssetByCode$shiftHours {
  Query$assetbycode$searchAssetByCode$shiftHours({
    this.key,
    this.value,
    this.$__typename = 'HourResult',
  });

  factory Query$assetbycode$searchAssetByCode$shiftHours.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode$searchAssetByCode$shiftHours(
      key: (l$key as String?),
      value: l$value == null
          ? null
          : Query$assetbycode$searchAssetByCode$shiftHours$value.fromJson(
              (l$value as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final Query$assetbycode$searchAssetByCode$shiftHours$value? value;

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
    if (!(other is Query$assetbycode$searchAssetByCode$shiftHours) ||
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

extension UtilityExtension$Query$assetbycode$searchAssetByCode$shiftHours
    on Query$assetbycode$searchAssetByCode$shiftHours {
  CopyWith$Query$assetbycode$searchAssetByCode$shiftHours<
          Query$assetbycode$searchAssetByCode$shiftHours>
      get copyWith => CopyWith$Query$assetbycode$searchAssetByCode$shiftHours(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$assetbycode$searchAssetByCode$shiftHours<TRes> {
  factory CopyWith$Query$assetbycode$searchAssetByCode$shiftHours(
    Query$assetbycode$searchAssetByCode$shiftHours instance,
    TRes Function(Query$assetbycode$searchAssetByCode$shiftHours) then,
  ) = _CopyWithImpl$Query$assetbycode$searchAssetByCode$shiftHours;

  factory CopyWith$Query$assetbycode$searchAssetByCode$shiftHours.stub(
          TRes res) =
      _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$shiftHours;

  TRes call({
    String? key,
    Query$assetbycode$searchAssetByCode$shiftHours$value? value,
    String? $__typename,
  });
  CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value<TRes> get value;
}

class _CopyWithImpl$Query$assetbycode$searchAssetByCode$shiftHours<TRes>
    implements CopyWith$Query$assetbycode$searchAssetByCode$shiftHours<TRes> {
  _CopyWithImpl$Query$assetbycode$searchAssetByCode$shiftHours(
    this._instance,
    this._then,
  );

  final Query$assetbycode$searchAssetByCode$shiftHours _instance;

  final TRes Function(Query$assetbycode$searchAssetByCode$shiftHours) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode$searchAssetByCode$shiftHours(
        key: key == _undefined ? _instance.key : (key as String?),
        value: value == _undefined
            ? _instance.value
            : (value as Query$assetbycode$searchAssetByCode$shiftHours$value?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value<TRes>
      get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value.stub(
            _then(_instance))
        : CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value(
            local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$shiftHours<TRes>
    implements CopyWith$Query$assetbycode$searchAssetByCode$shiftHours<TRes> {
  _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$shiftHours(this._res);

  TRes _res;

  call({
    String? key,
    Query$assetbycode$searchAssetByCode$shiftHours$value? value,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value<TRes>
      get value =>
          CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value.stub(
              _res);
}

class Query$assetbycode$searchAssetByCode$shiftHours$value {
  Query$assetbycode$searchAssetByCode$shiftHours$value({
    this.start,
    this.end,
    this.$__typename = 'StartAndEndTime',
  });

  factory Query$assetbycode$searchAssetByCode$shiftHours$value.fromJson(
      Map<String, dynamic> json) {
    final l$start = json['start'];
    final l$end = json['end'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode$searchAssetByCode$shiftHours$value(
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
    if (!(other is Query$assetbycode$searchAssetByCode$shiftHours$value) ||
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

extension UtilityExtension$Query$assetbycode$searchAssetByCode$shiftHours$value
    on Query$assetbycode$searchAssetByCode$shiftHours$value {
  CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value<
          Query$assetbycode$searchAssetByCode$shiftHours$value>
      get copyWith =>
          CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value<
    TRes> {
  factory CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value(
    Query$assetbycode$searchAssetByCode$shiftHours$value instance,
    TRes Function(Query$assetbycode$searchAssetByCode$shiftHours$value) then,
  ) = _CopyWithImpl$Query$assetbycode$searchAssetByCode$shiftHours$value;

  factory CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value.stub(
          TRes res) =
      _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$shiftHours$value;

  TRes call({
    String? start,
    String? end,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$assetbycode$searchAssetByCode$shiftHours$value<TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value<TRes> {
  _CopyWithImpl$Query$assetbycode$searchAssetByCode$shiftHours$value(
    this._instance,
    this._then,
  );

  final Query$assetbycode$searchAssetByCode$shiftHours$value _instance;

  final TRes Function(Query$assetbycode$searchAssetByCode$shiftHours$value)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode$searchAssetByCode$shiftHours$value(
        start: start == _undefined ? _instance.start : (start as String?),
        end: end == _undefined ? _instance.end : (end as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$shiftHours$value<
        TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$shiftHours$value<TRes> {
  _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$shiftHours$value(
      this._res);

  TRes _res;

  call({
    String? start,
    String? end,
    String? $__typename,
  }) =>
      _res;
}

class Query$assetbycode$searchAssetByCode$permittedHours {
  Query$assetbycode$searchAssetByCode$permittedHours({
    this.key,
    this.value,
    this.$__typename = 'HourResult',
  });

  factory Query$assetbycode$searchAssetByCode$permittedHours.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode$searchAssetByCode$permittedHours(
      key: (l$key as String?),
      value: l$value == null
          ? null
          : Query$assetbycode$searchAssetByCode$permittedHours$value.fromJson(
              (l$value as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final Query$assetbycode$searchAssetByCode$permittedHours$value? value;

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
    if (!(other is Query$assetbycode$searchAssetByCode$permittedHours) ||
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

extension UtilityExtension$Query$assetbycode$searchAssetByCode$permittedHours
    on Query$assetbycode$searchAssetByCode$permittedHours {
  CopyWith$Query$assetbycode$searchAssetByCode$permittedHours<
          Query$assetbycode$searchAssetByCode$permittedHours>
      get copyWith =>
          CopyWith$Query$assetbycode$searchAssetByCode$permittedHours(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$assetbycode$searchAssetByCode$permittedHours<
    TRes> {
  factory CopyWith$Query$assetbycode$searchAssetByCode$permittedHours(
    Query$assetbycode$searchAssetByCode$permittedHours instance,
    TRes Function(Query$assetbycode$searchAssetByCode$permittedHours) then,
  ) = _CopyWithImpl$Query$assetbycode$searchAssetByCode$permittedHours;

  factory CopyWith$Query$assetbycode$searchAssetByCode$permittedHours.stub(
          TRes res) =
      _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$permittedHours;

  TRes call({
    String? key,
    Query$assetbycode$searchAssetByCode$permittedHours$value? value,
    String? $__typename,
  });
  CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value<TRes>
      get value;
}

class _CopyWithImpl$Query$assetbycode$searchAssetByCode$permittedHours<TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$permittedHours<TRes> {
  _CopyWithImpl$Query$assetbycode$searchAssetByCode$permittedHours(
    this._instance,
    this._then,
  );

  final Query$assetbycode$searchAssetByCode$permittedHours _instance;

  final TRes Function(Query$assetbycode$searchAssetByCode$permittedHours) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode$searchAssetByCode$permittedHours(
        key: key == _undefined ? _instance.key : (key as String?),
        value: value == _undefined
            ? _instance.value
            : (value
                as Query$assetbycode$searchAssetByCode$permittedHours$value?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value<TRes>
      get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value
            .stub(_then(_instance))
        : CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value(
            local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$permittedHours<TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$permittedHours<TRes> {
  _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$permittedHours(
      this._res);

  TRes _res;

  call({
    String? key,
    Query$assetbycode$searchAssetByCode$permittedHours$value? value,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value<TRes>
      get value =>
          CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value
              .stub(_res);
}

class Query$assetbycode$searchAssetByCode$permittedHours$value {
  Query$assetbycode$searchAssetByCode$permittedHours$value({
    this.start,
    this.end,
    this.$__typename = 'StartAndEndTime',
  });

  factory Query$assetbycode$searchAssetByCode$permittedHours$value.fromJson(
      Map<String, dynamic> json) {
    final l$start = json['start'];
    final l$end = json['end'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode$searchAssetByCode$permittedHours$value(
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
    if (!(other is Query$assetbycode$searchAssetByCode$permittedHours$value) ||
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

extension UtilityExtension$Query$assetbycode$searchAssetByCode$permittedHours$value
    on Query$assetbycode$searchAssetByCode$permittedHours$value {
  CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value<
          Query$assetbycode$searchAssetByCode$permittedHours$value>
      get copyWith =>
          CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value<
    TRes> {
  factory CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value(
    Query$assetbycode$searchAssetByCode$permittedHours$value instance,
    TRes Function(Query$assetbycode$searchAssetByCode$permittedHours$value)
        then,
  ) = _CopyWithImpl$Query$assetbycode$searchAssetByCode$permittedHours$value;

  factory CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value.stub(
          TRes res) =
      _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$permittedHours$value;

  TRes call({
    String? start,
    String? end,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$assetbycode$searchAssetByCode$permittedHours$value<
        TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value<
            TRes> {
  _CopyWithImpl$Query$assetbycode$searchAssetByCode$permittedHours$value(
    this._instance,
    this._then,
  );

  final Query$assetbycode$searchAssetByCode$permittedHours$value _instance;

  final TRes Function(Query$assetbycode$searchAssetByCode$permittedHours$value)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode$searchAssetByCode$permittedHours$value(
        start: start == _undefined ? _instance.start : (start as String?),
        end: end == _undefined ? _instance.end : (end as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$permittedHours$value<
        TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$permittedHours$value<
            TRes> {
  _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$permittedHours$value(
      this._res);

  TRes _res;

  call({
    String? start,
    String? end,
    String? $__typename,
  }) =>
      _res;
}

class Query$assetbycode$searchAssetByCode$assetCounters {
  Query$assetbycode$searchAssetByCode$assetCounters({
    this.assetTemplateCounterId,
    this.name,
    required this.valueTimestamp,
    required this.value,
    this.$__typename = 'AssetCounterResult',
  });

  factory Query$assetbycode$searchAssetByCode$assetCounters.fromJson(
      Map<String, dynamic> json) {
    final l$assetTemplateCounterId = json['assetTemplateCounterId'];
    final l$name = json['name'];
    final l$valueTimestamp = json['valueTimestamp'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode$searchAssetByCode$assetCounters(
      assetTemplateCounterId: (l$assetTemplateCounterId as String?),
      name: (l$name as String?),
      valueTimestamp: DateTime.parse((l$valueTimestamp as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? assetTemplateCounterId;

  final String? name;

  final DateTime valueTimestamp;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetTemplateCounterId = assetTemplateCounterId;
    _resultData['assetTemplateCounterId'] = l$assetTemplateCounterId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$valueTimestamp = valueTimestamp;
    _resultData['valueTimestamp'] = l$valueTimestamp.toIso8601String();
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetTemplateCounterId = assetTemplateCounterId;
    final l$name = name;
    final l$valueTimestamp = valueTimestamp;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetTemplateCounterId,
      l$name,
      l$valueTimestamp,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$assetbycode$searchAssetByCode$assetCounters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetTemplateCounterId = assetTemplateCounterId;
    final lOther$assetTemplateCounterId = other.assetTemplateCounterId;
    if (l$assetTemplateCounterId != lOther$assetTemplateCounterId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$valueTimestamp = valueTimestamp;
    final lOther$valueTimestamp = other.valueTimestamp;
    if (l$valueTimestamp != lOther$valueTimestamp) {
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

extension UtilityExtension$Query$assetbycode$searchAssetByCode$assetCounters
    on Query$assetbycode$searchAssetByCode$assetCounters {
  CopyWith$Query$assetbycode$searchAssetByCode$assetCounters<
          Query$assetbycode$searchAssetByCode$assetCounters>
      get copyWith =>
          CopyWith$Query$assetbycode$searchAssetByCode$assetCounters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$assetbycode$searchAssetByCode$assetCounters<
    TRes> {
  factory CopyWith$Query$assetbycode$searchAssetByCode$assetCounters(
    Query$assetbycode$searchAssetByCode$assetCounters instance,
    TRes Function(Query$assetbycode$searchAssetByCode$assetCounters) then,
  ) = _CopyWithImpl$Query$assetbycode$searchAssetByCode$assetCounters;

  factory CopyWith$Query$assetbycode$searchAssetByCode$assetCounters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$assetCounters;

  TRes call({
    String? assetTemplateCounterId,
    String? name,
    DateTime? valueTimestamp,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$assetbycode$searchAssetByCode$assetCounters<TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$assetCounters<TRes> {
  _CopyWithImpl$Query$assetbycode$searchAssetByCode$assetCounters(
    this._instance,
    this._then,
  );

  final Query$assetbycode$searchAssetByCode$assetCounters _instance;

  final TRes Function(Query$assetbycode$searchAssetByCode$assetCounters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetTemplateCounterId = _undefined,
    Object? name = _undefined,
    Object? valueTimestamp = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode$searchAssetByCode$assetCounters(
        assetTemplateCounterId: assetTemplateCounterId == _undefined
            ? _instance.assetTemplateCounterId
            : (assetTemplateCounterId as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        valueTimestamp: valueTimestamp == _undefined || valueTimestamp == null
            ? _instance.valueTimestamp
            : (valueTimestamp as DateTime),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$assetCounters<TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$assetCounters<TRes> {
  _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$assetCounters(
      this._res);

  TRes _res;

  call({
    String? assetTemplateCounterId,
    String? name,
    DateTime? valueTimestamp,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$assetbycode$searchAssetByCode$assetImages {
  Query$assetbycode$searchAssetByCode$assetImages({
    this.id,
    this.filename,
    this.url,
    this.comments,
    this.$__typename = 'AssetImage',
  });

  factory Query$assetbycode$searchAssetByCode$assetImages.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$filename = json['filename'];
    final l$url = json['url'];
    final l$comments = json['comments'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode$searchAssetByCode$assetImages(
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
    if (!(other is Query$assetbycode$searchAssetByCode$assetImages) ||
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

extension UtilityExtension$Query$assetbycode$searchAssetByCode$assetImages
    on Query$assetbycode$searchAssetByCode$assetImages {
  CopyWith$Query$assetbycode$searchAssetByCode$assetImages<
          Query$assetbycode$searchAssetByCode$assetImages>
      get copyWith => CopyWith$Query$assetbycode$searchAssetByCode$assetImages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$assetbycode$searchAssetByCode$assetImages<TRes> {
  factory CopyWith$Query$assetbycode$searchAssetByCode$assetImages(
    Query$assetbycode$searchAssetByCode$assetImages instance,
    TRes Function(Query$assetbycode$searchAssetByCode$assetImages) then,
  ) = _CopyWithImpl$Query$assetbycode$searchAssetByCode$assetImages;

  factory CopyWith$Query$assetbycode$searchAssetByCode$assetImages.stub(
          TRes res) =
      _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$assetImages;

  TRes call({
    String? id,
    String? filename,
    String? url,
    String? comments,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$assetbycode$searchAssetByCode$assetImages<TRes>
    implements CopyWith$Query$assetbycode$searchAssetByCode$assetImages<TRes> {
  _CopyWithImpl$Query$assetbycode$searchAssetByCode$assetImages(
    this._instance,
    this._then,
  );

  final Query$assetbycode$searchAssetByCode$assetImages _instance;

  final TRes Function(Query$assetbycode$searchAssetByCode$assetImages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? filename = _undefined,
    Object? url = _undefined,
    Object? comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode$searchAssetByCode$assetImages(
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

class _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$assetImages<TRes>
    implements CopyWith$Query$assetbycode$searchAssetByCode$assetImages<TRes> {
  _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$assetImages(this._res);

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

class Query$assetbycode$searchAssetByCode$assetProperties {
  Query$assetbycode$searchAssetByCode$assetProperties({
    this.templatePropertyId,
    required this.sequence,
    this.viewerGroupIds,
    this.updaterGroupIds,
    this.propertyValue,
    this.propertyValueNumber,
    this.userCanView,
    this.userCanUpdate,
    this.id,
    this.name,
    this.dataType,
    required this.isMandatory,
    required this.active,
    this.$__typename = 'AssetProperty',
  });

  factory Query$assetbycode$searchAssetByCode$assetProperties.fromJson(
      Map<String, dynamic> json) {
    final l$templatePropertyId = json['templatePropertyId'];
    final l$sequence = json['sequence'];
    final l$viewerGroupIds = json['viewerGroupIds'];
    final l$updaterGroupIds = json['updaterGroupIds'];
    final l$propertyValue = json['propertyValue'];
    final l$propertyValueNumber = json['propertyValueNumber'];
    final l$userCanView = json['userCanView'];
    final l$userCanUpdate = json['userCanUpdate'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$dataType = json['dataType'];
    final l$isMandatory = json['isMandatory'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$assetbycode$searchAssetByCode$assetProperties(
      templatePropertyId: (l$templatePropertyId as String?),
      sequence: (l$sequence as int),
      viewerGroupIds: (l$viewerGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      updaterGroupIds: (l$updaterGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      propertyValue: (l$propertyValue as String?),
      propertyValueNumber: (l$propertyValueNumber as num?)?.toDouble(),
      userCanView: (l$userCanView as bool?),
      userCanUpdate: (l$userCanUpdate as bool?),
      id: (l$id as String?),
      name: (l$name as String?),
      dataType: (l$dataType as String?),
      isMandatory: (l$isMandatory as bool),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? templatePropertyId;

  final int sequence;

  final List<String>? viewerGroupIds;

  final List<String>? updaterGroupIds;

  final String? propertyValue;

  final double? propertyValueNumber;

  final bool? userCanView;

  final bool? userCanUpdate;

  final String? id;

  final String? name;

  final String? dataType;

  final bool isMandatory;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$templatePropertyId = templatePropertyId;
    _resultData['templatePropertyId'] = l$templatePropertyId;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$viewerGroupIds = viewerGroupIds;
    _resultData['viewerGroupIds'] = l$viewerGroupIds?.map((e) => e).toList();
    final l$updaterGroupIds = updaterGroupIds;
    _resultData['updaterGroupIds'] = l$updaterGroupIds?.map((e) => e).toList();
    final l$propertyValue = propertyValue;
    _resultData['propertyValue'] = l$propertyValue;
    final l$propertyValueNumber = propertyValueNumber;
    _resultData['propertyValueNumber'] = l$propertyValueNumber;
    final l$userCanView = userCanView;
    _resultData['userCanView'] = l$userCanView;
    final l$userCanUpdate = userCanUpdate;
    _resultData['userCanUpdate'] = l$userCanUpdate;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dataType = dataType;
    _resultData['dataType'] = l$dataType;
    final l$isMandatory = isMandatory;
    _resultData['isMandatory'] = l$isMandatory;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$templatePropertyId = templatePropertyId;
    final l$sequence = sequence;
    final l$viewerGroupIds = viewerGroupIds;
    final l$updaterGroupIds = updaterGroupIds;
    final l$propertyValue = propertyValue;
    final l$propertyValueNumber = propertyValueNumber;
    final l$userCanView = userCanView;
    final l$userCanUpdate = userCanUpdate;
    final l$id = id;
    final l$name = name;
    final l$dataType = dataType;
    final l$isMandatory = isMandatory;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$templatePropertyId,
      l$sequence,
      l$viewerGroupIds == null
          ? null
          : Object.hashAll(l$viewerGroupIds.map((v) => v)),
      l$updaterGroupIds == null
          ? null
          : Object.hashAll(l$updaterGroupIds.map((v) => v)),
      l$propertyValue,
      l$propertyValueNumber,
      l$userCanView,
      l$userCanUpdate,
      l$id,
      l$name,
      l$dataType,
      l$isMandatory,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$assetbycode$searchAssetByCode$assetProperties) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$templatePropertyId = templatePropertyId;
    final lOther$templatePropertyId = other.templatePropertyId;
    if (l$templatePropertyId != lOther$templatePropertyId) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$viewerGroupIds = viewerGroupIds;
    final lOther$viewerGroupIds = other.viewerGroupIds;
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
    final l$userCanView = userCanView;
    final lOther$userCanView = other.userCanView;
    if (l$userCanView != lOther$userCanView) {
      return false;
    }
    final l$userCanUpdate = userCanUpdate;
    final lOther$userCanUpdate = other.userCanUpdate;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$assetbycode$searchAssetByCode$assetProperties
    on Query$assetbycode$searchAssetByCode$assetProperties {
  CopyWith$Query$assetbycode$searchAssetByCode$assetProperties<
          Query$assetbycode$searchAssetByCode$assetProperties>
      get copyWith =>
          CopyWith$Query$assetbycode$searchAssetByCode$assetProperties(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$assetbycode$searchAssetByCode$assetProperties<
    TRes> {
  factory CopyWith$Query$assetbycode$searchAssetByCode$assetProperties(
    Query$assetbycode$searchAssetByCode$assetProperties instance,
    TRes Function(Query$assetbycode$searchAssetByCode$assetProperties) then,
  ) = _CopyWithImpl$Query$assetbycode$searchAssetByCode$assetProperties;

  factory CopyWith$Query$assetbycode$searchAssetByCode$assetProperties.stub(
          TRes res) =
      _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$assetProperties;

  TRes call({
    String? templatePropertyId,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
    String? propertyValue,
    double? propertyValueNumber,
    bool? userCanView,
    bool? userCanUpdate,
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$assetbycode$searchAssetByCode$assetProperties<TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$assetProperties<TRes> {
  _CopyWithImpl$Query$assetbycode$searchAssetByCode$assetProperties(
    this._instance,
    this._then,
  );

  final Query$assetbycode$searchAssetByCode$assetProperties _instance;

  final TRes Function(Query$assetbycode$searchAssetByCode$assetProperties)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? templatePropertyId = _undefined,
    Object? sequence = _undefined,
    Object? viewerGroupIds = _undefined,
    Object? updaterGroupIds = _undefined,
    Object? propertyValue = _undefined,
    Object? propertyValueNumber = _undefined,
    Object? userCanView = _undefined,
    Object? userCanUpdate = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? isMandatory = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$assetbycode$searchAssetByCode$assetProperties(
        templatePropertyId: templatePropertyId == _undefined
            ? _instance.templatePropertyId
            : (templatePropertyId as String?),
        sequence: sequence == _undefined || sequence == null
            ? _instance.sequence
            : (sequence as int),
        viewerGroupIds: viewerGroupIds == _undefined
            ? _instance.viewerGroupIds
            : (viewerGroupIds as List<String>?),
        updaterGroupIds: updaterGroupIds == _undefined
            ? _instance.updaterGroupIds
            : (updaterGroupIds as List<String>?),
        propertyValue: propertyValue == _undefined
            ? _instance.propertyValue
            : (propertyValue as String?),
        propertyValueNumber: propertyValueNumber == _undefined
            ? _instance.propertyValueNumber
            : (propertyValueNumber as double?),
        userCanView: userCanView == _undefined
            ? _instance.userCanView
            : (userCanView as bool?),
        userCanUpdate: userCanUpdate == _undefined
            ? _instance.userCanUpdate
            : (userCanUpdate as bool?),
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        dataType:
            dataType == _undefined ? _instance.dataType : (dataType as String?),
        isMandatory: isMandatory == _undefined || isMandatory == null
            ? _instance.isMandatory
            : (isMandatory as bool),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$assetProperties<
        TRes>
    implements
        CopyWith$Query$assetbycode$searchAssetByCode$assetProperties<TRes> {
  _CopyWithStubImpl$Query$assetbycode$searchAssetByCode$assetProperties(
      this._res);

  TRes _res;

  call({
    String? templatePropertyId,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
    String? propertyValue,
    double? propertyValueNumber,
    bool? userCanView,
    bool? userCanUpdate,
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    String? $__typename,
  }) =>
      _res;
}
