import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Locations {
  factory Variables$Query$Locations({
    required Input$InventoryLocationsInput input,
    int? first,
    List<Input$InventoryLocationSortInput>? order,
  }) => Variables$Query$Locations._({
    r'input': input,
    if (first != null) r'first': first,
    if (order != null) r'order': order,
  });

  Variables$Query$Locations._(this._$data);

  factory Variables$Query$Locations.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$InventoryLocationsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$InventoryLocationSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$Locations._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$InventoryLocationsInput get input =>
      (_$data['input'] as Input$InventoryLocationsInput);

  int? get first => (_$data['first'] as int?);

  List<Input$InventoryLocationSortInput>? get order =>
      (_$data['order'] as List<Input$InventoryLocationSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Locations<Variables$Query$Locations> get copyWith =>
      CopyWith$Variables$Query$Locations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Locations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != null && lOther$order != null) {
      if (l$order.length != lOther$order.length) {
        return false;
      }
      for (int i = 0; i < l$order.length; i++) {
        final l$order$entry = l$order[i];
        final lOther$order$entry = lOther$order[i];
        if (l$order$entry != lOther$order$entry) {
          return false;
        }
      }
    } else if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$first = first;
    final l$order = order;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Locations<TRes> {
  factory CopyWith$Variables$Query$Locations(
    Variables$Query$Locations instance,
    TRes Function(Variables$Query$Locations) then,
  ) = _CopyWithImpl$Variables$Query$Locations;

  factory CopyWith$Variables$Query$Locations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Locations;

  TRes call({
    Input$InventoryLocationsInput? input,
    int? first,
    List<Input$InventoryLocationSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$Locations<TRes>
    implements CopyWith$Variables$Query$Locations<TRes> {
  _CopyWithImpl$Variables$Query$Locations(this._instance, this._then);

  final Variables$Query$Locations _instance;

  final TRes Function(Variables$Query$Locations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$Locations._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$InventoryLocationsInput),
      if (first != _undefined) 'first': (first as int?),
      if (order != _undefined)
        'order': (order as List<Input$InventoryLocationSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$Locations<TRes>
    implements CopyWith$Variables$Query$Locations<TRes> {
  _CopyWithStubImpl$Variables$Query$Locations(this._res);

  TRes _res;

  call({
    Input$InventoryLocationsInput? input,
    int? first,
    List<Input$InventoryLocationSortInput>? order,
  }) => _res;
}

class Query$Locations {
  Query$Locations({this.inventoryLocations, this.$__typename = 'Query'});

  factory Query$Locations.fromJson(Map<String, dynamic> json) {
    final l$inventoryLocations = json['inventoryLocations'];
    final l$$__typename = json['__typename'];
    return Query$Locations(
      inventoryLocations: l$inventoryLocations == null
          ? null
          : Query$Locations$inventoryLocations.fromJson(
              (l$inventoryLocations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Locations$inventoryLocations? inventoryLocations;

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
    if (other is! Query$Locations || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Locations on Query$Locations {
  CopyWith$Query$Locations<Query$Locations> get copyWith =>
      CopyWith$Query$Locations(this, (i) => i);
}

abstract class CopyWith$Query$Locations<TRes> {
  factory CopyWith$Query$Locations(
    Query$Locations instance,
    TRes Function(Query$Locations) then,
  ) = _CopyWithImpl$Query$Locations;

  factory CopyWith$Query$Locations.stub(TRes res) =
      _CopyWithStubImpl$Query$Locations;

  TRes call({
    Query$Locations$inventoryLocations? inventoryLocations,
    String? $__typename,
  });
  CopyWith$Query$Locations$inventoryLocations<TRes> get inventoryLocations;
}

class _CopyWithImpl$Query$Locations<TRes>
    implements CopyWith$Query$Locations<TRes> {
  _CopyWithImpl$Query$Locations(this._instance, this._then);

  final Query$Locations _instance;

  final TRes Function(Query$Locations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inventoryLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Locations(
      inventoryLocations: inventoryLocations == _undefined
          ? _instance.inventoryLocations
          : (inventoryLocations as Query$Locations$inventoryLocations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Locations$inventoryLocations<TRes> get inventoryLocations {
    final local$inventoryLocations = _instance.inventoryLocations;
    return local$inventoryLocations == null
        ? CopyWith$Query$Locations$inventoryLocations.stub(_then(_instance))
        : CopyWith$Query$Locations$inventoryLocations(
            local$inventoryLocations,
            (e) => call(inventoryLocations: e),
          );
  }
}

class _CopyWithStubImpl$Query$Locations<TRes>
    implements CopyWith$Query$Locations<TRes> {
  _CopyWithStubImpl$Query$Locations(this._res);

  TRes _res;

  call({
    Query$Locations$inventoryLocations? inventoryLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Locations$inventoryLocations<TRes> get inventoryLocations =>
      CopyWith$Query$Locations$inventoryLocations.stub(_res);
}

const documentNodeQueryLocations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Locations'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'InventoryLocationsInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'InventoryLocationSortInput'),
              isNonNull: true,
            ),
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
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: NullValueNode(),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: NullValueNode(),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: NullValueNode(),
              ),
              ArgumentNode(
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
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
                        name: NameNode(value: 'mediaAssets'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'url'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'created'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'at'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'user'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'name'),
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

class Query$Locations$inventoryLocations {
  Query$Locations$inventoryLocations({
    required this.totalCount,
    this.nodes,
    this.$__typename = 'InventoryLocationsConnection',
  });

  factory Query$Locations$inventoryLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Locations$inventoryLocations(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$Locations$inventoryLocations$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$Locations$inventoryLocations$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Locations$inventoryLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$Locations$inventoryLocations
    on Query$Locations$inventoryLocations {
  CopyWith$Query$Locations$inventoryLocations<
    Query$Locations$inventoryLocations
  >
  get copyWith => CopyWith$Query$Locations$inventoryLocations(this, (i) => i);
}

abstract class CopyWith$Query$Locations$inventoryLocations<TRes> {
  factory CopyWith$Query$Locations$inventoryLocations(
    Query$Locations$inventoryLocations instance,
    TRes Function(Query$Locations$inventoryLocations) then,
  ) = _CopyWithImpl$Query$Locations$inventoryLocations;

  factory CopyWith$Query$Locations$inventoryLocations.stub(TRes res) =
      _CopyWithStubImpl$Query$Locations$inventoryLocations;

  TRes call({
    int? totalCount,
    List<Query$Locations$inventoryLocations$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$Locations$inventoryLocations$nodes>? Function(
      Iterable<
        CopyWith$Query$Locations$inventoryLocations$nodes<
          Query$Locations$inventoryLocations$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$Locations$inventoryLocations<TRes>
    implements CopyWith$Query$Locations$inventoryLocations<TRes> {
  _CopyWithImpl$Query$Locations$inventoryLocations(this._instance, this._then);

  final Query$Locations$inventoryLocations _instance;

  final TRes Function(Query$Locations$inventoryLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Locations$inventoryLocations(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$Locations$inventoryLocations$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$Locations$inventoryLocations$nodes>? Function(
      Iterable<
        CopyWith$Query$Locations$inventoryLocations$nodes<
          Query$Locations$inventoryLocations$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$Locations$inventoryLocations$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$Locations$inventoryLocations<TRes>
    implements CopyWith$Query$Locations$inventoryLocations<TRes> {
  _CopyWithStubImpl$Query$Locations$inventoryLocations(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$Locations$inventoryLocations$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$Locations$inventoryLocations$nodes {
  Query$Locations$inventoryLocations$nodes({
    required this.description,
    required this.id,
    required this.code,
    required this.mediaAssets,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$Locations$inventoryLocations$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$description = json['description'];
    final l$id = json['id'];
    final l$code = json['code'];
    final l$mediaAssets = json['mediaAssets'];
    final l$$__typename = json['__typename'];
    return Query$Locations$inventoryLocations$nodes(
      description: (l$description as String),
      id: (l$id as String),
      code: (l$code as String),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$Locations$inventoryLocations$nodes$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String id;

  final String code;

  final List<Query$Locations$inventoryLocations$nodes$mediaAssets> mediaAssets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$id = id;
    final l$code = code;
    final l$mediaAssets = mediaAssets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$id,
      l$code,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Locations$inventoryLocations$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Locations$inventoryLocations$nodes
    on Query$Locations$inventoryLocations$nodes {
  CopyWith$Query$Locations$inventoryLocations$nodes<
    Query$Locations$inventoryLocations$nodes
  >
  get copyWith =>
      CopyWith$Query$Locations$inventoryLocations$nodes(this, (i) => i);
}

abstract class CopyWith$Query$Locations$inventoryLocations$nodes<TRes> {
  factory CopyWith$Query$Locations$inventoryLocations$nodes(
    Query$Locations$inventoryLocations$nodes instance,
    TRes Function(Query$Locations$inventoryLocations$nodes) then,
  ) = _CopyWithImpl$Query$Locations$inventoryLocations$nodes;

  factory CopyWith$Query$Locations$inventoryLocations$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes;

  TRes call({
    String? description,
    String? id,
    String? code,
    List<Query$Locations$inventoryLocations$nodes$mediaAssets>? mediaAssets,
    String? $__typename,
  });
  TRes mediaAssets(
    Iterable<Query$Locations$inventoryLocations$nodes$mediaAssets> Function(
      Iterable<
        CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets<
          Query$Locations$inventoryLocations$nodes$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$Locations$inventoryLocations$nodes<TRes>
    implements CopyWith$Query$Locations$inventoryLocations$nodes<TRes> {
  _CopyWithImpl$Query$Locations$inventoryLocations$nodes(
    this._instance,
    this._then,
  );

  final Query$Locations$inventoryLocations$nodes _instance;

  final TRes Function(Query$Locations$inventoryLocations$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? id = _undefined,
    Object? code = _undefined,
    Object? mediaAssets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Locations$inventoryLocations$nodes(
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<Query$Locations$inventoryLocations$nodes$mediaAssets>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes mediaAssets(
    Iterable<Query$Locations$inventoryLocations$nodes$mediaAssets> Function(
      Iterable<
        CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets<
          Query$Locations$inventoryLocations$nodes$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) => CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes<TRes>
    implements CopyWith$Query$Locations$inventoryLocations$nodes<TRes> {
  _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes(this._res);

  TRes _res;

  call({
    String? description,
    String? id,
    String? code,
    List<Query$Locations$inventoryLocations$nodes$mediaAssets>? mediaAssets,
    String? $__typename,
  }) => _res;

  mediaAssets(_fn) => _res;
}

class Query$Locations$inventoryLocations$nodes$mediaAssets {
  Query$Locations$inventoryLocations$nodes$mediaAssets({
    required this.url,
    required this.created,
    this.$__typename = 'MediaAsset',
  });

  factory Query$Locations$inventoryLocations$nodes$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$Locations$inventoryLocations$nodes$mediaAssets(
      url: (l$url as String),
      created:
          Query$Locations$inventoryLocations$nodes$mediaAssets$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final Query$Locations$inventoryLocations$nodes$mediaAssets$created created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Locations$inventoryLocations$nodes$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$Locations$inventoryLocations$nodes$mediaAssets
    on Query$Locations$inventoryLocations$nodes$mediaAssets {
  CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets<
    Query$Locations$inventoryLocations$nodes$mediaAssets
  >
  get copyWith => CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets<
  TRes
> {
  factory CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets(
    Query$Locations$inventoryLocations$nodes$mediaAssets instance,
    TRes Function(Query$Locations$inventoryLocations$nodes$mediaAssets) then,
  ) = _CopyWithImpl$Query$Locations$inventoryLocations$nodes$mediaAssets;

  factory CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes$mediaAssets;

  TRes call({
    String? url,
    Query$Locations$inventoryLocations$nodes$mediaAssets$created? created,
    String? $__typename,
  });
  CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created<TRes>
  get created;
}

class _CopyWithImpl$Query$Locations$inventoryLocations$nodes$mediaAssets<TRes>
    implements
        CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets<TRes> {
  _CopyWithImpl$Query$Locations$inventoryLocations$nodes$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$Locations$inventoryLocations$nodes$mediaAssets _instance;

  final TRes Function(Query$Locations$inventoryLocations$nodes$mediaAssets)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Locations$inventoryLocations$nodes$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$Locations$inventoryLocations$nodes$mediaAssets$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets<TRes> {
  _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes$mediaAssets(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    Query$Locations$inventoryLocations$nodes$mediaAssets$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created<TRes>
  get created =>
      CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created.stub(
        _res,
      );
}

class Query$Locations$inventoryLocations$nodes$mediaAssets$created {
  Query$Locations$inventoryLocations$nodes$mediaAssets$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Query$Locations$inventoryLocations$nodes$mediaAssets$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Locations$inventoryLocations$nodes$mediaAssets$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Query$Locations$inventoryLocations$nodes$mediaAssets$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Query$Locations$inventoryLocations$nodes$mediaAssets$created$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Locations$inventoryLocations$nodes$mediaAssets$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$Locations$inventoryLocations$nodes$mediaAssets$created
    on Query$Locations$inventoryLocations$nodes$mediaAssets$created {
  CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created<
    Query$Locations$inventoryLocations$nodes$mediaAssets$created
  >
  get copyWith =>
      CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created<
  TRes
> {
  factory CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created(
    Query$Locations$inventoryLocations$nodes$mediaAssets$created instance,
    TRes Function(Query$Locations$inventoryLocations$nodes$mediaAssets$created)
    then,
  ) = _CopyWithImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created;

  factory CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created;

  TRes call({
    DateTime? at,
    Query$Locations$inventoryLocations$nodes$mediaAssets$created$user? user,
    String? $__typename,
  });
  CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created<
  TRes
>
    implements
        CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created<
          TRes
        > {
  _CopyWithImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created(
    this._instance,
    this._then,
  );

  final Query$Locations$inventoryLocations$nodes$mediaAssets$created _instance;

  final TRes Function(
    Query$Locations$inventoryLocations$nodes$mediaAssets$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Locations$inventoryLocations$nodes$mediaAssets$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Query$Locations$inventoryLocations$nodes$mediaAssets$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created<
  TRes
>
    implements
        CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created<
          TRes
        > {
  _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Query$Locations$inventoryLocations$nodes$mediaAssets$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user<
    TRes
  >
  get user =>
      CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user.stub(
        _res,
      );
}

class Query$Locations$inventoryLocations$nodes$mediaAssets$created$user {
  Query$Locations$inventoryLocations$nodes$mediaAssets$created$user({
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Query$Locations$inventoryLocations$nodes$mediaAssets$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Locations$inventoryLocations$nodes$mediaAssets$created$user(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Locations$inventoryLocations$nodes$mediaAssets$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user
    on Query$Locations$inventoryLocations$nodes$mediaAssets$created$user {
  CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user<
    Query$Locations$inventoryLocations$nodes$mediaAssets$created$user
  >
  get copyWith =>
      CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user<
  TRes
> {
  factory CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user(
    Query$Locations$inventoryLocations$nodes$mediaAssets$created$user instance,
    TRes Function(
      Query$Locations$inventoryLocations$nodes$mediaAssets$created$user,
    )
    then,
  ) = _CopyWithImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user;

  factory CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user<
  TRes
>
    implements
        CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user<
          TRes
        > {
  _CopyWithImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user(
    this._instance,
    this._then,
  );

  final Query$Locations$inventoryLocations$nodes$mediaAssets$created$user
  _instance;

  final TRes Function(
    Query$Locations$inventoryLocations$nodes$mediaAssets$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$Locations$inventoryLocations$nodes$mediaAssets$created$user(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user<
  TRes
>
    implements
        CopyWith$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user<
          TRes
        > {
  _CopyWithStubImpl$Query$Locations$inventoryLocations$nodes$mediaAssets$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
