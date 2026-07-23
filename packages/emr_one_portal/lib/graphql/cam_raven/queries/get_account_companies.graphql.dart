import 'package:gql/ast.dart';

class Query$GetAccountCompanies {
  Query$GetAccountCompanies({
    required this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetAccountCompanies.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountCompanies(
      account: Query$GetAccountCompanies$account.fromJson(
          (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountCompanies$account account;

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
    if (!(other is Query$GetAccountCompanies) ||
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

extension UtilityExtension$Query$GetAccountCompanies
    on Query$GetAccountCompanies {
  CopyWith$Query$GetAccountCompanies<Query$GetAccountCompanies> get copyWith =>
      CopyWith$Query$GetAccountCompanies(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountCompanies<TRes> {
  factory CopyWith$Query$GetAccountCompanies(
    Query$GetAccountCompanies instance,
    TRes Function(Query$GetAccountCompanies) then,
  ) = _CopyWithImpl$Query$GetAccountCompanies;

  factory CopyWith$Query$GetAccountCompanies.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountCompanies;

  TRes call({
    Query$GetAccountCompanies$account? account,
    String? $__typename,
  });
  CopyWith$Query$GetAccountCompanies$account<TRes> get account;
}

class _CopyWithImpl$Query$GetAccountCompanies<TRes>
    implements CopyWith$Query$GetAccountCompanies<TRes> {
  _CopyWithImpl$Query$GetAccountCompanies(
    this._instance,
    this._then,
  );

  final Query$GetAccountCompanies _instance;

  final TRes Function(Query$GetAccountCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountCompanies(
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$GetAccountCompanies$account),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountCompanies$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetAccountCompanies$account(
        local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountCompanies<TRes>
    implements CopyWith$Query$GetAccountCompanies<TRes> {
  _CopyWithStubImpl$Query$GetAccountCompanies(this._res);

  TRes _res;

  call({
    Query$GetAccountCompanies$account? account,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountCompanies$account<TRes> get account =>
      CopyWith$Query$GetAccountCompanies$account.stub(_res);
}

const documentNodeQueryGetAccountCompanies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAccountCompanies'),
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
            name: NameNode(value: 'companies'),
            alias: NameNode(value: 'validForCompanies'),
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
                name: NameNode(value: 'code'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'fullName'),
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

class Query$GetAccountCompanies$account {
  Query$GetAccountCompanies$account({
    this.validForCompanies,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountCompanies$account.fromJson(
      Map<String, dynamic> json) {
    final l$validForCompanies = json['validForCompanies'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountCompanies$account(
      validForCompanies: (l$validForCompanies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAccountCompanies$account$validForCompanies.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAccountCompanies$account$validForCompanies?>?
      validForCompanies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validForCompanies = validForCompanies;
    _resultData['validForCompanies'] =
        l$validForCompanies?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validForCompanies = validForCompanies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validForCompanies == null
          ? null
          : Object.hashAll(l$validForCompanies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountCompanies$account) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validForCompanies = validForCompanies;
    final lOther$validForCompanies = other.validForCompanies;
    if (l$validForCompanies != null && lOther$validForCompanies != null) {
      if (l$validForCompanies.length != lOther$validForCompanies.length) {
        return false;
      }
      for (int i = 0; i < l$validForCompanies.length; i++) {
        final l$validForCompanies$entry = l$validForCompanies[i];
        final lOther$validForCompanies$entry = lOther$validForCompanies[i];
        if (l$validForCompanies$entry != lOther$validForCompanies$entry) {
          return false;
        }
      }
    } else if (l$validForCompanies != lOther$validForCompanies) {
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

extension UtilityExtension$Query$GetAccountCompanies$account
    on Query$GetAccountCompanies$account {
  CopyWith$Query$GetAccountCompanies$account<Query$GetAccountCompanies$account>
      get copyWith => CopyWith$Query$GetAccountCompanies$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountCompanies$account<TRes> {
  factory CopyWith$Query$GetAccountCompanies$account(
    Query$GetAccountCompanies$account instance,
    TRes Function(Query$GetAccountCompanies$account) then,
  ) = _CopyWithImpl$Query$GetAccountCompanies$account;

  factory CopyWith$Query$GetAccountCompanies$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountCompanies$account;

  TRes call({
    List<Query$GetAccountCompanies$account$validForCompanies?>?
        validForCompanies,
    String? $__typename,
  });
  TRes validForCompanies(
      Iterable<Query$GetAccountCompanies$account$validForCompanies?>? Function(
              Iterable<
                  CopyWith$Query$GetAccountCompanies$account$validForCompanies<
                      Query$GetAccountCompanies$account$validForCompanies>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetAccountCompanies$account<TRes>
    implements CopyWith$Query$GetAccountCompanies$account<TRes> {
  _CopyWithImpl$Query$GetAccountCompanies$account(
    this._instance,
    this._then,
  );

  final Query$GetAccountCompanies$account _instance;

  final TRes Function(Query$GetAccountCompanies$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validForCompanies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountCompanies$account(
        validForCompanies: validForCompanies == _undefined
            ? _instance.validForCompanies
            : (validForCompanies
                as List<Query$GetAccountCompanies$account$validForCompanies?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes validForCompanies(
          Iterable<Query$GetAccountCompanies$account$validForCompanies?>? Function(
                  Iterable<
                      CopyWith$Query$GetAccountCompanies$account$validForCompanies<
                          Query$GetAccountCompanies$account$validForCompanies>?>?)
              _fn) =>
      call(
          validForCompanies: _fn(_instance.validForCompanies?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$GetAccountCompanies$account$validForCompanies(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetAccountCompanies$account<TRes>
    implements CopyWith$Query$GetAccountCompanies$account<TRes> {
  _CopyWithStubImpl$Query$GetAccountCompanies$account(this._res);

  TRes _res;

  call({
    List<Query$GetAccountCompanies$account$validForCompanies?>?
        validForCompanies,
    String? $__typename,
  }) =>
      _res;

  validForCompanies(_fn) => _res;
}

class Query$GetAccountCompanies$account$validForCompanies {
  Query$GetAccountCompanies$account$validForCompanies({
    required this.id,
    required this.code,
    required this.fullName,
    this.$__typename = 'Company',
  });

  factory Query$GetAccountCompanies$account$validForCompanies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountCompanies$account$validForCompanies(
      id: (l$id as String),
      code: (l$code as String),
      fullName: (l$fullName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountCompanies$account$validForCompanies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
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

extension UtilityExtension$Query$GetAccountCompanies$account$validForCompanies
    on Query$GetAccountCompanies$account$validForCompanies {
  CopyWith$Query$GetAccountCompanies$account$validForCompanies<
          Query$GetAccountCompanies$account$validForCompanies>
      get copyWith =>
          CopyWith$Query$GetAccountCompanies$account$validForCompanies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountCompanies$account$validForCompanies<
    TRes> {
  factory CopyWith$Query$GetAccountCompanies$account$validForCompanies(
    Query$GetAccountCompanies$account$validForCompanies instance,
    TRes Function(Query$GetAccountCompanies$account$validForCompanies) then,
  ) = _CopyWithImpl$Query$GetAccountCompanies$account$validForCompanies;

  factory CopyWith$Query$GetAccountCompanies$account$validForCompanies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountCompanies$account$validForCompanies;

  TRes call({
    String? id,
    String? code,
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountCompanies$account$validForCompanies<TRes>
    implements
        CopyWith$Query$GetAccountCompanies$account$validForCompanies<TRes> {
  _CopyWithImpl$Query$GetAccountCompanies$account$validForCompanies(
    this._instance,
    this._then,
  );

  final Query$GetAccountCompanies$account$validForCompanies _instance;

  final TRes Function(Query$GetAccountCompanies$account$validForCompanies)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountCompanies$account$validForCompanies(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        fullName: fullName == _undefined || fullName == null
            ? _instance.fullName
            : (fullName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountCompanies$account$validForCompanies<
        TRes>
    implements
        CopyWith$Query$GetAccountCompanies$account$validForCompanies<TRes> {
  _CopyWithStubImpl$Query$GetAccountCompanies$account$validForCompanies(
      this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? fullName,
    String? $__typename,
  }) =>
      _res;
}
