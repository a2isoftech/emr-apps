import 'package:gql/ast.dart';

class Variables$Query$getPendingApprovals {
  factory Variables$Query$getPendingApprovals({
    String? cmpCode,
    String? approvalType,
  }) =>
      Variables$Query$getPendingApprovals._({
        if (cmpCode != null) r'cmpCode': cmpCode,
        if (approvalType != null) r'approvalType': approvalType,
      });

  Variables$Query$getPendingApprovals._(this._$data);

  factory Variables$Query$getPendingApprovals.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cmpCode')) {
      final l$cmpCode = data['cmpCode'];
      result$data['cmpCode'] = (l$cmpCode as String?);
    }
    if (data.containsKey('approvalType')) {
      final l$approvalType = data['approvalType'];
      result$data['approvalType'] = (l$approvalType as String?);
    }
    return Variables$Query$getPendingApprovals._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get cmpCode => (_$data['cmpCode'] as String?);

  String? get approvalType => (_$data['approvalType'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cmpCode')) {
      final l$cmpCode = cmpCode;
      result$data['cmpCode'] = l$cmpCode;
    }
    if (_$data.containsKey('approvalType')) {
      final l$approvalType = approvalType;
      result$data['approvalType'] = l$approvalType;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getPendingApprovals<
          Variables$Query$getPendingApprovals>
      get copyWith => CopyWith$Variables$Query$getPendingApprovals(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getPendingApprovals) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cmpCode = cmpCode;
    final lOther$cmpCode = other.cmpCode;
    if (_$data.containsKey('cmpCode') != other._$data.containsKey('cmpCode')) {
      return false;
    }
    if (l$cmpCode != lOther$cmpCode) {
      return false;
    }
    final l$approvalType = approvalType;
    final lOther$approvalType = other.approvalType;
    if (_$data.containsKey('approvalType') !=
        other._$data.containsKey('approvalType')) {
      return false;
    }
    if (l$approvalType != lOther$approvalType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cmpCode = cmpCode;
    final l$approvalType = approvalType;
    return Object.hashAll([
      _$data.containsKey('cmpCode') ? l$cmpCode : const {},
      _$data.containsKey('approvalType') ? l$approvalType : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getPendingApprovals<TRes> {
  factory CopyWith$Variables$Query$getPendingApprovals(
    Variables$Query$getPendingApprovals instance,
    TRes Function(Variables$Query$getPendingApprovals) then,
  ) = _CopyWithImpl$Variables$Query$getPendingApprovals;

  factory CopyWith$Variables$Query$getPendingApprovals.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getPendingApprovals;

  TRes call({
    String? cmpCode,
    String? approvalType,
  });
}

class _CopyWithImpl$Variables$Query$getPendingApprovals<TRes>
    implements CopyWith$Variables$Query$getPendingApprovals<TRes> {
  _CopyWithImpl$Variables$Query$getPendingApprovals(
    this._instance,
    this._then,
  );

  final Variables$Query$getPendingApprovals _instance;

  final TRes Function(Variables$Query$getPendingApprovals) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cmpCode = _undefined,
    Object? approvalType = _undefined,
  }) =>
      _then(Variables$Query$getPendingApprovals._({
        ..._instance._$data,
        if (cmpCode != _undefined) 'cmpCode': (cmpCode as String?),
        if (approvalType != _undefined)
          'approvalType': (approvalType as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getPendingApprovals<TRes>
    implements CopyWith$Variables$Query$getPendingApprovals<TRes> {
  _CopyWithStubImpl$Variables$Query$getPendingApprovals(this._res);

  TRes _res;

  call({
    String? cmpCode,
    String? approvalType,
  }) =>
      _res;
}

class Query$getPendingApprovals {
  Query$getPendingApprovals({
    required this.assetApprovals,
    this.$__typename = 'Query',
  });

  factory Query$getPendingApprovals.fromJson(Map<String, dynamic> json) {
    final l$assetApprovals = json['assetApprovals'];
    final l$$__typename = json['__typename'];
    return Query$getPendingApprovals(
      assetApprovals: (l$assetApprovals as List<dynamic>)
          .map((e) => Query$getPendingApprovals$assetApprovals.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getPendingApprovals$assetApprovals> assetApprovals;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetApprovals = assetApprovals;
    _resultData['assetApprovals'] =
        l$assetApprovals.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetApprovals = assetApprovals;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$assetApprovals.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getPendingApprovals) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetApprovals = assetApprovals;
    final lOther$assetApprovals = other.assetApprovals;
    if (l$assetApprovals.length != lOther$assetApprovals.length) {
      return false;
    }
    for (int i = 0; i < l$assetApprovals.length; i++) {
      final l$assetApprovals$entry = l$assetApprovals[i];
      final lOther$assetApprovals$entry = lOther$assetApprovals[i];
      if (l$assetApprovals$entry != lOther$assetApprovals$entry) {
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

extension UtilityExtension$Query$getPendingApprovals
    on Query$getPendingApprovals {
  CopyWith$Query$getPendingApprovals<Query$getPendingApprovals> get copyWith =>
      CopyWith$Query$getPendingApprovals(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getPendingApprovals<TRes> {
  factory CopyWith$Query$getPendingApprovals(
    Query$getPendingApprovals instance,
    TRes Function(Query$getPendingApprovals) then,
  ) = _CopyWithImpl$Query$getPendingApprovals;

  factory CopyWith$Query$getPendingApprovals.stub(TRes res) =
      _CopyWithStubImpl$Query$getPendingApprovals;

  TRes call({
    List<Query$getPendingApprovals$assetApprovals>? assetApprovals,
    String? $__typename,
  });
  TRes assetApprovals(
      Iterable<Query$getPendingApprovals$assetApprovals> Function(
              Iterable<
                  CopyWith$Query$getPendingApprovals$assetApprovals<
                      Query$getPendingApprovals$assetApprovals>>)
          _fn);
}

class _CopyWithImpl$Query$getPendingApprovals<TRes>
    implements CopyWith$Query$getPendingApprovals<TRes> {
  _CopyWithImpl$Query$getPendingApprovals(
    this._instance,
    this._then,
  );

  final Query$getPendingApprovals _instance;

  final TRes Function(Query$getPendingApprovals) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetApprovals = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPendingApprovals(
        assetApprovals: assetApprovals == _undefined || assetApprovals == null
            ? _instance.assetApprovals
            : (assetApprovals
                as List<Query$getPendingApprovals$assetApprovals>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes assetApprovals(
          Iterable<Query$getPendingApprovals$assetApprovals> Function(
                  Iterable<
                      CopyWith$Query$getPendingApprovals$assetApprovals<
                          Query$getPendingApprovals$assetApprovals>>)
              _fn) =>
      call(
          assetApprovals: _fn(_instance.assetApprovals
              .map((e) => CopyWith$Query$getPendingApprovals$assetApprovals(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getPendingApprovals<TRes>
    implements CopyWith$Query$getPendingApprovals<TRes> {
  _CopyWithStubImpl$Query$getPendingApprovals(this._res);

  TRes _res;

  call({
    List<Query$getPendingApprovals$assetApprovals>? assetApprovals,
    String? $__typename,
  }) =>
      _res;

  assetApprovals(_fn) => _res;
}

const documentNodeQuerygetPendingApprovals = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getPendingApprovals'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cmpCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'approvalType')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'assetApprovals'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'cmpCode'),
            value: VariableNode(name: NameNode(value: 'cmpCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'approvalType'),
            value: VariableNode(name: NameNode(value: 'approvalType')),
          ),
        ],
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
            name: NameNode(value: 'parentAssetApprovalId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetId'),
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
            name: NameNode(value: 'approvalType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transferDepotNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'effectiveDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'created'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'requiresFunctionalLocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetCode'),
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
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'reason'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'requestedBy'),
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

class Query$getPendingApprovals$assetApprovals {
  Query$getPendingApprovals$assetApprovals({
    required this.id,
    this.parentAssetApprovalId,
    this.assetId,
    required this.depotNo,
    required this.approvalType,
    required this.transferDepotNo,
    this.effectiveDate,
    required this.createdBy,
    required this.created,
    this.requiresFunctionalLocation,
    this.assetName,
    required this.assetCode,
    this.disposalStatus,
    this.status,
    this.reason,
    this.requestedBy,
    this.$__typename = 'AssetApprovalResult',
  });

  factory Query$getPendingApprovals$assetApprovals.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$parentAssetApprovalId = json['parentAssetApprovalId'];
    final l$assetId = json['assetId'];
    final l$depotNo = json['depotNo'];
    final l$approvalType = json['approvalType'];
    final l$transferDepotNo = json['transferDepotNo'];
    final l$effectiveDate = json['effectiveDate'];
    final l$createdBy = json['createdBy'];
    final l$created = json['created'];
    final l$requiresFunctionalLocation = json['requiresFunctionalLocation'];
    final l$assetName = json['assetName'];
    final l$assetCode = json['assetCode'];
    final l$disposalStatus = json['disposalStatus'];
    final l$status = json['status'];
    final l$reason = json['reason'];
    final l$requestedBy = json['requestedBy'];
    final l$$__typename = json['__typename'];
    return Query$getPendingApprovals$assetApprovals(
      id: (l$id as String),
      parentAssetApprovalId: (l$parentAssetApprovalId as String?),
      assetId: (l$assetId as String?),
      depotNo: (l$depotNo as String),
      approvalType: (l$approvalType as String),
      transferDepotNo: (l$transferDepotNo as String),
      effectiveDate: l$effectiveDate == null
          ? null
          : DateTime.parse((l$effectiveDate as String)),
      createdBy: (l$createdBy as String),
      created: DateTime.parse((l$created as String)),
      requiresFunctionalLocation: (l$requiresFunctionalLocation as bool?),
      assetName: (l$assetName as String?),
      assetCode: (l$assetCode as String),
      disposalStatus: (l$disposalStatus as String?),
      status: (l$status as String?),
      reason: (l$reason as String?),
      requestedBy: (l$requestedBy as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? parentAssetApprovalId;

  final String? assetId;

  final String depotNo;

  final String approvalType;

  final String transferDepotNo;

  final DateTime? effectiveDate;

  final String createdBy;

  final DateTime created;

  final bool? requiresFunctionalLocation;

  final String? assetName;

  final String assetCode;

  final String? disposalStatus;

  final String? status;

  final String? reason;

  final String? requestedBy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$parentAssetApprovalId = parentAssetApprovalId;
    _resultData['parentAssetApprovalId'] = l$parentAssetApprovalId;
    final l$assetId = assetId;
    _resultData['assetId'] = l$assetId;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$approvalType = approvalType;
    _resultData['approvalType'] = l$approvalType;
    final l$transferDepotNo = transferDepotNo;
    _resultData['transferDepotNo'] = l$transferDepotNo;
    final l$effectiveDate = effectiveDate;
    _resultData['effectiveDate'] = l$effectiveDate?.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$created = created;
    _resultData['created'] = l$created.toIso8601String();
    final l$requiresFunctionalLocation = requiresFunctionalLocation;
    _resultData['requiresFunctionalLocation'] = l$requiresFunctionalLocation;
    final l$assetName = assetName;
    _resultData['assetName'] = l$assetName;
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$disposalStatus = disposalStatus;
    _resultData['disposalStatus'] = l$disposalStatus;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$requestedBy = requestedBy;
    _resultData['requestedBy'] = l$requestedBy;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$parentAssetApprovalId = parentAssetApprovalId;
    final l$assetId = assetId;
    final l$depotNo = depotNo;
    final l$approvalType = approvalType;
    final l$transferDepotNo = transferDepotNo;
    final l$effectiveDate = effectiveDate;
    final l$createdBy = createdBy;
    final l$created = created;
    final l$requiresFunctionalLocation = requiresFunctionalLocation;
    final l$assetName = assetName;
    final l$assetCode = assetCode;
    final l$disposalStatus = disposalStatus;
    final l$status = status;
    final l$reason = reason;
    final l$requestedBy = requestedBy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$parentAssetApprovalId,
      l$assetId,
      l$depotNo,
      l$approvalType,
      l$transferDepotNo,
      l$effectiveDate,
      l$createdBy,
      l$created,
      l$requiresFunctionalLocation,
      l$assetName,
      l$assetCode,
      l$disposalStatus,
      l$status,
      l$reason,
      l$requestedBy,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getPendingApprovals$assetApprovals) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$parentAssetApprovalId = parentAssetApprovalId;
    final lOther$parentAssetApprovalId = other.parentAssetApprovalId;
    if (l$parentAssetApprovalId != lOther$parentAssetApprovalId) {
      return false;
    }
    final l$assetId = assetId;
    final lOther$assetId = other.assetId;
    if (l$assetId != lOther$assetId) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$approvalType = approvalType;
    final lOther$approvalType = other.approvalType;
    if (l$approvalType != lOther$approvalType) {
      return false;
    }
    final l$transferDepotNo = transferDepotNo;
    final lOther$transferDepotNo = other.transferDepotNo;
    if (l$transferDepotNo != lOther$transferDepotNo) {
      return false;
    }
    final l$effectiveDate = effectiveDate;
    final lOther$effectiveDate = other.effectiveDate;
    if (l$effectiveDate != lOther$effectiveDate) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$requiresFunctionalLocation = requiresFunctionalLocation;
    final lOther$requiresFunctionalLocation = other.requiresFunctionalLocation;
    if (l$requiresFunctionalLocation != lOther$requiresFunctionalLocation) {
      return false;
    }
    final l$assetName = assetName;
    final lOther$assetName = other.assetName;
    if (l$assetName != lOther$assetName) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$disposalStatus = disposalStatus;
    final lOther$disposalStatus = other.disposalStatus;
    if (l$disposalStatus != lOther$disposalStatus) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$requestedBy = requestedBy;
    final lOther$requestedBy = other.requestedBy;
    if (l$requestedBy != lOther$requestedBy) {
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

extension UtilityExtension$Query$getPendingApprovals$assetApprovals
    on Query$getPendingApprovals$assetApprovals {
  CopyWith$Query$getPendingApprovals$assetApprovals<
          Query$getPendingApprovals$assetApprovals>
      get copyWith => CopyWith$Query$getPendingApprovals$assetApprovals(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPendingApprovals$assetApprovals<TRes> {
  factory CopyWith$Query$getPendingApprovals$assetApprovals(
    Query$getPendingApprovals$assetApprovals instance,
    TRes Function(Query$getPendingApprovals$assetApprovals) then,
  ) = _CopyWithImpl$Query$getPendingApprovals$assetApprovals;

  factory CopyWith$Query$getPendingApprovals$assetApprovals.stub(TRes res) =
      _CopyWithStubImpl$Query$getPendingApprovals$assetApprovals;

  TRes call({
    String? id,
    String? parentAssetApprovalId,
    String? assetId,
    String? depotNo,
    String? approvalType,
    String? transferDepotNo,
    DateTime? effectiveDate,
    String? createdBy,
    DateTime? created,
    bool? requiresFunctionalLocation,
    String? assetName,
    String? assetCode,
    String? disposalStatus,
    String? status,
    String? reason,
    String? requestedBy,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getPendingApprovals$assetApprovals<TRes>
    implements CopyWith$Query$getPendingApprovals$assetApprovals<TRes> {
  _CopyWithImpl$Query$getPendingApprovals$assetApprovals(
    this._instance,
    this._then,
  );

  final Query$getPendingApprovals$assetApprovals _instance;

  final TRes Function(Query$getPendingApprovals$assetApprovals) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? parentAssetApprovalId = _undefined,
    Object? assetId = _undefined,
    Object? depotNo = _undefined,
    Object? approvalType = _undefined,
    Object? transferDepotNo = _undefined,
    Object? effectiveDate = _undefined,
    Object? createdBy = _undefined,
    Object? created = _undefined,
    Object? requiresFunctionalLocation = _undefined,
    Object? assetName = _undefined,
    Object? assetCode = _undefined,
    Object? disposalStatus = _undefined,
    Object? status = _undefined,
    Object? reason = _undefined,
    Object? requestedBy = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPendingApprovals$assetApprovals(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        parentAssetApprovalId: parentAssetApprovalId == _undefined
            ? _instance.parentAssetApprovalId
            : (parentAssetApprovalId as String?),
        assetId:
            assetId == _undefined ? _instance.assetId : (assetId as String?),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        approvalType: approvalType == _undefined || approvalType == null
            ? _instance.approvalType
            : (approvalType as String),
        transferDepotNo:
            transferDepotNo == _undefined || transferDepotNo == null
                ? _instance.transferDepotNo
                : (transferDepotNo as String),
        effectiveDate: effectiveDate == _undefined
            ? _instance.effectiveDate
            : (effectiveDate as DateTime?),
        createdBy: createdBy == _undefined || createdBy == null
            ? _instance.createdBy
            : (createdBy as String),
        created: created == _undefined || created == null
            ? _instance.created
            : (created as DateTime),
        requiresFunctionalLocation: requiresFunctionalLocation == _undefined
            ? _instance.requiresFunctionalLocation
            : (requiresFunctionalLocation as bool?),
        assetName: assetName == _undefined
            ? _instance.assetName
            : (assetName as String?),
        assetCode: assetCode == _undefined || assetCode == null
            ? _instance.assetCode
            : (assetCode as String),
        disposalStatus: disposalStatus == _undefined
            ? _instance.disposalStatus
            : (disposalStatus as String?),
        status: status == _undefined ? _instance.status : (status as String?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        requestedBy: requestedBy == _undefined
            ? _instance.requestedBy
            : (requestedBy as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getPendingApprovals$assetApprovals<TRes>
    implements CopyWith$Query$getPendingApprovals$assetApprovals<TRes> {
  _CopyWithStubImpl$Query$getPendingApprovals$assetApprovals(this._res);

  TRes _res;

  call({
    String? id,
    String? parentAssetApprovalId,
    String? assetId,
    String? depotNo,
    String? approvalType,
    String? transferDepotNo,
    DateTime? effectiveDate,
    String? createdBy,
    DateTime? created,
    bool? requiresFunctionalLocation,
    String? assetName,
    String? assetCode,
    String? disposalStatus,
    String? status,
    String? reason,
    String? requestedBy,
    String? $__typename,
  }) =>
      _res;
}
