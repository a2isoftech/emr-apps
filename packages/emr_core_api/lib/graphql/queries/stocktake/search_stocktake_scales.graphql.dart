import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchStocktakeScales {
  factory Variables$Query$SearchStocktakeScales({
    required Input$SearchWeighbridgeProfilesInput input,
    required int first,
  }) => Variables$Query$SearchStocktakeScales._({
    r'input': input,
    r'first': first,
  });

  Variables$Query$SearchStocktakeScales._(this._$data);

  factory Variables$Query$SearchStocktakeScales.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchWeighbridgeProfilesInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    return Variables$Query$SearchStocktakeScales._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchWeighbridgeProfilesInput get input =>
      (_$data['input'] as Input$SearchWeighbridgeProfilesInput);

  int get first => (_$data['first'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    final l$first = first;
    result$data['first'] = l$first;
    return result$data;
  }

  CopyWith$Variables$Query$SearchStocktakeScales<
    Variables$Query$SearchStocktakeScales
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchStocktakeScales(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchStocktakeScales ||
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
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$first = first;
    return Object.hashAll([l$input, l$first]);
  }
}

abstract class CopyWith$Variables$Query$SearchStocktakeScales<TRes> {
  factory CopyWith$Variables$Query$SearchStocktakeScales(
    Variables$Query$SearchStocktakeScales instance,
    TRes Function(Variables$Query$SearchStocktakeScales) then,
  ) = _CopyWithImpl$Variables$Query$SearchStocktakeScales;

  factory CopyWith$Variables$Query$SearchStocktakeScales.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchStocktakeScales;

  TRes call({Input$SearchWeighbridgeProfilesInput? input, int? first});
}

class _CopyWithImpl$Variables$Query$SearchStocktakeScales<TRes>
    implements CopyWith$Variables$Query$SearchStocktakeScales<TRes> {
  _CopyWithImpl$Variables$Query$SearchStocktakeScales(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchStocktakeScales _instance;

  final TRes Function(Variables$Query$SearchStocktakeScales) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined, Object? first = _undefined}) => _then(
    Variables$Query$SearchStocktakeScales._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchWeighbridgeProfilesInput),
      if (first != _undefined && first != null) 'first': (first as int),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchStocktakeScales<TRes>
    implements CopyWith$Variables$Query$SearchStocktakeScales<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchStocktakeScales(this._res);

  TRes _res;

  call({Input$SearchWeighbridgeProfilesInput? input, int? first}) => _res;
}

class Query$SearchStocktakeScales {
  Query$SearchStocktakeScales({
    this.searchWeighbridgeProfiles,
    this.$__typename = 'Query',
  });

  factory Query$SearchStocktakeScales.fromJson(Map<String, dynamic> json) {
    final l$searchWeighbridgeProfiles = json['searchWeighbridgeProfiles'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeScales(
      searchWeighbridgeProfiles: l$searchWeighbridgeProfiles == null
          ? null
          : Query$SearchStocktakeScales$searchWeighbridgeProfiles.fromJson(
              (l$searchWeighbridgeProfiles as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStocktakeScales$searchWeighbridgeProfiles?
  searchWeighbridgeProfiles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchWeighbridgeProfiles = searchWeighbridgeProfiles;
    _resultData['searchWeighbridgeProfiles'] = l$searchWeighbridgeProfiles
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchWeighbridgeProfiles = searchWeighbridgeProfiles;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchWeighbridgeProfiles, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchStocktakeScales ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchWeighbridgeProfiles = searchWeighbridgeProfiles;
    final lOther$searchWeighbridgeProfiles = other.searchWeighbridgeProfiles;
    if (l$searchWeighbridgeProfiles != lOther$searchWeighbridgeProfiles) {
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

extension UtilityExtension$Query$SearchStocktakeScales
    on Query$SearchStocktakeScales {
  CopyWith$Query$SearchStocktakeScales<Query$SearchStocktakeScales>
  get copyWith => CopyWith$Query$SearchStocktakeScales(this, (i) => i);
}

abstract class CopyWith$Query$SearchStocktakeScales<TRes> {
  factory CopyWith$Query$SearchStocktakeScales(
    Query$SearchStocktakeScales instance,
    TRes Function(Query$SearchStocktakeScales) then,
  ) = _CopyWithImpl$Query$SearchStocktakeScales;

  factory CopyWith$Query$SearchStocktakeScales.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStocktakeScales;

  TRes call({
    Query$SearchStocktakeScales$searchWeighbridgeProfiles?
    searchWeighbridgeProfiles,
    String? $__typename,
  });
  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles<TRes>
  get searchWeighbridgeProfiles;
}

class _CopyWithImpl$Query$SearchStocktakeScales<TRes>
    implements CopyWith$Query$SearchStocktakeScales<TRes> {
  _CopyWithImpl$Query$SearchStocktakeScales(this._instance, this._then);

  final Query$SearchStocktakeScales _instance;

  final TRes Function(Query$SearchStocktakeScales) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchWeighbridgeProfiles = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeScales(
      searchWeighbridgeProfiles: searchWeighbridgeProfiles == _undefined
          ? _instance.searchWeighbridgeProfiles
          : (searchWeighbridgeProfiles
                as Query$SearchStocktakeScales$searchWeighbridgeProfiles?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles<TRes>
  get searchWeighbridgeProfiles {
    final local$searchWeighbridgeProfiles = _instance.searchWeighbridgeProfiles;
    return local$searchWeighbridgeProfiles == null
        ? CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles(
            local$searchWeighbridgeProfiles,
            (e) => call(searchWeighbridgeProfiles: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchStocktakeScales<TRes>
    implements CopyWith$Query$SearchStocktakeScales<TRes> {
  _CopyWithStubImpl$Query$SearchStocktakeScales(this._res);

  TRes _res;

  call({
    Query$SearchStocktakeScales$searchWeighbridgeProfiles?
    searchWeighbridgeProfiles,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles<TRes>
  get searchWeighbridgeProfiles =>
      CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles.stub(_res);
}

const documentNodeQuerySearchStocktakeScales = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchStocktakeScales'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchWeighbridgeProfilesInput'),
            isNonNull: true,
          ),
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
            name: NameNode(value: 'searchWeighbridgeProfiles'),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'scales'),
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
                              name: NameNode(value: 'url'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'assetCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'scaleNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'cameras'),
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
                                    name: NameNode(value: 'imageUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'videoUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'userName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'password'),
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
                        name: NameNode(value: 'knownTares'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'value'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'uom'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'value'),
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
                              name: NameNode(value: 'comments'),
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

class Query$SearchStocktakeScales$searchWeighbridgeProfiles {
  Query$SearchStocktakeScales$searchWeighbridgeProfiles({
    this.nodes,
    this.$__typename = 'SearchWeighbridgeProfilesConnection',
  });

  factory Query$SearchStocktakeScales$searchWeighbridgeProfiles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeScales$searchWeighbridgeProfiles(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes>?
  nodes;

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
    if (other is! Query$SearchStocktakeScales$searchWeighbridgeProfiles ||
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

extension UtilityExtension$Query$SearchStocktakeScales$searchWeighbridgeProfiles
    on Query$SearchStocktakeScales$searchWeighbridgeProfiles {
  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles<
    Query$SearchStocktakeScales$searchWeighbridgeProfiles
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles<
  TRes
> {
  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles instance,
    TRes Function(Query$SearchStocktakeScales$searchWeighbridgeProfiles) then,
  ) = _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles;

  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles;

  TRes call({
    List<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes>?
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes<
          Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles<TRes>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles<TRes> {
  _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakeScales$searchWeighbridgeProfiles _instance;

  final TRes Function(Query$SearchStocktakeScales$searchWeighbridgeProfiles)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes>?
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes<
          Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles<TRes> {
  _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles(
    this._res,
  );

  TRes _res;

  call({
    List<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes {
  Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes({
    required this.name,
    required this.scales,
    required this.knownTares,
    this.$__typename = 'WeighbridgeProfile',
  });

  factory Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$scales = json['scales'];
    final l$knownTares = json['knownTares'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes(
      name: (l$name as String),
      scales: (l$scales as List<dynamic>)
          .map(
            (e) =>
                Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      knownTares: (l$knownTares as List<dynamic>)
          .map(
            (e) =>
                Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales>
  scales;

  final List<
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
  >
  knownTares;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$scales = scales;
    _resultData['scales'] = l$scales.map((e) => e.toJson()).toList();
    final l$knownTares = knownTares;
    _resultData['knownTares'] = l$knownTares.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$scales = scales;
    final l$knownTares = knownTares;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$scales.map((v) => v)),
      Object.hashAll(l$knownTares.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$scales = scales;
    final lOther$scales = other.scales;
    if (l$scales.length != lOther$scales.length) {
      return false;
    }
    for (int i = 0; i < l$scales.length; i++) {
      final l$scales$entry = l$scales[i];
      final lOther$scales$entry = lOther$scales[i];
      if (l$scales$entry != lOther$scales$entry) {
        return false;
      }
    }
    final l$knownTares = knownTares;
    final lOther$knownTares = other.knownTares;
    if (l$knownTares.length != lOther$knownTares.length) {
      return false;
    }
    for (int i = 0; i < l$knownTares.length; i++) {
      final l$knownTares$entry = l$knownTares[i];
      final lOther$knownTares$entry = lOther$knownTares[i];
      if (l$knownTares$entry != lOther$knownTares$entry) {
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

extension UtilityExtension$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes
    on Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes {
  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes<
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes<
  TRes
> {
  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes instance,
    TRes Function(Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes)
    then,
  ) = _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes;

  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes;

  TRes call({
    String? name,
    List<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales>?
    scales,
    List<
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
    >?
    knownTares,
    String? $__typename,
  });
  TRes scales(
    Iterable<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales>
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales<
          Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales
        >
      >,
    )
    _fn,
  );
  TRes knownTares(
    Iterable<
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
    >
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares<
          Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes _instance;

  final TRes Function(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? scales = _undefined,
    Object? knownTares = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      scales: scales == _undefined || scales == null
          ? _instance.scales
          : (scales
                as List<
                  Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales
                >),
      knownTares: knownTares == _undefined || knownTares == null
          ? _instance.knownTares
          : (knownTares
                as List<
                  Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes scales(
    Iterable<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales>
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales<
          Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales
        >
      >,
    )
    _fn,
  ) => call(
    scales: _fn(
      _instance.scales.map(
        (e) =>
            CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes knownTares(
    Iterable<
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
    >
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares<
          Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
        >
      >,
    )
    _fn,
  ) => call(
    knownTares: _fn(
      _instance.knownTares.map(
        (e) =>
            CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    List<Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales>?
    scales,
    List<
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
    >?
    knownTares,
    String? $__typename,
  }) => _res;

  scales(_fn) => _res;

  knownTares(_fn) => _res;
}

class Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales {
  Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales({
    required this.name,
    required this.url,
    required this.assetCode,
    required this.scaleNumber,
    required this.cameras,
    this.$__typename = 'Scale',
  });

  factory Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$url = json['url'];
    final l$assetCode = json['assetCode'];
    final l$scaleNumber = json['scaleNumber'];
    final l$cameras = json['cameras'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales(
      name: (l$name as String),
      url: (l$url as String),
      assetCode: (l$assetCode as String),
      scaleNumber: (l$scaleNumber as int),
      cameras: (l$cameras as List<dynamic>)
          .map(
            (e) =>
                Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String url;

  final String assetCode;

  final int scaleNumber;

  final List<
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
  >
  cameras;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$scaleNumber = scaleNumber;
    _resultData['scaleNumber'] = l$scaleNumber;
    final l$cameras = cameras;
    _resultData['cameras'] = l$cameras.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$url = url;
    final l$assetCode = assetCode;
    final l$scaleNumber = scaleNumber;
    final l$cameras = cameras;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$url,
      l$assetCode,
      l$scaleNumber,
      Object.hashAll(l$cameras.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$scaleNumber = scaleNumber;
    final lOther$scaleNumber = other.scaleNumber;
    if (l$scaleNumber != lOther$scaleNumber) {
      return false;
    }
    final l$cameras = cameras;
    final lOther$cameras = other.cameras;
    if (l$cameras.length != lOther$cameras.length) {
      return false;
    }
    for (int i = 0; i < l$cameras.length; i++) {
      final l$cameras$entry = l$cameras[i];
      final lOther$cameras$entry = lOther$cameras[i];
      if (l$cameras$entry != lOther$cameras$entry) {
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

extension UtilityExtension$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales
    on Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales {
  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales<
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales<
  TRes
> {
  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales instance,
    TRes Function(
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales;

  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales;

  TRes call({
    String? name,
    String? url,
    String? assetCode,
    int? scaleNumber,
    List<
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
    >?
    cameras,
    String? $__typename,
  });
  TRes cameras(
    Iterable<
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
    >
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras<
          Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales
  _instance;

  final TRes Function(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? url = _undefined,
    Object? assetCode = _undefined,
    Object? scaleNumber = _undefined,
    Object? cameras = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      url: url == _undefined || url == null ? _instance.url : (url as String),
      assetCode: assetCode == _undefined || assetCode == null
          ? _instance.assetCode
          : (assetCode as String),
      scaleNumber: scaleNumber == _undefined || scaleNumber == null
          ? _instance.scaleNumber
          : (scaleNumber as int),
      cameras: cameras == _undefined || cameras == null
          ? _instance.cameras
          : (cameras
                as List<
                  Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes cameras(
    Iterable<
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
    >
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras<
          Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
        >
      >,
    )
    _fn,
  ) => call(
    cameras: _fn(
      _instance.cameras.map(
        (e) =>
            CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? url,
    String? assetCode,
    int? scaleNumber,
    List<
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
    >?
    cameras,
    String? $__typename,
  }) => _res;

  cameras(_fn) => _res;
}

class Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras {
  Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras({
    required this.name,
    this.imageUrl,
    this.videoUrl,
    required this.userName,
    required this.password,
    this.$__typename = 'Camera',
  });

  factory Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$imageUrl = json['imageUrl'];
    final l$videoUrl = json['videoUrl'];
    final l$userName = json['userName'];
    final l$password = json['password'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras(
      name: (l$name as String),
      imageUrl: (l$imageUrl as String?),
      videoUrl: (l$videoUrl as String?),
      userName: (l$userName as String),
      password: (l$password as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? imageUrl;

  final String? videoUrl;

  final String userName;

  final String password;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$imageUrl = imageUrl;
    _resultData['imageUrl'] = l$imageUrl;
    final l$videoUrl = videoUrl;
    _resultData['videoUrl'] = l$videoUrl;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$password = password;
    _resultData['password'] = l$password;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$imageUrl = imageUrl;
    final l$videoUrl = videoUrl;
    final l$userName = userName;
    final l$password = password;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$imageUrl,
      l$videoUrl,
      l$userName,
      l$password,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$videoUrl = videoUrl;
    final lOther$videoUrl = other.videoUrl;
    if (l$videoUrl != lOther$videoUrl) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
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

extension UtilityExtension$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
    on Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras {
  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras<
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras<
  TRes
> {
  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
    instance,
    TRes Function(
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras;

  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras;

  TRes call({
    String? name,
    String? imageUrl,
    String? videoUrl,
    String? userName,
    String? password,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras
  _instance;

  final TRes Function(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? imageUrl = _undefined,
    Object? videoUrl = _undefined,
    Object? userName = _undefined,
    Object? password = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      imageUrl: imageUrl == _undefined
          ? _instance.imageUrl
          : (imageUrl as String?),
      videoUrl: videoUrl == _undefined
          ? _instance.videoUrl
          : (videoUrl as String?),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      password: password == _undefined || password == null
          ? _instance.password
          : (password as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$scales$cameras(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? imageUrl,
    String? videoUrl,
    String? userName,
    String? password,
    String? $__typename,
  }) => _res;
}

class Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares {
  Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares({
    required this.value,
    this.comments,
    this.$__typename = 'WeightDeduction',
  });

  factory Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$comments = json['comments'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares(
      value:
          Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      comments: (l$comments as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value
  value;

  final String? comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$comments = comments;
    _resultData['comments'] = l$comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$comments = comments;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$comments, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments != lOther$comments) {
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

extension UtilityExtension$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
    on Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares {
  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares<
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares<
  TRes
> {
  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
    instance,
    TRes Function(
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares;

  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares;

  TRes call({
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value?
    value,
    String? comments,
    String? $__typename,
  });
  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares
  _instance;

  final TRes Function(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? comments = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares(
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value),
      comments: comments == _undefined
          ? _instance.comments
          : (comments as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value?
    value,
    String? comments,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value<
    TRes
  >
  get value =>
      CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value.stub(
        _res,
      );
}

class Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value {
  Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value
    on Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value {
  CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value<
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value<
  TRes
> {
  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value
    instance,
    TRes Function(
      Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value;

  factory CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value;

  TRes call({Enum$Uom? uom, double? value, String? $__typename});
}

class _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value
  _instance;

  final TRes Function(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakeScales$searchWeighbridgeProfiles$nodes$knownTares$value(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, String? $__typename}) => _res;
}
