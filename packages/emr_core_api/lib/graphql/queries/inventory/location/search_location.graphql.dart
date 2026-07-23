import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$serachLocation {
  factory Variables$Query$serachLocation({
    required Input$SearchInventoryLocationsInput input,
  }) => Variables$Query$serachLocation._({r'input': input});

  Variables$Query$serachLocation._(this._$data);

  factory Variables$Query$serachLocation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchInventoryLocationsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$serachLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchInventoryLocationsInput get input =>
      (_$data['input'] as Input$SearchInventoryLocationsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$serachLocation<Variables$Query$serachLocation>
  get copyWith => CopyWith$Variables$Query$serachLocation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$serachLocation ||
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

abstract class CopyWith$Variables$Query$serachLocation<TRes> {
  factory CopyWith$Variables$Query$serachLocation(
    Variables$Query$serachLocation instance,
    TRes Function(Variables$Query$serachLocation) then,
  ) = _CopyWithImpl$Variables$Query$serachLocation;

  factory CopyWith$Variables$Query$serachLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$serachLocation;

  TRes call({Input$SearchInventoryLocationsInput? input});
}

class _CopyWithImpl$Variables$Query$serachLocation<TRes>
    implements CopyWith$Variables$Query$serachLocation<TRes> {
  _CopyWithImpl$Variables$Query$serachLocation(this._instance, this._then);

  final Variables$Query$serachLocation _instance;

  final TRes Function(Variables$Query$serachLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$serachLocation._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchInventoryLocationsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$serachLocation<TRes>
    implements CopyWith$Variables$Query$serachLocation<TRes> {
  _CopyWithStubImpl$Variables$Query$serachLocation(this._res);

  TRes _res;

  call({Input$SearchInventoryLocationsInput? input}) => _res;
}

class Query$serachLocation {
  Query$serachLocation({
    this.searchInventoryLocations,
    this.$__typename = 'Query',
  });

  factory Query$serachLocation.fromJson(Map<String, dynamic> json) {
    final l$searchInventoryLocations = json['searchInventoryLocations'];
    final l$$__typename = json['__typename'];
    return Query$serachLocation(
      searchInventoryLocations: l$searchInventoryLocations == null
          ? null
          : Query$serachLocation$searchInventoryLocations.fromJson(
              (l$searchInventoryLocations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$serachLocation$searchInventoryLocations? searchInventoryLocations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchInventoryLocations = searchInventoryLocations;
    _resultData['searchInventoryLocations'] = l$searchInventoryLocations
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchInventoryLocations = searchInventoryLocations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchInventoryLocations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$serachLocation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchInventoryLocations = searchInventoryLocations;
    final lOther$searchInventoryLocations = other.searchInventoryLocations;
    if (l$searchInventoryLocations != lOther$searchInventoryLocations) {
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

extension UtilityExtension$Query$serachLocation on Query$serachLocation {
  CopyWith$Query$serachLocation<Query$serachLocation> get copyWith =>
      CopyWith$Query$serachLocation(this, (i) => i);
}

abstract class CopyWith$Query$serachLocation<TRes> {
  factory CopyWith$Query$serachLocation(
    Query$serachLocation instance,
    TRes Function(Query$serachLocation) then,
  ) = _CopyWithImpl$Query$serachLocation;

  factory CopyWith$Query$serachLocation.stub(TRes res) =
      _CopyWithStubImpl$Query$serachLocation;

  TRes call({
    Query$serachLocation$searchInventoryLocations? searchInventoryLocations,
    String? $__typename,
  });
  CopyWith$Query$serachLocation$searchInventoryLocations<TRes>
  get searchInventoryLocations;
}

class _CopyWithImpl$Query$serachLocation<TRes>
    implements CopyWith$Query$serachLocation<TRes> {
  _CopyWithImpl$Query$serachLocation(this._instance, this._then);

  final Query$serachLocation _instance;

  final TRes Function(Query$serachLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchInventoryLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$serachLocation(
      searchInventoryLocations: searchInventoryLocations == _undefined
          ? _instance.searchInventoryLocations
          : (searchInventoryLocations
                as Query$serachLocation$searchInventoryLocations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$serachLocation$searchInventoryLocations<TRes>
  get searchInventoryLocations {
    final local$searchInventoryLocations = _instance.searchInventoryLocations;
    return local$searchInventoryLocations == null
        ? CopyWith$Query$serachLocation$searchInventoryLocations.stub(
            _then(_instance),
          )
        : CopyWith$Query$serachLocation$searchInventoryLocations(
            local$searchInventoryLocations,
            (e) => call(searchInventoryLocations: e),
          );
  }
}

class _CopyWithStubImpl$Query$serachLocation<TRes>
    implements CopyWith$Query$serachLocation<TRes> {
  _CopyWithStubImpl$Query$serachLocation(this._res);

  TRes _res;

  call({
    Query$serachLocation$searchInventoryLocations? searchInventoryLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$serachLocation$searchInventoryLocations<TRes>
  get searchInventoryLocations =>
      CopyWith$Query$serachLocation$searchInventoryLocations.stub(_res);
}

const documentNodeQueryserachLocation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'serachLocation'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchInventoryLocationsInput'),
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
            name: NameNode(value: 'searchInventoryLocations'),
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
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardId'),
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
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'active'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'what3Words'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'parentId'),
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

class Query$serachLocation$searchInventoryLocations {
  Query$serachLocation$searchInventoryLocations({
    this.nodes,
    this.$__typename = 'SearchInventoryLocationsConnection',
  });

  factory Query$serachLocation$searchInventoryLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$serachLocation$searchInventoryLocations(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$serachLocation$searchInventoryLocations$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$serachLocation$searchInventoryLocations$nodes>? nodes;

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
    if (other is! Query$serachLocation$searchInventoryLocations ||
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

extension UtilityExtension$Query$serachLocation$searchInventoryLocations
    on Query$serachLocation$searchInventoryLocations {
  CopyWith$Query$serachLocation$searchInventoryLocations<
    Query$serachLocation$searchInventoryLocations
  >
  get copyWith =>
      CopyWith$Query$serachLocation$searchInventoryLocations(this, (i) => i);
}

abstract class CopyWith$Query$serachLocation$searchInventoryLocations<TRes> {
  factory CopyWith$Query$serachLocation$searchInventoryLocations(
    Query$serachLocation$searchInventoryLocations instance,
    TRes Function(Query$serachLocation$searchInventoryLocations) then,
  ) = _CopyWithImpl$Query$serachLocation$searchInventoryLocations;

  factory CopyWith$Query$serachLocation$searchInventoryLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$serachLocation$searchInventoryLocations;

  TRes call({
    List<Query$serachLocation$searchInventoryLocations$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$serachLocation$searchInventoryLocations$nodes>? Function(
      Iterable<
        CopyWith$Query$serachLocation$searchInventoryLocations$nodes<
          Query$serachLocation$searchInventoryLocations$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$serachLocation$searchInventoryLocations<TRes>
    implements CopyWith$Query$serachLocation$searchInventoryLocations<TRes> {
  _CopyWithImpl$Query$serachLocation$searchInventoryLocations(
    this._instance,
    this._then,
  );

  final Query$serachLocation$searchInventoryLocations _instance;

  final TRes Function(Query$serachLocation$searchInventoryLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$serachLocation$searchInventoryLocations(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<Query$serachLocation$searchInventoryLocations$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$serachLocation$searchInventoryLocations$nodes>? Function(
      Iterable<
        CopyWith$Query$serachLocation$searchInventoryLocations$nodes<
          Query$serachLocation$searchInventoryLocations$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$serachLocation$searchInventoryLocations$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$serachLocation$searchInventoryLocations<TRes>
    implements CopyWith$Query$serachLocation$searchInventoryLocations<TRes> {
  _CopyWithStubImpl$Query$serachLocation$searchInventoryLocations(this._res);

  TRes _res;

  call({
    List<Query$serachLocation$searchInventoryLocations$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$serachLocation$searchInventoryLocations$nodes {
  Query$serachLocation$searchInventoryLocations$nodes({
    required this.description,
    required this.yardId,
    required this.id,
    required this.code,
    required this.active,
    this.what3Words,
    this.parentId,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$serachLocation$searchInventoryLocations$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$description = json['description'];
    final l$yardId = json['yardId'];
    final l$id = json['id'];
    final l$code = json['code'];
    final l$active = json['active'];
    final l$what3Words = json['what3Words'];
    final l$parentId = json['parentId'];
    final l$$__typename = json['__typename'];
    return Query$serachLocation$searchInventoryLocations$nodes(
      description: (l$description as String),
      yardId: (l$yardId as String),
      id: (l$id as String),
      code: (l$code as String),
      active: (l$active as bool),
      what3Words: (l$what3Words as String?),
      parentId: (l$parentId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String yardId;

  final String id;

  final String code;

  final bool active;

  final String? what3Words;

  final String? parentId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$what3Words = what3Words;
    _resultData['what3Words'] = l$what3Words;
    final l$parentId = parentId;
    _resultData['parentId'] = l$parentId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$yardId = yardId;
    final l$id = id;
    final l$code = code;
    final l$active = active;
    final l$what3Words = what3Words;
    final l$parentId = parentId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$yardId,
      l$id,
      l$code,
      l$active,
      l$what3Words,
      l$parentId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$serachLocation$searchInventoryLocations$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
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
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$what3Words = what3Words;
    final lOther$what3Words = other.what3Words;
    if (l$what3Words != lOther$what3Words) {
      return false;
    }
    final l$parentId = parentId;
    final lOther$parentId = other.parentId;
    if (l$parentId != lOther$parentId) {
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

extension UtilityExtension$Query$serachLocation$searchInventoryLocations$nodes
    on Query$serachLocation$searchInventoryLocations$nodes {
  CopyWith$Query$serachLocation$searchInventoryLocations$nodes<
    Query$serachLocation$searchInventoryLocations$nodes
  >
  get copyWith => CopyWith$Query$serachLocation$searchInventoryLocations$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$serachLocation$searchInventoryLocations$nodes<
  TRes
> {
  factory CopyWith$Query$serachLocation$searchInventoryLocations$nodes(
    Query$serachLocation$searchInventoryLocations$nodes instance,
    TRes Function(Query$serachLocation$searchInventoryLocations$nodes) then,
  ) = _CopyWithImpl$Query$serachLocation$searchInventoryLocations$nodes;

  factory CopyWith$Query$serachLocation$searchInventoryLocations$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$serachLocation$searchInventoryLocations$nodes;

  TRes call({
    String? description,
    String? yardId,
    String? id,
    String? code,
    bool? active,
    String? what3Words,
    String? parentId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$serachLocation$searchInventoryLocations$nodes<TRes>
    implements
        CopyWith$Query$serachLocation$searchInventoryLocations$nodes<TRes> {
  _CopyWithImpl$Query$serachLocation$searchInventoryLocations$nodes(
    this._instance,
    this._then,
  );

  final Query$serachLocation$searchInventoryLocations$nodes _instance;

  final TRes Function(Query$serachLocation$searchInventoryLocations$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? yardId = _undefined,
    Object? id = _undefined,
    Object? code = _undefined,
    Object? active = _undefined,
    Object? what3Words = _undefined,
    Object? parentId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$serachLocation$searchInventoryLocations$nodes(
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      what3Words: what3Words == _undefined
          ? _instance.what3Words
          : (what3Words as String?),
      parentId: parentId == _undefined
          ? _instance.parentId
          : (parentId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$serachLocation$searchInventoryLocations$nodes<
  TRes
>
    implements
        CopyWith$Query$serachLocation$searchInventoryLocations$nodes<TRes> {
  _CopyWithStubImpl$Query$serachLocation$searchInventoryLocations$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? description,
    String? yardId,
    String? id,
    String? code,
    bool? active,
    String? what3Words,
    String? parentId,
    String? $__typename,
  }) => _res;
}
