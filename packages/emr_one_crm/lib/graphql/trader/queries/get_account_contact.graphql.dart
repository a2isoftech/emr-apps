import 'package:gql/ast.dart';

class Variables$Query$GetAccountContacts {
  factory Variables$Query$GetAccountContacts(
          {required String partyAccountNo}) =>
      Variables$Query$GetAccountContacts._({
        r'partyAccountNo': partyAccountNo,
      });

  Variables$Query$GetAccountContacts._(this._$data);

  factory Variables$Query$GetAccountContacts.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = data['partyAccountNo'];
    result$data['partyAccountNo'] = (l$partyAccountNo as String);
    return Variables$Query$GetAccountContacts._(result$data);
  }

  Map<String, dynamic> _$data;

  String get partyAccountNo => (_$data['partyAccountNo'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    result$data['partyAccountNo'] = l$partyAccountNo;
    return result$data;
  }

  CopyWith$Variables$Query$GetAccountContacts<
          Variables$Query$GetAccountContacts>
      get copyWith => CopyWith$Variables$Query$GetAccountContacts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccountContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    return Object.hashAll([l$partyAccountNo]);
  }
}

abstract class CopyWith$Variables$Query$GetAccountContacts<TRes> {
  factory CopyWith$Variables$Query$GetAccountContacts(
    Variables$Query$GetAccountContacts instance,
    TRes Function(Variables$Query$GetAccountContacts) then,
  ) = _CopyWithImpl$Variables$Query$GetAccountContacts;

  factory CopyWith$Variables$Query$GetAccountContacts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccountContacts;

  TRes call({String? partyAccountNo});
}

class _CopyWithImpl$Variables$Query$GetAccountContacts<TRes>
    implements CopyWith$Variables$Query$GetAccountContacts<TRes> {
  _CopyWithImpl$Variables$Query$GetAccountContacts(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAccountContacts _instance;

  final TRes Function(Variables$Query$GetAccountContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? partyAccountNo = _undefined}) =>
      _then(Variables$Query$GetAccountContacts._({
        ..._instance._$data,
        if (partyAccountNo != _undefined && partyAccountNo != null)
          'partyAccountNo': (partyAccountNo as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAccountContacts<TRes>
    implements CopyWith$Variables$Query$GetAccountContacts<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccountContacts(this._res);

  TRes _res;

  call({String? partyAccountNo}) => _res;
}

class Query$GetAccountContacts {
  Query$GetAccountContacts({
    this.accounts,
    this.$__typename = 'Query',
  });

  factory Query$GetAccountContacts.fromJson(Map<String, dynamic> json) {
    final l$accounts = json['accounts'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountContacts(
      accounts: l$accounts == null
          ? null
          : Query$GetAccountContacts$accounts.fromJson(
              (l$accounts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountContacts$accounts? accounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accounts = accounts;
    _resultData['accounts'] = l$accounts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accounts = accounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accounts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accounts = accounts;
    final lOther$accounts = other.accounts;
    if (l$accounts != lOther$accounts) {
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

extension UtilityExtension$Query$GetAccountContacts
    on Query$GetAccountContacts {
  CopyWith$Query$GetAccountContacts<Query$GetAccountContacts> get copyWith =>
      CopyWith$Query$GetAccountContacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountContacts<TRes> {
  factory CopyWith$Query$GetAccountContacts(
    Query$GetAccountContacts instance,
    TRes Function(Query$GetAccountContacts) then,
  ) = _CopyWithImpl$Query$GetAccountContacts;

  factory CopyWith$Query$GetAccountContacts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountContacts;

  TRes call({
    Query$GetAccountContacts$accounts? accounts,
    String? $__typename,
  });
  CopyWith$Query$GetAccountContacts$accounts<TRes> get accounts;
}

class _CopyWithImpl$Query$GetAccountContacts<TRes>
    implements CopyWith$Query$GetAccountContacts<TRes> {
  _CopyWithImpl$Query$GetAccountContacts(
    this._instance,
    this._then,
  );

  final Query$GetAccountContacts _instance;

  final TRes Function(Query$GetAccountContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountContacts(
        accounts: accounts == _undefined
            ? _instance.accounts
            : (accounts as Query$GetAccountContacts$accounts?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountContacts$accounts<TRes> get accounts {
    final local$accounts = _instance.accounts;
    return local$accounts == null
        ? CopyWith$Query$GetAccountContacts$accounts.stub(_then(_instance))
        : CopyWith$Query$GetAccountContacts$accounts(
            local$accounts, (e) => call(accounts: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountContacts<TRes>
    implements CopyWith$Query$GetAccountContacts<TRes> {
  _CopyWithStubImpl$Query$GetAccountContacts(this._res);

  TRes _res;

  call({
    Query$GetAccountContacts$accounts? accounts,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountContacts$accounts<TRes> get accounts =>
      CopyWith$Query$GetAccountContacts$accounts.stub(_res);
}

const documentNodeQueryGetAccountContacts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAccountContacts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'partyAccountNo')),
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
        name: NameNode(value: 'accounts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'accountNumber'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value:
                        VariableNode(name: NameNode(value: 'partyAccountNo')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'accountContacts'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'accountContactType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'description'),
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
                        name: NameNode(value: 'contact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'firstName'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'lastName'),
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

class Query$GetAccountContacts$accounts {
  Query$GetAccountContacts$accounts({
    this.edges,
    this.$__typename = 'AccountsConnection',
  });

  factory Query$GetAccountContacts$accounts.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountContacts$accounts(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => Query$GetAccountContacts$accounts$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAccountContacts$accounts$edges>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountContacts$accounts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$GetAccountContacts$accounts
    on Query$GetAccountContacts$accounts {
  CopyWith$Query$GetAccountContacts$accounts<Query$GetAccountContacts$accounts>
      get copyWith => CopyWith$Query$GetAccountContacts$accounts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountContacts$accounts<TRes> {
  factory CopyWith$Query$GetAccountContacts$accounts(
    Query$GetAccountContacts$accounts instance,
    TRes Function(Query$GetAccountContacts$accounts) then,
  ) = _CopyWithImpl$Query$GetAccountContacts$accounts;

  factory CopyWith$Query$GetAccountContacts$accounts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountContacts$accounts;

  TRes call({
    List<Query$GetAccountContacts$accounts$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$GetAccountContacts$accounts$edges>? Function(
              Iterable<
                  CopyWith$Query$GetAccountContacts$accounts$edges<
                      Query$GetAccountContacts$accounts$edges>>?)
          _fn);
}

class _CopyWithImpl$Query$GetAccountContacts$accounts<TRes>
    implements CopyWith$Query$GetAccountContacts$accounts<TRes> {
  _CopyWithImpl$Query$GetAccountContacts$accounts(
    this._instance,
    this._then,
  );

  final Query$GetAccountContacts$accounts _instance;

  final TRes Function(Query$GetAccountContacts$accounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountContacts$accounts(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$GetAccountContacts$accounts$edges>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$GetAccountContacts$accounts$edges>? Function(
                  Iterable<
                      CopyWith$Query$GetAccountContacts$accounts$edges<
                          Query$GetAccountContacts$accounts$edges>>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              ?.map((e) => CopyWith$Query$GetAccountContacts$accounts$edges(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetAccountContacts$accounts<TRes>
    implements CopyWith$Query$GetAccountContacts$accounts<TRes> {
  _CopyWithStubImpl$Query$GetAccountContacts$accounts(this._res);

  TRes _res;

  call({
    List<Query$GetAccountContacts$accounts$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$GetAccountContacts$accounts$edges {
  Query$GetAccountContacts$accounts$edges({
    this.node,
    this.$__typename = 'AccountsEdge',
  });

  factory Query$GetAccountContacts$accounts$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountContacts$accounts$edges(
      node: l$node == null
          ? null
          : Query$GetAccountContacts$accounts$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountContacts$accounts$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountContacts$accounts$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$GetAccountContacts$accounts$edges
    on Query$GetAccountContacts$accounts$edges {
  CopyWith$Query$GetAccountContacts$accounts$edges<
          Query$GetAccountContacts$accounts$edges>
      get copyWith => CopyWith$Query$GetAccountContacts$accounts$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountContacts$accounts$edges<TRes> {
  factory CopyWith$Query$GetAccountContacts$accounts$edges(
    Query$GetAccountContacts$accounts$edges instance,
    TRes Function(Query$GetAccountContacts$accounts$edges) then,
  ) = _CopyWithImpl$Query$GetAccountContacts$accounts$edges;

  factory CopyWith$Query$GetAccountContacts$accounts$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges;

  TRes call({
    Query$GetAccountContacts$accounts$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$GetAccountContacts$accounts$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetAccountContacts$accounts$edges<TRes>
    implements CopyWith$Query$GetAccountContacts$accounts$edges<TRes> {
  _CopyWithImpl$Query$GetAccountContacts$accounts$edges(
    this._instance,
    this._then,
  );

  final Query$GetAccountContacts$accounts$edges _instance;

  final TRes Function(Query$GetAccountContacts$accounts$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountContacts$accounts$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$GetAccountContacts$accounts$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountContacts$accounts$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$GetAccountContacts$accounts$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$GetAccountContacts$accounts$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges<TRes>
    implements CopyWith$Query$GetAccountContacts$accounts$edges<TRes> {
  _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges(this._res);

  TRes _res;

  call({
    Query$GetAccountContacts$accounts$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountContacts$accounts$edges$node<TRes> get node =>
      CopyWith$Query$GetAccountContacts$accounts$edges$node.stub(_res);
}

class Query$GetAccountContacts$accounts$edges$node {
  Query$GetAccountContacts$accounts$edges$node({
    this.accountContacts,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountContacts$accounts$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$accountContacts = json['accountContacts'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountContacts$accounts$edges$node(
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAccountContacts$accounts$edges$node$accountContacts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAccountContacts$accounts$edges$node$accountContacts?>?
      accountContacts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] =
        l$accountContacts?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountContacts = accountContacts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountContacts$accounts$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountContacts = accountContacts;
    final lOther$accountContacts = other.accountContacts;
    if (l$accountContacts != null && lOther$accountContacts != null) {
      if (l$accountContacts.length != lOther$accountContacts.length) {
        return false;
      }
      for (int i = 0; i < l$accountContacts.length; i++) {
        final l$accountContacts$entry = l$accountContacts[i];
        final lOther$accountContacts$entry = lOther$accountContacts[i];
        if (l$accountContacts$entry != lOther$accountContacts$entry) {
          return false;
        }
      }
    } else if (l$accountContacts != lOther$accountContacts) {
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

extension UtilityExtension$Query$GetAccountContacts$accounts$edges$node
    on Query$GetAccountContacts$accounts$edges$node {
  CopyWith$Query$GetAccountContacts$accounts$edges$node<
          Query$GetAccountContacts$accounts$edges$node>
      get copyWith => CopyWith$Query$GetAccountContacts$accounts$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountContacts$accounts$edges$node<TRes> {
  factory CopyWith$Query$GetAccountContacts$accounts$edges$node(
    Query$GetAccountContacts$accounts$edges$node instance,
    TRes Function(Query$GetAccountContacts$accounts$edges$node) then,
  ) = _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node;

  factory CopyWith$Query$GetAccountContacts$accounts$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node;

  TRes call({
    List<Query$GetAccountContacts$accounts$edges$node$accountContacts?>?
        accountContacts,
    String? $__typename,
  });
  TRes accountContacts(
      Iterable<Query$GetAccountContacts$accounts$edges$node$accountContacts?>? Function(
              Iterable<
                  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts<
                      Query$GetAccountContacts$accounts$edges$node$accountContacts>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node<TRes>
    implements CopyWith$Query$GetAccountContacts$accounts$edges$node<TRes> {
  _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetAccountContacts$accounts$edges$node _instance;

  final TRes Function(Query$GetAccountContacts$accounts$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountContacts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountContacts$accounts$edges$node(
        accountContacts: accountContacts == _undefined
            ? _instance.accountContacts
            : (accountContacts as List<
                Query$GetAccountContacts$accounts$edges$node$accountContacts?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes accountContacts(
          Iterable<Query$GetAccountContacts$accounts$edges$node$accountContacts?>? Function(
                  Iterable<
                      CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts<
                          Query$GetAccountContacts$accounts$edges$node$accountContacts>?>?)
              _fn) =>
      call(
          accountContacts: _fn(_instance.accountContacts?.map((e) => e == null
              ? null
              : CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node<TRes>
    implements CopyWith$Query$GetAccountContacts$accounts$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node(this._res);

  TRes _res;

  call({
    List<Query$GetAccountContacts$accounts$edges$node$accountContacts?>?
        accountContacts,
    String? $__typename,
  }) =>
      _res;

  accountContacts(_fn) => _res;
}

class Query$GetAccountContacts$accounts$edges$node$accountContacts {
  Query$GetAccountContacts$accounts$edges$node$accountContacts({
    this.accountContactType,
    this.contact,
    this.$__typename = 'AccountContact',
  });

  factory Query$GetAccountContacts$accounts$edges$node$accountContacts.fromJson(
      Map<String, dynamic> json) {
    final l$accountContactType = json['accountContactType'];
    final l$contact = json['contact'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountContacts$accounts$edges$node$accountContacts(
      accountContactType: l$accountContactType == null
          ? null
          : Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType
              .fromJson((l$accountContactType as Map<String, dynamic>)),
      contact: l$contact == null
          ? null
          : Query$GetAccountContacts$accounts$edges$node$accountContacts$contact
              .fromJson((l$contact as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType?
      accountContactType;

  final Query$GetAccountContacts$accounts$edges$node$accountContacts$contact?
      contact;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountContactType = accountContactType;
    _resultData['accountContactType'] = l$accountContactType?.toJson();
    final l$contact = contact;
    _resultData['contact'] = l$contact?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountContactType = accountContactType;
    final l$contact = contact;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountContactType,
      l$contact,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountContacts$accounts$edges$node$accountContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountContactType = accountContactType;
    final lOther$accountContactType = other.accountContactType;
    if (l$accountContactType != lOther$accountContactType) {
      return false;
    }
    final l$contact = contact;
    final lOther$contact = other.contact;
    if (l$contact != lOther$contact) {
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

extension UtilityExtension$Query$GetAccountContacts$accounts$edges$node$accountContacts
    on Query$GetAccountContacts$accounts$edges$node$accountContacts {
  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts<
          Query$GetAccountContacts$accounts$edges$node$accountContacts>
      get copyWith =>
          CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts<
    TRes> {
  factory CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts(
    Query$GetAccountContacts$accounts$edges$node$accountContacts instance,
    TRes Function(Query$GetAccountContacts$accounts$edges$node$accountContacts)
        then,
  ) = _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts;

  factory CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts;

  TRes call({
    Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType?
        accountContactType,
    Query$GetAccountContacts$accounts$edges$node$accountContacts$contact?
        contact,
    String? $__typename,
  });
  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType<
      TRes> get accountContactType;
  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact<
      TRes> get contact;
}

class _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts<
        TRes>
    implements
        CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts<
            TRes> {
  _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts(
    this._instance,
    this._then,
  );

  final Query$GetAccountContacts$accounts$edges$node$accountContacts _instance;

  final TRes Function(
      Query$GetAccountContacts$accounts$edges$node$accountContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountContactType = _undefined,
    Object? contact = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountContacts$accounts$edges$node$accountContacts(
        accountContactType: accountContactType == _undefined
            ? _instance.accountContactType
            : (accountContactType
                as Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType?),
        contact: contact == _undefined
            ? _instance.contact
            : (contact
                as Query$GetAccountContacts$accounts$edges$node$accountContacts$contact?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType<
      TRes> get accountContactType {
    final local$accountContactType = _instance.accountContactType;
    return local$accountContactType == null
        ? CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType(
            local$accountContactType, (e) => call(accountContactType: e));
  }

  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact<
      TRes> get contact {
    final local$contact = _instance.contact;
    return local$contact == null
        ? CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact(
            local$contact, (e) => call(contact: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts<
        TRes>
    implements
        CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts(
      this._res);

  TRes _res;

  call({
    Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType?
        accountContactType,
    Query$GetAccountContacts$accounts$edges$node$accountContacts$contact?
        contact,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType<
          TRes>
      get accountContactType =>
          CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType
              .stub(_res);

  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact<
          TRes>
      get contact =>
          CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact
              .stub(_res);
}

class Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType {
  Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType({
    this.description,
    this.$__typename = 'AccountContactType',
  });

  factory Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType.fromJson(
      Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType(
      description: (l$description as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType
    on Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType {
  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType<
          Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType>
      get copyWith =>
          CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType<
    TRes> {
  factory CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType(
    Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType
        instance,
    TRes Function(
            Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType)
        then,
  ) = _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType;

  factory CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType;

  TRes call({
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType<
        TRes>
    implements
        CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType<
            TRes> {
  _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType(
    this._instance,
    this._then,
  );

  final Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType
      _instance;

  final TRes Function(
          Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType(
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType<
        TRes>
    implements
        CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$accountContactType(
      this._res);

  TRes _res;

  call({
    String? description,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountContacts$accounts$edges$node$accountContacts$contact {
  Query$GetAccountContacts$accounts$edges$node$accountContacts$contact({
    this.firstName,
    this.lastName,
    required this.id,
    this.$__typename = 'Contact',
  });

  factory Query$GetAccountContacts$accounts$edges$node$accountContacts$contact.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountContacts$accounts$edges$node$accountContacts$contact(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountContacts$accounts$edges$node$accountContacts$contact ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact
    on Query$GetAccountContacts$accounts$edges$node$accountContacts$contact {
  CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact<
          Query$GetAccountContacts$accounts$edges$node$accountContacts$contact>
      get copyWith =>
          CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact<
    TRes> {
  factory CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact(
    Query$GetAccountContacts$accounts$edges$node$accountContacts$contact
        instance,
    TRes Function(
            Query$GetAccountContacts$accounts$edges$node$accountContacts$contact)
        then,
  ) = _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact;

  factory CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact;

  TRes call({
    String? firstName,
    String? lastName,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact<
        TRes>
    implements
        CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact<
            TRes> {
  _CopyWithImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact(
    this._instance,
    this._then,
  );

  final Query$GetAccountContacts$accounts$edges$node$accountContacts$contact
      _instance;

  final TRes Function(
          Query$GetAccountContacts$accounts$edges$node$accountContacts$contact)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountContacts$accounts$edges$node$accountContacts$contact(
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact<
        TRes>
    implements
        CopyWith$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountContacts$accounts$edges$node$accountContacts$contact(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    int? id,
    String? $__typename,
  }) =>
      _res;
}
