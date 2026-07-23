import 'package:gql/ast.dart';

class Query$GetPendingAccountChangeRequests {
  Query$GetPendingAccountChangeRequests({
    required this.accountChangeRequests,
    this.$__typename = 'Query',
  });

  factory Query$GetPendingAccountChangeRequests.fromJson(
      Map<String, dynamic> json) {
    final l$accountChangeRequests = json['accountChangeRequests'];
    final l$$__typename = json['__typename'];
    return Query$GetPendingAccountChangeRequests(
      accountChangeRequests: (l$accountChangeRequests as List<dynamic>)
          .map((e) =>
              Query$GetPendingAccountChangeRequests$accountChangeRequests
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetPendingAccountChangeRequests$accountChangeRequests>
      accountChangeRequests;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountChangeRequests = accountChangeRequests;
    _resultData['accountChangeRequests'] =
        l$accountChangeRequests.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountChangeRequests = accountChangeRequests;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$accountChangeRequests.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPendingAccountChangeRequests ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountChangeRequests = accountChangeRequests;
    final lOther$accountChangeRequests = other.accountChangeRequests;
    if (l$accountChangeRequests.length != lOther$accountChangeRequests.length) {
      return false;
    }
    for (int i = 0; i < l$accountChangeRequests.length; i++) {
      final l$accountChangeRequests$entry = l$accountChangeRequests[i];
      final lOther$accountChangeRequests$entry =
          lOther$accountChangeRequests[i];
      if (l$accountChangeRequests$entry != lOther$accountChangeRequests$entry) {
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

extension UtilityExtension$Query$GetPendingAccountChangeRequests
    on Query$GetPendingAccountChangeRequests {
  CopyWith$Query$GetPendingAccountChangeRequests<
          Query$GetPendingAccountChangeRequests>
      get copyWith => CopyWith$Query$GetPendingAccountChangeRequests(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPendingAccountChangeRequests<TRes> {
  factory CopyWith$Query$GetPendingAccountChangeRequests(
    Query$GetPendingAccountChangeRequests instance,
    TRes Function(Query$GetPendingAccountChangeRequests) then,
  ) = _CopyWithImpl$Query$GetPendingAccountChangeRequests;

  factory CopyWith$Query$GetPendingAccountChangeRequests.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPendingAccountChangeRequests;

  TRes call({
    List<Query$GetPendingAccountChangeRequests$accountChangeRequests>?
        accountChangeRequests,
    String? $__typename,
  });
  TRes accountChangeRequests(
      Iterable<Query$GetPendingAccountChangeRequests$accountChangeRequests> Function(
              Iterable<
                  CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests<
                      Query$GetPendingAccountChangeRequests$accountChangeRequests>>)
          _fn);
}

class _CopyWithImpl$Query$GetPendingAccountChangeRequests<TRes>
    implements CopyWith$Query$GetPendingAccountChangeRequests<TRes> {
  _CopyWithImpl$Query$GetPendingAccountChangeRequests(
    this._instance,
    this._then,
  );

  final Query$GetPendingAccountChangeRequests _instance;

  final TRes Function(Query$GetPendingAccountChangeRequests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountChangeRequests = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPendingAccountChangeRequests(
        accountChangeRequests: accountChangeRequests == _undefined ||
                accountChangeRequests == null
            ? _instance.accountChangeRequests
            : (accountChangeRequests as List<
                Query$GetPendingAccountChangeRequests$accountChangeRequests>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes accountChangeRequests(
          Iterable<Query$GetPendingAccountChangeRequests$accountChangeRequests> Function(
                  Iterable<
                      CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests<
                          Query$GetPendingAccountChangeRequests$accountChangeRequests>>)
              _fn) =>
      call(
          accountChangeRequests: _fn(_instance.accountChangeRequests.map((e) =>
              CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetPendingAccountChangeRequests<TRes>
    implements CopyWith$Query$GetPendingAccountChangeRequests<TRes> {
  _CopyWithStubImpl$Query$GetPendingAccountChangeRequests(this._res);

  TRes _res;

  call({
    List<Query$GetPendingAccountChangeRequests$accountChangeRequests>?
        accountChangeRequests,
    String? $__typename,
  }) =>
      _res;

  accountChangeRequests(_fn) => _res;
}

const documentNodeQueryGetPendingAccountChangeRequests =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPendingAccountChangeRequests'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'accountChangeRequests'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'status'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: EnumValueNode(name: NameNode(value: 'PENDING')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'createdOn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modifiedOn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'accountName'),
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

class Query$GetPendingAccountChangeRequests$accountChangeRequests {
  Query$GetPendingAccountChangeRequests$accountChangeRequests({
    required this.createdOn,
    required this.modifiedOn,
    this.accountName,
    this.requestedBy,
    this.$__typename = 'PortalAccountChangeRequest',
  });

  factory Query$GetPendingAccountChangeRequests$accountChangeRequests.fromJson(
      Map<String, dynamic> json) {
    final l$createdOn = json['createdOn'];
    final l$modifiedOn = json['modifiedOn'];
    final l$accountName = json['accountName'];
    final l$requestedBy = json['requestedBy'];
    final l$$__typename = json['__typename'];
    return Query$GetPendingAccountChangeRequests$accountChangeRequests(
      createdOn: DateTime.parse((l$createdOn as String)),
      modifiedOn: DateTime.parse((l$modifiedOn as String)),
      accountName: (l$accountName as String?),
      requestedBy: (l$requestedBy as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime createdOn;

  final DateTime modifiedOn;

  final String? accountName;

  final String? requestedBy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn.toIso8601String();
    final l$modifiedOn = modifiedOn;
    _resultData['modifiedOn'] = l$modifiedOn.toIso8601String();
    final l$accountName = accountName;
    _resultData['accountName'] = l$accountName;
    final l$requestedBy = requestedBy;
    _resultData['requestedBy'] = l$requestedBy;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdOn = createdOn;
    final l$modifiedOn = modifiedOn;
    final l$accountName = accountName;
    final l$requestedBy = requestedBy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdOn,
      l$modifiedOn,
      l$accountName,
      l$requestedBy,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPendingAccountChangeRequests$accountChangeRequests ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$accountName = accountName;
    final lOther$accountName = other.accountName;
    if (l$accountName != lOther$accountName) {
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

extension UtilityExtension$Query$GetPendingAccountChangeRequests$accountChangeRequests
    on Query$GetPendingAccountChangeRequests$accountChangeRequests {
  CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests<
          Query$GetPendingAccountChangeRequests$accountChangeRequests>
      get copyWith =>
          CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests<
    TRes> {
  factory CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests(
    Query$GetPendingAccountChangeRequests$accountChangeRequests instance,
    TRes Function(Query$GetPendingAccountChangeRequests$accountChangeRequests)
        then,
  ) = _CopyWithImpl$Query$GetPendingAccountChangeRequests$accountChangeRequests;

  factory CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPendingAccountChangeRequests$accountChangeRequests;

  TRes call({
    DateTime? createdOn,
    DateTime? modifiedOn,
    String? accountName,
    String? requestedBy,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPendingAccountChangeRequests$accountChangeRequests<
        TRes>
    implements
        CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests<
            TRes> {
  _CopyWithImpl$Query$GetPendingAccountChangeRequests$accountChangeRequests(
    this._instance,
    this._then,
  );

  final Query$GetPendingAccountChangeRequests$accountChangeRequests _instance;

  final TRes Function(
      Query$GetPendingAccountChangeRequests$accountChangeRequests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdOn = _undefined,
    Object? modifiedOn = _undefined,
    Object? accountName = _undefined,
    Object? requestedBy = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPendingAccountChangeRequests$accountChangeRequests(
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        modifiedOn: modifiedOn == _undefined || modifiedOn == null
            ? _instance.modifiedOn
            : (modifiedOn as DateTime),
        accountName: accountName == _undefined
            ? _instance.accountName
            : (accountName as String?),
        requestedBy: requestedBy == _undefined
            ? _instance.requestedBy
            : (requestedBy as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPendingAccountChangeRequests$accountChangeRequests<
        TRes>
    implements
        CopyWith$Query$GetPendingAccountChangeRequests$accountChangeRequests<
            TRes> {
  _CopyWithStubImpl$Query$GetPendingAccountChangeRequests$accountChangeRequests(
      this._res);

  TRes _res;

  call({
    DateTime? createdOn,
    DateTime? modifiedOn,
    String? accountName,
    String? requestedBy,
    String? $__typename,
  }) =>
      _res;
}
