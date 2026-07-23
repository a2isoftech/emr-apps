import 'package:gql/ast.dart';

class Variables$Query$GetWeighbridgeProfiles {
  factory Variables$Query$GetWeighbridgeProfiles({
    required String yardCode,
    required bool includeScales,
    required bool includeCameras,
  }) => Variables$Query$GetWeighbridgeProfiles._({
    r'yardCode': yardCode,
    r'includeScales': includeScales,
    r'includeCameras': includeCameras,
  });

  Variables$Query$GetWeighbridgeProfiles._(this._$data);

  factory Variables$Query$GetWeighbridgeProfiles.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$includeScales = data['includeScales'];
    result$data['includeScales'] = (l$includeScales as bool);
    final l$includeCameras = data['includeCameras'];
    result$data['includeCameras'] = (l$includeCameras as bool);
    return Variables$Query$GetWeighbridgeProfiles._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  bool get includeScales => (_$data['includeScales'] as bool);

  bool get includeCameras => (_$data['includeCameras'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$includeScales = includeScales;
    result$data['includeScales'] = l$includeScales;
    final l$includeCameras = includeCameras;
    result$data['includeCameras'] = l$includeCameras;
    return result$data;
  }

  CopyWith$Variables$Query$GetWeighbridgeProfiles<
    Variables$Query$GetWeighbridgeProfiles
  >
  get copyWith =>
      CopyWith$Variables$Query$GetWeighbridgeProfiles(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetWeighbridgeProfiles ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$includeScales = includeScales;
    final lOther$includeScales = other.includeScales;
    if (l$includeScales != lOther$includeScales) {
      return false;
    }
    final l$includeCameras = includeCameras;
    final lOther$includeCameras = other.includeCameras;
    if (l$includeCameras != lOther$includeCameras) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$includeScales = includeScales;
    final l$includeCameras = includeCameras;
    return Object.hashAll([l$yardCode, l$includeScales, l$includeCameras]);
  }
}

abstract class CopyWith$Variables$Query$GetWeighbridgeProfiles<TRes> {
  factory CopyWith$Variables$Query$GetWeighbridgeProfiles(
    Variables$Query$GetWeighbridgeProfiles instance,
    TRes Function(Variables$Query$GetWeighbridgeProfiles) then,
  ) = _CopyWithImpl$Variables$Query$GetWeighbridgeProfiles;

  factory CopyWith$Variables$Query$GetWeighbridgeProfiles.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetWeighbridgeProfiles;

  TRes call({String? yardCode, bool? includeScales, bool? includeCameras});
}

class _CopyWithImpl$Variables$Query$GetWeighbridgeProfiles<TRes>
    implements CopyWith$Variables$Query$GetWeighbridgeProfiles<TRes> {
  _CopyWithImpl$Variables$Query$GetWeighbridgeProfiles(
    this._instance,
    this._then,
  );

  final Variables$Query$GetWeighbridgeProfiles _instance;

  final TRes Function(Variables$Query$GetWeighbridgeProfiles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? includeScales = _undefined,
    Object? includeCameras = _undefined,
  }) => _then(
    Variables$Query$GetWeighbridgeProfiles._({
      ..._instance._$data,
      if (yardCode != _undefined && yardCode != null)
        'yardCode': (yardCode as String),
      if (includeScales != _undefined && includeScales != null)
        'includeScales': (includeScales as bool),
      if (includeCameras != _undefined && includeCameras != null)
        'includeCameras': (includeCameras as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetWeighbridgeProfiles<TRes>
    implements CopyWith$Variables$Query$GetWeighbridgeProfiles<TRes> {
  _CopyWithStubImpl$Variables$Query$GetWeighbridgeProfiles(this._res);

  TRes _res;

  call({String? yardCode, bool? includeScales, bool? includeCameras}) => _res;
}

class Query$GetWeighbridgeProfiles {
  Query$GetWeighbridgeProfiles({
    this.weighbridgeProfiles,
    this.$__typename = 'Query',
  });

  factory Query$GetWeighbridgeProfiles.fromJson(Map<String, dynamic> json) {
    final l$weighbridgeProfiles = json['weighbridgeProfiles'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfiles(
      weighbridgeProfiles: l$weighbridgeProfiles == null
          ? null
          : Query$GetWeighbridgeProfiles$weighbridgeProfiles.fromJson(
              (l$weighbridgeProfiles as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetWeighbridgeProfiles$weighbridgeProfiles? weighbridgeProfiles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$weighbridgeProfiles = weighbridgeProfiles;
    _resultData['weighbridgeProfiles'] = l$weighbridgeProfiles?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$weighbridgeProfiles = weighbridgeProfiles;
    final l$$__typename = $__typename;
    return Object.hashAll([l$weighbridgeProfiles, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWeighbridgeProfiles ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$weighbridgeProfiles = weighbridgeProfiles;
    final lOther$weighbridgeProfiles = other.weighbridgeProfiles;
    if (l$weighbridgeProfiles != lOther$weighbridgeProfiles) {
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

extension UtilityExtension$Query$GetWeighbridgeProfiles
    on Query$GetWeighbridgeProfiles {
  CopyWith$Query$GetWeighbridgeProfiles<Query$GetWeighbridgeProfiles>
  get copyWith => CopyWith$Query$GetWeighbridgeProfiles(this, (i) => i);
}

abstract class CopyWith$Query$GetWeighbridgeProfiles<TRes> {
  factory CopyWith$Query$GetWeighbridgeProfiles(
    Query$GetWeighbridgeProfiles instance,
    TRes Function(Query$GetWeighbridgeProfiles) then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfiles;

  factory CopyWith$Query$GetWeighbridgeProfiles.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWeighbridgeProfiles;

  TRes call({
    Query$GetWeighbridgeProfiles$weighbridgeProfiles? weighbridgeProfiles,
    String? $__typename,
  });
  CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles<TRes>
  get weighbridgeProfiles;
}

class _CopyWithImpl$Query$GetWeighbridgeProfiles<TRes>
    implements CopyWith$Query$GetWeighbridgeProfiles<TRes> {
  _CopyWithImpl$Query$GetWeighbridgeProfiles(this._instance, this._then);

  final Query$GetWeighbridgeProfiles _instance;

  final TRes Function(Query$GetWeighbridgeProfiles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? weighbridgeProfiles = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfiles(
      weighbridgeProfiles: weighbridgeProfiles == _undefined
          ? _instance.weighbridgeProfiles
          : (weighbridgeProfiles
                as Query$GetWeighbridgeProfiles$weighbridgeProfiles?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles<TRes>
  get weighbridgeProfiles {
    final local$weighbridgeProfiles = _instance.weighbridgeProfiles;
    return local$weighbridgeProfiles == null
        ? CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles(
            local$weighbridgeProfiles,
            (e) => call(weighbridgeProfiles: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfiles<TRes>
    implements CopyWith$Query$GetWeighbridgeProfiles<TRes> {
  _CopyWithStubImpl$Query$GetWeighbridgeProfiles(this._res);

  TRes _res;

  call({
    Query$GetWeighbridgeProfiles$weighbridgeProfiles? weighbridgeProfiles,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles<TRes>
  get weighbridgeProfiles =>
      CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles.stub(_res);
}

const documentNodeQueryGetWeighbridgeProfiles = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetWeighbridgeProfiles'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'includeScales')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'includeCameras')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
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
            name: NameNode(value: 'weighbridgeProfiles'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'yardCode'),
                value: VariableNode(name: NameNode(value: 'yardCode')),
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
                        name: NameNode(value: 'yardId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardCode'),
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
                        name: NameNode(value: 'scales'),
                        alias: null,
                        arguments: [],
                        directives: [
                          DirectiveNode(
                            name: NameNode(value: 'include'),
                            arguments: [
                              ArgumentNode(
                                name: NameNode(value: 'if'),
                                value: VariableNode(
                                  name: NameNode(value: 'includeScales'),
                                ),
                              ),
                            ],
                          ),
                        ],
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
                              directives: [
                                DirectiveNode(
                                  name: NameNode(value: 'include'),
                                  arguments: [
                                    ArgumentNode(
                                      name: NameNode(value: 'if'),
                                      value: VariableNode(
                                        name: NameNode(value: 'includeCameras'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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

class Query$GetWeighbridgeProfiles$weighbridgeProfiles {
  Query$GetWeighbridgeProfiles$weighbridgeProfiles({
    this.nodes,
    this.$__typename = 'WeighbridgeProfilesConnection',
  });

  factory Query$GetWeighbridgeProfiles$weighbridgeProfiles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfiles$weighbridgeProfiles(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes>? nodes;

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
    if (other is! Query$GetWeighbridgeProfiles$weighbridgeProfiles ||
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

extension UtilityExtension$Query$GetWeighbridgeProfiles$weighbridgeProfiles
    on Query$GetWeighbridgeProfiles$weighbridgeProfiles {
  CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles<
    Query$GetWeighbridgeProfiles$weighbridgeProfiles
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles(this, (i) => i);
}

abstract class CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles<TRes> {
  factory CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles(
    Query$GetWeighbridgeProfiles$weighbridgeProfiles instance,
    TRes Function(Query$GetWeighbridgeProfiles$weighbridgeProfiles) then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles;

  factory CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles;

  TRes call({
    List<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes>? Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes<
          Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles<TRes>
    implements CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles<TRes> {
  _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfiles$weighbridgeProfiles _instance;

  final TRes Function(Query$GetWeighbridgeProfiles$weighbridgeProfiles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetWeighbridgeProfiles$weighbridgeProfiles(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes
                    as List<
                      Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes
                    >?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes>? Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes<
          Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles<TRes>
    implements CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles<TRes> {
  _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles(this._res);

  TRes _res;

  call({
    List<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes {
  Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes({
    this.id,
    required this.yardId,
    required this.yardCode,
    required this.name,
    this.scales,
    this.$__typename = 'WeighbridgeProfile',
  });

  factory Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$yardId = json['yardId'];
    final l$yardCode = json['yardCode'];
    final l$name = json['name'];
    final l$scales = json['scales'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes(
      id: (l$id as String?),
      yardId: (l$yardId as String),
      yardCode: (l$yardCode as String),
      name: (l$name as String),
      scales: (l$scales as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String yardId;

  final String yardCode;

  final String name;

  final List<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales>?
  scales;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$scales = scales;
    _resultData['scales'] = l$scales?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yardId = yardId;
    final l$yardCode = yardCode;
    final l$name = name;
    final l$scales = scales;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardId,
      l$yardCode,
      l$name,
      l$scales == null ? null : Object.hashAll(l$scales.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$scales = scales;
    final lOther$scales = other.scales;
    if (l$scales != null && lOther$scales != null) {
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
    } else if (l$scales != lOther$scales) {
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

extension UtilityExtension$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes
    on Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes {
  CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes<
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes(
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes instance,
    TRes Function(Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes) then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes;

  factory CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes;

  TRes call({
    String? id,
    String? yardId,
    String? yardCode,
    String? name,
    List<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales>? scales,
    String? $__typename,
  });
  TRes scales(
    Iterable<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales>?
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales<
          Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes<TRes>
    implements
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes<TRes> {
  _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes _instance;

  final TRes Function(Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardId = _undefined,
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? scales = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes(
      id: id == _undefined ? _instance.id : (id as String?),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      scales: scales == _undefined
          ? _instance.scales
          : (scales
                as List<
                  Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes scales(
    Iterable<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales>?
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales<
          Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales
        >
      >?,
    )
    _fn,
  ) => call(
    scales: _fn(
      _instance.scales?.map(
        (e) =>
            CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes<TRes> {
  _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? yardId,
    String? yardCode,
    String? name,
    List<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales>? scales,
    String? $__typename,
  }) => _res;

  scales(_fn) => _res;
}

class Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales {
  Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales({
    required this.name,
    required this.url,
    required this.assetCode,
    required this.scaleNumber,
    this.cameras,
    this.$__typename = 'Scale',
  });

  factory Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$url = json['url'];
    final l$assetCode = json['assetCode'];
    final l$scaleNumber = json['scaleNumber'];
    final l$cameras = json['cameras'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales(
      name: (l$name as String),
      url: (l$url as String),
      assetCode: (l$assetCode as String),
      scaleNumber: (l$scaleNumber as int),
      cameras: (l$cameras as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras.fromJson(
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
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
  >?
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
    _resultData['cameras'] = l$cameras?.map((e) => e.toJson()).toList();
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
      l$cameras == null ? null : Object.hashAll(l$cameras.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales ||
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
    if (l$cameras != null && lOther$cameras != null) {
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
    } else if (l$cameras != lOther$cameras) {
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

extension UtilityExtension$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales
    on Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales {
  CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales<
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales(
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales instance,
    TRes Function(Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales)
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales;

  factory CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales;

  TRes call({
    String? name,
    String? url,
    String? assetCode,
    int? scaleNumber,
    List<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras>?
    cameras,
    String? $__typename,
  });
  TRes cameras(
    Iterable<
      Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
    >?
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras<
          Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales _instance;

  final TRes Function(
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales,
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
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales(
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
      cameras: cameras == _undefined
          ? _instance.cameras
          : (cameras
                as List<
                  Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes cameras(
    Iterable<
      Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
    >?
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras<
          Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
        >
      >?,
    )
    _fn,
  ) => call(
    cameras: _fn(
      _instance.cameras?.map(
        (e) =>
            CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? url,
    String? assetCode,
    int? scaleNumber,
    List<Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras>?
    cameras,
    String? $__typename,
  }) => _res;

  cameras(_fn) => _res;
}

class Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras {
  Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras({
    required this.name,
    this.imageUrl,
    this.videoUrl,
    this.$__typename = 'Camera',
  });

  factory Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$imageUrl = json['imageUrl'];
    final l$videoUrl = json['videoUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras(
      name: (l$name as String),
      imageUrl: (l$imageUrl as String?),
      videoUrl: (l$videoUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? imageUrl;

  final String? videoUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$imageUrl = imageUrl;
    _resultData['imageUrl'] = l$imageUrl;
    final l$videoUrl = videoUrl;
    _resultData['videoUrl'] = l$videoUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$imageUrl = imageUrl;
    final l$videoUrl = videoUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$imageUrl, l$videoUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
    on Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras {
  CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras<
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras(
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
    instance,
    TRes Function(
      Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras,
    )
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras;

  factory CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras;

  TRes call({
    String? name,
    String? imageUrl,
    String? videoUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras
  _instance;

  final TRes Function(
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? imageUrl = _undefined,
    Object? videoUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      imageUrl: imageUrl == _undefined
          ? _instance.imageUrl
          : (imageUrl as String?),
      videoUrl: videoUrl == _undefined
          ? _instance.videoUrl
          : (videoUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeProfiles$weighbridgeProfiles$nodes$scales$cameras(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? imageUrl,
    String? videoUrl,
    String? $__typename,
  }) => _res;
}
