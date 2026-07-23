import 'package:gql/ast.dart';

class Query$GetDefaultTerritory {
  Query$GetDefaultTerritory({
    required this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetDefaultTerritory.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetDefaultTerritory(
      account: Query$GetDefaultTerritory$account.fromJson(
          (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetDefaultTerritory$account account;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$account = account;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$account,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDefaultTerritory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
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

extension UtilityExtension$Query$GetDefaultTerritory
    on Query$GetDefaultTerritory {
  CopyWith$Query$GetDefaultTerritory<Query$GetDefaultTerritory> get copyWith =>
      CopyWith$Query$GetDefaultTerritory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDefaultTerritory<TRes> {
  factory CopyWith$Query$GetDefaultTerritory(
    Query$GetDefaultTerritory instance,
    TRes Function(Query$GetDefaultTerritory) then,
  ) = _CopyWithImpl$Query$GetDefaultTerritory;

  factory CopyWith$Query$GetDefaultTerritory.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDefaultTerritory;

  TRes call({
    Query$GetDefaultTerritory$account? account,
    String? $__typename,
  });
  CopyWith$Query$GetDefaultTerritory$account<TRes> get account;
}

class _CopyWithImpl$Query$GetDefaultTerritory<TRes>
    implements CopyWith$Query$GetDefaultTerritory<TRes> {
  _CopyWithImpl$Query$GetDefaultTerritory(
    this._instance,
    this._then,
  );

  final Query$GetDefaultTerritory _instance;

  final TRes Function(Query$GetDefaultTerritory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDefaultTerritory(
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$GetDefaultTerritory$account),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetDefaultTerritory$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetDefaultTerritory$account(
        local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$GetDefaultTerritory<TRes>
    implements CopyWith$Query$GetDefaultTerritory<TRes> {
  _CopyWithStubImpl$Query$GetDefaultTerritory(this._res);

  TRes _res;

  call({
    Query$GetDefaultTerritory$account? account,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetDefaultTerritory$account<TRes> get account =>
      CopyWith$Query$GetDefaultTerritory$account.stub(_res);
}

const documentNodeQueryGetDefaultTerritory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDefaultTerritory'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'account'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'primaryManager'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'userInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'defaultTerritory'),
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

class Query$GetDefaultTerritory$account {
  Query$GetDefaultTerritory$account({
    this.primaryManager,
    this.$__typename = 'Account',
  });

  factory Query$GetDefaultTerritory$account.fromJson(
      Map<String, dynamic> json) {
    final l$primaryManager = json['primaryManager'];
    final l$$__typename = json['__typename'];
    return Query$GetDefaultTerritory$account(
      primaryManager: l$primaryManager == null
          ? null
          : Query$GetDefaultTerritory$account$primaryManager.fromJson(
              (l$primaryManager as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetDefaultTerritory$account$primaryManager? primaryManager;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$primaryManager = primaryManager;
    _resultData['primaryManager'] = l$primaryManager?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$primaryManager = primaryManager;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$primaryManager,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDefaultTerritory$account) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$primaryManager = primaryManager;
    final lOther$primaryManager = other.primaryManager;
    if (l$primaryManager != lOther$primaryManager) {
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

extension UtilityExtension$Query$GetDefaultTerritory$account
    on Query$GetDefaultTerritory$account {
  CopyWith$Query$GetDefaultTerritory$account<Query$GetDefaultTerritory$account>
      get copyWith => CopyWith$Query$GetDefaultTerritory$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDefaultTerritory$account<TRes> {
  factory CopyWith$Query$GetDefaultTerritory$account(
    Query$GetDefaultTerritory$account instance,
    TRes Function(Query$GetDefaultTerritory$account) then,
  ) = _CopyWithImpl$Query$GetDefaultTerritory$account;

  factory CopyWith$Query$GetDefaultTerritory$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDefaultTerritory$account;

  TRes call({
    Query$GetDefaultTerritory$account$primaryManager? primaryManager,
    String? $__typename,
  });
  CopyWith$Query$GetDefaultTerritory$account$primaryManager<TRes>
      get primaryManager;
}

class _CopyWithImpl$Query$GetDefaultTerritory$account<TRes>
    implements CopyWith$Query$GetDefaultTerritory$account<TRes> {
  _CopyWithImpl$Query$GetDefaultTerritory$account(
    this._instance,
    this._then,
  );

  final Query$GetDefaultTerritory$account _instance;

  final TRes Function(Query$GetDefaultTerritory$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? primaryManager = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDefaultTerritory$account(
        primaryManager: primaryManager == _undefined
            ? _instance.primaryManager
            : (primaryManager
                as Query$GetDefaultTerritory$account$primaryManager?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetDefaultTerritory$account$primaryManager<TRes>
      get primaryManager {
    final local$primaryManager = _instance.primaryManager;
    return local$primaryManager == null
        ? CopyWith$Query$GetDefaultTerritory$account$primaryManager.stub(
            _then(_instance))
        : CopyWith$Query$GetDefaultTerritory$account$primaryManager(
            local$primaryManager, (e) => call(primaryManager: e));
  }
}

class _CopyWithStubImpl$Query$GetDefaultTerritory$account<TRes>
    implements CopyWith$Query$GetDefaultTerritory$account<TRes> {
  _CopyWithStubImpl$Query$GetDefaultTerritory$account(this._res);

  TRes _res;

  call({
    Query$GetDefaultTerritory$account$primaryManager? primaryManager,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetDefaultTerritory$account$primaryManager<TRes>
      get primaryManager =>
          CopyWith$Query$GetDefaultTerritory$account$primaryManager.stub(_res);
}

class Query$GetDefaultTerritory$account$primaryManager {
  Query$GetDefaultTerritory$account$primaryManager({
    this.userInfo,
    this.$__typename = 'ManagementDetail',
  });

  factory Query$GetDefaultTerritory$account$primaryManager.fromJson(
      Map<String, dynamic> json) {
    final l$userInfo = json['userInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetDefaultTerritory$account$primaryManager(
      userInfo: l$userInfo == null
          ? null
          : Query$GetDefaultTerritory$account$primaryManager$userInfo.fromJson(
              (l$userInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetDefaultTerritory$account$primaryManager$userInfo? userInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfo = userInfo;
    _resultData['userInfo'] = l$userInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfo = userInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDefaultTerritory$account$primaryManager) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfo = userInfo;
    final lOther$userInfo = other.userInfo;
    if (l$userInfo != lOther$userInfo) {
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

extension UtilityExtension$Query$GetDefaultTerritory$account$primaryManager
    on Query$GetDefaultTerritory$account$primaryManager {
  CopyWith$Query$GetDefaultTerritory$account$primaryManager<
          Query$GetDefaultTerritory$account$primaryManager>
      get copyWith => CopyWith$Query$GetDefaultTerritory$account$primaryManager(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDefaultTerritory$account$primaryManager<TRes> {
  factory CopyWith$Query$GetDefaultTerritory$account$primaryManager(
    Query$GetDefaultTerritory$account$primaryManager instance,
    TRes Function(Query$GetDefaultTerritory$account$primaryManager) then,
  ) = _CopyWithImpl$Query$GetDefaultTerritory$account$primaryManager;

  factory CopyWith$Query$GetDefaultTerritory$account$primaryManager.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetDefaultTerritory$account$primaryManager;

  TRes call({
    Query$GetDefaultTerritory$account$primaryManager$userInfo? userInfo,
    String? $__typename,
  });
  CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo<TRes>
      get userInfo;
}

class _CopyWithImpl$Query$GetDefaultTerritory$account$primaryManager<TRes>
    implements CopyWith$Query$GetDefaultTerritory$account$primaryManager<TRes> {
  _CopyWithImpl$Query$GetDefaultTerritory$account$primaryManager(
    this._instance,
    this._then,
  );

  final Query$GetDefaultTerritory$account$primaryManager _instance;

  final TRes Function(Query$GetDefaultTerritory$account$primaryManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDefaultTerritory$account$primaryManager(
        userInfo: userInfo == _undefined
            ? _instance.userInfo
            : (userInfo
                as Query$GetDefaultTerritory$account$primaryManager$userInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo<TRes>
      get userInfo {
    final local$userInfo = _instance.userInfo;
    return local$userInfo == null
        ? CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo
            .stub(_then(_instance))
        : CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo(
            local$userInfo, (e) => call(userInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetDefaultTerritory$account$primaryManager<TRes>
    implements CopyWith$Query$GetDefaultTerritory$account$primaryManager<TRes> {
  _CopyWithStubImpl$Query$GetDefaultTerritory$account$primaryManager(this._res);

  TRes _res;

  call({
    Query$GetDefaultTerritory$account$primaryManager$userInfo? userInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo<TRes>
      get userInfo =>
          CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo
              .stub(_res);
}

class Query$GetDefaultTerritory$account$primaryManager$userInfo {
  Query$GetDefaultTerritory$account$primaryManager$userInfo({
    required this.defaultTerritory,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetDefaultTerritory$account$primaryManager$userInfo.fromJson(
      Map<String, dynamic> json) {
    final l$defaultTerritory = json['defaultTerritory'];
    final l$$__typename = json['__typename'];
    return Query$GetDefaultTerritory$account$primaryManager$userInfo(
      defaultTerritory: (l$defaultTerritory as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String defaultTerritory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$defaultTerritory = defaultTerritory;
    _resultData['defaultTerritory'] = l$defaultTerritory;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$defaultTerritory = defaultTerritory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$defaultTerritory,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDefaultTerritory$account$primaryManager$userInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$defaultTerritory = defaultTerritory;
    final lOther$defaultTerritory = other.defaultTerritory;
    if (l$defaultTerritory != lOther$defaultTerritory) {
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

extension UtilityExtension$Query$GetDefaultTerritory$account$primaryManager$userInfo
    on Query$GetDefaultTerritory$account$primaryManager$userInfo {
  CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo<
          Query$GetDefaultTerritory$account$primaryManager$userInfo>
      get copyWith =>
          CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo<
    TRes> {
  factory CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo(
    Query$GetDefaultTerritory$account$primaryManager$userInfo instance,
    TRes Function(Query$GetDefaultTerritory$account$primaryManager$userInfo)
        then,
  ) = _CopyWithImpl$Query$GetDefaultTerritory$account$primaryManager$userInfo;

  factory CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetDefaultTerritory$account$primaryManager$userInfo;

  TRes call({
    String? defaultTerritory,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDefaultTerritory$account$primaryManager$userInfo<
        TRes>
    implements
        CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo<
            TRes> {
  _CopyWithImpl$Query$GetDefaultTerritory$account$primaryManager$userInfo(
    this._instance,
    this._then,
  );

  final Query$GetDefaultTerritory$account$primaryManager$userInfo _instance;

  final TRes Function(Query$GetDefaultTerritory$account$primaryManager$userInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? defaultTerritory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDefaultTerritory$account$primaryManager$userInfo(
        defaultTerritory:
            defaultTerritory == _undefined || defaultTerritory == null
                ? _instance.defaultTerritory
                : (defaultTerritory as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetDefaultTerritory$account$primaryManager$userInfo<
        TRes>
    implements
        CopyWith$Query$GetDefaultTerritory$account$primaryManager$userInfo<
            TRes> {
  _CopyWithStubImpl$Query$GetDefaultTerritory$account$primaryManager$userInfo(
      this._res);

  TRes _res;

  call({
    String? defaultTerritory,
    String? $__typename,
  }) =>
      _res;
}
