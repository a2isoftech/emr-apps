import 'package:gql/ast.dart';

class Query$GetYardDetails {
  Query$GetYardDetails({
    required this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetYardDetails.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetYardDetails(
      account: Query$GetYardDetails$account.fromJson(
          (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetYardDetails$account account;

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
    if (!(other is Query$GetYardDetails) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetYardDetails on Query$GetYardDetails {
  CopyWith$Query$GetYardDetails<Query$GetYardDetails> get copyWith =>
      CopyWith$Query$GetYardDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardDetails<TRes> {
  factory CopyWith$Query$GetYardDetails(
    Query$GetYardDetails instance,
    TRes Function(Query$GetYardDetails) then,
  ) = _CopyWithImpl$Query$GetYardDetails;

  factory CopyWith$Query$GetYardDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardDetails;

  TRes call({
    Query$GetYardDetails$account? account,
    String? $__typename,
  });
  CopyWith$Query$GetYardDetails$account<TRes> get account;
}

class _CopyWithImpl$Query$GetYardDetails<TRes>
    implements CopyWith$Query$GetYardDetails<TRes> {
  _CopyWithImpl$Query$GetYardDetails(
    this._instance,
    this._then,
  );

  final Query$GetYardDetails _instance;

  final TRes Function(Query$GetYardDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardDetails(
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$GetYardDetails$account),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetYardDetails$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetYardDetails$account(
        local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$GetYardDetails<TRes>
    implements CopyWith$Query$GetYardDetails<TRes> {
  _CopyWithStubImpl$Query$GetYardDetails(this._res);

  TRes _res;

  call({
    Query$GetYardDetails$account? account,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetYardDetails$account<TRes> get account =>
      CopyWith$Query$GetYardDetails$account.stub(_res);
}

const documentNodeQueryGetYardDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetYardDetails'),
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
            name: NameNode(value: 'defaultYardCode'),
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

class Query$GetYardDetails$account {
  Query$GetYardDetails$account({
    this.defaultYardCode,
    this.$__typename = 'Account',
  });

  factory Query$GetYardDetails$account.fromJson(Map<String, dynamic> json) {
    final l$defaultYardCode = json['defaultYardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetYardDetails$account(
      defaultYardCode: (l$defaultYardCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? defaultYardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$defaultYardCode = defaultYardCode;
    _resultData['defaultYardCode'] = l$defaultYardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$defaultYardCode = defaultYardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$defaultYardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetYardDetails$account) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$defaultYardCode = defaultYardCode;
    final lOther$defaultYardCode = other.defaultYardCode;
    if (l$defaultYardCode != lOther$defaultYardCode) {
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

extension UtilityExtension$Query$GetYardDetails$account
    on Query$GetYardDetails$account {
  CopyWith$Query$GetYardDetails$account<Query$GetYardDetails$account>
      get copyWith => CopyWith$Query$GetYardDetails$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetYardDetails$account<TRes> {
  factory CopyWith$Query$GetYardDetails$account(
    Query$GetYardDetails$account instance,
    TRes Function(Query$GetYardDetails$account) then,
  ) = _CopyWithImpl$Query$GetYardDetails$account;

  factory CopyWith$Query$GetYardDetails$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardDetails$account;

  TRes call({
    String? defaultYardCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardDetails$account<TRes>
    implements CopyWith$Query$GetYardDetails$account<TRes> {
  _CopyWithImpl$Query$GetYardDetails$account(
    this._instance,
    this._then,
  );

  final Query$GetYardDetails$account _instance;

  final TRes Function(Query$GetYardDetails$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? defaultYardCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardDetails$account(
        defaultYardCode: defaultYardCode == _undefined
            ? _instance.defaultYardCode
            : (defaultYardCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetYardDetails$account<TRes>
    implements CopyWith$Query$GetYardDetails$account<TRes> {
  _CopyWithStubImpl$Query$GetYardDetails$account(this._res);

  TRes _res;

  call({
    String? defaultYardCode,
    String? $__typename,
  }) =>
      _res;
}
