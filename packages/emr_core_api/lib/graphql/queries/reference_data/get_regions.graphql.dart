import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetRegions {
  factory Variables$Query$GetRegions({
    required Input$RegionSearchInput input,
  }) => Variables$Query$GetRegions._({r'input': input});

  Variables$Query$GetRegions._(this._$data);

  factory Variables$Query$GetRegions.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$RegionSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$GetRegions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RegionSearchInput get input =>
      (_$data['input'] as Input$RegionSearchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetRegions<Variables$Query$GetRegions>
  get copyWith => CopyWith$Variables$Query$GetRegions(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetRegions ||
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

abstract class CopyWith$Variables$Query$GetRegions<TRes> {
  factory CopyWith$Variables$Query$GetRegions(
    Variables$Query$GetRegions instance,
    TRes Function(Variables$Query$GetRegions) then,
  ) = _CopyWithImpl$Variables$Query$GetRegions;

  factory CopyWith$Variables$Query$GetRegions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetRegions;

  TRes call({Input$RegionSearchInput? input});
}

class _CopyWithImpl$Variables$Query$GetRegions<TRes>
    implements CopyWith$Variables$Query$GetRegions<TRes> {
  _CopyWithImpl$Variables$Query$GetRegions(this._instance, this._then);

  final Variables$Query$GetRegions _instance;

  final TRes Function(Variables$Query$GetRegions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetRegions._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$RegionSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetRegions<TRes>
    implements CopyWith$Variables$Query$GetRegions<TRes> {
  _CopyWithStubImpl$Variables$Query$GetRegions(this._res);

  TRes _res;

  call({Input$RegionSearchInput? input}) => _res;
}

class Query$GetRegions {
  Query$GetRegions({this.regions, this.$__typename = 'Query'});

  factory Query$GetRegions.fromJson(Map<String, dynamic> json) {
    final l$regions = json['regions'];
    final l$$__typename = json['__typename'];
    return Query$GetRegions(
      regions: l$regions == null
          ? null
          : Query$GetRegions$regions.fromJson(
              (l$regions as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRegions$regions? regions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$regions = regions;
    _resultData['regions'] = l$regions?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$regions = regions;
    final l$$__typename = $__typename;
    return Object.hashAll([l$regions, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRegions || runtimeType != other.runtimeType) {
      return false;
    }
    final l$regions = regions;
    final lOther$regions = other.regions;
    if (l$regions != lOther$regions) {
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

extension UtilityExtension$Query$GetRegions on Query$GetRegions {
  CopyWith$Query$GetRegions<Query$GetRegions> get copyWith =>
      CopyWith$Query$GetRegions(this, (i) => i);
}

abstract class CopyWith$Query$GetRegions<TRes> {
  factory CopyWith$Query$GetRegions(
    Query$GetRegions instance,
    TRes Function(Query$GetRegions) then,
  ) = _CopyWithImpl$Query$GetRegions;

  factory CopyWith$Query$GetRegions.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRegions;

  TRes call({Query$GetRegions$regions? regions, String? $__typename});
  CopyWith$Query$GetRegions$regions<TRes> get regions;
}

class _CopyWithImpl$Query$GetRegions<TRes>
    implements CopyWith$Query$GetRegions<TRes> {
  _CopyWithImpl$Query$GetRegions(this._instance, this._then);

  final Query$GetRegions _instance;

  final TRes Function(Query$GetRegions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? regions = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetRegions(
          regions: regions == _undefined
              ? _instance.regions
              : (regions as Query$GetRegions$regions?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetRegions$regions<TRes> get regions {
    final local$regions = _instance.regions;
    return local$regions == null
        ? CopyWith$Query$GetRegions$regions.stub(_then(_instance))
        : CopyWith$Query$GetRegions$regions(
            local$regions,
            (e) => call(regions: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetRegions<TRes>
    implements CopyWith$Query$GetRegions<TRes> {
  _CopyWithStubImpl$Query$GetRegions(this._res);

  TRes _res;

  call({Query$GetRegions$regions? regions, String? $__typename}) => _res;

  CopyWith$Query$GetRegions$regions<TRes> get regions =>
      CopyWith$Query$GetRegions$regions.stub(_res);
}

const documentNodeQueryGetRegions = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetRegions'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RegionSearchInput'),
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
            name: NameNode(value: 'regions'),
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
                              name: NameNode(value: 'parentRegionId'),
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

class Query$GetRegions$regions {
  Query$GetRegions$regions({
    this.edges,
    this.$__typename = 'RegionsConnection',
  });

  factory Query$GetRegions$regions.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetRegions$regions(
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) => Query$GetRegions$regions$edges.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetRegions$regions$edges>? edges;

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
    if (other is! Query$GetRegions$regions ||
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

extension UtilityExtension$Query$GetRegions$regions
    on Query$GetRegions$regions {
  CopyWith$Query$GetRegions$regions<Query$GetRegions$regions> get copyWith =>
      CopyWith$Query$GetRegions$regions(this, (i) => i);
}

abstract class CopyWith$Query$GetRegions$regions<TRes> {
  factory CopyWith$Query$GetRegions$regions(
    Query$GetRegions$regions instance,
    TRes Function(Query$GetRegions$regions) then,
  ) = _CopyWithImpl$Query$GetRegions$regions;

  factory CopyWith$Query$GetRegions$regions.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRegions$regions;

  TRes call({List<Query$GetRegions$regions$edges>? edges, String? $__typename});
  TRes edges(
    Iterable<Query$GetRegions$regions$edges>? Function(
      Iterable<
        CopyWith$Query$GetRegions$regions$edges<Query$GetRegions$regions$edges>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetRegions$regions<TRes>
    implements CopyWith$Query$GetRegions$regions<TRes> {
  _CopyWithImpl$Query$GetRegions$regions(this._instance, this._then);

  final Query$GetRegions$regions _instance;

  final TRes Function(Query$GetRegions$regions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? edges = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetRegions$regions(
          edges: edges == _undefined
              ? _instance.edges
              : (edges as List<Query$GetRegions$regions$edges>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes edges(
    Iterable<Query$GetRegions$regions$edges>? Function(
      Iterable<
        CopyWith$Query$GetRegions$regions$edges<Query$GetRegions$regions$edges>
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) => CopyWith$Query$GetRegions$regions$edges(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetRegions$regions<TRes>
    implements CopyWith$Query$GetRegions$regions<TRes> {
  _CopyWithStubImpl$Query$GetRegions$regions(this._res);

  TRes _res;

  call({List<Query$GetRegions$regions$edges>? edges, String? $__typename}) =>
      _res;

  edges(_fn) => _res;
}

class Query$GetRegions$regions$edges {
  Query$GetRegions$regions$edges({
    required this.node,
    this.$__typename = 'RegionsEdge',
  });

  factory Query$GetRegions$regions$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetRegions$regions$edges(
      node: Query$GetRegions$regions$edges$node.fromJson(
        (l$node as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRegions$regions$edges$node node;

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
    if (other is! Query$GetRegions$regions$edges ||
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

extension UtilityExtension$Query$GetRegions$regions$edges
    on Query$GetRegions$regions$edges {
  CopyWith$Query$GetRegions$regions$edges<Query$GetRegions$regions$edges>
  get copyWith => CopyWith$Query$GetRegions$regions$edges(this, (i) => i);
}

abstract class CopyWith$Query$GetRegions$regions$edges<TRes> {
  factory CopyWith$Query$GetRegions$regions$edges(
    Query$GetRegions$regions$edges instance,
    TRes Function(Query$GetRegions$regions$edges) then,
  ) = _CopyWithImpl$Query$GetRegions$regions$edges;

  factory CopyWith$Query$GetRegions$regions$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRegions$regions$edges;

  TRes call({Query$GetRegions$regions$edges$node? node, String? $__typename});
  CopyWith$Query$GetRegions$regions$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetRegions$regions$edges<TRes>
    implements CopyWith$Query$GetRegions$regions$edges<TRes> {
  _CopyWithImpl$Query$GetRegions$regions$edges(this._instance, this._then);

  final Query$GetRegions$regions$edges _instance;

  final TRes Function(Query$GetRegions$regions$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetRegions$regions$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Query$GetRegions$regions$edges$node),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetRegions$regions$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$GetRegions$regions$edges$node(
      local$node,
      (e) => call(node: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetRegions$regions$edges<TRes>
    implements CopyWith$Query$GetRegions$regions$edges<TRes> {
  _CopyWithStubImpl$Query$GetRegions$regions$edges(this._res);

  TRes _res;

  call({Query$GetRegions$regions$edges$node? node, String? $__typename}) =>
      _res;

  CopyWith$Query$GetRegions$regions$edges$node<TRes> get node =>
      CopyWith$Query$GetRegions$regions$edges$node.stub(_res);
}

class Query$GetRegions$regions$edges$node {
  Query$GetRegions$regions$edges$node({
    required this.id,
    required this.name,
    this.parentRegionId,
    this.$__typename = 'Region',
  });

  factory Query$GetRegions$regions$edges$node.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$parentRegionId = json['parentRegionId'];
    final l$$__typename = json['__typename'];
    return Query$GetRegions$regions$edges$node(
      id: (l$id as String),
      name: (l$name as String),
      parentRegionId: (l$parentRegionId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? parentRegionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$parentRegionId = parentRegionId;
    _resultData['parentRegionId'] = l$parentRegionId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$parentRegionId = parentRegionId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$parentRegionId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRegions$regions$edges$node ||
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
    final l$parentRegionId = parentRegionId;
    final lOther$parentRegionId = other.parentRegionId;
    if (l$parentRegionId != lOther$parentRegionId) {
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

extension UtilityExtension$Query$GetRegions$regions$edges$node
    on Query$GetRegions$regions$edges$node {
  CopyWith$Query$GetRegions$regions$edges$node<
    Query$GetRegions$regions$edges$node
  >
  get copyWith => CopyWith$Query$GetRegions$regions$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$GetRegions$regions$edges$node<TRes> {
  factory CopyWith$Query$GetRegions$regions$edges$node(
    Query$GetRegions$regions$edges$node instance,
    TRes Function(Query$GetRegions$regions$edges$node) then,
  ) = _CopyWithImpl$Query$GetRegions$regions$edges$node;

  factory CopyWith$Query$GetRegions$regions$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRegions$regions$edges$node;

  TRes call({
    String? id,
    String? name,
    String? parentRegionId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRegions$regions$edges$node<TRes>
    implements CopyWith$Query$GetRegions$regions$edges$node<TRes> {
  _CopyWithImpl$Query$GetRegions$regions$edges$node(this._instance, this._then);

  final Query$GetRegions$regions$edges$node _instance;

  final TRes Function(Query$GetRegions$regions$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? parentRegionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetRegions$regions$edges$node(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      parentRegionId: parentRegionId == _undefined
          ? _instance.parentRegionId
          : (parentRegionId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetRegions$regions$edges$node<TRes>
    implements CopyWith$Query$GetRegions$regions$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetRegions$regions$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? parentRegionId,
    String? $__typename,
  }) => _res;
}
