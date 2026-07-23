import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetLocations {
  factory Variables$Query$GetLocations({
    Input$InventoryLocationsInput? input,
  }) => Variables$Query$GetLocations._({if (input != null) r'input': input});

  Variables$Query$GetLocations._(this._$data);

  factory Variables$Query$GetLocations.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$InventoryLocationsInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables$Query$GetLocations._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$InventoryLocationsInput? get input =>
      (_$data['input'] as Input$InventoryLocationsInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetLocations<Variables$Query$GetLocations>
  get copyWith => CopyWith$Variables$Query$GetLocations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetLocations<TRes> {
  factory CopyWith$Variables$Query$GetLocations(
    Variables$Query$GetLocations instance,
    TRes Function(Variables$Query$GetLocations) then,
  ) = _CopyWithImpl$Variables$Query$GetLocations;

  factory CopyWith$Variables$Query$GetLocations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetLocations;

  TRes call({Input$InventoryLocationsInput? input});
}

class _CopyWithImpl$Variables$Query$GetLocations<TRes>
    implements CopyWith$Variables$Query$GetLocations<TRes> {
  _CopyWithImpl$Variables$Query$GetLocations(this._instance, this._then);

  final Variables$Query$GetLocations _instance;

  final TRes Function(Variables$Query$GetLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetLocations._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input$InventoryLocationsInput?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetLocations<TRes>
    implements CopyWith$Variables$Query$GetLocations<TRes> {
  _CopyWithStubImpl$Variables$Query$GetLocations(this._res);

  TRes _res;

  call({Input$InventoryLocationsInput? input}) => _res;
}

class Query$GetLocations {
  Query$GetLocations({this.inventoryLocations, this.$__typename = 'Query'});

  factory Query$GetLocations.fromJson(Map<String, dynamic> json) {
    final l$inventoryLocations = json['inventoryLocations'];
    final l$$__typename = json['__typename'];
    return Query$GetLocations(
      inventoryLocations: l$inventoryLocations == null
          ? null
          : Query$GetLocations$inventoryLocations.fromJson(
              (l$inventoryLocations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetLocations$inventoryLocations? inventoryLocations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inventoryLocations = inventoryLocations;
    _resultData['inventoryLocations'] = l$inventoryLocations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inventoryLocations = inventoryLocations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$inventoryLocations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLocations || runtimeType != other.runtimeType) {
      return false;
    }
    final l$inventoryLocations = inventoryLocations;
    final lOther$inventoryLocations = other.inventoryLocations;
    if (l$inventoryLocations != lOther$inventoryLocations) {
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

extension UtilityExtension$Query$GetLocations on Query$GetLocations {
  CopyWith$Query$GetLocations<Query$GetLocations> get copyWith =>
      CopyWith$Query$GetLocations(this, (i) => i);
}

abstract class CopyWith$Query$GetLocations<TRes> {
  factory CopyWith$Query$GetLocations(
    Query$GetLocations instance,
    TRes Function(Query$GetLocations) then,
  ) = _CopyWithImpl$Query$GetLocations;

  factory CopyWith$Query$GetLocations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLocations;

  TRes call({
    Query$GetLocations$inventoryLocations? inventoryLocations,
    String? $__typename,
  });
  CopyWith$Query$GetLocations$inventoryLocations<TRes> get inventoryLocations;
}

class _CopyWithImpl$Query$GetLocations<TRes>
    implements CopyWith$Query$GetLocations<TRes> {
  _CopyWithImpl$Query$GetLocations(this._instance, this._then);

  final Query$GetLocations _instance;

  final TRes Function(Query$GetLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inventoryLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLocations(
      inventoryLocations: inventoryLocations == _undefined
          ? _instance.inventoryLocations
          : (inventoryLocations as Query$GetLocations$inventoryLocations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetLocations$inventoryLocations<TRes> get inventoryLocations {
    final local$inventoryLocations = _instance.inventoryLocations;
    return local$inventoryLocations == null
        ? CopyWith$Query$GetLocations$inventoryLocations.stub(_then(_instance))
        : CopyWith$Query$GetLocations$inventoryLocations(
            local$inventoryLocations,
            (e) => call(inventoryLocations: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetLocations<TRes>
    implements CopyWith$Query$GetLocations<TRes> {
  _CopyWithStubImpl$Query$GetLocations(this._res);

  TRes _res;

  call({
    Query$GetLocations$inventoryLocations? inventoryLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetLocations$inventoryLocations<TRes> get inventoryLocations =>
      CopyWith$Query$GetLocations$inventoryLocations.stub(_res);
}

const documentNodeQueryGetLocations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetLocations'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'InventoryLocationsInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'inventoryLocations'),
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
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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

class Query$GetLocations$inventoryLocations {
  Query$GetLocations$inventoryLocations({
    this.nodes,
    this.$__typename = 'InventoryLocationsConnection',
  });

  factory Query$GetLocations$inventoryLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetLocations$inventoryLocations(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetLocations$inventoryLocations$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetLocations$inventoryLocations$nodes>? nodes;

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
    if (other is! Query$GetLocations$inventoryLocations ||
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

extension UtilityExtension$Query$GetLocations$inventoryLocations
    on Query$GetLocations$inventoryLocations {
  CopyWith$Query$GetLocations$inventoryLocations<
    Query$GetLocations$inventoryLocations
  >
  get copyWith =>
      CopyWith$Query$GetLocations$inventoryLocations(this, (i) => i);
}

abstract class CopyWith$Query$GetLocations$inventoryLocations<TRes> {
  factory CopyWith$Query$GetLocations$inventoryLocations(
    Query$GetLocations$inventoryLocations instance,
    TRes Function(Query$GetLocations$inventoryLocations) then,
  ) = _CopyWithImpl$Query$GetLocations$inventoryLocations;

  factory CopyWith$Query$GetLocations$inventoryLocations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLocations$inventoryLocations;

  TRes call({
    List<Query$GetLocations$inventoryLocations$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$GetLocations$inventoryLocations$nodes>? Function(
      Iterable<
        CopyWith$Query$GetLocations$inventoryLocations$nodes<
          Query$GetLocations$inventoryLocations$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetLocations$inventoryLocations<TRes>
    implements CopyWith$Query$GetLocations$inventoryLocations<TRes> {
  _CopyWithImpl$Query$GetLocations$inventoryLocations(
    this._instance,
    this._then,
  );

  final Query$GetLocations$inventoryLocations _instance;

  final TRes Function(Query$GetLocations$inventoryLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetLocations$inventoryLocations(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Query$GetLocations$inventoryLocations$nodes>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$GetLocations$inventoryLocations$nodes>? Function(
      Iterable<
        CopyWith$Query$GetLocations$inventoryLocations$nodes<
          Query$GetLocations$inventoryLocations$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$GetLocations$inventoryLocations$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetLocations$inventoryLocations<TRes>
    implements CopyWith$Query$GetLocations$inventoryLocations<TRes> {
  _CopyWithStubImpl$Query$GetLocations$inventoryLocations(this._res);

  TRes _res;

  call({
    List<Query$GetLocations$inventoryLocations$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$GetLocations$inventoryLocations$nodes {
  Query$GetLocations$inventoryLocations$nodes({
    required this.code,
    required this.description,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$GetLocations$inventoryLocations$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetLocations$inventoryLocations$nodes(
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLocations$inventoryLocations$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$GetLocations$inventoryLocations$nodes
    on Query$GetLocations$inventoryLocations$nodes {
  CopyWith$Query$GetLocations$inventoryLocations$nodes<
    Query$GetLocations$inventoryLocations$nodes
  >
  get copyWith =>
      CopyWith$Query$GetLocations$inventoryLocations$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetLocations$inventoryLocations$nodes<TRes> {
  factory CopyWith$Query$GetLocations$inventoryLocations$nodes(
    Query$GetLocations$inventoryLocations$nodes instance,
    TRes Function(Query$GetLocations$inventoryLocations$nodes) then,
  ) = _CopyWithImpl$Query$GetLocations$inventoryLocations$nodes;

  factory CopyWith$Query$GetLocations$inventoryLocations$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLocations$inventoryLocations$nodes;

  TRes call({String? code, String? description, String? $__typename});
}

class _CopyWithImpl$Query$GetLocations$inventoryLocations$nodes<TRes>
    implements CopyWith$Query$GetLocations$inventoryLocations$nodes<TRes> {
  _CopyWithImpl$Query$GetLocations$inventoryLocations$nodes(
    this._instance,
    this._then,
  );

  final Query$GetLocations$inventoryLocations$nodes _instance;

  final TRes Function(Query$GetLocations$inventoryLocations$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLocations$inventoryLocations$nodes(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetLocations$inventoryLocations$nodes<TRes>
    implements CopyWith$Query$GetLocations$inventoryLocations$nodes<TRes> {
  _CopyWithStubImpl$Query$GetLocations$inventoryLocations$nodes(this._res);

  TRes _res;

  call({String? code, String? description, String? $__typename}) => _res;
}
