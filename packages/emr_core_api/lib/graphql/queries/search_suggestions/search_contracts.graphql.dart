import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchContracts {
  factory Variables$Query$SearchContracts({
    required Input$SearchContractsInput input,
  }) => Variables$Query$SearchContracts._({r'input': input});

  Variables$Query$SearchContracts._(this._$data);

  factory Variables$Query$SearchContracts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchContractsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchContracts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchContractsInput get input =>
      (_$data['input'] as Input$SearchContractsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchContracts<Variables$Query$SearchContracts>
  get copyWith => CopyWith$Variables$Query$SearchContracts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchContracts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$SearchContracts<TRes> {
  factory CopyWith$Variables$Query$SearchContracts(
    Variables$Query$SearchContracts instance,
    TRes Function(Variables$Query$SearchContracts) then,
  ) = _CopyWithImpl$Variables$Query$SearchContracts;

  factory CopyWith$Variables$Query$SearchContracts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchContracts;

  TRes call({Input$SearchContractsInput? input});
}

class _CopyWithImpl$Variables$Query$SearchContracts<TRes>
    implements CopyWith$Variables$Query$SearchContracts<TRes> {
  _CopyWithImpl$Variables$Query$SearchContracts(this._instance, this._then);

  final Variables$Query$SearchContracts _instance;

  final TRes Function(Variables$Query$SearchContracts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchContracts._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchContractsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchContracts<TRes>
    implements CopyWith$Variables$Query$SearchContracts<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchContracts(this._res);

  TRes _res;

  call({Input$SearchContractsInput? input}) => _res;
}

class Query$SearchContracts {
  Query$SearchContracts({this.searchContracts, this.$__typename = 'Query'});

  factory Query$SearchContracts.fromJson(Map<String, dynamic> json) {
    final l$searchContracts = json['searchContracts'];
    final l$$__typename = json['__typename'];
    return Query$SearchContracts(
      searchContracts: l$searchContracts == null
          ? null
          : Query$SearchContracts$searchContracts.fromJson(
              (l$searchContracts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchContracts$searchContracts? searchContracts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchContracts = searchContracts;
    _resultData['searchContracts'] = l$searchContracts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchContracts = searchContracts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchContracts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchContracts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchContracts = searchContracts;
    final lOther$searchContracts = other.searchContracts;
    if (l$searchContracts != lOther$searchContracts) {
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

extension UtilityExtension$Query$SearchContracts on Query$SearchContracts {
  CopyWith$Query$SearchContracts<Query$SearchContracts> get copyWith =>
      CopyWith$Query$SearchContracts(this, (i) => i);
}

abstract class CopyWith$Query$SearchContracts<TRes> {
  factory CopyWith$Query$SearchContracts(
    Query$SearchContracts instance,
    TRes Function(Query$SearchContracts) then,
  ) = _CopyWithImpl$Query$SearchContracts;

  factory CopyWith$Query$SearchContracts.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchContracts;

  TRes call({
    Query$SearchContracts$searchContracts? searchContracts,
    String? $__typename,
  });
  CopyWith$Query$SearchContracts$searchContracts<TRes> get searchContracts;
}

class _CopyWithImpl$Query$SearchContracts<TRes>
    implements CopyWith$Query$SearchContracts<TRes> {
  _CopyWithImpl$Query$SearchContracts(this._instance, this._then);

  final Query$SearchContracts _instance;

  final TRes Function(Query$SearchContracts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchContracts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchContracts(
      searchContracts: searchContracts == _undefined
          ? _instance.searchContracts
          : (searchContracts as Query$SearchContracts$searchContracts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchContracts$searchContracts<TRes> get searchContracts {
    final local$searchContracts = _instance.searchContracts;
    return local$searchContracts == null
        ? CopyWith$Query$SearchContracts$searchContracts.stub(_then(_instance))
        : CopyWith$Query$SearchContracts$searchContracts(
            local$searchContracts,
            (e) => call(searchContracts: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchContracts<TRes>
    implements CopyWith$Query$SearchContracts<TRes> {
  _CopyWithStubImpl$Query$SearchContracts(this._res);

  TRes _res;

  call({
    Query$SearchContracts$searchContracts? searchContracts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchContracts$searchContracts<TRes> get searchContracts =>
      CopyWith$Query$SearchContracts$searchContracts.stub(_res);
}

const documentNodeQuerySearchContracts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchContracts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchContractsInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchContracts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
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
                        name: NameNode(value: 'customerReference'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'internalReference'),
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

class Query$SearchContracts$searchContracts {
  Query$SearchContracts$searchContracts({
    this.nodes,
    this.$__typename = 'SearchContractsConnection',
  });

  factory Query$SearchContracts$searchContracts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchContracts$searchContracts(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchContracts$searchContracts$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchContracts$searchContracts$nodes>? nodes;

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
    if (other is! Query$SearchContracts$searchContracts ||
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

extension UtilityExtension$Query$SearchContracts$searchContracts
    on Query$SearchContracts$searchContracts {
  CopyWith$Query$SearchContracts$searchContracts<
    Query$SearchContracts$searchContracts
  >
  get copyWith =>
      CopyWith$Query$SearchContracts$searchContracts(this, (i) => i);
}

abstract class CopyWith$Query$SearchContracts$searchContracts<TRes> {
  factory CopyWith$Query$SearchContracts$searchContracts(
    Query$SearchContracts$searchContracts instance,
    TRes Function(Query$SearchContracts$searchContracts) then,
  ) = _CopyWithImpl$Query$SearchContracts$searchContracts;

  factory CopyWith$Query$SearchContracts$searchContracts.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchContracts$searchContracts;

  TRes call({
    List<Query$SearchContracts$searchContracts$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$SearchContracts$searchContracts$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchContracts$searchContracts$nodes<
          Query$SearchContracts$searchContracts$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchContracts$searchContracts<TRes>
    implements CopyWith$Query$SearchContracts$searchContracts<TRes> {
  _CopyWithImpl$Query$SearchContracts$searchContracts(
    this._instance,
    this._then,
  );

  final Query$SearchContracts$searchContracts _instance;

  final TRes Function(Query$SearchContracts$searchContracts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchContracts$searchContracts(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Query$SearchContracts$searchContracts$nodes>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$SearchContracts$searchContracts$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchContracts$searchContracts$nodes<
          Query$SearchContracts$searchContracts$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$SearchContracts$searchContracts$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchContracts$searchContracts<TRes>
    implements CopyWith$Query$SearchContracts$searchContracts<TRes> {
  _CopyWithStubImpl$Query$SearchContracts$searchContracts(this._res);

  TRes _res;

  call({
    List<Query$SearchContracts$searchContracts$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SearchContracts$searchContracts$nodes {
  Query$SearchContracts$searchContracts$nodes({
    required this.id,
    required this.customerReference,
    required this.internalReference,
    this.$__typename = 'Contract',
  });

  factory Query$SearchContracts$searchContracts$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$customerReference = json['customerReference'];
    final l$internalReference = json['internalReference'];
    final l$$__typename = json['__typename'];
    return Query$SearchContracts$searchContracts$nodes(
      id: (l$id as String),
      customerReference: (l$customerReference as String),
      internalReference: (l$internalReference as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String customerReference;

  final String internalReference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$customerReference = customerReference;
    _resultData['customerReference'] = l$customerReference;
    final l$internalReference = internalReference;
    _resultData['internalReference'] = l$internalReference;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$customerReference = customerReference;
    final l$internalReference = internalReference;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$customerReference,
      l$internalReference,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchContracts$searchContracts$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$customerReference = customerReference;
    final lOther$customerReference = other.customerReference;
    if (l$customerReference != lOther$customerReference) {
      return false;
    }
    final l$internalReference = internalReference;
    final lOther$internalReference = other.internalReference;
    if (l$internalReference != lOther$internalReference) {
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

extension UtilityExtension$Query$SearchContracts$searchContracts$nodes
    on Query$SearchContracts$searchContracts$nodes {
  CopyWith$Query$SearchContracts$searchContracts$nodes<
    Query$SearchContracts$searchContracts$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchContracts$searchContracts$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchContracts$searchContracts$nodes<TRes> {
  factory CopyWith$Query$SearchContracts$searchContracts$nodes(
    Query$SearchContracts$searchContracts$nodes instance,
    TRes Function(Query$SearchContracts$searchContracts$nodes) then,
  ) = _CopyWithImpl$Query$SearchContracts$searchContracts$nodes;

  factory CopyWith$Query$SearchContracts$searchContracts$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchContracts$searchContracts$nodes;

  TRes call({
    String? id,
    String? customerReference,
    String? internalReference,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchContracts$searchContracts$nodes<TRes>
    implements CopyWith$Query$SearchContracts$searchContracts$nodes<TRes> {
  _CopyWithImpl$Query$SearchContracts$searchContracts$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchContracts$searchContracts$nodes _instance;

  final TRes Function(Query$SearchContracts$searchContracts$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? customerReference = _undefined,
    Object? internalReference = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchContracts$searchContracts$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      customerReference:
          customerReference == _undefined || customerReference == null
          ? _instance.customerReference
          : (customerReference as String),
      internalReference:
          internalReference == _undefined || internalReference == null
          ? _instance.internalReference
          : (internalReference as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchContracts$searchContracts$nodes<TRes>
    implements CopyWith$Query$SearchContracts$searchContracts$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchContracts$searchContracts$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? customerReference,
    String? internalReference,
    String? $__typename,
  }) => _res;
}
