import 'package:gql/ast.dart';

class Variables$Query$GetTerritories {
  factory Variables$Query$GetTerritories({
    required String query,
    required int first,
  }) => Variables$Query$GetTerritories._({r'query': query, r'first': first});

  Variables$Query$GetTerritories._(this._$data);

  factory Variables$Query$GetTerritories.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    return Variables$Query$GetTerritories._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  int get first => (_$data['first'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    final l$first = first;
    result$data['first'] = l$first;
    return result$data;
  }

  CopyWith$Variables$Query$GetTerritories<Variables$Query$GetTerritories>
  get copyWith => CopyWith$Variables$Query$GetTerritories(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTerritories ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$first = first;
    return Object.hashAll([l$query, l$first]);
  }
}

abstract class CopyWith$Variables$Query$GetTerritories<TRes> {
  factory CopyWith$Variables$Query$GetTerritories(
    Variables$Query$GetTerritories instance,
    TRes Function(Variables$Query$GetTerritories) then,
  ) = _CopyWithImpl$Variables$Query$GetTerritories;

  factory CopyWith$Variables$Query$GetTerritories.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTerritories;

  TRes call({String? query, int? first});
}

class _CopyWithImpl$Variables$Query$GetTerritories<TRes>
    implements CopyWith$Variables$Query$GetTerritories<TRes> {
  _CopyWithImpl$Variables$Query$GetTerritories(this._instance, this._then);

  final Variables$Query$GetTerritories _instance;

  final TRes Function(Variables$Query$GetTerritories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined, Object? first = _undefined}) => _then(
    Variables$Query$GetTerritories._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
      if (first != _undefined && first != null) 'first': (first as int),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetTerritories<TRes>
    implements CopyWith$Variables$Query$GetTerritories<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTerritories(this._res);

  TRes _res;

  call({String? query, int? first}) => _res;
}

class Query$GetTerritories {
  Query$GetTerritories({this.territories, this.$__typename = 'Query'});

  factory Query$GetTerritories.fromJson(Map<String, dynamic> json) {
    final l$territories = json['territories'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritories(
      territories: l$territories == null
          ? null
          : Query$GetTerritories$territories.fromJson(
              (l$territories as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTerritories$territories? territories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$territories = territories;
    _resultData['territories'] = l$territories?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$territories = territories;
    final l$$__typename = $__typename;
    return Object.hashAll([l$territories, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTerritories || runtimeType != other.runtimeType) {
      return false;
    }
    final l$territories = territories;
    final lOther$territories = other.territories;
    if (l$territories != lOther$territories) {
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

extension UtilityExtension$Query$GetTerritories on Query$GetTerritories {
  CopyWith$Query$GetTerritories<Query$GetTerritories> get copyWith =>
      CopyWith$Query$GetTerritories(this, (i) => i);
}

abstract class CopyWith$Query$GetTerritories<TRes> {
  factory CopyWith$Query$GetTerritories(
    Query$GetTerritories instance,
    TRes Function(Query$GetTerritories) then,
  ) = _CopyWithImpl$Query$GetTerritories;

  factory CopyWith$Query$GetTerritories.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTerritories;

  TRes call({
    Query$GetTerritories$territories? territories,
    String? $__typename,
  });
  CopyWith$Query$GetTerritories$territories<TRes> get territories;
}

class _CopyWithImpl$Query$GetTerritories<TRes>
    implements CopyWith$Query$GetTerritories<TRes> {
  _CopyWithImpl$Query$GetTerritories(this._instance, this._then);

  final Query$GetTerritories _instance;

  final TRes Function(Query$GetTerritories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territories = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTerritories(
      territories: territories == _undefined
          ? _instance.territories
          : (territories as Query$GetTerritories$territories?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTerritories$territories<TRes> get territories {
    final local$territories = _instance.territories;
    return local$territories == null
        ? CopyWith$Query$GetTerritories$territories.stub(_then(_instance))
        : CopyWith$Query$GetTerritories$territories(
            local$territories,
            (e) => call(territories: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTerritories<TRes>
    implements CopyWith$Query$GetTerritories<TRes> {
  _CopyWithStubImpl$Query$GetTerritories(this._res);

  TRes _res;

  call({Query$GetTerritories$territories? territories, String? $__typename}) =>
      _res;

  CopyWith$Query$GetTerritories$territories<TRes> get territories =>
      CopyWith$Query$GetTerritories$territories.stub(_res);
}

const documentNodeQueryGetTerritories = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetTerritories'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'territories'),
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
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
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
                        name: NameNode(value: 'name'),
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

class Query$GetTerritories$territories {
  Query$GetTerritories$territories({
    this.nodes,
    this.$__typename = 'TerritoriesConnection',
  });

  factory Query$GetTerritories$territories.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritories$territories(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetTerritories$territories$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTerritories$territories$nodes>? nodes;

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
    if (other is! Query$GetTerritories$territories ||
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

extension UtilityExtension$Query$GetTerritories$territories
    on Query$GetTerritories$territories {
  CopyWith$Query$GetTerritories$territories<Query$GetTerritories$territories>
  get copyWith => CopyWith$Query$GetTerritories$territories(this, (i) => i);
}

abstract class CopyWith$Query$GetTerritories$territories<TRes> {
  factory CopyWith$Query$GetTerritories$territories(
    Query$GetTerritories$territories instance,
    TRes Function(Query$GetTerritories$territories) then,
  ) = _CopyWithImpl$Query$GetTerritories$territories;

  factory CopyWith$Query$GetTerritories$territories.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTerritories$territories;

  TRes call({
    List<Query$GetTerritories$territories$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$GetTerritories$territories$nodes>? Function(
      Iterable<
        CopyWith$Query$GetTerritories$territories$nodes<
          Query$GetTerritories$territories$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTerritories$territories<TRes>
    implements CopyWith$Query$GetTerritories$territories<TRes> {
  _CopyWithImpl$Query$GetTerritories$territories(this._instance, this._then);

  final Query$GetTerritories$territories _instance;

  final TRes Function(Query$GetTerritories$territories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTerritories$territories(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Query$GetTerritories$territories$nodes>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$GetTerritories$territories$nodes>? Function(
      Iterable<
        CopyWith$Query$GetTerritories$territories$nodes<
          Query$GetTerritories$territories$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetTerritories$territories$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetTerritories$territories<TRes>
    implements CopyWith$Query$GetTerritories$territories<TRes> {
  _CopyWithStubImpl$Query$GetTerritories$territories(this._res);

  TRes _res;

  call({
    List<Query$GetTerritories$territories$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$GetTerritories$territories$nodes {
  Query$GetTerritories$territories$nodes({
    required this.id,
    required this.name,
    required this.code,
    this.$__typename = 'Territory',
  });

  factory Query$GetTerritories$territories$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritories$territories$nodes(
      id: (l$id as String),
      name: (l$name as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTerritories$territories$nodes ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTerritories$territories$nodes
    on Query$GetTerritories$territories$nodes {
  CopyWith$Query$GetTerritories$territories$nodes<
    Query$GetTerritories$territories$nodes
  >
  get copyWith =>
      CopyWith$Query$GetTerritories$territories$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetTerritories$territories$nodes<TRes> {
  factory CopyWith$Query$GetTerritories$territories$nodes(
    Query$GetTerritories$territories$nodes instance,
    TRes Function(Query$GetTerritories$territories$nodes) then,
  ) = _CopyWithImpl$Query$GetTerritories$territories$nodes;

  factory CopyWith$Query$GetTerritories$territories$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTerritories$territories$nodes;

  TRes call({String? id, String? name, String? code, String? $__typename});
}

class _CopyWithImpl$Query$GetTerritories$territories$nodes<TRes>
    implements CopyWith$Query$GetTerritories$territories$nodes<TRes> {
  _CopyWithImpl$Query$GetTerritories$territories$nodes(
    this._instance,
    this._then,
  );

  final Query$GetTerritories$territories$nodes _instance;

  final TRes Function(Query$GetTerritories$territories$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTerritories$territories$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTerritories$territories$nodes<TRes>
    implements CopyWith$Query$GetTerritories$territories$nodes<TRes> {
  _CopyWithStubImpl$Query$GetTerritories$territories$nodes(this._res);

  TRes _res;

  call({String? id, String? name, String? code, String? $__typename}) => _res;
}
