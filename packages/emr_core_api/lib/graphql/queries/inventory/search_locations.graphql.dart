import '../../fragments/inventory/location_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetInventoryLocations {
  factory Variables$Query$GetInventoryLocations({
    required String yardCode,
    String? productCode,
    required String pattern,
  }) => Variables$Query$GetInventoryLocations._({
    r'yardCode': yardCode,
    if (productCode != null) r'productCode': productCode,
    r'pattern': pattern,
  });

  Variables$Query$GetInventoryLocations._(this._$data);

  factory Variables$Query$GetInventoryLocations.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    if (data.containsKey('productCode')) {
      final l$productCode = data['productCode'];
      result$data['productCode'] = (l$productCode as String?);
    }
    final l$pattern = data['pattern'];
    result$data['pattern'] = (l$pattern as String);
    return Variables$Query$GetInventoryLocations._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  String? get productCode => (_$data['productCode'] as String?);

  String get pattern => (_$data['pattern'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    if (_$data.containsKey('productCode')) {
      final l$productCode = productCode;
      result$data['productCode'] = l$productCode;
    }
    final l$pattern = pattern;
    result$data['pattern'] = l$pattern;
    return result$data;
  }

  CopyWith$Variables$Query$GetInventoryLocations<
    Variables$Query$GetInventoryLocations
  >
  get copyWith =>
      CopyWith$Variables$Query$GetInventoryLocations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetInventoryLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (_$data.containsKey('productCode') !=
        other._$data.containsKey('productCode')) {
      return false;
    }
    if (l$productCode != lOther$productCode) {
      return false;
    }
    final l$pattern = pattern;
    final lOther$pattern = other.pattern;
    if (l$pattern != lOther$pattern) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$productCode = productCode;
    final l$pattern = pattern;
    return Object.hashAll([
      l$yardCode,
      _$data.containsKey('productCode') ? l$productCode : const {},
      l$pattern,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetInventoryLocations<TRes> {
  factory CopyWith$Variables$Query$GetInventoryLocations(
    Variables$Query$GetInventoryLocations instance,
    TRes Function(Variables$Query$GetInventoryLocations) then,
  ) = _CopyWithImpl$Variables$Query$GetInventoryLocations;

  factory CopyWith$Variables$Query$GetInventoryLocations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetInventoryLocations;

  TRes call({String? yardCode, String? productCode, String? pattern});
}

class _CopyWithImpl$Variables$Query$GetInventoryLocations<TRes>
    implements CopyWith$Variables$Query$GetInventoryLocations<TRes> {
  _CopyWithImpl$Variables$Query$GetInventoryLocations(
    this._instance,
    this._then,
  );

  final Variables$Query$GetInventoryLocations _instance;

  final TRes Function(Variables$Query$GetInventoryLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? productCode = _undefined,
    Object? pattern = _undefined,
  }) => _then(
    Variables$Query$GetInventoryLocations._({
      ..._instance._$data,
      if (yardCode != _undefined && yardCode != null)
        'yardCode': (yardCode as String),
      if (productCode != _undefined) 'productCode': (productCode as String?),
      if (pattern != _undefined && pattern != null)
        'pattern': (pattern as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetInventoryLocations<TRes>
    implements CopyWith$Variables$Query$GetInventoryLocations<TRes> {
  _CopyWithStubImpl$Variables$Query$GetInventoryLocations(this._res);

  TRes _res;

  call({String? yardCode, String? productCode, String? pattern}) => _res;
}

class Query$GetInventoryLocations {
  Query$GetInventoryLocations({
    this.searchInventoryLocations,
    this.$__typename = 'Query',
  });

  factory Query$GetInventoryLocations.fromJson(Map<String, dynamic> json) {
    final l$searchInventoryLocations = json['searchInventoryLocations'];
    final l$$__typename = json['__typename'];
    return Query$GetInventoryLocations(
      searchInventoryLocations: l$searchInventoryLocations == null
          ? null
          : Query$GetInventoryLocations$searchInventoryLocations.fromJson(
              (l$searchInventoryLocations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetInventoryLocations$searchInventoryLocations?
  searchInventoryLocations;

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
    if (other is! Query$GetInventoryLocations ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetInventoryLocations
    on Query$GetInventoryLocations {
  CopyWith$Query$GetInventoryLocations<Query$GetInventoryLocations>
  get copyWith => CopyWith$Query$GetInventoryLocations(this, (i) => i);
}

abstract class CopyWith$Query$GetInventoryLocations<TRes> {
  factory CopyWith$Query$GetInventoryLocations(
    Query$GetInventoryLocations instance,
    TRes Function(Query$GetInventoryLocations) then,
  ) = _CopyWithImpl$Query$GetInventoryLocations;

  factory CopyWith$Query$GetInventoryLocations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetInventoryLocations;

  TRes call({
    Query$GetInventoryLocations$searchInventoryLocations?
    searchInventoryLocations,
    String? $__typename,
  });
  CopyWith$Query$GetInventoryLocations$searchInventoryLocations<TRes>
  get searchInventoryLocations;
}

class _CopyWithImpl$Query$GetInventoryLocations<TRes>
    implements CopyWith$Query$GetInventoryLocations<TRes> {
  _CopyWithImpl$Query$GetInventoryLocations(this._instance, this._then);

  final Query$GetInventoryLocations _instance;

  final TRes Function(Query$GetInventoryLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchInventoryLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetInventoryLocations(
      searchInventoryLocations: searchInventoryLocations == _undefined
          ? _instance.searchInventoryLocations
          : (searchInventoryLocations
                as Query$GetInventoryLocations$searchInventoryLocations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetInventoryLocations$searchInventoryLocations<TRes>
  get searchInventoryLocations {
    final local$searchInventoryLocations = _instance.searchInventoryLocations;
    return local$searchInventoryLocations == null
        ? CopyWith$Query$GetInventoryLocations$searchInventoryLocations.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetInventoryLocations$searchInventoryLocations(
            local$searchInventoryLocations,
            (e) => call(searchInventoryLocations: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetInventoryLocations<TRes>
    implements CopyWith$Query$GetInventoryLocations<TRes> {
  _CopyWithStubImpl$Query$GetInventoryLocations(this._res);

  TRes _res;

  call({
    Query$GetInventoryLocations$searchInventoryLocations?
    searchInventoryLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetInventoryLocations$searchInventoryLocations<TRes>
  get searchInventoryLocations =>
      CopyWith$Query$GetInventoryLocations$searchInventoryLocations.stub(_res);
}

const documentNodeQueryGetInventoryLocations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetInventoryLocations'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productCode')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'pattern')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '500'),
              ),
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'yardCode'),
                      value: VariableNode(name: NameNode(value: 'yardCode')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'query'),
                      value: VariableNode(name: NameNode(value: 'pattern')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'productCode'),
                      value: VariableNode(name: NameNode(value: 'productCode')),
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'LocationFragment'),
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
    fragmentDefinitionLocationFragment,
  ],
);

class Query$GetInventoryLocations$searchInventoryLocations {
  Query$GetInventoryLocations$searchInventoryLocations({
    this.nodes,
    this.$__typename = 'SearchInventoryLocationsConnection',
  });

  factory Query$GetInventoryLocations$searchInventoryLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetInventoryLocations$searchInventoryLocations(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Fragment$LocationFragment.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$LocationFragment>? nodes;

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
    if (other is! Query$GetInventoryLocations$searchInventoryLocations ||
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

extension UtilityExtension$Query$GetInventoryLocations$searchInventoryLocations
    on Query$GetInventoryLocations$searchInventoryLocations {
  CopyWith$Query$GetInventoryLocations$searchInventoryLocations<
    Query$GetInventoryLocations$searchInventoryLocations
  >
  get copyWith => CopyWith$Query$GetInventoryLocations$searchInventoryLocations(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetInventoryLocations$searchInventoryLocations<
  TRes
> {
  factory CopyWith$Query$GetInventoryLocations$searchInventoryLocations(
    Query$GetInventoryLocations$searchInventoryLocations instance,
    TRes Function(Query$GetInventoryLocations$searchInventoryLocations) then,
  ) = _CopyWithImpl$Query$GetInventoryLocations$searchInventoryLocations;

  factory CopyWith$Query$GetInventoryLocations$searchInventoryLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetInventoryLocations$searchInventoryLocations;

  TRes call({List<Fragment$LocationFragment>? nodes, String? $__typename});
  TRes nodes(
    Iterable<Fragment$LocationFragment>? Function(
      Iterable<CopyWith$Fragment$LocationFragment<Fragment$LocationFragment>>?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetInventoryLocations$searchInventoryLocations<TRes>
    implements
        CopyWith$Query$GetInventoryLocations$searchInventoryLocations<TRes> {
  _CopyWithImpl$Query$GetInventoryLocations$searchInventoryLocations(
    this._instance,
    this._then,
  );

  final Query$GetInventoryLocations$searchInventoryLocations _instance;

  final TRes Function(Query$GetInventoryLocations$searchInventoryLocations)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetInventoryLocations$searchInventoryLocations(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Fragment$LocationFragment>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Fragment$LocationFragment>? Function(
      Iterable<CopyWith$Fragment$LocationFragment<Fragment$LocationFragment>>?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Fragment$LocationFragment(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetInventoryLocations$searchInventoryLocations<
  TRes
>
    implements
        CopyWith$Query$GetInventoryLocations$searchInventoryLocations<TRes> {
  _CopyWithStubImpl$Query$GetInventoryLocations$searchInventoryLocations(
    this._res,
  );

  TRes _res;

  call({List<Fragment$LocationFragment>? nodes, String? $__typename}) => _res;

  nodes(_fn) => _res;
}
