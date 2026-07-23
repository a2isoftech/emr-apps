import 'package:gql/ast.dart';

class Variables$Query$GetAccountByAccountNumber {
  factory Variables$Query$GetAccountByAccountNumber({required String query}) =>
      Variables$Query$GetAccountByAccountNumber._({r'query': query});

  Variables$Query$GetAccountByAccountNumber._(this._$data);

  factory Variables$Query$GetAccountByAccountNumber.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    return Variables$Query$GetAccountByAccountNumber._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    return result$data;
  }

  CopyWith$Variables$Query$GetAccountByAccountNumber<
    Variables$Query$GetAccountByAccountNumber
  >
  get copyWith =>
      CopyWith$Variables$Query$GetAccountByAccountNumber(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccountByAccountNumber ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([l$query]);
  }
}

abstract class CopyWith$Variables$Query$GetAccountByAccountNumber<TRes> {
  factory CopyWith$Variables$Query$GetAccountByAccountNumber(
    Variables$Query$GetAccountByAccountNumber instance,
    TRes Function(Variables$Query$GetAccountByAccountNumber) then,
  ) = _CopyWithImpl$Variables$Query$GetAccountByAccountNumber;

  factory CopyWith$Variables$Query$GetAccountByAccountNumber.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccountByAccountNumber;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$GetAccountByAccountNumber<TRes>
    implements CopyWith$Variables$Query$GetAccountByAccountNumber<TRes> {
  _CopyWithImpl$Variables$Query$GetAccountByAccountNumber(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAccountByAccountNumber _instance;

  final TRes Function(Variables$Query$GetAccountByAccountNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables$Query$GetAccountByAccountNumber._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAccountByAccountNumber<TRes>
    implements CopyWith$Variables$Query$GetAccountByAccountNumber<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccountByAccountNumber(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$GetAccountByAccountNumber {
  Query$GetAccountByAccountNumber({
    this.searchAccounts,
    this.$__typename = 'Query',
  });

  factory Query$GetAccountByAccountNumber.fromJson(Map<String, dynamic> json) {
    final l$searchAccounts = json['searchAccounts'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountByAccountNumber(
      searchAccounts: l$searchAccounts == null
          ? null
          : Query$GetAccountByAccountNumber$searchAccounts.fromJson(
              (l$searchAccounts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountByAccountNumber$searchAccounts? searchAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAccounts = searchAccounts;
    _resultData['searchAccounts'] = l$searchAccounts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAccounts = searchAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchAccounts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountByAccountNumber ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAccounts = searchAccounts;
    final lOther$searchAccounts = other.searchAccounts;
    if (l$searchAccounts != lOther$searchAccounts) {
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

extension UtilityExtension$Query$GetAccountByAccountNumber
    on Query$GetAccountByAccountNumber {
  CopyWith$Query$GetAccountByAccountNumber<Query$GetAccountByAccountNumber>
  get copyWith => CopyWith$Query$GetAccountByAccountNumber(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountByAccountNumber<TRes> {
  factory CopyWith$Query$GetAccountByAccountNumber(
    Query$GetAccountByAccountNumber instance,
    TRes Function(Query$GetAccountByAccountNumber) then,
  ) = _CopyWithImpl$Query$GetAccountByAccountNumber;

  factory CopyWith$Query$GetAccountByAccountNumber.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountByAccountNumber;

  TRes call({
    Query$GetAccountByAccountNumber$searchAccounts? searchAccounts,
    String? $__typename,
  });
  CopyWith$Query$GetAccountByAccountNumber$searchAccounts<TRes>
  get searchAccounts;
}

class _CopyWithImpl$Query$GetAccountByAccountNumber<TRes>
    implements CopyWith$Query$GetAccountByAccountNumber<TRes> {
  _CopyWithImpl$Query$GetAccountByAccountNumber(this._instance, this._then);

  final Query$GetAccountByAccountNumber _instance;

  final TRes Function(Query$GetAccountByAccountNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountByAccountNumber(
      searchAccounts: searchAccounts == _undefined
          ? _instance.searchAccounts
          : (searchAccounts as Query$GetAccountByAccountNumber$searchAccounts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountByAccountNumber$searchAccounts<TRes>
  get searchAccounts {
    final local$searchAccounts = _instance.searchAccounts;
    return local$searchAccounts == null
        ? CopyWith$Query$GetAccountByAccountNumber$searchAccounts.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountByAccountNumber$searchAccounts(
            local$searchAccounts,
            (e) => call(searchAccounts: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccountByAccountNumber<TRes>
    implements CopyWith$Query$GetAccountByAccountNumber<TRes> {
  _CopyWithStubImpl$Query$GetAccountByAccountNumber(this._res);

  TRes _res;

  call({
    Query$GetAccountByAccountNumber$searchAccounts? searchAccounts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountByAccountNumber$searchAccounts<TRes>
  get searchAccounts =>
      CopyWith$Query$GetAccountByAccountNumber$searchAccounts.stub(_res);
}

const documentNodeQueryGetAccountByAccountNumber = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAccountByAccountNumber'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchAccounts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'query'),
                      value: VariableNode(name: NameNode(value: 'query')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'ignoreDefaultTerritory'),
                      value: BooleanValueNode(value: true),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$GetAccountByAccountNumber$searchAccounts {
  Query$GetAccountByAccountNumber$searchAccounts({
    this.nodes,
    this.$__typename = 'SearchAccountsConnection',
  });

  factory Query$GetAccountByAccountNumber$searchAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountByAccountNumber$searchAccounts(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetAccountByAccountNumber$searchAccounts$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAccountByAccountNumber$searchAccounts$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountByAccountNumber$searchAccounts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$GetAccountByAccountNumber$searchAccounts
    on Query$GetAccountByAccountNumber$searchAccounts {
  CopyWith$Query$GetAccountByAccountNumber$searchAccounts<
    Query$GetAccountByAccountNumber$searchAccounts
  >
  get copyWith =>
      CopyWith$Query$GetAccountByAccountNumber$searchAccounts(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountByAccountNumber$searchAccounts<TRes> {
  factory CopyWith$Query$GetAccountByAccountNumber$searchAccounts(
    Query$GetAccountByAccountNumber$searchAccounts instance,
    TRes Function(Query$GetAccountByAccountNumber$searchAccounts) then,
  ) = _CopyWithImpl$Query$GetAccountByAccountNumber$searchAccounts;

  factory CopyWith$Query$GetAccountByAccountNumber$searchAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountByAccountNumber$searchAccounts;

  TRes call({
    List<Query$GetAccountByAccountNumber$searchAccounts$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$GetAccountByAccountNumber$searchAccounts$nodes>? Function(
      Iterable<
        CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes<
          Query$GetAccountByAccountNumber$searchAccounts$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccountByAccountNumber$searchAccounts<TRes>
    implements CopyWith$Query$GetAccountByAccountNumber$searchAccounts<TRes> {
  _CopyWithImpl$Query$GetAccountByAccountNumber$searchAccounts(
    this._instance,
    this._then,
  );

  final Query$GetAccountByAccountNumber$searchAccounts _instance;

  final TRes Function(Query$GetAccountByAccountNumber$searchAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountByAccountNumber$searchAccounts(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<Query$GetAccountByAccountNumber$searchAccounts$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$GetAccountByAccountNumber$searchAccounts$nodes>? Function(
      Iterable<
        CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes<
          Query$GetAccountByAccountNumber$searchAccounts$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccountByAccountNumber$searchAccounts<TRes>
    implements CopyWith$Query$GetAccountByAccountNumber$searchAccounts<TRes> {
  _CopyWithStubImpl$Query$GetAccountByAccountNumber$searchAccounts(this._res);

  TRes _res;

  call({
    List<Query$GetAccountByAccountNumber$searchAccounts$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$GetAccountByAccountNumber$searchAccounts$nodes {
  Query$GetAccountByAccountNumber$searchAccounts$nodes({
    required this.id,
    required this.code,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountByAccountNumber$searchAccounts$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountByAccountNumber$searchAccounts$nodes(
      id: (l$id as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountByAccountNumber$searchAccounts$nodes ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountByAccountNumber$searchAccounts$nodes
    on Query$GetAccountByAccountNumber$searchAccounts$nodes {
  CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes<
    Query$GetAccountByAccountNumber$searchAccounts$nodes
  >
  get copyWith => CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes<
  TRes
> {
  factory CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes(
    Query$GetAccountByAccountNumber$searchAccounts$nodes instance,
    TRes Function(Query$GetAccountByAccountNumber$searchAccounts$nodes) then,
  ) = _CopyWithImpl$Query$GetAccountByAccountNumber$searchAccounts$nodes;

  factory CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountByAccountNumber$searchAccounts$nodes;

  TRes call({String? id, String? code, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountByAccountNumber$searchAccounts$nodes<TRes>
    implements
        CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes<TRes> {
  _CopyWithImpl$Query$GetAccountByAccountNumber$searchAccounts$nodes(
    this._instance,
    this._then,
  );

  final Query$GetAccountByAccountNumber$searchAccounts$nodes _instance;

  final TRes Function(Query$GetAccountByAccountNumber$searchAccounts$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountByAccountNumber$searchAccounts$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountByAccountNumber$searchAccounts$nodes<
  TRes
>
    implements
        CopyWith$Query$GetAccountByAccountNumber$searchAccounts$nodes<TRes> {
  _CopyWithStubImpl$Query$GetAccountByAccountNumber$searchAccounts$nodes(
    this._res,
  );

  TRes _res;

  call({String? id, String? code, String? $__typename}) => _res;
}
