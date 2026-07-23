import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import '../../fragments/yard_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetYards {
  factory Variables$Query$GetYards({
    required String query,
    required List<String> territoryCodes,
  }) => Variables$Query$GetYards._({
    r'query': query,
    r'territoryCodes': territoryCodes,
  });

  Variables$Query$GetYards._(this._$data);

  factory Variables$Query$GetYards.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    final l$territoryCodes = data['territoryCodes'];
    result$data['territoryCodes'] = (l$territoryCodes as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Variables$Query$GetYards._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  List<String> get territoryCodes => (_$data['territoryCodes'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    final l$territoryCodes = territoryCodes;
    result$data['territoryCodes'] = l$territoryCodes.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Query$GetYards<Variables$Query$GetYards> get copyWith =>
      CopyWith$Variables$Query$GetYards(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetYards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$territoryCodes = territoryCodes;
    final lOther$territoryCodes = other.territoryCodes;
    if (l$territoryCodes.length != lOther$territoryCodes.length) {
      return false;
    }
    for (int i = 0; i < l$territoryCodes.length; i++) {
      final l$territoryCodes$entry = l$territoryCodes[i];
      final lOther$territoryCodes$entry = lOther$territoryCodes[i];
      if (l$territoryCodes$entry != lOther$territoryCodes$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$territoryCodes = territoryCodes;
    return Object.hashAll([
      l$query,
      Object.hashAll(l$territoryCodes.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetYards<TRes> {
  factory CopyWith$Variables$Query$GetYards(
    Variables$Query$GetYards instance,
    TRes Function(Variables$Query$GetYards) then,
  ) = _CopyWithImpl$Variables$Query$GetYards;

  factory CopyWith$Variables$Query$GetYards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetYards;

  TRes call({String? query, List<String>? territoryCodes});
}

class _CopyWithImpl$Variables$Query$GetYards<TRes>
    implements CopyWith$Variables$Query$GetYards<TRes> {
  _CopyWithImpl$Variables$Query$GetYards(this._instance, this._then);

  final Variables$Query$GetYards _instance;

  final TRes Function(Variables$Query$GetYards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? territoryCodes = _undefined,
  }) => _then(
    Variables$Query$GetYards._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
      if (territoryCodes != _undefined && territoryCodes != null)
        'territoryCodes': (territoryCodes as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetYards<TRes>
    implements CopyWith$Variables$Query$GetYards<TRes> {
  _CopyWithStubImpl$Variables$Query$GetYards(this._res);

  TRes _res;

  call({String? query, List<String>? territoryCodes}) => _res;
}

class Query$GetYards {
  Query$GetYards({this.yards, this.$__typename = 'Query'});

  factory Query$GetYards.fromJson(Map<String, dynamic> json) {
    final l$yards = json['yards'];
    final l$$__typename = json['__typename'];
    return Query$GetYards(
      yards: l$yards == null
          ? null
          : Query$GetYards$yards.fromJson((l$yards as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetYards$yards? yards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yards = yards;
    _resultData['yards'] = l$yards?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yards = yards;
    final l$$__typename = $__typename;
    return Object.hashAll([l$yards, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYards || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yards = yards;
    final lOther$yards = other.yards;
    if (l$yards != lOther$yards) {
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

extension UtilityExtension$Query$GetYards on Query$GetYards {
  CopyWith$Query$GetYards<Query$GetYards> get copyWith =>
      CopyWith$Query$GetYards(this, (i) => i);
}

abstract class CopyWith$Query$GetYards<TRes> {
  factory CopyWith$Query$GetYards(
    Query$GetYards instance,
    TRes Function(Query$GetYards) then,
  ) = _CopyWithImpl$Query$GetYards;

  factory CopyWith$Query$GetYards.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYards;

  TRes call({Query$GetYards$yards? yards, String? $__typename});
  CopyWith$Query$GetYards$yards<TRes> get yards;
}

class _CopyWithImpl$Query$GetYards<TRes>
    implements CopyWith$Query$GetYards<TRes> {
  _CopyWithImpl$Query$GetYards(this._instance, this._then);

  final Query$GetYards _instance;

  final TRes Function(Query$GetYards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? yards = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetYards(
          yards: yards == _undefined
              ? _instance.yards
              : (yards as Query$GetYards$yards?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetYards$yards<TRes> get yards {
    final local$yards = _instance.yards;
    return local$yards == null
        ? CopyWith$Query$GetYards$yards.stub(_then(_instance))
        : CopyWith$Query$GetYards$yards(local$yards, (e) => call(yards: e));
  }
}

class _CopyWithStubImpl$Query$GetYards<TRes>
    implements CopyWith$Query$GetYards<TRes> {
  _CopyWithStubImpl$Query$GetYards(this._res);

  TRes _res;

  call({Query$GetYards$yards? yards, String? $__typename}) => _res;

  CopyWith$Query$GetYards$yards<TRes> get yards =>
      CopyWith$Query$GetYards$yards.stub(_res);
}

const documentNodeQueryGetYards = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetYards'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'territoryCodes')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'yards'),
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
                      name: NameNode(value: 'territoryCodes'),
                      value: VariableNode(
                        name: NameNode(value: 'territoryCodes'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'YardFragment'),
                              directives: [],
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
    fragmentDefinitionYardFragment,
    fragmentDefinitionCompanyFragment,
    fragmentDefinitionTerritoryFragment,
  ],
);

class Query$GetYards$yards {
  Query$GetYards$yards({this.edges, this.$__typename = 'YardsConnection'});

  factory Query$GetYards$yards.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetYards$yards(
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) => Query$GetYards$yards$edges.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetYards$yards$edges>? edges;

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
    if (other is! Query$GetYards$yards || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetYards$yards on Query$GetYards$yards {
  CopyWith$Query$GetYards$yards<Query$GetYards$yards> get copyWith =>
      CopyWith$Query$GetYards$yards(this, (i) => i);
}

abstract class CopyWith$Query$GetYards$yards<TRes> {
  factory CopyWith$Query$GetYards$yards(
    Query$GetYards$yards instance,
    TRes Function(Query$GetYards$yards) then,
  ) = _CopyWithImpl$Query$GetYards$yards;

  factory CopyWith$Query$GetYards$yards.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYards$yards;

  TRes call({List<Query$GetYards$yards$edges>? edges, String? $__typename});
  TRes edges(
    Iterable<Query$GetYards$yards$edges>? Function(
      Iterable<
        CopyWith$Query$GetYards$yards$edges<Query$GetYards$yards$edges>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetYards$yards<TRes>
    implements CopyWith$Query$GetYards$yards<TRes> {
  _CopyWithImpl$Query$GetYards$yards(this._instance, this._then);

  final Query$GetYards$yards _instance;

  final TRes Function(Query$GetYards$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetYards$yards(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$GetYards$yards$edges>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes edges(
    Iterable<Query$GetYards$yards$edges>? Function(
      Iterable<
        CopyWith$Query$GetYards$yards$edges<Query$GetYards$yards$edges>
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) => CopyWith$Query$GetYards$yards$edges(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetYards$yards<TRes>
    implements CopyWith$Query$GetYards$yards<TRes> {
  _CopyWithStubImpl$Query$GetYards$yards(this._res);

  TRes _res;

  call({List<Query$GetYards$yards$edges>? edges, String? $__typename}) => _res;

  edges(_fn) => _res;
}

class Query$GetYards$yards$edges {
  Query$GetYards$yards$edges({
    required this.node,
    this.$__typename = 'YardsEdge',
  });

  factory Query$GetYards$yards$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetYards$yards$edges(
      node: Fragment$YardFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$YardFragment node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYards$yards$edges ||
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

extension UtilityExtension$Query$GetYards$yards$edges
    on Query$GetYards$yards$edges {
  CopyWith$Query$GetYards$yards$edges<Query$GetYards$yards$edges>
  get copyWith => CopyWith$Query$GetYards$yards$edges(this, (i) => i);
}

abstract class CopyWith$Query$GetYards$yards$edges<TRes> {
  factory CopyWith$Query$GetYards$yards$edges(
    Query$GetYards$yards$edges instance,
    TRes Function(Query$GetYards$yards$edges) then,
  ) = _CopyWithImpl$Query$GetYards$yards$edges;

  factory CopyWith$Query$GetYards$yards$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYards$yards$edges;

  TRes call({Fragment$YardFragment? node, String? $__typename});
  CopyWith$Fragment$YardFragment<TRes> get node;
}

class _CopyWithImpl$Query$GetYards$yards$edges<TRes>
    implements CopyWith$Query$GetYards$yards$edges<TRes> {
  _CopyWithImpl$Query$GetYards$yards$edges(this._instance, this._then);

  final Query$GetYards$yards$edges _instance;

  final TRes Function(Query$GetYards$yards$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetYards$yards$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Fragment$YardFragment),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$YardFragment<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$YardFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetYards$yards$edges<TRes>
    implements CopyWith$Query$GetYards$yards$edges<TRes> {
  _CopyWithStubImpl$Query$GetYards$yards$edges(this._res);

  TRes _res;

  call({Fragment$YardFragment? node, String? $__typename}) => _res;

  CopyWith$Fragment$YardFragment<TRes> get node =>
      CopyWith$Fragment$YardFragment.stub(_res);
}
